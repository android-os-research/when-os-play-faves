.class public abstract Landroid/app/admin/IDevicePolicyManager$Stub;
.super Landroid/os/Binder;
.source "IDevicePolicyManager.java"

# interfaces
.implements Landroid/app/admin/IDevicePolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/IDevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.admin.IDevicePolicyManager"

.field static final blacklist TRANSACTION_acknowledgeDeviceCompliant:I = 0x166

.field static final blacklist TRANSACTION_acknowledgeNewUserDisclaimer:I = 0xa1

.field static final greylist-max-o TRANSACTION_addCrossProfileIntentFilter:I = 0x87

.field static final blacklist TRANSACTION_addCrossProfileIntentFilterMDM:I = 0x141

.field static final greylist-max-o TRANSACTION_addCrossProfileWidgetProvider:I = 0xcb

.field static final greylist-max-o TRANSACTION_addOverrideApn:I = 0x129

.field static final greylist-max-o TRANSACTION_addPersistentPreferredActivity:I = 0x7b

.field static final greylist-max-o TRANSACTION_approveCaCert:I = 0x68

.field static final greylist-max-o TRANSACTION_bindDeviceAdminServiceAsUser:I = 0x111

.field static final blacklist TRANSACTION_canAdminGrantSensorsPermissionsForUser:I = 0x173

.field static final blacklist TRANSACTION_canProfileOwnerResetPasswordWhenLocked:I = 0x168

.field static final blacklist TRANSACTION_canUsbDataSignalingBeDisabled:I = 0x177

.field static final blacklist TRANSACTION_checkDeviceIdentifierAccess:I = 0x5f

.field static final blacklist TRANSACTION_checkProvisioningPrecondition:I = 0xe5

.field static final greylist-max-o TRANSACTION_choosePrivateKeyAlias:I = 0x6f

.field static final greylist-max-o TRANSACTION_clearApplicationUserData:I = 0x11d

.field static final greylist-max-o TRANSACTION_clearCrossProfileIntentFilters:I = 0x88

.field static final blacklist TRANSACTION_clearCrossProfileIntentFiltersMDM:I = 0x142

.field static final greylist-max-o TRANSACTION_clearDeviceOwner:I = 0x53

.field static final blacklist TRANSACTION_clearOrganizationIdForUser:I = 0xf3

.field static final greylist-max-o TRANSACTION_clearPackagePersistentPreferredActivities:I = 0x7c

.field static final greylist-max-o TRANSACTION_clearProfileOwner:I = 0x5c

.field static final greylist-max-o TRANSACTION_clearResetPasswordToken:I = 0x118

.field static final blacklist TRANSACTION_clearResetPasswordTokenMDM:I = 0x145

.field static final greylist-max-o TRANSACTION_clearSystemUpdatePolicyFreezePeriodRecord:I = 0xda

.field static final greylist-max-o TRANSACTION_createAdminSupportIntent:I = 0x94

.field static final greylist-max-o TRANSACTION_createAndManageUser:I = 0x98

.field static final blacklist TRANSACTION_createAndProvisionManagedProfile:I = 0x16d

.field static final greylist-max-o TRANSACTION_enableSystemApp:I = 0xa3

.field static final greylist-max-o TRANSACTION_enableSystemAppWithIntent:I = 0xa4

.field static final greylist-max-o TRANSACTION_enforceCanManageCaCerts:I = 0x67

.field static final blacklist TRANSACTION_finalizeWorkProfileProvisioning:I = 0x16f

.field static final blacklist TRANSACTION_forceNetworkLogs:I = 0x104

.field static final greylist-max-o TRANSACTION_forceRemoveActiveAdmin:I = 0x46

.field static final greylist-max-o TRANSACTION_forceSecurityLogs:I = 0x105

.field static final greylist-max-o TRANSACTION_forceUpdateUserSetupComplete:I = 0x10b

.field static final greylist-max-o TRANSACTION_generateKeyPair:I = 0x6d

.field static final greylist-max-o TRANSACTION_getAccountTypesWithManagementDisabled:I = 0xa7

.field static final greylist-max-o TRANSACTION_getAccountTypesWithManagementDisabledAsUser:I = 0xa8

.field static final greylist-max-o TRANSACTION_getActiveAdmins:I = 0x42

.field static final blacklist TRANSACTION_getActualDeviceOwnerMDM:I = 0x130

.field static final greylist-max-o TRANSACTION_getAffiliationIds:I = 0xfd

.field static final blacklist TRANSACTION_getAggregatedPasswordComplexityForUser:I = 0x1d

.field static final blacklist TRANSACTION_getAllCrossProfilePackages:I = 0x155

.field static final blacklist TRANSACTION_getAlwaysOnVpnLockdownAllowlist:I = 0x7a

.field static final greylist-max-o TRANSACTION_getAlwaysOnVpnPackage:I = 0x76

.field static final blacklist TRANSACTION_getAlwaysOnVpnPackageForUser:I = 0x77

.field static final greylist-max-o TRANSACTION_getApplicationRestrictions:I = 0x7f

.field static final blacklist TRANSACTION_getApplicationRestrictionsMDM:I = 0x140

.field static final greylist-max-o TRANSACTION_getApplicationRestrictionsManagingPackage:I = 0x81

.field static final blacklist TRANSACTION_getAutoTimeEnabled:I = 0xd1

.field static final greylist-max-o TRANSACTION_getAutoTimeRequired:I = 0xcf

.field static final blacklist TRANSACTION_getAutoTimeZoneEnabled:I = 0xd3

.field static final greylist-max-o TRANSACTION_getBindDeviceAdminTargetUsers:I = 0x112

.field static final greylist-max-o TRANSACTION_getBluetoothContactSharingDisabled:I = 0xc7

.field static final greylist-max-o TRANSACTION_getBluetoothContactSharingDisabledForUser:I = 0xc8

.field static final blacklist TRANSACTION_getBluetoothContactSharingEnabledForKnox:I = 0x1ac

.field static final greylist-max-o TRANSACTION_getCameraDisabled:I = 0x37

.field static final greylist-max-o TRANSACTION_getCertInstallerPackage:I = 0x74

.field static final blacklist TRANSACTION_getCrossProfileCalendarPackages:I = 0x150

.field static final blacklist TRANSACTION_getCrossProfileCalendarPackagesForUser:I = 0x152

.field static final greylist-max-o TRANSACTION_getCrossProfileCallerIdDisabled:I = 0xc0

.field static final greylist-max-o TRANSACTION_getCrossProfileCallerIdDisabledForUser:I = 0xc1

.field static final greylist-max-o TRANSACTION_getCrossProfileContactsSearchDisabled:I = 0xc3

.field static final greylist-max-o TRANSACTION_getCrossProfileContactsSearchDisabledForUser:I = 0xc4

.field static final blacklist TRANSACTION_getCrossProfilePackages:I = 0x154

.field static final greylist-max-o TRANSACTION_getCrossProfileWidgetProviders:I = 0xcd

.field static final blacklist TRANSACTION_getCurrentFailedBiometricAttempts:I = 0x20

.field static final greylist-max-o TRANSACTION_getCurrentFailedPasswordAttempts:I = 0x1f

.field static final blacklist TRANSACTION_getDefaultCrossProfilePackages:I = 0x156

.field static final greylist-max-o TRANSACTION_getDelegatePackages:I = 0x72

.field static final greylist-max-o TRANSACTION_getDelegatedScopes:I = 0x71

.field static final greylist-max-o TRANSACTION_getDeviceOwnerComponent:I = 0x50

.field static final greylist-max-o TRANSACTION_getDeviceOwnerLockScreenInfo:I = 0x61

.field static final greylist-max-o TRANSACTION_getDeviceOwnerName:I = 0x52

.field static final greylist-max-o TRANSACTION_getDeviceOwnerOrganizationName:I = 0xf8

.field static final blacklist TRANSACTION_getDeviceOwnerType:I = 0x171

.field static final greylist-max-o TRANSACTION_getDeviceOwnerUserId:I = 0x54

.field static final greylist-max-o TRANSACTION_getDisallowedSystemApps:I = 0x120

.field static final greylist-max-o TRANSACTION_getDoNotAskCredentialsOnBoot:I = 0xdd

.field static final blacklist TRANSACTION_getDrawable:I = 0x17f

.field static final greylist-max-o TRANSACTION_getEndUserSessionMessage:I = 0x126

.field static final blacklist TRANSACTION_getEnforcingAdminAndUserDetails:I = 0x95

.field static final blacklist TRANSACTION_getEnrollmentSpecificId:I = 0x16b

.field static final blacklist TRANSACTION_getFactoryResetProtectionPolicy:I = 0x2c

.field static final greylist-max-o TRANSACTION_getForceEphemeralUsers:I = 0xd5

.field static final blacklist TRANSACTION_getGlobalPrivateDnsHost:I = 0x14c

.field static final blacklist TRANSACTION_getGlobalPrivateDnsMode:I = 0x14b

.field static final greylist-max-o TRANSACTION_getGlobalProxyAdmin:I = 0x30

.field static final greylist-max-o TRANSACTION_getKeepUninstalledPackages:I = 0xe7

.field static final blacklist TRANSACTION_getKeyPairGrants:I = 0x15b

.field static final greylist-max-o TRANSACTION_getKeyguardDisabledFeatures:I = 0x3f

.field static final greylist-max-o TRANSACTION_getLastBugReportRequestTime:I = 0x115

.field static final greylist-max-o TRANSACTION_getLastNetworkLogRetrievalTime:I = 0x116

.field static final greylist-max-o TRANSACTION_getLastSecurityLogRetrievalTime:I = 0x114

.field static final greylist-max-o TRANSACTION_getLockTaskFeatures:I = 0xb1

.field static final greylist-max-o TRANSACTION_getLockTaskPackages:I = 0xae

.field static final blacklist TRANSACTION_getLogoutUserId:I = 0x9f

.field static final greylist-max-o TRANSACTION_getLongSupportMessage:I = 0xee

.field static final greylist-max-o TRANSACTION_getLongSupportMessageForUser:I = 0xf0

.field static final blacklist TRANSACTION_getManagedProfileMaximumTimeOff:I = 0x164

.field static final greylist-max-o TRANSACTION_getMaximumFailedPasswordsForWipe:I = 0x23

.field static final greylist-max-o TRANSACTION_getMaximumTimeToLock:I = 0x26

.field static final greylist-max-o TRANSACTION_getMeteredDataDisabledPackages:I = 0x128

.field static final blacklist TRANSACTION_getMinimumRequiredWifiSecurityLevel:I = 0x179

.field static final blacklist TRANSACTION_getNearbyAppStreamingPolicy:I = 0x3d

.field static final blacklist TRANSACTION_getNearbyNotificationStreamingPolicy:I = 0x3b

.field static final greylist-max-o TRANSACTION_getOrganizationColor:I = 0xf4

.field static final greylist-max-o TRANSACTION_getOrganizationColorForUser:I = 0xf5

.field static final greylist-max-o TRANSACTION_getOrganizationName:I = 0xf7

.field static final greylist-max-o TRANSACTION_getOrganizationNameForUser:I = 0xf9

.field static final greylist-max-o TRANSACTION_getOverrideApns:I = 0x12c

.field static final greylist-max-o TRANSACTION_getOwnerInstalledCaCerts:I = 0x11c

.field static final blacklist TRANSACTION_getPasswordComplexity:I = 0x1a

.field static final greylist-max-o TRANSACTION_getPasswordExpiration:I = 0x16

.field static final greylist-max-o TRANSACTION_getPasswordExpirationTimeout:I = 0x15

.field static final greylist-max-o TRANSACTION_getPasswordHistoryLength:I = 0x13

.field static final greylist-max-o TRANSACTION_getPasswordMinimumLength:I = 0x4

.field static final greylist-max-o TRANSACTION_getPasswordMinimumLetters:I = 0xa

.field static final greylist-max-o TRANSACTION_getPasswordMinimumLowerCase:I = 0x8

.field static final blacklist TRANSACTION_getPasswordMinimumMetrics:I = 0x11

.field static final greylist-max-o TRANSACTION_getPasswordMinimumNonLetter:I = 0x10

.field static final greylist-max-o TRANSACTION_getPasswordMinimumNumeric:I = 0xc

.field static final greylist-max-o TRANSACTION_getPasswordMinimumSymbols:I = 0xe

.field static final greylist-max-o TRANSACTION_getPasswordMinimumUpperCase:I = 0x6

.field static final greylist-max-o TRANSACTION_getPasswordQuality:I = 0x2

.field static final greylist-max-o TRANSACTION_getPendingSystemUpdate:I = 0xdf

.field static final greylist-max-o TRANSACTION_getPermissionGrantState:I = 0xe3

.field static final greylist-max-o TRANSACTION_getPermissionPolicy:I = 0xe1

.field static final greylist-max-o TRANSACTION_getPermittedAccessibilityServices:I = 0x8a

.field static final greylist-max-o TRANSACTION_getPermittedAccessibilityServicesForUser:I = 0x8b

.field static final greylist-max-o TRANSACTION_getPermittedCrossProfileNotificationListeners:I = 0x92

.field static final greylist-max-o TRANSACTION_getPermittedInputMethods:I = 0x8e

.field static final blacklist TRANSACTION_getPermittedInputMethodsAsUser:I = 0x8f

.field static final blacklist TRANSACTION_getPersonalAppsSuspendedReasons:I = 0x162

.field static final blacklist TRANSACTION_getPolicyManagedProfiles:I = 0x186

.field static final blacklist TRANSACTION_getPreferentialNetworkServiceConfigs:I = 0xac

.field static final blacklist TRANSACTION_getProfileOwnerAsUser:I = 0x56

.field static final greylist-max-o TRANSACTION_getProfileOwnerName:I = 0x59

.field static final blacklist TRANSACTION_getProfileOwnerOrDeviceOwnerSupervisionComponent:I = 0x57

.field static final greylist-max-o TRANSACTION_getProfileWithMinimumFailedPasswordsForWipe:I = 0x21

.field static final greylist-max-o TRANSACTION_getRemoveWarning:I = 0x44

.field static final blacklist TRANSACTION_getRequiredPasswordComplexity:I = 0x1c

.field static final greylist-max-o TRANSACTION_getRequiredStrongAuthTimeout:I = 0x28

.field static final greylist-max-o TRANSACTION_getRestrictionsProvider:I = 0x84

.field static final blacklist TRANSACTION_getSamsungSDcardEncryptionStatus:I = 0x1ae

.field static final greylist-max-o TRANSACTION_getScreenCaptureDisabled:I = 0x39

.field static final greylist-max-o TRANSACTION_getSecondaryUsers:I = 0xa0

.field static final greylist-max-o TRANSACTION_getShortSupportMessage:I = 0xec

.field static final greylist-max-o TRANSACTION_getShortSupportMessageForUser:I = 0xef

.field static final greylist-max-o TRANSACTION_getStartUserSessionMessage:I = 0x125

.field static final greylist-max-o TRANSACTION_getStorageEncryption:I = 0x33

.field static final greylist-max-o TRANSACTION_getStorageEncryptionStatus:I = 0x34

.field static final blacklist TRANSACTION_getString:I = 0x184

.field static final greylist-max-o TRANSACTION_getSystemUpdatePolicy:I = 0xd9

.field static final greylist-max-o TRANSACTION_getTransferOwnershipBundle:I = 0x122

.field static final greylist-max-o TRANSACTION_getTrustAgentConfiguration:I = 0xca

.field static final blacklist TRANSACTION_getUserControlDisabledPackages:I = 0x15f

.field static final greylist-max-o TRANSACTION_getUserProvisioningState:I = 0xfa

.field static final greylist-max-o TRANSACTION_getUserRestrictions:I = 0x86

.field static final greylist-max-o TRANSACTION_getWifiMacAddress:I = 0xe9

.field static final blacklist TRANSACTION_getWifiSsidPolicy:I = 0x17b

.field static final blacklist TRANSACTION_hasDelegatedPermission:I = 0x149

.field static final greylist-max-o TRANSACTION_hasDeviceOwner:I = 0x51

.field static final greylist-max-o TRANSACTION_hasGrantedPolicy:I = 0x47

.field static final blacklist TRANSACTION_hasKeyPair:I = 0x6c

.field static final blacklist TRANSACTION_hasLockdownAdminConfiguredNetworks:I = 0xb6

.field static final greylist-max-o TRANSACTION_hasUserSetupCompleted:I = 0x5d

.field static final greylist-max-o TRANSACTION_installCaCert:I = 0x65

.field static final greylist-max-o TRANSACTION_installExistingPackage:I = 0xa5

.field static final greylist-max-o TRANSACTION_installKeyPair:I = 0x6a

.field static final blacklist TRANSACTION_installUpdateFromFile:I = 0x14e

.field static final greylist-max-o TRANSACTION_isAccessibilityServicePermittedByAdmin:I = 0x8c

.field static final greylist-max-o TRANSACTION_isActivePasswordSufficient:I = 0x17

.field static final blacklist TRANSACTION_isActivePasswordSufficientForDeviceRequirement:I = 0x18

.field static final greylist-max-o TRANSACTION_isAdminActive:I = 0x41

.field static final greylist-max-o TRANSACTION_isAffiliatedUser:I = 0xff

.field static final blacklist TRANSACTION_isAlwaysOnVpnLockdownEnabled:I = 0x78

.field static final blacklist TRANSACTION_isAlwaysOnVpnLockdownEnabledForUser:I = 0x79

.field static final greylist-max-o TRANSACTION_isApplicationHidden:I = 0x97

.field static final greylist-max-o TRANSACTION_isBackupServiceEnabled:I = 0x10d

.field static final greylist-max-o TRANSACTION_isCaCertApproved:I = 0x69

.field static final greylist-max-o TRANSACTION_isCallerApplicationRestrictionsManagingPackage:I = 0x82

.field static final blacklist TRANSACTION_isCallingUserAffiliated:I = 0xfe

.field static final blacklist TRANSACTION_isCommonCriteriaModeEnabled:I = 0x161

.field static final blacklist TRANSACTION_isComplianceAcknowledgementRequired:I = 0x167

.field static final greylist-max-o TRANSACTION_isCurrentInputMethodSetByOwner:I = 0x11b

.field static final greylist-max-o TRANSACTION_isDeviceProvisioned:I = 0x108

.field static final greylist-max-o TRANSACTION_isDeviceProvisioningConfigApplied:I = 0x109

.field static final blacklist TRANSACTION_isDpcDownloaded:I = 0x180

.field static final greylist-max-o TRANSACTION_isEphemeralUser:I = 0x113

.field static final blacklist TRANSACTION_isFactoryResetProtectionPolicySupported:I = 0x2d

.field static final greylist-max-o TRANSACTION_isInputMethodPermittedByAdmin:I = 0x90

.field static final blacklist TRANSACTION_isKeyPairGrantedToWifiAuth:I = 0x15d

.field static final greylist-max-o TRANSACTION_isLockTaskPermitted:I = 0xaf

.field static final greylist-max-o TRANSACTION_isLogoutEnabled:I = 0x11f

.field static final blacklist TRANSACTION_isManagedKiosk:I = 0x157

.field static final greylist-max-o TRANSACTION_isManagedProfile:I = 0xe8

.field static final greylist-max-o TRANSACTION_isMasterVolumeMuted:I = 0xbb

.field static final greylist-max-o TRANSACTION_isMeteredDataDisabledPackageForUser:I = 0x12f

.field static final greylist-max-o TRANSACTION_isNetworkLoggingEnabled:I = 0x10f

.field static final blacklist TRANSACTION_isNewUserDisclaimerAcknowledged:I = 0xa2

.field static final greylist-max-o TRANSACTION_isNotificationListenerServicePermitted:I = 0x93

.field static final blacklist TRANSACTION_isOrganizationOwnedDeviceWithManagedProfile:I = 0x5e

.field static final greylist-max-o TRANSACTION_isOverrideApnEnabled:I = 0x12e

.field static final blacklist TRANSACTION_isPackageAllowedToAccessCalendarForUser:I = 0x151

.field static final greylist-max-o TRANSACTION_isPackageSuspended:I = 0x63

.field static final blacklist TRANSACTION_isPasswordSufficientAfterProfileUnification:I = 0x19

.field static final blacklist TRANSACTION_isProfileOwnerOfOrganizationOwnedDeviceMDM:I = 0x148

.field static final greylist-max-o TRANSACTION_isProvisioningAllowed:I = 0xe4

.field static final greylist-max-o TRANSACTION_isRemovingAdmin:I = 0xd6

.field static final greylist-max-o TRANSACTION_isResetPasswordTokenActive:I = 0x119

.field static final blacklist TRANSACTION_isResetPasswordTokenActiveMDM:I = 0x144

.field static final blacklist TRANSACTION_isSafeOperation:I = 0x16a

.field static final blacklist TRANSACTION_isSecondaryLockscreenEnabled:I = 0xaa

.field static final greylist-max-o TRANSACTION_isSecurityLoggingEnabled:I = 0x101

.field static final blacklist TRANSACTION_isSupervisionComponent:I = 0x58

.field static final blacklist TRANSACTION_isUnattendedManagedKiosk:I = 0x158

.field static final greylist-max-o TRANSACTION_isUninstallBlocked:I = 0xbe

.field static final greylist-max-o TRANSACTION_isUninstallInQueue:I = 0x106

.field static final blacklist TRANSACTION_isUsbDataSignalingEnabled:I = 0x175

.field static final blacklist TRANSACTION_isUsbDataSignalingEnabledForUser:I = 0x176

.field static final greylist-max-o TRANSACTION_isUsingUnifiedPassword:I = 0x1e

.field static final blacklist TRANSACTION_listForegroundAffiliatedUsers:I = 0x17c

.field static final blacklist TRANSACTION_listPolicyExemptApps:I = 0x64

.field static final greylist-max-o TRANSACTION_lockNow:I = 0x29

.field static final greylist-max-o TRANSACTION_logoutUser:I = 0x9d

.field static final blacklist TRANSACTION_logoutUserInternal:I = 0x9e

.field static final greylist-max-o TRANSACTION_notifyLockTaskModeChanged:I = 0xbc

.field static final greylist-max-o TRANSACTION_notifyPendingSystemUpdate:I = 0xde

.field static final greylist TRANSACTION_packageHasActiveAdmins:I = 0x43

.field static final blacklist TRANSACTION_provisionFullyManagedDevice:I = 0x16e

.field static final greylist-max-o TRANSACTION_reboot:I = 0xea

.field static final blacklist TRANSACTION_rebootMDM:I = 0x131

.field static final greylist TRANSACTION_removeActiveAdmin:I = 0x45

.field static final greylist-max-o TRANSACTION_removeCrossProfileWidgetProvider:I = 0xcc

.field static final greylist-max-o TRANSACTION_removeKeyPair:I = 0x6b

.field static final greylist-max-o TRANSACTION_removeOverrideApn:I = 0x12b

.field static final greylist-max-o TRANSACTION_removeUser:I = 0x99

.field static final blacklist TRANSACTION_reportFailedBiometricAttempt:I = 0x4b

.field static final greylist-max-o TRANSACTION_reportFailedPasswordAttempt:I = 0x49

.field static final greylist-max-o TRANSACTION_reportKeyguardDismissed:I = 0x4d

.field static final greylist-max-o TRANSACTION_reportKeyguardSecured:I = 0x4e

.field static final greylist-max-o TRANSACTION_reportPasswordChanged:I = 0x48

.field static final blacklist TRANSACTION_reportSuccessfulBiometricAttempt:I = 0x4c

.field static final greylist-max-o TRANSACTION_reportSuccessfulPasswordAttempt:I = 0x4a

.field static final greylist-max-o TRANSACTION_requestBugreport:I = 0x35

.field static final blacklist TRANSACTION_resetDefaultCrossProfileIntentFilters:I = 0x172

.field static final blacklist TRANSACTION_resetDrawables:I = 0x17e

.field static final greylist-max-o TRANSACTION_resetPassword:I = 0x24

.field static final greylist-max-o TRANSACTION_resetPasswordWithToken:I = 0x11a

.field static final blacklist TRANSACTION_resetPasswordWithTokenMDM:I = 0x143

.field static final blacklist TRANSACTION_resetStrings:I = 0x183

.field static final greylist-max-o TRANSACTION_retrieveNetworkLogs:I = 0x110

.field static final greylist-max-o TRANSACTION_retrievePreRebootSecurityLogs:I = 0x103

.field static final greylist-max-o TRANSACTION_retrieveSecurityLogs:I = 0x102

.field static final blacklist TRANSACTION_semGetAllowBluetoothMode:I = 0x1a3

.field static final blacklist TRANSACTION_semGetAllowBrowser:I = 0x19f

.field static final blacklist TRANSACTION_semGetAllowDesktopSync:I = 0x1a5

.field static final blacklist TRANSACTION_semGetAllowInternetSharing:I = 0x1a1

.field static final blacklist TRANSACTION_semGetAllowIrda:I = 0x1a7

.field static final blacklist TRANSACTION_semGetAllowPopImapEmail:I = 0x19d

.field static final blacklist TRANSACTION_semGetAllowStorageCard:I = 0x197

.field static final blacklist TRANSACTION_semGetAllowTextMessaging:I = 0x19b

.field static final blacklist TRANSACTION_semGetAllowWifi:I = 0x199

.field static final blacklist TRANSACTION_semGetRequireStorageCardEncryption:I = 0x1a9

.field static final blacklist TRANSACTION_semIsActivePasswordSufficient:I = 0x191

.field static final blacklist TRANSACTION_semIsSimplePasswordEnabled:I = 0x193

.field static final blacklist TRANSACTION_semSetAllowBluetoothMode:I = 0x1a2

.field static final blacklist TRANSACTION_semSetAllowBrowser:I = 0x19e

.field static final blacklist TRANSACTION_semSetAllowDesktopSync:I = 0x1a4

.field static final blacklist TRANSACTION_semSetAllowInternetSharing:I = 0x1a0

.field static final blacklist TRANSACTION_semSetAllowIrda:I = 0x1a6

.field static final blacklist TRANSACTION_semSetAllowPopImapEmail:I = 0x19c

.field static final blacklist TRANSACTION_semSetAllowStorageCard:I = 0x196

.field static final blacklist TRANSACTION_semSetAllowTextMessaging:I = 0x19a

.field static final blacklist TRANSACTION_semSetAllowWifi:I = 0x198

.field static final blacklist TRANSACTION_semSetCameraDisabled:I = 0x195

.field static final blacklist TRANSACTION_semSetChangeNotificationEnabled:I = 0x1aa

.field static final blacklist TRANSACTION_semSetKeyguardDisabledFeatures:I = 0x194

.field static final blacklist TRANSACTION_semSetPasswordExpirationTimeout:I = 0x190

.field static final blacklist TRANSACTION_semSetPasswordHistoryLength:I = 0x18f

.field static final blacklist TRANSACTION_semSetPasswordMinimumLength:I = 0x188

.field static final blacklist TRANSACTION_semSetPasswordMinimumLetters:I = 0x18b

.field static final blacklist TRANSACTION_semSetPasswordMinimumLowerCase:I = 0x18a

.field static final blacklist TRANSACTION_semSetPasswordMinimumNonLetter:I = 0x18e

.field static final blacklist TRANSACTION_semSetPasswordMinimumNumeric:I = 0x18c

.field static final blacklist TRANSACTION_semSetPasswordMinimumSymbols:I = 0x18d

.field static final blacklist TRANSACTION_semSetPasswordMinimumUpperCase:I = 0x189

.field static final blacklist TRANSACTION_semSetPasswordQuality:I = 0x187

.field static final blacklist TRANSACTION_semSetRequireStorageCardEncryption:I = 0x1a8

.field static final blacklist TRANSACTION_semSetSimplePasswordEnabled:I = 0x192

.field static final blacklist TRANSACTION_sendLostModeLocationUpdate:I = 0x2e

.field static final greylist-max-o TRANSACTION_setAccountManagementDisabled:I = 0xa6

.field static final greylist-max-o TRANSACTION_setActiveAdmin:I = 0x40

.field static final greylist-max-o TRANSACTION_setAffiliationIds:I = 0xfc

.field static final greylist-max-o TRANSACTION_setAlwaysOnVpnPackage:I = 0x75

.field static final greylist-max-o TRANSACTION_setApplicationHidden:I = 0x96

.field static final greylist-max-o TRANSACTION_setApplicationRestrictions:I = 0x7e

.field static final blacklist TRANSACTION_setApplicationRestrictionsMDM:I = 0x13f

.field static final greylist-max-o TRANSACTION_setApplicationRestrictionsManagingPackage:I = 0x80

.field static final blacklist TRANSACTION_setAutoTimeEnabled:I = 0xd0

.field static final greylist-max-o TRANSACTION_setAutoTimeRequired:I = 0xce

.field static final blacklist TRANSACTION_setAutoTimeZoneEnabled:I = 0xd2

.field static final greylist-max-o TRANSACTION_setBackupServiceEnabled:I = 0x10c

.field static final greylist-max-o TRANSACTION_setBluetoothContactSharingDisabled:I = 0xc6

.field static final blacklist TRANSACTION_setBluetoothContactSharingEnabledForKnox:I = 0x1ab

.field static final greylist-max-o TRANSACTION_setCameraDisabled:I = 0x36

.field static final greylist-max-o TRANSACTION_setCertInstallerPackage:I = 0x73

.field static final blacklist TRANSACTION_setCommonCriteriaModeEnabled:I = 0x160

.field static final blacklist TRANSACTION_setConfiguredNetworksLockdownState:I = 0xb5

.field static final blacklist TRANSACTION_setCrossProfileAppToIgnored:I = 0x1af

.field static final blacklist TRANSACTION_setCrossProfileCalendarPackages:I = 0x14f

.field static final greylist-max-o TRANSACTION_setCrossProfileCallerIdDisabled:I = 0xbf

.field static final greylist-max-o TRANSACTION_setCrossProfileContactsSearchDisabled:I = 0xc2

.field static final blacklist TRANSACTION_setCrossProfilePackages:I = 0x153

.field static final greylist-max-o TRANSACTION_setDefaultSmsApplication:I = 0x7d

.field static final greylist-max-o TRANSACTION_setDelegatedScopes:I = 0x70

.field static final greylist-max-o TRANSACTION_setDeviceOwner:I = 0x4f

.field static final greylist-max-o TRANSACTION_setDeviceOwnerLockScreenInfo:I = 0x60

.field static final blacklist TRANSACTION_setDeviceOwnerType:I = 0x170

.field static final greylist-max-o TRANSACTION_setDeviceProvisioningConfigApplied:I = 0x10a

.field static final blacklist TRANSACTION_setDpcDownloaded:I = 0x181

.field static final blacklist TRANSACTION_setDrawables:I = 0x17d

.field static final greylist-max-o TRANSACTION_setEndUserSessionMessage:I = 0x124

.field static final blacklist TRANSACTION_setFactoryResetProtectionPolicy:I = 0x2b

.field static final greylist-max-o TRANSACTION_setForceEphemeralUsers:I = 0xd4

.field static final blacklist TRANSACTION_setGlobalPrivateDns:I = 0x14a

.field static final greylist-max-o TRANSACTION_setGlobalProxy:I = 0x2f

.field static final greylist-max-o TRANSACTION_setGlobalSetting:I = 0xb2

.field static final greylist-max-o TRANSACTION_setKeepUninstalledPackages:I = 0xe6

.field static final blacklist TRANSACTION_setKeyGrantForApp:I = 0x15a

.field static final blacklist TRANSACTION_setKeyGrantToWifiAuth:I = 0x15c

.field static final greylist-max-o TRANSACTION_setKeyPairCertificate:I = 0x6e

.field static final greylist-max-o TRANSACTION_setKeyguardDisabled:I = 0xdb

.field static final greylist-max-o TRANSACTION_setKeyguardDisabledFeatures:I = 0x3e

.field static final blacklist TRANSACTION_setKeyguardDisabledFeaturesMDM:I = 0x13e

.field static final blacklist TRANSACTION_setLocationEnabled:I = 0xb7

.field static final greylist-max-o TRANSACTION_setLockTaskFeatures:I = 0xb0

.field static final greylist-max-o TRANSACTION_setLockTaskPackages:I = 0xad

.field static final greylist-max-o TRANSACTION_setLogoutEnabled:I = 0x11e

.field static final greylist-max-o TRANSACTION_setLongSupportMessage:I = 0xed

.field static final blacklist TRANSACTION_setManagedProfileMaximumTimeOff:I = 0x165

.field static final greylist-max-o TRANSACTION_setMasterVolumeMuted:I = 0xba

.field static final greylist-max-o TRANSACTION_setMaximumFailedPasswordsForWipe:I = 0x22

.field static final blacklist TRANSACTION_setMaximumFailedPasswordsForWipeMDM:I = 0x13c

.field static final greylist-max-o TRANSACTION_setMaximumTimeToLock:I = 0x25

.field static final blacklist TRANSACTION_setMaximumTimeToLockMDM:I = 0x13d

.field static final greylist-max-o TRANSACTION_setMeteredDataDisabledPackages:I = 0x127

.field static final blacklist TRANSACTION_setMinimumRequiredWifiSecurityLevel:I = 0x178

.field static final blacklist TRANSACTION_setNearbyAppStreamingPolicy:I = 0x3c

.field static final blacklist TRANSACTION_setNearbyNotificationStreamingPolicy:I = 0x3a

.field static final greylist-max-o TRANSACTION_setNetworkLoggingEnabled:I = 0x10e

.field static final blacklist TRANSACTION_setNextOperationSafety:I = 0x169

.field static final greylist-max-o TRANSACTION_setOrganizationColor:I = 0xf1

.field static final greylist-max-o TRANSACTION_setOrganizationColorForUser:I = 0xf2

.field static final blacklist TRANSACTION_setOrganizationIdForUser:I = 0x16c

.field static final greylist-max-o TRANSACTION_setOrganizationName:I = 0xf6

.field static final greylist-max-o TRANSACTION_setOverrideApnsEnabled:I = 0x12d

.field static final greylist-max-o TRANSACTION_setPackagesSuspended:I = 0x62

.field static final greylist-max-o TRANSACTION_setPasswordExpirationTimeout:I = 0x14

.field static final blacklist TRANSACTION_setPasswordExpirationTimeoutMDM:I = 0x13b

.field static final greylist-max-o TRANSACTION_setPasswordHistoryLength:I = 0x12

.field static final blacklist TRANSACTION_setPasswordHistoryLengthMDM:I = 0x13a

.field static final greylist-max-o TRANSACTION_setPasswordMinimumLength:I = 0x3

.field static final blacklist TRANSACTION_setPasswordMinimumLengthMDM:I = 0x133

.field static final greylist-max-o TRANSACTION_setPasswordMinimumLetters:I = 0x9

.field static final blacklist TRANSACTION_setPasswordMinimumLettersMDM:I = 0x136

.field static final greylist-max-o TRANSACTION_setPasswordMinimumLowerCase:I = 0x7

.field static final blacklist TRANSACTION_setPasswordMinimumLowerCaseMDM:I = 0x135

.field static final greylist-max-o TRANSACTION_setPasswordMinimumNonLetter:I = 0xf

.field static final blacklist TRANSACTION_setPasswordMinimumNonLetterMDM:I = 0x139

.field static final greylist-max-o TRANSACTION_setPasswordMinimumNumeric:I = 0xb

.field static final blacklist TRANSACTION_setPasswordMinimumNumericMDM:I = 0x137

.field static final greylist-max-o TRANSACTION_setPasswordMinimumSymbols:I = 0xd

.field static final blacklist TRANSACTION_setPasswordMinimumSymbolsMDM:I = 0x138

.field static final greylist-max-o TRANSACTION_setPasswordMinimumUpperCase:I = 0x5

.field static final blacklist TRANSACTION_setPasswordMinimumUpperCaseMDM:I = 0x134

.field static final greylist-max-o TRANSACTION_setPasswordQuality:I = 0x1

.field static final blacklist TRANSACTION_setPasswordQualityMDM:I = 0x132

.field static final greylist-max-o TRANSACTION_setPermissionGrantState:I = 0xe2

.field static final greylist-max-o TRANSACTION_setPermissionPolicy:I = 0xe0

.field static final greylist-max-o TRANSACTION_setPermittedAccessibilityServices:I = 0x89

.field static final greylist-max-o TRANSACTION_setPermittedCrossProfileNotificationListeners:I = 0x91

.field static final greylist-max-o TRANSACTION_setPermittedInputMethods:I = 0x8d

.field static final blacklist TRANSACTION_setPersonalAppsSuspended:I = 0x163

.field static final blacklist TRANSACTION_setPreferentialNetworkServiceConfigs:I = 0xab

.field static final greylist-max-o TRANSACTION_setProfileEnabled:I = 0x5a

.field static final greylist-max-o TRANSACTION_setProfileName:I = 0x5b

.field static final greylist-max-o TRANSACTION_setProfileOwner:I = 0x55

.field static final blacklist TRANSACTION_setProfileOwnerOnOrganizationOwnedDevice:I = 0x14d

.field static final greylist-max-o TRANSACTION_setRecommendedGlobalProxy:I = 0x31

.field static final blacklist TRANSACTION_setRequiredPasswordComplexity:I = 0x1b

.field static final greylist-max-o TRANSACTION_setRequiredStrongAuthTimeout:I = 0x27

.field static final greylist-max-o TRANSACTION_setResetPasswordToken:I = 0x117

.field static final blacklist TRANSACTION_setResetPasswordTokenMDM:I = 0x146

.field static final greylist-max-o TRANSACTION_setRestrictionsProvider:I = 0x83

.field static final greylist-max-o TRANSACTION_setScreenCaptureDisabled:I = 0x38

.field static final blacklist TRANSACTION_setSecondaryLockscreenEnabled:I = 0xa9

.field static final greylist-max-o TRANSACTION_setSecureSetting:I = 0xb4

.field static final greylist-max-o TRANSACTION_setSecurityLoggingEnabled:I = 0x100

.field static final greylist-max-o TRANSACTION_setShortSupportMessage:I = 0xeb

.field static final greylist-max-o TRANSACTION_setStartUserSessionMessage:I = 0x123

.field static final greylist-max-o TRANSACTION_setStatusBarDisabled:I = 0xdc

.field static final greylist-max-o TRANSACTION_setStorageEncryption:I = 0x32

.field static final blacklist TRANSACTION_setStrings:I = 0x182

.field static final greylist-max-o TRANSACTION_setSystemSetting:I = 0xb3

.field static final greylist-max-o TRANSACTION_setSystemUpdatePolicy:I = 0xd8

.field static final greylist-max-o TRANSACTION_setTime:I = 0xb8

.field static final greylist-max-o TRANSACTION_setTimeZone:I = 0xb9

.field static final greylist-max-o TRANSACTION_setTrustAgentConfiguration:I = 0xc9

.field static final blacklist TRANSACTION_setTrustAgentConfigurationMDM:I = 0x147

.field static final greylist-max-o TRANSACTION_setUninstallBlocked:I = 0xbd

.field static final blacklist TRANSACTION_setUsbDataSignalingEnabled:I = 0x174

.field static final blacklist TRANSACTION_setUserControlDisabledPackages:I = 0x15e

.field static final greylist-max-o TRANSACTION_setUserIcon:I = 0xd7

.field static final greylist-max-o TRANSACTION_setUserProvisioningState:I = 0xfb

.field static final greylist-max-o TRANSACTION_setUserRestriction:I = 0x85

.field static final blacklist TRANSACTION_setUserRestrictionForKnox:I = 0x1ad

.field static final blacklist TRANSACTION_setWifiSsidPolicy:I = 0x17a

.field static final blacklist TRANSACTION_shouldAllowBypassingDevicePolicyManagementRoleQualification:I = 0x185

.field static final greylist-max-o TRANSACTION_startManagedQuickContact:I = 0xc5

.field static final greylist-max-o TRANSACTION_startUserInBackground:I = 0x9b

.field static final blacklist TRANSACTION_startViewCalendarEventInManagedProfile:I = 0x159

.field static final greylist-max-o TRANSACTION_stopUser:I = 0x9c

.field static final greylist-max-o TRANSACTION_switchUser:I = 0x9a

.field static final greylist-max-o TRANSACTION_transferOwnership:I = 0x121

.field static final greylist-max-o TRANSACTION_uninstallCaCerts:I = 0x66

.field static final greylist-max-o TRANSACTION_uninstallPackageWithActiveAdmins:I = 0x107

.field static final greylist-max-o TRANSACTION_updateOverrideApn:I = 0x12a

.field static final greylist-max-o TRANSACTION_wipeDataWithReason:I = 0x2a


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 1587
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 1588
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 1589
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 1596
    if-nez p0, :cond_4

    .line 1597
    const/4 v0, 0x0

    return-object v0

    .line 1599
    :cond_4
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 1600
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 1601
    move-object v1, v0

    check-cast v1, Landroid/app/admin/IDevicePolicyManager;

    return-object v1

    .line 1603
    :cond_14
    new-instance v1, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 1612
    packed-switch p0, :pswitch_data_5de

    .line 3340
    const/4 v0, 0x0

    return-object v0

    .line 3336
    :pswitch_5
    const-string/jumbo v0, "setCrossProfileAppToIgnored"

    return-object v0

    .line 3332
    :pswitch_9
    const-string v0, "getSamsungSDcardEncryptionStatus"

    return-object v0

    .line 3328
    :pswitch_c
    const-string/jumbo v0, "setUserRestrictionForKnox"

    return-object v0

    .line 3324
    :pswitch_10
    const-string v0, "getBluetoothContactSharingEnabledForKnox"

    return-object v0

    .line 3320
    :pswitch_13
    const-string/jumbo v0, "setBluetoothContactSharingEnabledForKnox"

    return-object v0

    .line 3316
    :pswitch_17
    const-string/jumbo v0, "semSetChangeNotificationEnabled"

    return-object v0

    .line 3312
    :pswitch_1b
    const-string/jumbo v0, "semGetRequireStorageCardEncryption"

    return-object v0

    .line 3308
    :pswitch_1f
    const-string/jumbo v0, "semSetRequireStorageCardEncryption"

    return-object v0

    .line 3304
    :pswitch_23
    const-string/jumbo v0, "semGetAllowIrda"

    return-object v0

    .line 3300
    :pswitch_27
    const-string/jumbo v0, "semSetAllowIrda"

    return-object v0

    .line 3296
    :pswitch_2b
    const-string/jumbo v0, "semGetAllowDesktopSync"

    return-object v0

    .line 3292
    :pswitch_2f
    const-string/jumbo v0, "semSetAllowDesktopSync"

    return-object v0

    .line 3288
    :pswitch_33
    const-string/jumbo v0, "semGetAllowBluetoothMode"

    return-object v0

    .line 3284
    :pswitch_37
    const-string/jumbo v0, "semSetAllowBluetoothMode"

    return-object v0

    .line 3280
    :pswitch_3b
    const-string/jumbo v0, "semGetAllowInternetSharing"

    return-object v0

    .line 3276
    :pswitch_3f
    const-string/jumbo v0, "semSetAllowInternetSharing"

    return-object v0

    .line 3272
    :pswitch_43
    const-string/jumbo v0, "semGetAllowBrowser"

    return-object v0

    .line 3268
    :pswitch_47
    const-string/jumbo v0, "semSetAllowBrowser"

    return-object v0

    .line 3264
    :pswitch_4b
    const-string/jumbo v0, "semGetAllowPopImapEmail"

    return-object v0

    .line 3260
    :pswitch_4f
    const-string/jumbo v0, "semSetAllowPopImapEmail"

    return-object v0

    .line 3256
    :pswitch_53
    const-string/jumbo v0, "semGetAllowTextMessaging"

    return-object v0

    .line 3252
    :pswitch_57
    const-string/jumbo v0, "semSetAllowTextMessaging"

    return-object v0

    .line 3248
    :pswitch_5b
    const-string/jumbo v0, "semGetAllowWifi"

    return-object v0

    .line 3244
    :pswitch_5f
    const-string/jumbo v0, "semSetAllowWifi"

    return-object v0

    .line 3240
    :pswitch_63
    const-string/jumbo v0, "semGetAllowStorageCard"

    return-object v0

    .line 3236
    :pswitch_67
    const-string/jumbo v0, "semSetAllowStorageCard"

    return-object v0

    .line 3232
    :pswitch_6b
    const-string/jumbo v0, "semSetCameraDisabled"

    return-object v0

    .line 3228
    :pswitch_6f
    const-string/jumbo v0, "semSetKeyguardDisabledFeatures"

    return-object v0

    .line 3224
    :pswitch_73
    const-string/jumbo v0, "semIsSimplePasswordEnabled"

    return-object v0

    .line 3220
    :pswitch_77
    const-string/jumbo v0, "semSetSimplePasswordEnabled"

    return-object v0

    .line 3216
    :pswitch_7b
    const-string/jumbo v0, "semIsActivePasswordSufficient"

    return-object v0

    .line 3212
    :pswitch_7f
    const-string/jumbo v0, "semSetPasswordExpirationTimeout"

    return-object v0

    .line 3208
    :pswitch_83
    const-string/jumbo v0, "semSetPasswordHistoryLength"

    return-object v0

    .line 3204
    :pswitch_87
    const-string/jumbo v0, "semSetPasswordMinimumNonLetter"

    return-object v0

    .line 3200
    :pswitch_8b
    const-string/jumbo v0, "semSetPasswordMinimumSymbols"

    return-object v0

    .line 3196
    :pswitch_8f
    const-string/jumbo v0, "semSetPasswordMinimumNumeric"

    return-object v0

    .line 3192
    :pswitch_93
    const-string/jumbo v0, "semSetPasswordMinimumLetters"

    return-object v0

    .line 3188
    :pswitch_97
    const-string/jumbo v0, "semSetPasswordMinimumLowerCase"

    return-object v0

    .line 3184
    :pswitch_9b
    const-string/jumbo v0, "semSetPasswordMinimumUpperCase"

    return-object v0

    .line 3180
    :pswitch_9f
    const-string/jumbo v0, "semSetPasswordMinimumLength"

    return-object v0

    .line 3176
    :pswitch_a3
    const-string/jumbo v0, "semSetPasswordQuality"

    return-object v0

    .line 3172
    :pswitch_a7
    const-string v0, "getPolicyManagedProfiles"

    return-object v0

    .line 3168
    :pswitch_aa
    const-string/jumbo v0, "shouldAllowBypassingDevicePolicyManagementRoleQualification"

    return-object v0

    .line 3164
    :pswitch_ae
    const-string v0, "getString"

    return-object v0

    .line 3160
    :pswitch_b1
    const-string/jumbo v0, "resetStrings"

    return-object v0

    .line 3156
    :pswitch_b5
    const-string/jumbo v0, "setStrings"

    return-object v0

    .line 3152
    :pswitch_b9
    const-string/jumbo v0, "setDpcDownloaded"

    return-object v0

    .line 3148
    :pswitch_bd
    const-string v0, "isDpcDownloaded"

    return-object v0

    .line 3144
    :pswitch_c0
    const-string v0, "getDrawable"

    return-object v0

    .line 3140
    :pswitch_c3
    const-string/jumbo v0, "resetDrawables"

    return-object v0

    .line 3136
    :pswitch_c7
    const-string/jumbo v0, "setDrawables"

    return-object v0

    .line 3132
    :pswitch_cb
    const-string v0, "listForegroundAffiliatedUsers"

    return-object v0

    .line 3128
    :pswitch_ce
    const-string v0, "getWifiSsidPolicy"

    return-object v0

    .line 3124
    :pswitch_d1
    const-string/jumbo v0, "setWifiSsidPolicy"

    return-object v0

    .line 3120
    :pswitch_d5
    const-string v0, "getMinimumRequiredWifiSecurityLevel"

    return-object v0

    .line 3116
    :pswitch_d8
    const-string/jumbo v0, "setMinimumRequiredWifiSecurityLevel"

    return-object v0

    .line 3112
    :pswitch_dc
    const-string v0, "canUsbDataSignalingBeDisabled"

    return-object v0

    .line 3108
    :pswitch_df
    const-string v0, "isUsbDataSignalingEnabledForUser"

    return-object v0

    .line 3104
    :pswitch_e2
    const-string v0, "isUsbDataSignalingEnabled"

    return-object v0

    .line 3100
    :pswitch_e5
    const-string/jumbo v0, "setUsbDataSignalingEnabled"

    return-object v0

    .line 3096
    :pswitch_e9
    const-string v0, "canAdminGrantSensorsPermissionsForUser"

    return-object v0

    .line 3092
    :pswitch_ec
    const-string/jumbo v0, "resetDefaultCrossProfileIntentFilters"

    return-object v0

    .line 3088
    :pswitch_f0
    const-string v0, "getDeviceOwnerType"

    return-object v0

    .line 3084
    :pswitch_f3
    const-string/jumbo v0, "setDeviceOwnerType"

    return-object v0

    .line 3080
    :pswitch_f7
    const-string v0, "finalizeWorkProfileProvisioning"

    return-object v0

    .line 3076
    :pswitch_fa
    const-string/jumbo v0, "provisionFullyManagedDevice"

    return-object v0

    .line 3072
    :pswitch_fe
    const-string v0, "createAndProvisionManagedProfile"

    return-object v0

    .line 3068
    :pswitch_101
    const-string/jumbo v0, "setOrganizationIdForUser"

    return-object v0

    .line 3064
    :pswitch_105
    const-string v0, "getEnrollmentSpecificId"

    return-object v0

    .line 3060
    :pswitch_108
    const-string v0, "isSafeOperation"

    return-object v0

    .line 3056
    :pswitch_10b
    const-string/jumbo v0, "setNextOperationSafety"

    return-object v0

    .line 3052
    :pswitch_10f
    const-string v0, "canProfileOwnerResetPasswordWhenLocked"

    return-object v0

    .line 3048
    :pswitch_112
    const-string v0, "isComplianceAcknowledgementRequired"

    return-object v0

    .line 3044
    :pswitch_115
    const-string v0, "acknowledgeDeviceCompliant"

    return-object v0

    .line 3040
    :pswitch_118
    const-string/jumbo v0, "setManagedProfileMaximumTimeOff"

    return-object v0

    .line 3036
    :pswitch_11c
    const-string v0, "getManagedProfileMaximumTimeOff"

    return-object v0

    .line 3032
    :pswitch_11f
    const-string/jumbo v0, "setPersonalAppsSuspended"

    return-object v0

    .line 3028
    :pswitch_123
    const-string v0, "getPersonalAppsSuspendedReasons"

    return-object v0

    .line 3024
    :pswitch_126
    const-string v0, "isCommonCriteriaModeEnabled"

    return-object v0

    .line 3020
    :pswitch_129
    const-string/jumbo v0, "setCommonCriteriaModeEnabled"

    return-object v0

    .line 3016
    :pswitch_12d
    const-string v0, "getUserControlDisabledPackages"

    return-object v0

    .line 3012
    :pswitch_130
    const-string/jumbo v0, "setUserControlDisabledPackages"

    return-object v0

    .line 3008
    :pswitch_134
    const-string v0, "isKeyPairGrantedToWifiAuth"

    return-object v0

    .line 3004
    :pswitch_137
    const-string/jumbo v0, "setKeyGrantToWifiAuth"

    return-object v0

    .line 3000
    :pswitch_13b
    const-string v0, "getKeyPairGrants"

    return-object v0

    .line 2996
    :pswitch_13e
    const-string/jumbo v0, "setKeyGrantForApp"

    return-object v0

    .line 2992
    :pswitch_142
    const-string/jumbo v0, "startViewCalendarEventInManagedProfile"

    return-object v0

    .line 2988
    :pswitch_146
    const-string v0, "isUnattendedManagedKiosk"

    return-object v0

    .line 2984
    :pswitch_149
    const-string v0, "isManagedKiosk"

    return-object v0

    .line 2980
    :pswitch_14c
    const-string v0, "getDefaultCrossProfilePackages"

    return-object v0

    .line 2976
    :pswitch_14f
    const-string v0, "getAllCrossProfilePackages"

    return-object v0

    .line 2972
    :pswitch_152
    const-string v0, "getCrossProfilePackages"

    return-object v0

    .line 2968
    :pswitch_155
    const-string/jumbo v0, "setCrossProfilePackages"

    return-object v0

    .line 2964
    :pswitch_159
    const-string v0, "getCrossProfileCalendarPackagesForUser"

    return-object v0

    .line 2960
    :pswitch_15c
    const-string v0, "isPackageAllowedToAccessCalendarForUser"

    return-object v0

    .line 2956
    :pswitch_15f
    const-string v0, "getCrossProfileCalendarPackages"

    return-object v0

    .line 2952
    :pswitch_162
    const-string/jumbo v0, "setCrossProfileCalendarPackages"

    return-object v0

    .line 2948
    :pswitch_166
    const-string v0, "installUpdateFromFile"

    return-object v0

    .line 2944
    :pswitch_169
    const-string/jumbo v0, "setProfileOwnerOnOrganizationOwnedDevice"

    return-object v0

    .line 2940
    :pswitch_16d
    const-string v0, "getGlobalPrivateDnsHost"

    return-object v0

    .line 2936
    :pswitch_170
    const-string v0, "getGlobalPrivateDnsMode"

    return-object v0

    .line 2932
    :pswitch_173
    const-string/jumbo v0, "setGlobalPrivateDns"

    return-object v0

    .line 2928
    :pswitch_177
    const-string v0, "hasDelegatedPermission"

    return-object v0

    .line 2924
    :pswitch_17a
    const-string v0, "isProfileOwnerOfOrganizationOwnedDeviceMDM"

    return-object v0

    .line 2920
    :pswitch_17d
    const-string/jumbo v0, "setTrustAgentConfigurationMDM"

    return-object v0

    .line 2916
    :pswitch_181
    const-string/jumbo v0, "setResetPasswordTokenMDM"

    return-object v0

    .line 2912
    :pswitch_185
    const-string v0, "clearResetPasswordTokenMDM"

    return-object v0

    .line 2908
    :pswitch_188
    const-string v0, "isResetPasswordTokenActiveMDM"

    return-object v0

    .line 2904
    :pswitch_18b
    const-string/jumbo v0, "resetPasswordWithTokenMDM"

    return-object v0

    .line 2900
    :pswitch_18f
    const-string v0, "clearCrossProfileIntentFiltersMDM"

    return-object v0

    .line 2896
    :pswitch_192
    const-string v0, "addCrossProfileIntentFilterMDM"

    return-object v0

    .line 2892
    :pswitch_195
    const-string v0, "getApplicationRestrictionsMDM"

    return-object v0

    .line 2888
    :pswitch_198
    const-string/jumbo v0, "setApplicationRestrictionsMDM"

    return-object v0

    .line 2884
    :pswitch_19c
    const-string/jumbo v0, "setKeyguardDisabledFeaturesMDM"

    return-object v0

    .line 2880
    :pswitch_1a0
    const-string/jumbo v0, "setMaximumTimeToLockMDM"

    return-object v0

    .line 2876
    :pswitch_1a4
    const-string/jumbo v0, "setMaximumFailedPasswordsForWipeMDM"

    return-object v0

    .line 2872
    :pswitch_1a8
    const-string/jumbo v0, "setPasswordExpirationTimeoutMDM"

    return-object v0

    .line 2868
    :pswitch_1ac
    const-string/jumbo v0, "setPasswordHistoryLengthMDM"

    return-object v0

    .line 2864
    :pswitch_1b0
    const-string/jumbo v0, "setPasswordMinimumNonLetterMDM"

    return-object v0

    .line 2860
    :pswitch_1b4
    const-string/jumbo v0, "setPasswordMinimumSymbolsMDM"

    return-object v0

    .line 2856
    :pswitch_1b8
    const-string/jumbo v0, "setPasswordMinimumNumericMDM"

    return-object v0

    .line 2852
    :pswitch_1bc
    const-string/jumbo v0, "setPasswordMinimumLettersMDM"

    return-object v0

    .line 2848
    :pswitch_1c0
    const-string/jumbo v0, "setPasswordMinimumLowerCaseMDM"

    return-object v0

    .line 2844
    :pswitch_1c4
    const-string/jumbo v0, "setPasswordMinimumUpperCaseMDM"

    return-object v0

    .line 2840
    :pswitch_1c8
    const-string/jumbo v0, "setPasswordMinimumLengthMDM"

    return-object v0

    .line 2836
    :pswitch_1cc
    const-string/jumbo v0, "setPasswordQualityMDM"

    return-object v0

    .line 2832
    :pswitch_1d0
    const-string/jumbo v0, "rebootMDM"

    return-object v0

    .line 2828
    :pswitch_1d4
    const-string v0, "getActualDeviceOwnerMDM"

    return-object v0

    .line 2824
    :pswitch_1d7
    const-string v0, "isMeteredDataDisabledPackageForUser"

    return-object v0

    .line 2820
    :pswitch_1da
    const-string v0, "isOverrideApnEnabled"

    return-object v0

    .line 2816
    :pswitch_1dd
    const-string/jumbo v0, "setOverrideApnsEnabled"

    return-object v0

    .line 2812
    :pswitch_1e1
    const-string v0, "getOverrideApns"

    return-object v0

    .line 2808
    :pswitch_1e4
    const-string/jumbo v0, "removeOverrideApn"

    return-object v0

    .line 2804
    :pswitch_1e8
    const-string/jumbo v0, "updateOverrideApn"

    return-object v0

    .line 2800
    :pswitch_1ec
    const-string v0, "addOverrideApn"

    return-object v0

    .line 2796
    :pswitch_1ef
    const-string v0, "getMeteredDataDisabledPackages"

    return-object v0

    .line 2792
    :pswitch_1f2
    const-string/jumbo v0, "setMeteredDataDisabledPackages"

    return-object v0

    .line 2788
    :pswitch_1f6
    const-string v0, "getEndUserSessionMessage"

    return-object v0

    .line 2784
    :pswitch_1f9
    const-string v0, "getStartUserSessionMessage"

    return-object v0

    .line 2780
    :pswitch_1fc
    const-string/jumbo v0, "setEndUserSessionMessage"

    return-object v0

    .line 2776
    :pswitch_200
    const-string/jumbo v0, "setStartUserSessionMessage"

    return-object v0

    .line 2772
    :pswitch_204
    const-string v0, "getTransferOwnershipBundle"

    return-object v0

    .line 2768
    :pswitch_207
    const-string/jumbo v0, "transferOwnership"

    return-object v0

    .line 2764
    :pswitch_20b
    const-string v0, "getDisallowedSystemApps"

    return-object v0

    .line 2760
    :pswitch_20e
    const-string v0, "isLogoutEnabled"

    return-object v0

    .line 2756
    :pswitch_211
    const-string/jumbo v0, "setLogoutEnabled"

    return-object v0

    .line 2752
    :pswitch_215
    const-string v0, "clearApplicationUserData"

    return-object v0

    .line 2748
    :pswitch_218
    const-string v0, "getOwnerInstalledCaCerts"

    return-object v0

    .line 2744
    :pswitch_21b
    const-string v0, "isCurrentInputMethodSetByOwner"

    return-object v0

    .line 2740
    :pswitch_21e
    const-string/jumbo v0, "resetPasswordWithToken"

    return-object v0

    .line 2736
    :pswitch_222
    const-string v0, "isResetPasswordTokenActive"

    return-object v0

    .line 2732
    :pswitch_225
    const-string v0, "clearResetPasswordToken"

    return-object v0

    .line 2728
    :pswitch_228
    const-string/jumbo v0, "setResetPasswordToken"

    return-object v0

    .line 2724
    :pswitch_22c
    const-string v0, "getLastNetworkLogRetrievalTime"

    return-object v0

    .line 2720
    :pswitch_22f
    const-string v0, "getLastBugReportRequestTime"

    return-object v0

    .line 2716
    :pswitch_232
    const-string v0, "getLastSecurityLogRetrievalTime"

    return-object v0

    .line 2712
    :pswitch_235
    const-string v0, "isEphemeralUser"

    return-object v0

    .line 2708
    :pswitch_238
    const-string v0, "getBindDeviceAdminTargetUsers"

    return-object v0

    .line 2704
    :pswitch_23b
    const-string v0, "bindDeviceAdminServiceAsUser"

    return-object v0

    .line 2700
    :pswitch_23e
    const-string/jumbo v0, "retrieveNetworkLogs"

    return-object v0

    .line 2696
    :pswitch_242
    const-string v0, "isNetworkLoggingEnabled"

    return-object v0

    .line 2692
    :pswitch_245
    const-string/jumbo v0, "setNetworkLoggingEnabled"

    return-object v0

    .line 2688
    :pswitch_249
    const-string v0, "isBackupServiceEnabled"

    return-object v0

    .line 2684
    :pswitch_24c
    const-string/jumbo v0, "setBackupServiceEnabled"

    return-object v0

    .line 2680
    :pswitch_250
    const-string v0, "forceUpdateUserSetupComplete"

    return-object v0

    .line 2676
    :pswitch_253
    const-string/jumbo v0, "setDeviceProvisioningConfigApplied"

    return-object v0

    .line 2672
    :pswitch_257
    const-string v0, "isDeviceProvisioningConfigApplied"

    return-object v0

    .line 2668
    :pswitch_25a
    const-string v0, "isDeviceProvisioned"

    return-object v0

    .line 2664
    :pswitch_25d
    const-string/jumbo v0, "uninstallPackageWithActiveAdmins"

    return-object v0

    .line 2660
    :pswitch_261
    const-string v0, "isUninstallInQueue"

    return-object v0

    .line 2656
    :pswitch_264
    const-string v0, "forceSecurityLogs"

    return-object v0

    .line 2652
    :pswitch_267
    const-string v0, "forceNetworkLogs"

    return-object v0

    .line 2648
    :pswitch_26a
    const-string/jumbo v0, "retrievePreRebootSecurityLogs"

    return-object v0

    .line 2644
    :pswitch_26e
    const-string/jumbo v0, "retrieveSecurityLogs"

    return-object v0

    .line 2640
    :pswitch_272
    const-string v0, "isSecurityLoggingEnabled"

    return-object v0

    .line 2636
    :pswitch_275
    const-string/jumbo v0, "setSecurityLoggingEnabled"

    return-object v0

    .line 2632
    :pswitch_279
    const-string v0, "isAffiliatedUser"

    return-object v0

    .line 2628
    :pswitch_27c
    const-string v0, "isCallingUserAffiliated"

    return-object v0

    .line 2624
    :pswitch_27f
    const-string v0, "getAffiliationIds"

    return-object v0

    .line 2620
    :pswitch_282
    const-string/jumbo v0, "setAffiliationIds"

    return-object v0

    .line 2616
    :pswitch_286
    const-string/jumbo v0, "setUserProvisioningState"

    return-object v0

    .line 2612
    :pswitch_28a
    const-string v0, "getUserProvisioningState"

    return-object v0

    .line 2608
    :pswitch_28d
    const-string v0, "getOrganizationNameForUser"

    return-object v0

    .line 2604
    :pswitch_290
    const-string v0, "getDeviceOwnerOrganizationName"

    return-object v0

    .line 2600
    :pswitch_293
    const-string v0, "getOrganizationName"

    return-object v0

    .line 2596
    :pswitch_296
    const-string/jumbo v0, "setOrganizationName"

    return-object v0

    .line 2592
    :pswitch_29a
    const-string v0, "getOrganizationColorForUser"

    return-object v0

    .line 2588
    :pswitch_29d
    const-string v0, "getOrganizationColor"

    return-object v0

    .line 2584
    :pswitch_2a0
    const-string v0, "clearOrganizationIdForUser"

    return-object v0

    .line 2580
    :pswitch_2a3
    const-string/jumbo v0, "setOrganizationColorForUser"

    return-object v0

    .line 2576
    :pswitch_2a7
    const-string/jumbo v0, "setOrganizationColor"

    return-object v0

    .line 2572
    :pswitch_2ab
    const-string v0, "getLongSupportMessageForUser"

    return-object v0

    .line 2568
    :pswitch_2ae
    const-string v0, "getShortSupportMessageForUser"

    return-object v0

    .line 2564
    :pswitch_2b1
    const-string v0, "getLongSupportMessage"

    return-object v0

    .line 2560
    :pswitch_2b4
    const-string/jumbo v0, "setLongSupportMessage"

    return-object v0

    .line 2556
    :pswitch_2b8
    const-string v0, "getShortSupportMessage"

    return-object v0

    .line 2552
    :pswitch_2bb
    const-string/jumbo v0, "setShortSupportMessage"

    return-object v0

    .line 2548
    :pswitch_2bf
    const-string/jumbo v0, "reboot"

    return-object v0

    .line 2544
    :pswitch_2c3
    const-string v0, "getWifiMacAddress"

    return-object v0

    .line 2540
    :pswitch_2c6
    const-string v0, "isManagedProfile"

    return-object v0

    .line 2536
    :pswitch_2c9
    const-string v0, "getKeepUninstalledPackages"

    return-object v0

    .line 2532
    :pswitch_2cc
    const-string/jumbo v0, "setKeepUninstalledPackages"

    return-object v0

    .line 2528
    :pswitch_2d0
    const-string v0, "checkProvisioningPrecondition"

    return-object v0

    .line 2524
    :pswitch_2d3
    const-string v0, "isProvisioningAllowed"

    return-object v0

    .line 2520
    :pswitch_2d6
    const-string v0, "getPermissionGrantState"

    return-object v0

    .line 2516
    :pswitch_2d9
    const-string/jumbo v0, "setPermissionGrantState"

    return-object v0

    .line 2512
    :pswitch_2dd
    const-string v0, "getPermissionPolicy"

    return-object v0

    .line 2508
    :pswitch_2e0
    const-string/jumbo v0, "setPermissionPolicy"

    return-object v0

    .line 2504
    :pswitch_2e4
    const-string v0, "getPendingSystemUpdate"

    return-object v0

    .line 2500
    :pswitch_2e7
    const-string/jumbo v0, "notifyPendingSystemUpdate"

    return-object v0

    .line 2496
    :pswitch_2eb
    const-string v0, "getDoNotAskCredentialsOnBoot"

    return-object v0

    .line 2492
    :pswitch_2ee
    const-string/jumbo v0, "setStatusBarDisabled"

    return-object v0

    .line 2488
    :pswitch_2f2
    const-string/jumbo v0, "setKeyguardDisabled"

    return-object v0

    .line 2484
    :pswitch_2f6
    const-string v0, "clearSystemUpdatePolicyFreezePeriodRecord"

    return-object v0

    .line 2480
    :pswitch_2f9
    const-string v0, "getSystemUpdatePolicy"

    return-object v0

    .line 2476
    :pswitch_2fc
    const-string/jumbo v0, "setSystemUpdatePolicy"

    return-object v0

    .line 2472
    :pswitch_300
    const-string/jumbo v0, "setUserIcon"

    return-object v0

    .line 2468
    :pswitch_304
    const-string v0, "isRemovingAdmin"

    return-object v0

    .line 2464
    :pswitch_307
    const-string v0, "getForceEphemeralUsers"

    return-object v0

    .line 2460
    :pswitch_30a
    const-string/jumbo v0, "setForceEphemeralUsers"

    return-object v0

    .line 2456
    :pswitch_30e
    const-string v0, "getAutoTimeZoneEnabled"

    return-object v0

    .line 2452
    :pswitch_311
    const-string/jumbo v0, "setAutoTimeZoneEnabled"

    return-object v0

    .line 2448
    :pswitch_315
    const-string v0, "getAutoTimeEnabled"

    return-object v0

    .line 2444
    :pswitch_318
    const-string/jumbo v0, "setAutoTimeEnabled"

    return-object v0

    .line 2440
    :pswitch_31c
    const-string v0, "getAutoTimeRequired"

    return-object v0

    .line 2436
    :pswitch_31f
    const-string/jumbo v0, "setAutoTimeRequired"

    return-object v0

    .line 2432
    :pswitch_323
    const-string v0, "getCrossProfileWidgetProviders"

    return-object v0

    .line 2428
    :pswitch_326
    const-string/jumbo v0, "removeCrossProfileWidgetProvider"

    return-object v0

    .line 2424
    :pswitch_32a
    const-string v0, "addCrossProfileWidgetProvider"

    return-object v0

    .line 2420
    :pswitch_32d
    const-string v0, "getTrustAgentConfiguration"

    return-object v0

    .line 2416
    :pswitch_330
    const-string/jumbo v0, "setTrustAgentConfiguration"

    return-object v0

    .line 2412
    :pswitch_334
    const-string v0, "getBluetoothContactSharingDisabledForUser"

    return-object v0

    .line 2408
    :pswitch_337
    const-string v0, "getBluetoothContactSharingDisabled"

    return-object v0

    .line 2404
    :pswitch_33a
    const-string/jumbo v0, "setBluetoothContactSharingDisabled"

    return-object v0

    .line 2400
    :pswitch_33e
    const-string/jumbo v0, "startManagedQuickContact"

    return-object v0

    .line 2396
    :pswitch_342
    const-string v0, "getCrossProfileContactsSearchDisabledForUser"

    return-object v0

    .line 2392
    :pswitch_345
    const-string v0, "getCrossProfileContactsSearchDisabled"

    return-object v0

    .line 2388
    :pswitch_348
    const-string/jumbo v0, "setCrossProfileContactsSearchDisabled"

    return-object v0

    .line 2384
    :pswitch_34c
    const-string v0, "getCrossProfileCallerIdDisabledForUser"

    return-object v0

    .line 2380
    :pswitch_34f
    const-string v0, "getCrossProfileCallerIdDisabled"

    return-object v0

    .line 2376
    :pswitch_352
    const-string/jumbo v0, "setCrossProfileCallerIdDisabled"

    return-object v0

    .line 2372
    :pswitch_356
    const-string v0, "isUninstallBlocked"

    return-object v0

    .line 2368
    :pswitch_359
    const-string/jumbo v0, "setUninstallBlocked"

    return-object v0

    .line 2364
    :pswitch_35d
    const-string/jumbo v0, "notifyLockTaskModeChanged"

    return-object v0

    .line 2360
    :pswitch_361
    const-string v0, "isMasterVolumeMuted"

    return-object v0

    .line 2356
    :pswitch_364
    const-string/jumbo v0, "setMasterVolumeMuted"

    return-object v0

    .line 2352
    :pswitch_368
    const-string/jumbo v0, "setTimeZone"

    return-object v0

    .line 2348
    :pswitch_36c
    const-string/jumbo v0, "setTime"

    return-object v0

    .line 2344
    :pswitch_370
    const-string/jumbo v0, "setLocationEnabled"

    return-object v0

    .line 2340
    :pswitch_374
    const-string v0, "hasLockdownAdminConfiguredNetworks"

    return-object v0

    .line 2336
    :pswitch_377
    const-string/jumbo v0, "setConfiguredNetworksLockdownState"

    return-object v0

    .line 2332
    :pswitch_37b
    const-string/jumbo v0, "setSecureSetting"

    return-object v0

    .line 2328
    :pswitch_37f
    const-string/jumbo v0, "setSystemSetting"

    return-object v0

    .line 2324
    :pswitch_383
    const-string/jumbo v0, "setGlobalSetting"

    return-object v0

    .line 2320
    :pswitch_387
    const-string v0, "getLockTaskFeatures"

    return-object v0

    .line 2316
    :pswitch_38a
    const-string/jumbo v0, "setLockTaskFeatures"

    return-object v0

    .line 2312
    :pswitch_38e
    const-string v0, "isLockTaskPermitted"

    return-object v0

    .line 2308
    :pswitch_391
    const-string v0, "getLockTaskPackages"

    return-object v0

    .line 2304
    :pswitch_394
    const-string/jumbo v0, "setLockTaskPackages"

    return-object v0

    .line 2300
    :pswitch_398
    const-string v0, "getPreferentialNetworkServiceConfigs"

    return-object v0

    .line 2296
    :pswitch_39b
    const-string/jumbo v0, "setPreferentialNetworkServiceConfigs"

    return-object v0

    .line 2292
    :pswitch_39f
    const-string v0, "isSecondaryLockscreenEnabled"

    return-object v0

    .line 2288
    :pswitch_3a2
    const-string/jumbo v0, "setSecondaryLockscreenEnabled"

    return-object v0

    .line 2284
    :pswitch_3a6
    const-string v0, "getAccountTypesWithManagementDisabledAsUser"

    return-object v0

    .line 2280
    :pswitch_3a9
    const-string v0, "getAccountTypesWithManagementDisabled"

    return-object v0

    .line 2276
    :pswitch_3ac
    const-string/jumbo v0, "setAccountManagementDisabled"

    return-object v0

    .line 2272
    :pswitch_3b0
    const-string v0, "installExistingPackage"

    return-object v0

    .line 2268
    :pswitch_3b3
    const-string v0, "enableSystemAppWithIntent"

    return-object v0

    .line 2264
    :pswitch_3b6
    const-string v0, "enableSystemApp"

    return-object v0

    .line 2260
    :pswitch_3b9
    const-string v0, "isNewUserDisclaimerAcknowledged"

    return-object v0

    .line 2256
    :pswitch_3bc
    const-string v0, "acknowledgeNewUserDisclaimer"

    return-object v0

    .line 2252
    :pswitch_3bf
    const-string v0, "getSecondaryUsers"

    return-object v0

    .line 2248
    :pswitch_3c2
    const-string v0, "getLogoutUserId"

    return-object v0

    .line 2244
    :pswitch_3c5
    const-string v0, "logoutUserInternal"

    return-object v0

    .line 2240
    :pswitch_3c8
    const-string v0, "logoutUser"

    return-object v0

    .line 2236
    :pswitch_3cb
    const-string/jumbo v0, "stopUser"

    return-object v0

    .line 2232
    :pswitch_3cf
    const-string/jumbo v0, "startUserInBackground"

    return-object v0

    .line 2228
    :pswitch_3d3
    const-string/jumbo v0, "switchUser"

    return-object v0

    .line 2224
    :pswitch_3d7
    const-string/jumbo v0, "removeUser"

    return-object v0

    .line 2220
    :pswitch_3db
    const-string v0, "createAndManageUser"

    return-object v0

    .line 2216
    :pswitch_3de
    const-string v0, "isApplicationHidden"

    return-object v0

    .line 2212
    :pswitch_3e1
    const-string/jumbo v0, "setApplicationHidden"

    return-object v0

    .line 2208
    :pswitch_3e5
    const-string v0, "getEnforcingAdminAndUserDetails"

    return-object v0

    .line 2204
    :pswitch_3e8
    const-string v0, "createAdminSupportIntent"

    return-object v0

    .line 2200
    :pswitch_3eb
    const-string v0, "isNotificationListenerServicePermitted"

    return-object v0

    .line 2196
    :pswitch_3ee
    const-string v0, "getPermittedCrossProfileNotificationListeners"

    return-object v0

    .line 2192
    :pswitch_3f1
    const-string/jumbo v0, "setPermittedCrossProfileNotificationListeners"

    return-object v0

    .line 2188
    :pswitch_3f5
    const-string v0, "isInputMethodPermittedByAdmin"

    return-object v0

    .line 2184
    :pswitch_3f8
    const-string v0, "getPermittedInputMethodsAsUser"

    return-object v0

    .line 2180
    :pswitch_3fb
    const-string v0, "getPermittedInputMethods"

    return-object v0

    .line 2176
    :pswitch_3fe
    const-string/jumbo v0, "setPermittedInputMethods"

    return-object v0

    .line 2172
    :pswitch_402
    const-string v0, "isAccessibilityServicePermittedByAdmin"

    return-object v0

    .line 2168
    :pswitch_405
    const-string v0, "getPermittedAccessibilityServicesForUser"

    return-object v0

    .line 2164
    :pswitch_408
    const-string v0, "getPermittedAccessibilityServices"

    return-object v0

    .line 2160
    :pswitch_40b
    const-string/jumbo v0, "setPermittedAccessibilityServices"

    return-object v0

    .line 2156
    :pswitch_40f
    const-string v0, "clearCrossProfileIntentFilters"

    return-object v0

    .line 2152
    :pswitch_412
    const-string v0, "addCrossProfileIntentFilter"

    return-object v0

    .line 2148
    :pswitch_415
    const-string v0, "getUserRestrictions"

    return-object v0

    .line 2144
    :pswitch_418
    const-string/jumbo v0, "setUserRestriction"

    return-object v0

    .line 2140
    :pswitch_41c
    const-string v0, "getRestrictionsProvider"

    return-object v0

    .line 2136
    :pswitch_41f
    const-string/jumbo v0, "setRestrictionsProvider"

    return-object v0

    .line 2132
    :pswitch_423
    const-string v0, "isCallerApplicationRestrictionsManagingPackage"

    return-object v0

    .line 2128
    :pswitch_426
    const-string v0, "getApplicationRestrictionsManagingPackage"

    return-object v0

    .line 2124
    :pswitch_429
    const-string/jumbo v0, "setApplicationRestrictionsManagingPackage"

    return-object v0

    .line 2120
    :pswitch_42d
    const-string v0, "getApplicationRestrictions"

    return-object v0

    .line 2116
    :pswitch_430
    const-string/jumbo v0, "setApplicationRestrictions"

    return-object v0

    .line 2112
    :pswitch_434
    const-string/jumbo v0, "setDefaultSmsApplication"

    return-object v0

    .line 2108
    :pswitch_438
    const-string v0, "clearPackagePersistentPreferredActivities"

    return-object v0

    .line 2104
    :pswitch_43b
    const-string v0, "addPersistentPreferredActivity"

    return-object v0

    .line 2100
    :pswitch_43e
    const-string v0, "getAlwaysOnVpnLockdownAllowlist"

    return-object v0

    .line 2096
    :pswitch_441
    const-string v0, "isAlwaysOnVpnLockdownEnabledForUser"

    return-object v0

    .line 2092
    :pswitch_444
    const-string v0, "isAlwaysOnVpnLockdownEnabled"

    return-object v0

    .line 2088
    :pswitch_447
    const-string v0, "getAlwaysOnVpnPackageForUser"

    return-object v0

    .line 2084
    :pswitch_44a
    const-string v0, "getAlwaysOnVpnPackage"

    return-object v0

    .line 2080
    :pswitch_44d
    const-string/jumbo v0, "setAlwaysOnVpnPackage"

    return-object v0

    .line 2076
    :pswitch_451
    const-string v0, "getCertInstallerPackage"

    return-object v0

    .line 2072
    :pswitch_454
    const-string/jumbo v0, "setCertInstallerPackage"

    return-object v0

    .line 2068
    :pswitch_458
    const-string v0, "getDelegatePackages"

    return-object v0

    .line 2064
    :pswitch_45b
    const-string v0, "getDelegatedScopes"

    return-object v0

    .line 2060
    :pswitch_45e
    const-string/jumbo v0, "setDelegatedScopes"

    return-object v0

    .line 2056
    :pswitch_462
    const-string v0, "choosePrivateKeyAlias"

    return-object v0

    .line 2052
    :pswitch_465
    const-string/jumbo v0, "setKeyPairCertificate"

    return-object v0

    .line 2048
    :pswitch_469
    const-string v0, "generateKeyPair"

    return-object v0

    .line 2044
    :pswitch_46c
    const-string v0, "hasKeyPair"

    return-object v0

    .line 2040
    :pswitch_46f
    const-string/jumbo v0, "removeKeyPair"

    return-object v0

    .line 2036
    :pswitch_473
    const-string v0, "installKeyPair"

    return-object v0

    .line 2032
    :pswitch_476
    const-string v0, "isCaCertApproved"

    return-object v0

    .line 2028
    :pswitch_479
    const-string v0, "approveCaCert"

    return-object v0

    .line 2024
    :pswitch_47c
    const-string v0, "enforceCanManageCaCerts"

    return-object v0

    .line 2020
    :pswitch_47f
    const-string/jumbo v0, "uninstallCaCerts"

    return-object v0

    .line 2016
    :pswitch_483
    const-string v0, "installCaCert"

    return-object v0

    .line 2012
    :pswitch_486
    const-string v0, "listPolicyExemptApps"

    return-object v0

    .line 2008
    :pswitch_489
    const-string v0, "isPackageSuspended"

    return-object v0

    .line 2004
    :pswitch_48c
    const-string/jumbo v0, "setPackagesSuspended"

    return-object v0

    .line 2000
    :pswitch_490
    const-string v0, "getDeviceOwnerLockScreenInfo"

    return-object v0

    .line 1996
    :pswitch_493
    const-string/jumbo v0, "setDeviceOwnerLockScreenInfo"

    return-object v0

    .line 1992
    :pswitch_497
    const-string v0, "checkDeviceIdentifierAccess"

    return-object v0

    .line 1988
    :pswitch_49a
    const-string v0, "isOrganizationOwnedDeviceWithManagedProfile"

    return-object v0

    .line 1984
    :pswitch_49d
    const-string v0, "hasUserSetupCompleted"

    return-object v0

    .line 1980
    :pswitch_4a0
    const-string v0, "clearProfileOwner"

    return-object v0

    .line 1976
    :pswitch_4a3
    const-string/jumbo v0, "setProfileName"

    return-object v0

    .line 1972
    :pswitch_4a7
    const-string/jumbo v0, "setProfileEnabled"

    return-object v0

    .line 1968
    :pswitch_4ab
    const-string v0, "getProfileOwnerName"

    return-object v0

    .line 1964
    :pswitch_4ae
    const-string v0, "isSupervisionComponent"

    return-object v0

    .line 1960
    :pswitch_4b1
    const-string v0, "getProfileOwnerOrDeviceOwnerSupervisionComponent"

    return-object v0

    .line 1956
    :pswitch_4b4
    const-string v0, "getProfileOwnerAsUser"

    return-object v0

    .line 1952
    :pswitch_4b7
    const-string/jumbo v0, "setProfileOwner"

    return-object v0

    .line 1948
    :pswitch_4bb
    const-string v0, "getDeviceOwnerUserId"

    return-object v0

    .line 1944
    :pswitch_4be
    const-string v0, "clearDeviceOwner"

    return-object v0

    .line 1940
    :pswitch_4c1
    const-string v0, "getDeviceOwnerName"

    return-object v0

    .line 1936
    :pswitch_4c4
    const-string v0, "hasDeviceOwner"

    return-object v0

    .line 1932
    :pswitch_4c7
    const-string v0, "getDeviceOwnerComponent"

    return-object v0

    .line 1928
    :pswitch_4ca
    const-string/jumbo v0, "setDeviceOwner"

    return-object v0

    .line 1924
    :pswitch_4ce
    const-string/jumbo v0, "reportKeyguardSecured"

    return-object v0

    .line 1920
    :pswitch_4d2
    const-string/jumbo v0, "reportKeyguardDismissed"

    return-object v0

    .line 1916
    :pswitch_4d6
    const-string/jumbo v0, "reportSuccessfulBiometricAttempt"

    return-object v0

    .line 1912
    :pswitch_4da
    const-string/jumbo v0, "reportFailedBiometricAttempt"

    return-object v0

    .line 1908
    :pswitch_4de
    const-string/jumbo v0, "reportSuccessfulPasswordAttempt"

    return-object v0

    .line 1904
    :pswitch_4e2
    const-string/jumbo v0, "reportFailedPasswordAttempt"

    return-object v0

    .line 1900
    :pswitch_4e6
    const-string/jumbo v0, "reportPasswordChanged"

    return-object v0

    .line 1896
    :pswitch_4ea
    const-string v0, "hasGrantedPolicy"

    return-object v0

    .line 1892
    :pswitch_4ed
    const-string v0, "forceRemoveActiveAdmin"

    return-object v0

    .line 1888
    :pswitch_4f0
    const-string/jumbo v0, "removeActiveAdmin"

    return-object v0

    .line 1884
    :pswitch_4f4
    const-string v0, "getRemoveWarning"

    return-object v0

    .line 1880
    :pswitch_4f7
    const-string/jumbo v0, "packageHasActiveAdmins"

    return-object v0

    .line 1876
    :pswitch_4fb
    const-string v0, "getActiveAdmins"

    return-object v0

    .line 1872
    :pswitch_4fe
    const-string v0, "isAdminActive"

    return-object v0

    .line 1868
    :pswitch_501
    const-string/jumbo v0, "setActiveAdmin"

    return-object v0

    .line 1864
    :pswitch_505
    const-string v0, "getKeyguardDisabledFeatures"

    return-object v0

    .line 1860
    :pswitch_508
    const-string/jumbo v0, "setKeyguardDisabledFeatures"

    return-object v0

    .line 1856
    :pswitch_50c
    const-string v0, "getNearbyAppStreamingPolicy"

    return-object v0

    .line 1852
    :pswitch_50f
    const-string/jumbo v0, "setNearbyAppStreamingPolicy"

    return-object v0

    .line 1848
    :pswitch_513
    const-string v0, "getNearbyNotificationStreamingPolicy"

    return-object v0

    .line 1844
    :pswitch_516
    const-string/jumbo v0, "setNearbyNotificationStreamingPolicy"

    return-object v0

    .line 1840
    :pswitch_51a
    const-string v0, "getScreenCaptureDisabled"

    return-object v0

    .line 1836
    :pswitch_51d
    const-string/jumbo v0, "setScreenCaptureDisabled"

    return-object v0

    .line 1832
    :pswitch_521
    const-string v0, "getCameraDisabled"

    return-object v0

    .line 1828
    :pswitch_524
    const-string/jumbo v0, "setCameraDisabled"

    return-object v0

    .line 1824
    :pswitch_528
    const-string/jumbo v0, "requestBugreport"

    return-object v0

    .line 1820
    :pswitch_52c
    const-string v0, "getStorageEncryptionStatus"

    return-object v0

    .line 1816
    :pswitch_52f
    const-string v0, "getStorageEncryption"

    return-object v0

    .line 1812
    :pswitch_532
    const-string/jumbo v0, "setStorageEncryption"

    return-object v0

    .line 1808
    :pswitch_536
    const-string/jumbo v0, "setRecommendedGlobalProxy"

    return-object v0

    .line 1804
    :pswitch_53a
    const-string v0, "getGlobalProxyAdmin"

    return-object v0

    .line 1800
    :pswitch_53d
    const-string/jumbo v0, "setGlobalProxy"

    return-object v0

    .line 1796
    :pswitch_541
    const-string/jumbo v0, "sendLostModeLocationUpdate"

    return-object v0

    .line 1792
    :pswitch_545
    const-string v0, "isFactoryResetProtectionPolicySupported"

    return-object v0

    .line 1788
    :pswitch_548
    const-string v0, "getFactoryResetProtectionPolicy"

    return-object v0

    .line 1784
    :pswitch_54b
    const-string/jumbo v0, "setFactoryResetProtectionPolicy"

    return-object v0

    .line 1780
    :pswitch_54f
    const-string/jumbo v0, "wipeDataWithReason"

    return-object v0

    .line 1776
    :pswitch_553
    const-string v0, "lockNow"

    return-object v0

    .line 1772
    :pswitch_556
    const-string v0, "getRequiredStrongAuthTimeout"

    return-object v0

    .line 1768
    :pswitch_559
    const-string/jumbo v0, "setRequiredStrongAuthTimeout"

    return-object v0

    .line 1764
    :pswitch_55d
    const-string v0, "getMaximumTimeToLock"

    return-object v0

    .line 1760
    :pswitch_560
    const-string/jumbo v0, "setMaximumTimeToLock"

    return-object v0

    .line 1756
    :pswitch_564
    const-string/jumbo v0, "resetPassword"

    return-object v0

    .line 1752
    :pswitch_568
    const-string v0, "getMaximumFailedPasswordsForWipe"

    return-object v0

    .line 1748
    :pswitch_56b
    const-string/jumbo v0, "setMaximumFailedPasswordsForWipe"

    return-object v0

    .line 1744
    :pswitch_56f
    const-string v0, "getProfileWithMinimumFailedPasswordsForWipe"

    return-object v0

    .line 1740
    :pswitch_572
    const-string v0, "getCurrentFailedBiometricAttempts"

    return-object v0

    .line 1736
    :pswitch_575
    const-string v0, "getCurrentFailedPasswordAttempts"

    return-object v0

    .line 1732
    :pswitch_578
    const-string v0, "isUsingUnifiedPassword"

    return-object v0

    .line 1728
    :pswitch_57b
    const-string v0, "getAggregatedPasswordComplexityForUser"

    return-object v0

    .line 1724
    :pswitch_57e
    const-string v0, "getRequiredPasswordComplexity"

    return-object v0

    .line 1720
    :pswitch_581
    const-string/jumbo v0, "setRequiredPasswordComplexity"

    return-object v0

    .line 1716
    :pswitch_585
    const-string v0, "getPasswordComplexity"

    return-object v0

    .line 1712
    :pswitch_588
    const-string v0, "isPasswordSufficientAfterProfileUnification"

    return-object v0

    .line 1708
    :pswitch_58b
    const-string v0, "isActivePasswordSufficientForDeviceRequirement"

    return-object v0

    .line 1704
    :pswitch_58e
    const-string v0, "isActivePasswordSufficient"

    return-object v0

    .line 1700
    :pswitch_591
    const-string v0, "getPasswordExpiration"

    return-object v0

    .line 1696
    :pswitch_594
    const-string v0, "getPasswordExpirationTimeout"

    return-object v0

    .line 1692
    :pswitch_597
    const-string/jumbo v0, "setPasswordExpirationTimeout"

    return-object v0

    .line 1688
    :pswitch_59b
    const-string v0, "getPasswordHistoryLength"

    return-object v0

    .line 1684
    :pswitch_59e
    const-string/jumbo v0, "setPasswordHistoryLength"

    return-object v0

    .line 1680
    :pswitch_5a2
    const-string v0, "getPasswordMinimumMetrics"

    return-object v0

    .line 1676
    :pswitch_5a5
    const-string v0, "getPasswordMinimumNonLetter"

    return-object v0

    .line 1672
    :pswitch_5a8
    const-string/jumbo v0, "setPasswordMinimumNonLetter"

    return-object v0

    .line 1668
    :pswitch_5ac
    const-string v0, "getPasswordMinimumSymbols"

    return-object v0

    .line 1664
    :pswitch_5af
    const-string/jumbo v0, "setPasswordMinimumSymbols"

    return-object v0

    .line 1660
    :pswitch_5b3
    const-string v0, "getPasswordMinimumNumeric"

    return-object v0

    .line 1656
    :pswitch_5b6
    const-string/jumbo v0, "setPasswordMinimumNumeric"

    return-object v0

    .line 1652
    :pswitch_5ba
    const-string v0, "getPasswordMinimumLetters"

    return-object v0

    .line 1648
    :pswitch_5bd
    const-string/jumbo v0, "setPasswordMinimumLetters"

    return-object v0

    .line 1644
    :pswitch_5c1
    const-string v0, "getPasswordMinimumLowerCase"

    return-object v0

    .line 1640
    :pswitch_5c4
    const-string/jumbo v0, "setPasswordMinimumLowerCase"

    return-object v0

    .line 1636
    :pswitch_5c8
    const-string v0, "getPasswordMinimumUpperCase"

    return-object v0

    .line 1632
    :pswitch_5cb
    const-string/jumbo v0, "setPasswordMinimumUpperCase"

    return-object v0

    .line 1628
    :pswitch_5cf
    const-string v0, "getPasswordMinimumLength"

    return-object v0

    .line 1624
    :pswitch_5d2
    const-string/jumbo v0, "setPasswordMinimumLength"

    return-object v0

    .line 1620
    :pswitch_5d6
    const-string v0, "getPasswordQuality"

    return-object v0

    .line 1616
    :pswitch_5d9
    const-string/jumbo v0, "setPasswordQuality"

    return-object v0

    nop

    :pswitch_data_5de
    .packed-switch 0x1
        :pswitch_5d9
        :pswitch_5d6
        :pswitch_5d2
        :pswitch_5cf
        :pswitch_5cb
        :pswitch_5c8
        :pswitch_5c4
        :pswitch_5c1
        :pswitch_5bd
        :pswitch_5ba
        :pswitch_5b6
        :pswitch_5b3
        :pswitch_5af
        :pswitch_5ac
        :pswitch_5a8
        :pswitch_5a5
        :pswitch_5a2
        :pswitch_59e
        :pswitch_59b
        :pswitch_597
        :pswitch_594
        :pswitch_591
        :pswitch_58e
        :pswitch_58b
        :pswitch_588
        :pswitch_585
        :pswitch_581
        :pswitch_57e
        :pswitch_57b
        :pswitch_578
        :pswitch_575
        :pswitch_572
        :pswitch_56f
        :pswitch_56b
        :pswitch_568
        :pswitch_564
        :pswitch_560
        :pswitch_55d
        :pswitch_559
        :pswitch_556
        :pswitch_553
        :pswitch_54f
        :pswitch_54b
        :pswitch_548
        :pswitch_545
        :pswitch_541
        :pswitch_53d
        :pswitch_53a
        :pswitch_536
        :pswitch_532
        :pswitch_52f
        :pswitch_52c
        :pswitch_528
        :pswitch_524
        :pswitch_521
        :pswitch_51d
        :pswitch_51a
        :pswitch_516
        :pswitch_513
        :pswitch_50f
        :pswitch_50c
        :pswitch_508
        :pswitch_505
        :pswitch_501
        :pswitch_4fe
        :pswitch_4fb
        :pswitch_4f7
        :pswitch_4f4
        :pswitch_4f0
        :pswitch_4ed
        :pswitch_4ea
        :pswitch_4e6
        :pswitch_4e2
        :pswitch_4de
        :pswitch_4da
        :pswitch_4d6
        :pswitch_4d2
        :pswitch_4ce
        :pswitch_4ca
        :pswitch_4c7
        :pswitch_4c4
        :pswitch_4c1
        :pswitch_4be
        :pswitch_4bb
        :pswitch_4b7
        :pswitch_4b4
        :pswitch_4b1
        :pswitch_4ae
        :pswitch_4ab
        :pswitch_4a7
        :pswitch_4a3
        :pswitch_4a0
        :pswitch_49d
        :pswitch_49a
        :pswitch_497
        :pswitch_493
        :pswitch_490
        :pswitch_48c
        :pswitch_489
        :pswitch_486
        :pswitch_483
        :pswitch_47f
        :pswitch_47c
        :pswitch_479
        :pswitch_476
        :pswitch_473
        :pswitch_46f
        :pswitch_46c
        :pswitch_469
        :pswitch_465
        :pswitch_462
        :pswitch_45e
        :pswitch_45b
        :pswitch_458
        :pswitch_454
        :pswitch_451
        :pswitch_44d
        :pswitch_44a
        :pswitch_447
        :pswitch_444
        :pswitch_441
        :pswitch_43e
        :pswitch_43b
        :pswitch_438
        :pswitch_434
        :pswitch_430
        :pswitch_42d
        :pswitch_429
        :pswitch_426
        :pswitch_423
        :pswitch_41f
        :pswitch_41c
        :pswitch_418
        :pswitch_415
        :pswitch_412
        :pswitch_40f
        :pswitch_40b
        :pswitch_408
        :pswitch_405
        :pswitch_402
        :pswitch_3fe
        :pswitch_3fb
        :pswitch_3f8
        :pswitch_3f5
        :pswitch_3f1
        :pswitch_3ee
        :pswitch_3eb
        :pswitch_3e8
        :pswitch_3e5
        :pswitch_3e1
        :pswitch_3de
        :pswitch_3db
        :pswitch_3d7
        :pswitch_3d3
        :pswitch_3cf
        :pswitch_3cb
        :pswitch_3c8
        :pswitch_3c5
        :pswitch_3c2
        :pswitch_3bf
        :pswitch_3bc
        :pswitch_3b9
        :pswitch_3b6
        :pswitch_3b3
        :pswitch_3b0
        :pswitch_3ac
        :pswitch_3a9
        :pswitch_3a6
        :pswitch_3a2
        :pswitch_39f
        :pswitch_39b
        :pswitch_398
        :pswitch_394
        :pswitch_391
        :pswitch_38e
        :pswitch_38a
        :pswitch_387
        :pswitch_383
        :pswitch_37f
        :pswitch_37b
        :pswitch_377
        :pswitch_374
        :pswitch_370
        :pswitch_36c
        :pswitch_368
        :pswitch_364
        :pswitch_361
        :pswitch_35d
        :pswitch_359
        :pswitch_356
        :pswitch_352
        :pswitch_34f
        :pswitch_34c
        :pswitch_348
        :pswitch_345
        :pswitch_342
        :pswitch_33e
        :pswitch_33a
        :pswitch_337
        :pswitch_334
        :pswitch_330
        :pswitch_32d
        :pswitch_32a
        :pswitch_326
        :pswitch_323
        :pswitch_31f
        :pswitch_31c
        :pswitch_318
        :pswitch_315
        :pswitch_311
        :pswitch_30e
        :pswitch_30a
        :pswitch_307
        :pswitch_304
        :pswitch_300
        :pswitch_2fc
        :pswitch_2f9
        :pswitch_2f6
        :pswitch_2f2
        :pswitch_2ee
        :pswitch_2eb
        :pswitch_2e7
        :pswitch_2e4
        :pswitch_2e0
        :pswitch_2dd
        :pswitch_2d9
        :pswitch_2d6
        :pswitch_2d3
        :pswitch_2d0
        :pswitch_2cc
        :pswitch_2c9
        :pswitch_2c6
        :pswitch_2c3
        :pswitch_2bf
        :pswitch_2bb
        :pswitch_2b8
        :pswitch_2b4
        :pswitch_2b1
        :pswitch_2ae
        :pswitch_2ab
        :pswitch_2a7
        :pswitch_2a3
        :pswitch_2a0
        :pswitch_29d
        :pswitch_29a
        :pswitch_296
        :pswitch_293
        :pswitch_290
        :pswitch_28d
        :pswitch_28a
        :pswitch_286
        :pswitch_282
        :pswitch_27f
        :pswitch_27c
        :pswitch_279
        :pswitch_275
        :pswitch_272
        :pswitch_26e
        :pswitch_26a
        :pswitch_267
        :pswitch_264
        :pswitch_261
        :pswitch_25d
        :pswitch_25a
        :pswitch_257
        :pswitch_253
        :pswitch_250
        :pswitch_24c
        :pswitch_249
        :pswitch_245
        :pswitch_242
        :pswitch_23e
        :pswitch_23b
        :pswitch_238
        :pswitch_235
        :pswitch_232
        :pswitch_22f
        :pswitch_22c
        :pswitch_228
        :pswitch_225
        :pswitch_222
        :pswitch_21e
        :pswitch_21b
        :pswitch_218
        :pswitch_215
        :pswitch_211
        :pswitch_20e
        :pswitch_20b
        :pswitch_207
        :pswitch_204
        :pswitch_200
        :pswitch_1fc
        :pswitch_1f9
        :pswitch_1f6
        :pswitch_1f2
        :pswitch_1ef
        :pswitch_1ec
        :pswitch_1e8
        :pswitch_1e4
        :pswitch_1e1
        :pswitch_1dd
        :pswitch_1da
        :pswitch_1d7
        :pswitch_1d4
        :pswitch_1d0
        :pswitch_1cc
        :pswitch_1c8
        :pswitch_1c4
        :pswitch_1c0
        :pswitch_1bc
        :pswitch_1b8
        :pswitch_1b4
        :pswitch_1b0
        :pswitch_1ac
        :pswitch_1a8
        :pswitch_1a4
        :pswitch_1a0
        :pswitch_19c
        :pswitch_198
        :pswitch_195
        :pswitch_192
        :pswitch_18f
        :pswitch_18b
        :pswitch_188
        :pswitch_185
        :pswitch_181
        :pswitch_17d
        :pswitch_17a
        :pswitch_177
        :pswitch_173
        :pswitch_170
        :pswitch_16d
        :pswitch_169
        :pswitch_166
        :pswitch_162
        :pswitch_15f
        :pswitch_15c
        :pswitch_159
        :pswitch_155
        :pswitch_152
        :pswitch_14f
        :pswitch_14c
        :pswitch_149
        :pswitch_146
        :pswitch_142
        :pswitch_13e
        :pswitch_13b
        :pswitch_137
        :pswitch_134
        :pswitch_130
        :pswitch_12d
        :pswitch_129
        :pswitch_126
        :pswitch_123
        :pswitch_11f
        :pswitch_11c
        :pswitch_118
        :pswitch_115
        :pswitch_112
        :pswitch_10f
        :pswitch_10b
        :pswitch_108
        :pswitch_105
        :pswitch_101
        :pswitch_fe
        :pswitch_fa
        :pswitch_f7
        :pswitch_f3
        :pswitch_f0
        :pswitch_ec
        :pswitch_e9
        :pswitch_e5
        :pswitch_e2
        :pswitch_df
        :pswitch_dc
        :pswitch_d8
        :pswitch_d5
        :pswitch_d1
        :pswitch_ce
        :pswitch_cb
        :pswitch_c7
        :pswitch_c3
        :pswitch_c0
        :pswitch_bd
        :pswitch_b9
        :pswitch_b5
        :pswitch_b1
        :pswitch_ae
        :pswitch_aa
        :pswitch_a7
        :pswitch_a3
        :pswitch_9f
        :pswitch_9b
        :pswitch_97
        :pswitch_93
        :pswitch_8f
        :pswitch_8b
        :pswitch_87
        :pswitch_83
        :pswitch_7f
        :pswitch_7b
        :pswitch_77
        :pswitch_73
        :pswitch_6f
        :pswitch_6b
        :pswitch_67
        :pswitch_63
        :pswitch_5f
        :pswitch_5b
        :pswitch_57
        :pswitch_53
        :pswitch_4f
        :pswitch_4b
        :pswitch_47
        :pswitch_43
        :pswitch_3f
        :pswitch_3b
        :pswitch_37
        :pswitch_33
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_1f
        :pswitch_1b
        :pswitch_17
        :pswitch_13
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method private blacklist onTransact$addCrossProfileIntentFilter$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15466
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15468
    .local v0, "_arg0":Landroid/content/ComponentName;
    sget-object v1, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentFilter;

    .line 15470
    .local v1, "_arg1":Landroid/content/IntentFilter;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 15471
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15472
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->addCrossProfileIntentFilter(Landroid/content/ComponentName;Landroid/content/IntentFilter;I)V

    .line 15473
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15474
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$addCrossProfileIntentFilterMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16337
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16339
    .local v0, "_arg0":Landroid/content/ComponentName;
    sget-object v1, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentFilter;

    .line 16341
    .local v1, "_arg1":Landroid/content/IntentFilter;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 16343
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 16344
    .local v3, "_arg3":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16345
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->addCrossProfileIntentFilterMDM(Landroid/content/ComponentName;Landroid/content/IntentFilter;II)V

    .line 16346
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16347
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$addPersistentPreferredActivity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15384
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15386
    .local v0, "_arg0":Landroid/content/ComponentName;
    sget-object v1, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentFilter;

    .line 15388
    .local v1, "_arg1":Landroid/content/IntentFilter;
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 15389
    .local v2, "_arg2":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15390
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->addPersistentPreferredActivity(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/content/ComponentName;)V

    .line 15391
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15392
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$approveCaCert$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15228
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 15230
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 15232
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 15233
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15234
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->approveCaCert(Ljava/lang/String;IZ)Z

    move-result v3

    .line 15235
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15236
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15237
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$bindDeviceAdminServiceAsUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 19
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15985
    move-object/from16 v0, p1

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 15987
    .local v1, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v10

    .line 15989
    .local v10, "_arg1":Landroid/app/IApplicationThread;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 15991
    .local v11, "_arg2":Landroid/os/IBinder;
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/content/Intent;

    .line 15993
    .local v12, "_arg3":Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v13

    .line 15995
    .local v13, "_arg4":Landroid/app/IServiceConnection;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 15997
    .local v14, "_arg5":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 15998
    .local v15, "_arg6":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15999
    move-object/from16 v2, p0

    move-object v3, v1

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    move-object v7, v13

    move v8, v14

    move v9, v15

    invoke-virtual/range {v2 .. v9}, Landroid/app/admin/IDevicePolicyManager$Stub;->bindDeviceAdminServiceAsUser(Landroid/content/ComponentName;Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/IServiceConnection;II)Z

    move-result v2

    .line 16000
    .local v2, "_result":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16001
    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16002
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$checkDeviceIdentifierAccess$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 15150
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 15152
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 15153
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15154
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->checkDeviceIdentifierAccess(Ljava/lang/String;II)Z

    move-result v3

    .line 15155
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15156
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15157
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$choosePrivateKeyAlias$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15328
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 15330
    .local v0, "_arg0":I
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 15332
    .local v1, "_arg1":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15334
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 15335
    .local v3, "_arg3":Landroid/os/IBinder;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15336
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->choosePrivateKeyAlias(ILandroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 15337
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15338
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$clearApplicationUserData$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16035
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16037
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16039
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v2

    .line 16040
    .local v2, "_arg2":Landroid/content/pm/IPackageDataObserver;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16041
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearApplicationUserData(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 16042
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16043
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$createAndManageUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 14
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15574
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15576
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 15578
    .local v7, "_arg1":Ljava/lang/String;
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/content/ComponentName;

    .line 15580
    .local v8, "_arg2":Landroid/content/ComponentName;
    sget-object v1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/os/PersistableBundle;

    .line 15582
    .local v9, "_arg3":Landroid/os/PersistableBundle;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 15583
    .local v10, "_arg4":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15584
    move-object v1, p0

    move-object v2, v0

    move-object v3, v7

    move-object v4, v8

    move-object v5, v9

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->createAndManageUser(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/PersistableBundle;I)Landroid/os/UserHandle;

    move-result-object v1

    .line 15585
    .local v1, "_result":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15586
    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 15587
    return v2
.end method

.method private blacklist onTransact$enableSystemApp$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15603
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15605
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15607
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15608
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15609
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->enableSystemApp(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 15610
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15611
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$enableSystemAppWithIntent$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15617
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15619
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15621
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 15622
    .local v2, "_arg2":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15623
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->enableSystemAppWithIntent(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;)I

    move-result v3

    .line 15624
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15625
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 15626
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$generateKeyPair$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 16
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15285
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15287
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 15289
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 15291
    .local v9, "_arg2":Ljava/lang/String;
    sget-object v1, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/security/keystore/ParcelableKeyGenParameterSpec;

    .line 15293
    .local v10, "_arg3":Landroid/security/keystore/ParcelableKeyGenParameterSpec;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 15295
    .local v11, "_arg4":I
    new-instance v1, Landroid/security/keymaster/KeymasterCertificateChain;

    invoke-direct {v1}, Landroid/security/keymaster/KeymasterCertificateChain;-><init>()V

    move-object v12, v1

    .line 15296
    .local v12, "_arg5":Landroid/security/keymaster/KeymasterCertificateChain;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15297
    move-object v1, p0

    move-object v2, v0

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    move v6, v11

    move-object v7, v12

    invoke-virtual/range {v1 .. v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->generateKeyPair(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/ParcelableKeyGenParameterSpec;ILandroid/security/keymaster/KeymasterCertificateChain;)Z

    move-result v1

    .line 15298
    .local v1, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15299
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15300
    const/4 v2, 0x1

    invoke-virtual {p2, v12, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 15301
    return v2
.end method

.method private blacklist onTransact$getApplicationRestrictions$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15429
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15431
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15433
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15434
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15435
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 15436
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15437
    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 15438
    return v4
.end method

.method private blacklist onTransact$getApplicationRestrictionsMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16322
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16324
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16326
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 16327
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16328
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getApplicationRestrictionsMDM(Landroid/content/ComponentName;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v3

    .line 16329
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16330
    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 16331
    return v4
.end method

.method private blacklist onTransact$getCameraDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14970
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14972
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14974
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14975
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14976
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCameraDisabled(Landroid/content/ComponentName;IZ)Z

    move-result v3

    .line 14977
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14978
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14979
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getDisallowedSystemApps$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16051
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16053
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16055
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 16056
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16057
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDisallowedSystemApps(Landroid/content/ComponentName;ILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 16058
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16059
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 16060
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getDrawable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16580
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 16582
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16584
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 16585
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16586
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/admin/ParcelableResource;

    move-result-object v3

    .line 16587
    .local v3, "_result":Landroid/app/admin/ParcelableResource;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16588
    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 16589
    return v4
.end method

.method private blacklist onTransact$getKeyguardDisabledFeatures$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15032
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15034
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 15036
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 15037
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15038
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;IZ)I

    move-result v3

    .line 15039
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15040
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 15041
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getMaximumFailedPasswordsForWipe$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14842
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14844
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14846
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14847
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14848
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;IZ)I

    move-result v3

    .line 14849
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14850
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14851
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getMaximumTimeToLock$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14872
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14874
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14876
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14877
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14878
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumTimeToLock(Landroid/content/ComponentName;IZ)J

    move-result-wide v3

    .line 14879
    .local v3, "_result":J
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14880
    invoke-virtual {p2, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 14881
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$getPasswordExpiration$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14802
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14804
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14806
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14807
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14808
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordExpiration(Landroid/content/ComponentName;IZ)J

    move-result-wide v3

    .line 14809
    .local v3, "_result":J
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14810
    invoke-virtual {p2, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 14811
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$getPasswordExpirationTimeout$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14787
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14789
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14791
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14792
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14793
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordExpirationTimeout(Landroid/content/ComponentName;IZ)J

    move-result-wide v3

    .line 14794
    .local v3, "_result":J
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14795
    invoke-virtual {p2, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 14796
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$getPasswordHistoryLength$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14758
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14760
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14762
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14763
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14764
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordHistoryLength(Landroid/content/ComponentName;IZ)I

    move-result v3

    .line 14765
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14766
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14767
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getPasswordMinimumLength$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14554
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14556
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14558
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14559
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14560
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLength(Landroid/content/ComponentName;IZ)I

    move-result v3

    .line 14561
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14562
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14563
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getPasswordMinimumLetters$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14641
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14643
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14645
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14646
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14647
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLetters(Landroid/content/ComponentName;IZ)I

    move-result v3

    .line 14648
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14649
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14650
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getPasswordMinimumLowerCase$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14612
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14614
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14616
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14617
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14618
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;IZ)I

    move-result v3

    .line 14619
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14620
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14621
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getPasswordMinimumNonLetter$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14728
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14730
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14732
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14733
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14734
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;IZ)I

    move-result v3

    .line 14735
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14736
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14737
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getPasswordMinimumNumeric$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14670
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14672
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14674
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14675
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14676
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumNumeric(Landroid/content/ComponentName;IZ)I

    move-result v3

    .line 14677
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14678
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14679
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getPasswordMinimumSymbols$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14699
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14701
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14703
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14704
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14705
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumSymbols(Landroid/content/ComponentName;IZ)I

    move-result v3

    .line 14706
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14707
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14708
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getPasswordMinimumUpperCase$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14583
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14585
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14587
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14588
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14589
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;IZ)I

    move-result v3

    .line 14590
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14591
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14592
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getPasswordQuality$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14525
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14527
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14529
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14530
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14531
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordQuality(Landroid/content/ComponentName;IZ)I

    move-result v3

    .line 14532
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14533
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14534
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getPermissionGrantState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15870
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15872
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15874
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15876
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 15877
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15878
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 15879
    .local v4, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15880
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 15881
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$getRemoveWarning$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15064
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15066
    .local v0, "_arg0":Landroid/content/ComponentName;
    sget-object v1, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallback;

    .line 15068
    .local v1, "_arg1":Landroid/os/RemoteCallback;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 15069
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15070
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V

    .line 15071
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15072
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$getRequiredStrongAuthTimeout$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14901
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14903
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14905
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14906
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14907
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRequiredStrongAuthTimeout(Landroid/content/ComponentName;IZ)J

    move-result-wide v3

    .line 14908
    .local v3, "_result":J
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14909
    invoke-virtual {p2, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 14910
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$getSamsungSDcardEncryptionStatus$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17045
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 17047
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 17048
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17049
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getSamsungSDcardEncryptionStatus(Landroid/content/ComponentName;I)Z

    move-result v2

    .line 17050
    .local v2, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17051
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 17052
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$getScreenCaptureDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14999
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15001
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 15003
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 15004
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15005
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getScreenCaptureDisabled(Landroid/content/ComponentName;IZ)Z

    move-result v3

    .line 15006
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15007
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15008
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getTrustAgentConfiguration$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15797
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15799
    .local v0, "_arg0":Landroid/content/ComponentName;
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 15801
    .local v1, "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 15803
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 15804
    .local v3, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15805
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;IZ)Ljava/util/List;

    move-result-object v4

    .line 15806
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15807
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 15808
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$hasDelegatedPermission$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16407
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 16409
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16411
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 16412
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16413
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasDelegatedPermission(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v3

    .line 16414
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16415
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16416
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$hasGrantedPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15080
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15082
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 15084
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 15085
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15086
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasGrantedPolicy(Landroid/content/ComponentName;II)Z

    move-result v3

    .line 15087
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15088
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15089
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$installCaCert$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15198
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15200
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15202
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 15203
    .local v2, "_arg2":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15204
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->installCaCert(Landroid/content/ComponentName;Ljava/lang/String;[B)Z

    move-result v3

    .line 15205
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15206
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15207
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$installExistingPackage$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15632
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15634
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15636
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15637
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15638
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->installExistingPackage(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 15639
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15640
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15641
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$installKeyPair$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 21
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15244
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15246
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 15248
    .local v11, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v12

    .line 15250
    .local v12, "_arg2":[B
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v13

    .line 15252
    .local v13, "_arg3":[B
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    .line 15254
    .local v14, "_arg4":[B
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 15256
    .local v15, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 15258
    .local v16, "_arg6":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 15259
    .local v17, "_arg7":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15260
    move-object/from16 v2, p0

    move-object v3, v0

    move-object v4, v11

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    move-object v8, v15

    move/from16 v9, v16

    move/from16 v10, v17

    invoke-virtual/range {v2 .. v10}, Landroid/app/admin/IDevicePolicyManager$Stub;->installKeyPair(Landroid/content/ComponentName;Ljava/lang/String;[B[B[BLjava/lang/String;ZZ)Z

    move-result v2

    .line 15261
    .local v2, "_result":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15262
    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15263
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$installUpdateFromFile$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16453
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16455
    .local v0, "_arg0":Landroid/content/ComponentName;
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 16457
    .local v1, "_arg1":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/admin/StartInstallingUpdateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/StartInstallingUpdateCallback;

    move-result-object v2

    .line 16458
    .local v2, "_arg2":Landroid/app/admin/StartInstallingUpdateCallback;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16459
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->installUpdateFromFile(Landroid/content/ComponentName;Landroid/os/ParcelFileDescriptor;Landroid/app/admin/StartInstallingUpdateCallback;)V

    .line 16460
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16461
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$isAccessibilityServicePermittedByAdmin$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15484
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15486
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15488
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 15489
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15490
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAccessibilityServicePermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v3

    .line 15491
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15492
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15493
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$isApplicationHidden$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15557
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15559
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15561
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15563
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 15564
    .local v3, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15565
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    .line 15566
    .local v4, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15567
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15568
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$isInputMethodPermittedByAdmin$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15516
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15518
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15520
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 15522
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 15523
    .local v3, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15524
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isInputMethodPermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;IZ)Z

    move-result v4

    .line 15525
    .local v4, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15526
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15527
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$isMeteredDataDisabledPackageForUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16107
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16109
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16111
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 16112
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16113
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isMeteredDataDisabledPackageForUser(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v3

    .line 16114
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16115
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16116
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$isPackageSuspended$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15182
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15184
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15186
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15187
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15188
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isPackageSuspended(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 15189
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15190
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15191
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$notifyLockTaskModeChanged$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15723
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 15725
    .local v0, "_arg0":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15727
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 15728
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15729
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V

    .line 15730
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15731
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$removeKeyPair$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15269
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15271
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15273
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15274
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15275
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeKeyPair(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 15276
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15277
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15278
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$resetPasswordWithToken$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16016
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16018
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16020
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 16022
    .local v2, "_arg2":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 16023
    .local v3, "_arg3":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16024
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetPasswordWithToken(Landroid/content/ComponentName;Ljava/lang/String;[BI)Z

    move-result v4

    .line 16025
    .local v4, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16026
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16027
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$resetPasswordWithTokenMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 14
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16354
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16356
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 16358
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 16360
    .local v8, "_arg2":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 16362
    .local v9, "_arg3":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 16363
    .local v10, "_arg4":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16364
    move-object v1, p0

    move-object v2, v0

    move-object v3, v7

    move-object v4, v8

    move v5, v9

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetPasswordWithTokenMDM(Landroid/content/ComponentName;Ljava/lang/String;[BII)Z

    move-result v1

    .line 16365
    .local v1, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16366
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16367
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$retrieveNetworkLogs$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15970
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15972
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15974
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 15975
    .local v2, "_arg2":J
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15976
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->retrieveNetworkLogs(Landroid/content/ComponentName;Ljava/lang/String;J)Ljava/util/List;

    move-result-object v4

    .line 15977
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/NetworkEvent;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15978
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 15979
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$semGetAllowBluetoothMode$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16912
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16914
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16915
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16916
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semGetAllowBluetoothMode(Landroid/content/ComponentName;I)I

    move-result v2

    .line 16917
    .local v2, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16918
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 16919
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$semGetAllowBrowser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16862
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16864
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16865
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16866
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semGetAllowBrowser(Landroid/content/ComponentName;I)Z

    move-result v2

    .line 16867
    .local v2, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16868
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16869
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$semGetAllowDesktopSync$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16937
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16939
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16940
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16941
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semGetAllowDesktopSync(Landroid/content/ComponentName;I)Z

    move-result v2

    .line 16942
    .local v2, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16943
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16944
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$semGetAllowInternetSharing$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16887
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16889
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16890
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16891
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semGetAllowInternetSharing(Landroid/content/ComponentName;I)Z

    move-result v2

    .line 16892
    .local v2, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16893
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16894
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$semGetAllowIrda$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16962
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16964
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16965
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16966
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semGetAllowIrda(Landroid/content/ComponentName;I)Z

    move-result v2

    .line 16967
    .local v2, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16968
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16969
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$semGetAllowPopImapEmail$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16837
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16839
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16840
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16841
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semGetAllowPopImapEmail(Landroid/content/ComponentName;I)Z

    move-result v2

    .line 16842
    .local v2, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16843
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16844
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$semGetAllowStorageCard$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16762
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16764
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16765
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16766
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semGetAllowStorageCard(Landroid/content/ComponentName;I)Z

    move-result v2

    .line 16767
    .local v2, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16768
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16769
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$semGetAllowTextMessaging$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16812
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16814
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16815
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16816
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semGetAllowTextMessaging(Landroid/content/ComponentName;I)Z

    move-result v2

    .line 16817
    .local v2, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16818
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16819
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$semGetAllowWifi$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16787
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16789
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16790
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16791
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semGetAllowWifi(Landroid/content/ComponentName;I)Z

    move-result v2

    .line 16792
    .local v2, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16793
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16794
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$semGetRequireStorageCardEncryption$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16989
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16991
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16993
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 16994
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16995
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;IZ)Z

    move-result v3

    .line 16996
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16997
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16998
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$semIsSimplePasswordEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16713
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16715
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16716
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16717
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semIsSimplePasswordEnabled(Landroid/content/ComponentName;I)Z

    move-result v2

    .line 16718
    .local v2, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16719
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16720
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$semSetAllowBluetoothMode$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16900
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16902
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16903
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16904
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetAllowBluetoothMode(Landroid/content/ComponentName;I)V

    .line 16905
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16906
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$semSetAllowBrowser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16850
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16852
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 16853
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16854
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetAllowBrowser(Landroid/content/ComponentName;Z)V

    .line 16855
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16856
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$semSetAllowDesktopSync$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16925
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16927
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 16928
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16929
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetAllowDesktopSync(Landroid/content/ComponentName;Z)V

    .line 16930
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16931
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$semSetAllowInternetSharing$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16875
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16877
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 16878
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16879
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetAllowInternetSharing(Landroid/content/ComponentName;Z)V

    .line 16880
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16881
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$semSetAllowIrda$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16950
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16952
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 16953
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16954
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetAllowIrda(Landroid/content/ComponentName;Z)V

    .line 16955
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16956
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$semSetAllowPopImapEmail$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16825
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16827
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 16828
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16829
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetAllowPopImapEmail(Landroid/content/ComponentName;Z)V

    .line 16830
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16831
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$semSetAllowStorageCard$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16750
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16752
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 16753
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16754
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetAllowStorageCard(Landroid/content/ComponentName;Z)V

    .line 16755
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16756
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$semSetAllowTextMessaging$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16800
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16802
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 16803
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16804
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetAllowTextMessaging(Landroid/content/ComponentName;Z)V

    .line 16805
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16806
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$semSetAllowWifi$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16775
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16777
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 16778
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16779
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetAllowWifi(Landroid/content/ComponentName;Z)V

    .line 16780
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16781
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$semSetCameraDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16738
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16740
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 16741
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16742
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetCameraDisabled(Landroid/content/ComponentName;Z)V

    .line 16743
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16744
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$semSetChangeNotificationEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17004
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 17006
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 17007
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17008
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetChangeNotificationEnabled(Landroid/content/ComponentName;Z)V

    .line 17009
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17010
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$semSetKeyguardDisabledFeatures$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16726
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16728
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16729
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16730
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetKeyguardDisabledFeatures(Landroid/content/ComponentName;I)V

    .line 16731
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16732
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$semSetPasswordExpirationTimeout$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16688
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16690
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 16691
    .local v1, "_arg1":J
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16692
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetPasswordExpirationTimeout(Landroid/content/ComponentName;J)V

    .line 16693
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16694
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$semSetPasswordHistoryLength$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16676
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16678
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16679
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16680
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetPasswordHistoryLength(Landroid/content/ComponentName;I)V

    .line 16681
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16682
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$semSetPasswordMinimumLetters$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16628
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16630
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16631
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16632
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetPasswordMinimumLetters(Landroid/content/ComponentName;I)V

    .line 16633
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16634
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$semSetPasswordMinimumLowerCase$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16616
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16618
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16619
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16620
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetPasswordMinimumLowerCase(Landroid/content/ComponentName;I)V

    .line 16621
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16622
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$semSetPasswordMinimumNonLetter$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16664
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16666
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16667
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16668
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetPasswordMinimumNonLetter(Landroid/content/ComponentName;I)V

    .line 16669
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16670
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$semSetPasswordMinimumNumeric$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16640
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16642
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16643
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16644
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetPasswordMinimumNumeric(Landroid/content/ComponentName;I)V

    .line 16645
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16646
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$semSetPasswordMinimumSymbols$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16652
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16654
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16655
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16656
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetPasswordMinimumSymbols(Landroid/content/ComponentName;I)V

    .line 16657
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16658
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$semSetPasswordMinimumUpperCase$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16604
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16606
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16607
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16608
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetPasswordMinimumUpperCase(Landroid/content/ComponentName;I)V

    .line 16609
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16610
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$semSetRequireStorageCardEncryption$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16975
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16977
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 16979
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 16980
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16981
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetRequireStorageCardEncryption(Landroid/content/ComponentName;ZZ)V

    .line 16982
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16983
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$semSetSimplePasswordEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16701
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16703
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 16704
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16705
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetSimplePasswordEnabled(Landroid/content/ComponentName;Z)V

    .line 16706
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16707
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$setAccountManagementDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15647
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15649
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15651
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 15653
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 15654
    .local v3, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15655
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAccountManagementDisabled(Landroid/content/ComponentName;Ljava/lang/String;ZZ)V

    .line 15656
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15657
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setActiveAdmin$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15047
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15049
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 15051
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 15052
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15053
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    .line 15054
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15055
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setAlwaysOnVpnPackage$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15362
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15364
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15366
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 15368
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 15369
    .local v3, "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15370
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAlwaysOnVpnPackage(Landroid/content/ComponentName;Ljava/lang/String;ZLjava/util/List;)Z

    move-result v4

    .line 15371
    .local v4, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15372
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15373
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$setApplicationHidden$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 14
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15538
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15540
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 15542
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 15544
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 15546
    .local v9, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 15547
    .local v10, "_arg4":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15548
    move-object v1, p0

    move-object v2, v0

    move-object v3, v7

    move-object v4, v8

    move v5, v9

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v1

    .line 15549
    .local v1, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15550
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15551
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$setApplicationRestrictions$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15413
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15415
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15417
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15419
    .local v2, "_arg2":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 15420
    .local v3, "_arg3":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15421
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 15422
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15423
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setApplicationRestrictionsMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16306
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16308
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16310
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 16312
    .local v2, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 16313
    .local v3, "_arg3":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16314
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setApplicationRestrictionsMDM(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 16315
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16316
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setBluetoothContactSharingEnabledForKnox$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17016
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 17018
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 17019
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17020
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setBluetoothContactSharingEnabledForKnox(IZ)V

    .line 17021
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17022
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$setCameraDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14956
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14958
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 14960
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14961
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14962
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCameraDisabled(Landroid/content/ComponentName;ZZ)V

    .line 14963
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14964
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setCrossProfileAppToIgnored$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17058
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 17060
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 17061
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17062
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCrossProfileAppToIgnored(ILjava/lang/String;)V

    .line 17063
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17064
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$setDefaultSmsApplication$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15399
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15401
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15403
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 15404
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15405
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDefaultSmsApplication(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 15406
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15407
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setDelegatedScopes$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15344
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15346
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15348
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 15349
    .local v2, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15350
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;)V

    .line 15351
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15352
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setDeviceOwner$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15102
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15104
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15106
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 15108
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 15109
    .local v3, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15110
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDeviceOwner(Landroid/content/ComponentName;Ljava/lang/String;IZ)Z

    move-result v4

    .line 15111
    .local v4, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15112
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15113
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$setGlobalPrivateDns$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16422
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16424
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16426
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 16427
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16428
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setGlobalPrivateDns(Landroid/content/ComponentName;ILjava/lang/String;)I

    move-result v3

    .line 16429
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16430
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 16431
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setGlobalProxy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14935
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14937
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 14939
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 14940
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14941
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setGlobalProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 14942
    .local v3, "_result":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14943
    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 14944
    return v4
.end method

.method private blacklist onTransact$setGlobalSetting$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15674
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15676
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15678
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15679
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15680
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setGlobalSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 15681
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15682
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setKeepUninstalledPackages$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15889
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15891
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15893
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 15894
    .local v2, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15895
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeepUninstalledPackages(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;)V

    .line 15896
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15897
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setKeyGrantForApp$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 14
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16498
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16500
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 16502
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 16504
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 16506
    .local v9, "_arg3":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 16507
    .local v10, "_arg4":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16508
    move-object v1, p0

    move-object v2, v0

    move-object v3, v7

    move-object v4, v8

    move-object v5, v9

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeyGrantForApp(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 16509
    .local v1, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16510
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16511
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$setKeyGrantToWifiAuth$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16518
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 16520
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16522
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 16523
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16524
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeyGrantToWifiAuth(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 16525
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16526
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16527
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setKeyPairCertificate$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 16
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15307
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15309
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 15311
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 15313
    .local v9, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 15315
    .local v10, "_arg3":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v11

    .line 15317
    .local v11, "_arg4":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v12

    .line 15318
    .local v12, "_arg5":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15319
    move-object v1, p0

    move-object v2, v0

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    move-object v6, v11

    move v7, v12

    invoke-virtual/range {v1 .. v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeyPairCertificate(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;[B[BZ)Z

    move-result v1

    .line 15320
    .local v1, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15321
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15322
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$setKeyguardDisabledFeatures$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15018
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15020
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 15022
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 15023
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15024
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeyguardDisabledFeatures(Landroid/content/ComponentName;IZ)V

    .line 15025
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15026
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setKeyguardDisabledFeaturesMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16292
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16294
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16296
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 16297
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16298
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeyguardDisabledFeaturesMDM(Landroid/content/ComponentName;II)V

    .line 16299
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16300
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setMaximumFailedPasswordsForWipe$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14828
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14830
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14832
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14833
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14834
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;IZ)V

    .line 14835
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14836
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setMaximumFailedPasswordsForWipeMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16264
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16266
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16268
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 16269
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16270
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumFailedPasswordsForWipeMDM(Landroid/content/ComponentName;II)V

    .line 16271
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16272
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setMaximumTimeToLock$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14858
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14860
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 14862
    .local v1, "_arg1":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 14863
    .local v3, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14864
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumTimeToLock(Landroid/content/ComponentName;JZ)V

    .line 14865
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14866
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setMaximumTimeToLockMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16278
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16280
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 16282
    .local v1, "_arg1":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 16283
    .local v3, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16284
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumTimeToLockMDM(Landroid/content/ComponentName;JI)V

    .line 16285
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16286
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setNetworkLoggingEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15955
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15957
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15959
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 15960
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15961
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setNetworkLoggingEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 15962
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15963
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setOrganizationIdForUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16548
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 16550
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16552
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 16553
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16554
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setOrganizationIdForUser(Ljava/lang/String;Ljava/lang/String;I)V

    .line 16555
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16556
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPackagesSuspended$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15165
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15167
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15169
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 15171
    .local v2, "_arg2":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 15172
    .local v3, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15173
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPackagesSuspended(Landroid/content/ComponentName;Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v4

    .line 15174
    .local v4, "_result":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15175
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 15176
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$setPasswordExpirationTimeout$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14773
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14775
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 14777
    .local v1, "_arg1":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 14778
    .local v3, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14779
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordExpirationTimeout(Landroid/content/ComponentName;JZ)V

    .line 14780
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14781
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setPasswordExpirationTimeoutMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16250
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16252
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 16254
    .local v1, "_arg1":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 16255
    .local v3, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16256
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordExpirationTimeoutMDM(Landroid/content/ComponentName;JI)V

    .line 16257
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16258
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setPasswordHistoryLength$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14744
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14746
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14748
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14749
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14750
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordHistoryLength(Landroid/content/ComponentName;IZ)V

    .line 14751
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14752
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPasswordHistoryLengthMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16236
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16238
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16240
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 16241
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16242
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordHistoryLengthMDM(Landroid/content/ComponentName;II)V

    .line 16243
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16244
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPasswordMinimumLength$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14540
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14542
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14544
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14545
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14546
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLength(Landroid/content/ComponentName;IZ)V

    .line 14547
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14548
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPasswordMinimumLengthMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16138
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16140
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16142
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 16143
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16144
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLengthMDM(Landroid/content/ComponentName;II)V

    .line 16145
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16146
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPasswordMinimumLetters$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14627
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14629
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14631
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14632
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14633
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLetters(Landroid/content/ComponentName;IZ)V

    .line 14634
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14635
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPasswordMinimumLettersMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16180
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16182
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16184
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 16185
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16186
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLettersMDM(Landroid/content/ComponentName;II)V

    .line 16187
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16188
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPasswordMinimumLowerCase$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14598
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14600
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14602
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14603
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14604
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLowerCase(Landroid/content/ComponentName;IZ)V

    .line 14605
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14606
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPasswordMinimumLowerCaseMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16166
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16168
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16170
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 16171
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16172
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLowerCaseMDM(Landroid/content/ComponentName;II)V

    .line 16173
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16174
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPasswordMinimumNonLetter$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14714
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14716
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14718
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14719
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14720
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumNonLetter(Landroid/content/ComponentName;IZ)V

    .line 14721
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14722
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPasswordMinimumNonLetterMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16222
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16224
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16226
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 16227
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16228
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumNonLetterMDM(Landroid/content/ComponentName;II)V

    .line 16229
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16230
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPasswordMinimumNumeric$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14656
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14658
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14660
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14661
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14662
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumNumeric(Landroid/content/ComponentName;IZ)V

    .line 14663
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14664
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPasswordMinimumNumericMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16194
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16196
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16198
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 16199
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16200
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumNumericMDM(Landroid/content/ComponentName;II)V

    .line 16201
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16202
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPasswordMinimumSymbols$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14685
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14687
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14689
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14690
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14691
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumSymbols(Landroid/content/ComponentName;IZ)V

    .line 14692
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14693
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPasswordMinimumSymbolsMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16208
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16210
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16212
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 16213
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16214
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumSymbolsMDM(Landroid/content/ComponentName;II)V

    .line 16215
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16216
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPasswordMinimumUpperCase$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14569
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14571
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14573
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14574
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14575
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumUpperCase(Landroid/content/ComponentName;IZ)V

    .line 14576
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14577
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPasswordMinimumUpperCaseMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16152
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16154
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16156
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 16157
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16158
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumUpperCaseMDM(Landroid/content/ComponentName;II)V

    .line 16159
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16160
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPasswordQuality$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14511
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14513
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14515
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14516
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14517
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordQuality(Landroid/content/ComponentName;IZ)V

    .line 14518
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14519
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPasswordQualityMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16124
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16126
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16128
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 16129
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16130
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordQualityMDM(Landroid/content/ComponentName;II)V

    .line 16131
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16132
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPermissionGrantState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 16
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15850
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15852
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 15854
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 15856
    .local v9, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 15858
    .local v10, "_arg3":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 15860
    .local v11, "_arg4":I
    sget-object v1, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/os/RemoteCallback;

    .line 15861
    .local v12, "_arg5":Landroid/os/RemoteCallback;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15862
    move-object v1, p0

    move-object v2, v0

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    move v6, v11

    move-object v7, v12

    invoke-virtual/range {v1 .. v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    .line 15863
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15864
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist onTransact$setPermissionPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15835
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15837
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15839
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 15840
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15841
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermissionPolicy(Landroid/content/ComponentName;Ljava/lang/String;I)V

    .line 15842
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15843
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPermittedInputMethods$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15499
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15501
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 15503
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 15504
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15505
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermittedInputMethods(Landroid/content/ComponentName;Ljava/util/List;Z)Z

    move-result v3

    .line 15506
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15507
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15508
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setProfileOwner$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15124
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15126
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15128
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 15129
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15130
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v3

    .line 15131
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15132
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15133
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setProfileOwnerOnOrganizationOwnedDevice$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16439
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16441
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16443
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 16444
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16445
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setProfileOwnerOnOrganizationOwnedDevice(Landroid/content/ComponentName;IZ)V

    .line 16446
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16447
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setRequiredStrongAuthTimeout$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14887
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14889
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 14891
    .local v1, "_arg1":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 14892
    .local v3, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14893
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRequiredStrongAuthTimeout(Landroid/content/ComponentName;JZ)V

    .line 14894
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14895
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setResetPasswordTokenMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16375
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16377
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 16379
    .local v1, "_arg1":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 16380
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16381
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setResetPasswordTokenMDM(Landroid/content/ComponentName;[BI)Z

    move-result v3

    .line 16382
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16383
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16384
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setScreenCaptureDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14985
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14987
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 14989
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14990
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14991
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setScreenCaptureDisabled(Landroid/content/ComponentName;ZZ)V

    .line 14992
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14993
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setSecureSetting$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15702
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15704
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15706
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15707
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15708
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSecureSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 15709
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15710
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setSecurityLoggingEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15928
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15930
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15932
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 15933
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15934
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSecurityLoggingEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 15935
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15936
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setSystemSetting$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15688
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15690
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15692
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15693
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15694
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSystemSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 15695
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15696
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setTrustAgentConfiguration$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15781
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15783
    .local v0, "_arg0":Landroid/content/ComponentName;
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 15785
    .local v1, "_arg1":Landroid/content/ComponentName;
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    .line 15787
    .local v2, "_arg2":Landroid/os/PersistableBundle;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 15788
    .local v3, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15789
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;Z)V

    .line 15790
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15791
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setTrustAgentConfigurationMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16390
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 16392
    .local v0, "_arg0":I
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 16394
    .local v1, "_arg1":Landroid/content/ComponentName;
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 16396
    .local v2, "_arg2":Landroid/content/ComponentName;
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 16397
    .local v3, "_arg3":Landroid/os/PersistableBundle;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16398
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setTrustAgentConfigurationMDM(ILandroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V

    .line 16399
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16400
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setUninstallBlocked$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15737
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15739
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15741
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15743
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 15744
    .local v3, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15745
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 15746
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15747
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setUserRestriction$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15449
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15451
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15453
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 15455
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 15456
    .local v3, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15457
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;ZZ)V

    .line 15458
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15459
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setUserRestrictionForKnox$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17029
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 17031
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 17033
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 17035
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 17036
    .local v3, "_arg3":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17037
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserRestrictionForKnox(Landroid/content/ComponentName;Ljava/lang/String;ZI)V

    .line 17038
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17039
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$startManagedQuickContact$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 19
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15760
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 15762
    .local v8, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 15764
    .local v9, "_arg1":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v11

    .line 15766
    .local v11, "_arg2":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 15768
    .local v12, "_arg3":J
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v14, p1

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/content/Intent;

    .line 15769
    .local v15, "_arg4":Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15770
    move-object/from16 v0, p0

    move-object v1, v8

    move-wide v2, v9

    move v4, v11

    move-wide v5, v12

    move-object v7, v15

    invoke-virtual/range {v0 .. v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->startManagedQuickContact(Ljava/lang/String;JZJLandroid/content/Intent;)V

    .line 15771
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15772
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTransact$startViewCalendarEventInManagedProfile$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 22
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16477
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 16479
    .local v10, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 16481
    .local v11, "_arg1":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 16483
    .local v13, "_arg2":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 16485
    .local v15, "_arg3":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 16487
    .local v17, "_arg4":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 16488
    .local v18, "_arg5":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16489
    move-object/from16 v0, p0

    move-object v1, v10

    move-wide v2, v11

    move-wide v4, v13

    move-wide v6, v15

    move/from16 v8, v17

    move/from16 v9, v18

    invoke-virtual/range {v0 .. v9}, Landroid/app/admin/IDevicePolicyManager$Stub;->startViewCalendarEventInManagedProfile(Ljava/lang/String;JJJZI)Z

    move-result v0

    .line 16490
    .local v0, "_result":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16491
    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16492
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$transferOwnership$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16066
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16068
    .local v0, "_arg0":Landroid/content/ComponentName;
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 16070
    .local v1, "_arg1":Landroid/content/ComponentName;
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    .line 16071
    .local v2, "_arg2":Landroid/os/PersistableBundle;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16072
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->transferOwnership(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V

    .line 16073
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16074
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$uninstallCaCerts$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15213
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15215
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15217
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 15218
    .local v2, "_arg2":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15219
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->uninstallCaCerts(Landroid/content/ComponentName;Ljava/lang/String;[Ljava/lang/String;)V

    .line 15220
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15221
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$updateOverrideApn$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16088
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16090
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16092
    .local v1, "_arg1":I
    sget-object v2, Landroid/telephony/data/ApnSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/data/ApnSetting;

    .line 16093
    .local v2, "_arg2":Landroid/telephony/data/ApnSetting;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16094
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->updateOverrideApn(Landroid/content/ComponentName;ILandroid/telephony/data/ApnSetting;)Z

    move-result v3

    .line 16095
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16096
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16097
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$wipeDataWithReason$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14917
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 14919
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 14921
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14922
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14923
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->wipeDataWithReason(ILjava/lang/String;Z)V

    .line 14924
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14925
    const/4 v3, 0x1

    return v3
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 1607
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 17069
    const/16 v0, 0x1ae

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 3347
    invoke-static {p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3351
    const-string v0, "android.app.admin.IDevicePolicyManager"

    .line 3352
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 3353
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3355
    :cond_d
    packed-switch p1, :pswitch_data_19b4

    .line 3363
    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_19ba

    .line 6802
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 3359
    :pswitch_19
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3360
    return v1

    .line 6798
    :pswitch_1d
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setCrossProfileAppToIgnored$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6794
    :pswitch_22
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getSamsungSDcardEncryptionStatus$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6790
    :pswitch_27
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setUserRestrictionForKnox$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6781
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6782
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6783
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getBluetoothContactSharingEnabledForKnox(I)Z

    move-result v3

    .line 6784
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6785
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6786
    goto/16 :goto_1963

    .line 6776
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_3f
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setBluetoothContactSharingEnabledForKnox$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6772
    :pswitch_44
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semSetChangeNotificationEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6768
    :pswitch_49
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semGetRequireStorageCardEncryption$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6764
    :pswitch_4e
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semSetRequireStorageCardEncryption$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6760
    :pswitch_53
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semGetAllowIrda$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6756
    :pswitch_58
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semSetAllowIrda$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6752
    :pswitch_5d
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semGetAllowDesktopSync$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6748
    :pswitch_62
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semSetAllowDesktopSync$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6744
    :pswitch_67
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semGetAllowBluetoothMode$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6740
    :pswitch_6c
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semSetAllowBluetoothMode$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6736
    :pswitch_71
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semGetAllowInternetSharing$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6732
    :pswitch_76
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semSetAllowInternetSharing$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6728
    :pswitch_7b
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semGetAllowBrowser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6724
    :pswitch_80
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semSetAllowBrowser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6720
    :pswitch_85
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semGetAllowPopImapEmail$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6716
    :pswitch_8a
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semSetAllowPopImapEmail$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6712
    :pswitch_8f
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semGetAllowTextMessaging$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6708
    :pswitch_94
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semSetAllowTextMessaging$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6704
    :pswitch_99
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semGetAllowWifi$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6700
    :pswitch_9e
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semSetAllowWifi$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6696
    :pswitch_a3
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semGetAllowStorageCard$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6692
    :pswitch_a8
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semSetAllowStorageCard$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6688
    :pswitch_ad
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semSetCameraDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6684
    :pswitch_b2
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semSetKeyguardDisabledFeatures$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6680
    :pswitch_b7
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semIsSimplePasswordEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6676
    :pswitch_bc
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semSetSimplePasswordEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6667
    :pswitch_c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6668
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6669
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->semIsActivePasswordSufficient(I)Z

    move-result v3

    .line 6670
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6671
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6672
    goto/16 :goto_1963

    .line 6662
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_d4
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semSetPasswordExpirationTimeout$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6658
    :pswitch_d9
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semSetPasswordHistoryLength$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6654
    :pswitch_de
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semSetPasswordMinimumNonLetter$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6650
    :pswitch_e3
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semSetPasswordMinimumSymbols$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6646
    :pswitch_e8
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semSetPasswordMinimumNumeric$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6642
    :pswitch_ed
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semSetPasswordMinimumLetters$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6638
    :pswitch_f2
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semSetPasswordMinimumLowerCase$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6634
    :pswitch_f7
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$semSetPasswordMinimumUpperCase$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6624
    :pswitch_fc
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 6626
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6627
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6628
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetPasswordMinimumLength(Landroid/content/ComponentName;I)V

    .line 6629
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6630
    goto/16 :goto_1963

    .line 6613
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    :pswitch_113
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 6615
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6616
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6617
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetPasswordQuality(Landroid/content/ComponentName;I)V

    .line 6618
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6619
    goto/16 :goto_1963

    .line 6603
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    :pswitch_12a
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 6604
    .local v2, "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6605
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPolicyManagedProfiles(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v3

    .line 6606
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6607
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 6608
    goto/16 :goto_1963

    .line 6595
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :pswitch_141
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->shouldAllowBypassingDevicePolicyManagementRoleQualification()Z

    move-result v2

    .line 6596
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6597
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6598
    goto/16 :goto_1963

    .line 6586
    .end local v2    # "_result":Z
    :pswitch_14d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6587
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6588
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getString(Ljava/lang/String;)Landroid/app/admin/ParcelableResource;

    move-result-object v3

    .line 6589
    .local v3, "_result":Landroid/app/admin/ParcelableResource;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6590
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6591
    goto/16 :goto_1963

    .line 6577
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/app/admin/ParcelableResource;
    :pswitch_160
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 6578
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6579
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetStrings(Ljava/util/List;)V

    .line 6580
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6581
    goto/16 :goto_1963

    .line 6568
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_16f
    sget-object v2, Landroid/app/admin/DevicePolicyStringResource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 6569
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/DevicePolicyStringResource;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6570
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setStrings(Ljava/util/List;)V

    .line 6571
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6572
    goto/16 :goto_1963

    .line 6559
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/DevicePolicyStringResource;>;"
    :pswitch_180
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 6560
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6561
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDpcDownloaded(Z)V

    .line 6562
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6563
    goto/16 :goto_1963

    .line 6551
    .end local v2    # "_arg0":Z
    :pswitch_18f
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isDpcDownloaded()Z

    move-result v2

    .line 6552
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6553
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6554
    goto/16 :goto_1963

    .line 6547
    .end local v2    # "_result":Z
    :pswitch_19b
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getDrawable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6539
    :pswitch_1a0
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 6540
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6541
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetDrawables(Ljava/util/List;)V

    .line 6542
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6543
    goto/16 :goto_1963

    .line 6530
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1af
    sget-object v2, Landroid/app/admin/DevicePolicyDrawableResource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 6531
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/DevicePolicyDrawableResource;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6532
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDrawables(Ljava/util/List;)V

    .line 6533
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6534
    goto/16 :goto_1963

    .line 6522
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/DevicePolicyDrawableResource;>;"
    :pswitch_1c0
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->listForegroundAffiliatedUsers()Ljava/util/List;

    move-result-object v2

    .line 6523
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6524
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 6525
    goto/16 :goto_1963

    .line 6515
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :pswitch_1cc
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getWifiSsidPolicy()Landroid/app/admin/WifiSsidPolicy;

    move-result-object v2

    .line 6516
    .local v2, "_result":Landroid/app/admin/WifiSsidPolicy;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6517
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6518
    goto/16 :goto_1963

    .line 6507
    .end local v2    # "_result":Landroid/app/admin/WifiSsidPolicy;
    :pswitch_1d8
    sget-object v2, Landroid/app/admin/WifiSsidPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/WifiSsidPolicy;

    .line 6508
    .local v2, "_arg0":Landroid/app/admin/WifiSsidPolicy;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6509
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setWifiSsidPolicy(Landroid/app/admin/WifiSsidPolicy;)V

    .line 6510
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6511
    goto/16 :goto_1963

    .line 6499
    .end local v2    # "_arg0":Landroid/app/admin/WifiSsidPolicy;
    :pswitch_1eb
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMinimumRequiredWifiSecurityLevel()I

    move-result v2

    .line 6500
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6501
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6502
    goto/16 :goto_1963

    .line 6491
    .end local v2    # "_result":I
    :pswitch_1f7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6492
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6493
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMinimumRequiredWifiSecurityLevel(I)V

    .line 6494
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6495
    goto/16 :goto_1963

    .line 6483
    .end local v2    # "_arg0":I
    :pswitch_206
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->canUsbDataSignalingBeDisabled()Z

    move-result v2

    .line 6484
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6485
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6486
    goto/16 :goto_1963

    .line 6474
    .end local v2    # "_result":Z
    :pswitch_212
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6475
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6476
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isUsbDataSignalingEnabledForUser(I)Z

    move-result v3

    .line 6477
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6478
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6479
    goto/16 :goto_1963

    .line 6464
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_225
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6465
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6466
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isUsbDataSignalingEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 6467
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6468
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6469
    goto/16 :goto_1963

    .line 6453
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_238
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6455
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 6456
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6457
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUsbDataSignalingEnabled(Ljava/lang/String;Z)V

    .line 6458
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6459
    goto/16 :goto_1963

    .line 6443
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_24b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6444
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6445
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->canAdminGrantSensorsPermissionsForUser(I)Z

    move-result v3

    .line 6446
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6447
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6448
    goto/16 :goto_1963

    .line 6434
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_25e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6435
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6436
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetDefaultCrossProfileIntentFilters(I)V

    .line 6437
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6438
    goto/16 :goto_1963

    .line 6424
    .end local v2    # "_arg0":I
    :pswitch_26d
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 6425
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6426
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerType(Landroid/content/ComponentName;)I

    move-result v3

    .line 6427
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6428
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6429
    goto/16 :goto_1963

    .line 6413
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":I
    :pswitch_284
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 6415
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6416
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6417
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDeviceOwnerType(Landroid/content/ComponentName;I)V

    .line 6418
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6419
    goto/16 :goto_1963

    .line 6402
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    :pswitch_29b
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 6404
    .local v2, "_arg0":Landroid/os/UserHandle;
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    .line 6405
    .local v3, "_arg1":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6406
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->finalizeWorkProfileProvisioning(Landroid/os/UserHandle;Landroid/accounts/Account;)V

    .line 6407
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6408
    goto/16 :goto_1963

    .line 6391
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_arg1":Landroid/accounts/Account;
    :pswitch_2b6
    sget-object v2, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/FullyManagedDeviceProvisioningParams;

    .line 6393
    .local v2, "_arg0":Landroid/app/admin/FullyManagedDeviceProvisioningParams;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6394
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6395
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->provisionFullyManagedDevice(Landroid/app/admin/FullyManagedDeviceProvisioningParams;Ljava/lang/String;)V

    .line 6396
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6397
    goto/16 :goto_1963

    .line 6379
    .end local v2    # "_arg0":Landroid/app/admin/FullyManagedDeviceProvisioningParams;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_2cd
    sget-object v2, Landroid/app/admin/ManagedProfileProvisioningParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/ManagedProfileProvisioningParams;

    .line 6381
    .local v2, "_arg0":Landroid/app/admin/ManagedProfileProvisioningParams;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6382
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6383
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->createAndProvisionManagedProfile(Landroid/app/admin/ManagedProfileProvisioningParams;Ljava/lang/String;)Landroid/os/UserHandle;

    move-result-object v4

    .line 6384
    .local v4, "_result":Landroid/os/UserHandle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6385
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6386
    goto/16 :goto_1963

    .line 6374
    .end local v2    # "_arg0":Landroid/app/admin/ManagedProfileProvisioningParams;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/os/UserHandle;
    :pswitch_2e8
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setOrganizationIdForUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6365
    :pswitch_2ed
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6366
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6367
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getEnrollmentSpecificId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6368
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6369
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6370
    goto/16 :goto_1963

    .line 6355
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_300
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6356
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6357
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isSafeOperation(I)Z

    move-result v3

    .line 6358
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6359
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6360
    goto/16 :goto_1963

    .line 6344
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_313
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6346
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6347
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6348
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setNextOperationSafety(II)V

    .line 6349
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6350
    goto/16 :goto_1963

    .line 6334
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_326
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6335
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6336
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->canProfileOwnerResetPasswordWhenLocked(I)Z

    move-result v3

    .line 6337
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6338
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6339
    goto/16 :goto_1963

    .line 6326
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_339
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isComplianceAcknowledgementRequired()Z

    move-result v2

    .line 6327
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6328
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6329
    goto/16 :goto_1963

    .line 6320
    .end local v2    # "_result":Z
    :pswitch_345
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->acknowledgeDeviceCompliant()V

    .line 6321
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6322
    goto/16 :goto_1963

    .line 6310
    :pswitch_34d
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 6312
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 6313
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6314
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setManagedProfileMaximumTimeOff(Landroid/content/ComponentName;J)V

    .line 6315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6316
    goto/16 :goto_1963

    .line 6300
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":J
    :pswitch_364
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 6301
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6302
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getManagedProfileMaximumTimeOff(Landroid/content/ComponentName;)J

    move-result-wide v3

    .line 6303
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6304
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 6305
    goto/16 :goto_1963

    .line 6289
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":J
    :pswitch_37b
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 6291
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 6292
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6293
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPersonalAppsSuspended(Landroid/content/ComponentName;Z)V

    .line 6294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6295
    goto/16 :goto_1963

    .line 6279
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_392
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 6280
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6281
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPersonalAppsSuspendedReasons(Landroid/content/ComponentName;)I

    move-result v3

    .line 6282
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6283
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6284
    goto/16 :goto_1963

    .line 6269
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":I
    :pswitch_3a9
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 6270
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6271
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isCommonCriteriaModeEnabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 6272
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6273
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6274
    goto/16 :goto_1963

    .line 6258
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_3c0
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 6260
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 6261
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6262
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCommonCriteriaModeEnabled(Landroid/content/ComponentName;Z)V

    .line 6263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6264
    goto/16 :goto_1963

    .line 6248
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_3d7
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 6249
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6250
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getUserControlDisabledPackages(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 6251
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6252
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 6253
    goto/16 :goto_1963

    .line 6237
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_3ee
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 6239
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 6240
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6241
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserControlDisabledPackages(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 6242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6243
    goto/16 :goto_1963

    .line 6225
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_405
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6227
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6228
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6229
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isKeyPairGrantedToWifiAuth(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 6230
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6231
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6232
    goto/16 :goto_1963

    .line 6220
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_41c
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setKeyGrantToWifiAuth$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6209
    :pswitch_421
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6211
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6212
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6213
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getKeyPairGrants(Ljava/lang/String;Ljava/lang/String;)Landroid/app/admin/ParcelableGranteeMap;

    move-result-object v4

    .line 6214
    .local v4, "_result":Landroid/app/admin/ParcelableGranteeMap;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6215
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6216
    goto/16 :goto_1963

    .line 6204
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/app/admin/ParcelableGranteeMap;
    :pswitch_438
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setKeyGrantForApp$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6200
    :pswitch_43d
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$startViewCalendarEventInManagedProfile$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6193
    :pswitch_442
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isUnattendedManagedKiosk()Z

    move-result v2

    .line 6194
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6195
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6196
    goto/16 :goto_1963

    .line 6186
    .end local v2    # "_result":Z
    :pswitch_44e
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isManagedKiosk()Z

    move-result v2

    .line 6187
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6188
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6189
    goto/16 :goto_1963

    .line 6179
    .end local v2    # "_result":Z
    :pswitch_45a
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDefaultCrossProfilePackages()Ljava/util/List;

    move-result-object v2

    .line 6180
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6181
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 6182
    goto/16 :goto_1963

    .line 6172
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_466
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllCrossProfilePackages()Ljava/util/List;

    move-result-object v2

    .line 6173
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6174
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 6175
    goto/16 :goto_1963

    .line 6163
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_472
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 6164
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6165
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfilePackages(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 6166
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6167
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 6168
    goto/16 :goto_1963

    .line 6152
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_489
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 6154
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 6155
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6156
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCrossProfilePackages(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 6157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6158
    goto/16 :goto_1963

    .line 6142
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_4a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6143
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6144
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileCalendarPackagesForUser(I)Ljava/util/List;

    move-result-object v3

    .line 6145
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6146
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 6147
    goto/16 :goto_1963

    .line 6130
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_4b3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6132
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6133
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6134
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isPackageAllowedToAccessCalendarForUser(Ljava/lang/String;I)Z

    move-result v4

    .line 6135
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6136
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6137
    goto/16 :goto_1963

    .line 6120
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_4ca
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 6121
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6122
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileCalendarPackages(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 6123
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6124
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 6125
    goto/16 :goto_1963

    .line 6109
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_4e1
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 6111
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 6112
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6113
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCrossProfileCalendarPackages(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 6114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6115
    goto/16 :goto_1963

    .line 6104
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_4f8
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$installUpdateFromFile$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6100
    :pswitch_4fd
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setProfileOwnerOnOrganizationOwnedDevice$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6091
    :pswitch_502
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 6092
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6093
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getGlobalPrivateDnsHost(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    .line 6094
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6095
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6096
    goto/16 :goto_1963

    .line 6081
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_519
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 6082
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6083
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getGlobalPrivateDnsMode(Landroid/content/ComponentName;)I

    move-result v3

    .line 6084
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6085
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6086
    goto/16 :goto_1963

    .line 6076
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":I
    :pswitch_530
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setGlobalPrivateDns$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6072
    :pswitch_535
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$hasDelegatedPermission$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6063
    :pswitch_53a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6064
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6065
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isProfileOwnerOfOrganizationOwnedDeviceMDM(I)Z

    move-result v3

    .line 6066
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6067
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6068
    goto/16 :goto_1963

    .line 6058
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_54d
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setTrustAgentConfigurationMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6054
    :pswitch_552
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setResetPasswordTokenMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6043
    :pswitch_557
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 6045
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6046
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6047
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearResetPasswordTokenMDM(Landroid/content/ComponentName;I)Z

    move-result v4

    .line 6048
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6049
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6050
    goto/16 :goto_1963

    .line 6031
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_572
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 6033
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6034
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6035
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isResetPasswordTokenActiveMDM(Landroid/content/ComponentName;I)Z

    move-result v4

    .line 6036
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6037
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6038
    goto/16 :goto_1963

    .line 6026
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_58d
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$resetPasswordWithTokenMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6016
    :pswitch_592
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 6018
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6019
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6020
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearCrossProfileIntentFiltersMDM(Landroid/content/ComponentName;I)V

    .line 6021
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6022
    goto/16 :goto_1963

    .line 6011
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    :pswitch_5a9
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$addCrossProfileIntentFilterMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6007
    :pswitch_5ae
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getApplicationRestrictionsMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6003
    :pswitch_5b3
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setApplicationRestrictionsMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5999
    :pswitch_5b8
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setKeyguardDisabledFeaturesMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5995
    :pswitch_5bd
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setMaximumTimeToLockMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5991
    :pswitch_5c2
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setMaximumFailedPasswordsForWipeMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5987
    :pswitch_5c7
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordExpirationTimeoutMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5983
    :pswitch_5cc
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordHistoryLengthMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5979
    :pswitch_5d1
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordMinimumNonLetterMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5975
    :pswitch_5d6
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordMinimumSymbolsMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5971
    :pswitch_5db
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordMinimumNumericMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5967
    :pswitch_5e0
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordMinimumLettersMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5963
    :pswitch_5e5
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordMinimumLowerCaseMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5959
    :pswitch_5ea
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordMinimumUpperCaseMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5955
    :pswitch_5ef
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordMinimumLengthMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5951
    :pswitch_5f4
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordQualityMDM$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5942
    :pswitch_5f9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5943
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5944
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->rebootMDM(Ljava/lang/String;)Z

    move-result v3

    .line 5945
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5946
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5947
    goto/16 :goto_1963

    .line 5934
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_60c
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getActualDeviceOwnerMDM()Ljava/lang/String;

    move-result-object v2

    .line 5935
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5936
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5937
    goto/16 :goto_1963

    .line 5930
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_618
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$isMeteredDataDisabledPackageForUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5921
    :pswitch_61d
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5922
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5923
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isOverrideApnEnabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 5924
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5925
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5926
    goto/16 :goto_1963

    .line 5910
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_634
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5912
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 5913
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5914
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setOverrideApnsEnabled(Landroid/content/ComponentName;Z)V

    .line 5915
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5916
    goto/16 :goto_1963

    .line 5900
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_64b
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5901
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5902
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOverrideApns(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 5903
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/ApnSetting;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5904
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 5905
    goto/16 :goto_1963

    .line 5888
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/ApnSetting;>;"
    :pswitch_662
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5890
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5891
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5892
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeOverrideApn(Landroid/content/ComponentName;I)Z

    move-result v4

    .line 5893
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5894
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5895
    goto/16 :goto_1963

    .line 5883
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_67d
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$updateOverrideApn$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5872
    :pswitch_682
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5874
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/telephony/data/ApnSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/data/ApnSetting;

    .line 5875
    .local v3, "_arg1":Landroid/telephony/data/ApnSetting;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5876
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->addOverrideApn(Landroid/content/ComponentName;Landroid/telephony/data/ApnSetting;)I

    move-result v4

    .line 5877
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5878
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5879
    goto/16 :goto_1963

    .line 5862
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Landroid/telephony/data/ApnSetting;
    .end local v4    # "_result":I
    :pswitch_6a1
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5863
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5864
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMeteredDataDisabledPackages(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 5865
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5866
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5867
    goto/16 :goto_1963

    .line 5850
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_6b8
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5852
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 5853
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5854
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMeteredDataDisabledPackages(Landroid/content/ComponentName;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 5855
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5856
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5857
    goto/16 :goto_1963

    .line 5834
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_6d3
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 5835
    .local v3, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5836
    invoke-virtual {p0, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getEndUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 5837
    .local v4, "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5838
    if-eqz v4, :cond_6ef

    .line 5839
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5840
    invoke-static {v4, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_1963

    .line 5843
    :cond_6ef
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5845
    goto/16 :goto_1963

    .line 5818
    .end local v3    # "_arg0":Landroid/content/ComponentName;
    .end local v4    # "_result":Ljava/lang/CharSequence;
    :pswitch_6f4
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 5819
    .restart local v3    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5820
    invoke-virtual {p0, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStartUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 5821
    .restart local v4    # "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5822
    if-eqz v4, :cond_710

    .line 5823
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5824
    invoke-static {v4, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_1963

    .line 5827
    :cond_710
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5829
    goto/16 :goto_1963

    .line 5807
    .end local v3    # "_arg0":Landroid/content/ComponentName;
    .end local v4    # "_result":Ljava/lang/CharSequence;
    :pswitch_715
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5809
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 5810
    .local v3, "_arg1":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5811
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setEndUserSessionMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 5812
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5813
    goto/16 :goto_1963

    .line 5796
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/CharSequence;
    :pswitch_730
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5798
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 5799
    .restart local v3    # "_arg1":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5800
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setStartUserSessionMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 5801
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5802
    goto/16 :goto_1963

    .line 5788
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/CharSequence;
    :pswitch_74b
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getTransferOwnershipBundle()Landroid/os/PersistableBundle;

    move-result-object v2

    .line 5789
    .local v2, "_result":Landroid/os/PersistableBundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5790
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5791
    goto/16 :goto_1963

    .line 5784
    .end local v2    # "_result":Landroid/os/PersistableBundle;
    :pswitch_757
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$transferOwnership$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5780
    :pswitch_75c
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getDisallowedSystemApps$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5773
    :pswitch_761
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isLogoutEnabled()Z

    move-result v2

    .line 5774
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5775
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5776
    goto/16 :goto_1963

    .line 5763
    .end local v2    # "_result":Z
    :pswitch_76d
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5765
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 5766
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5767
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setLogoutEnabled(Landroid/content/ComponentName;Z)V

    .line 5768
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5769
    goto/16 :goto_1963

    .line 5758
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_784
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$clearApplicationUserData$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5749
    :pswitch_789
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 5750
    .local v2, "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5751
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOwnerInstalledCaCerts(Landroid/os/UserHandle;)Landroid/content/pm/StringParceledListSlice;

    move-result-object v3

    .line 5752
    .local v3, "_result":Landroid/content/pm/StringParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5753
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5754
    goto/16 :goto_1963

    .line 5741
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_result":Landroid/content/pm/StringParceledListSlice;
    :pswitch_7a0
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isCurrentInputMethodSetByOwner()Z

    move-result v2

    .line 5742
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5743
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5744
    goto/16 :goto_1963

    .line 5737
    .end local v2    # "_result":Z
    :pswitch_7ac
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$resetPasswordWithToken$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5728
    :pswitch_7b1
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5729
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5730
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isResetPasswordTokenActive(Landroid/content/ComponentName;)Z

    move-result v3

    .line 5731
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5732
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5733
    goto/16 :goto_1963

    .line 5718
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_7c8
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5719
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5720
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearResetPasswordToken(Landroid/content/ComponentName;)Z

    move-result v3

    .line 5721
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5722
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5723
    goto/16 :goto_1963

    .line 5706
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_7df
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5708
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 5709
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5710
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setResetPasswordToken(Landroid/content/ComponentName;[B)Z

    move-result v4

    .line 5711
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5712
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5713
    goto/16 :goto_1963

    .line 5698
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":[B
    .end local v4    # "_result":Z
    :pswitch_7fa
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLastNetworkLogRetrievalTime()J

    move-result-wide v2

    .line 5699
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5700
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 5701
    goto/16 :goto_1963

    .line 5691
    .end local v2    # "_result":J
    :pswitch_806
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLastBugReportRequestTime()J

    move-result-wide v2

    .line 5692
    .restart local v2    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5693
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 5694
    goto/16 :goto_1963

    .line 5684
    .end local v2    # "_result":J
    :pswitch_812
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLastSecurityLogRetrievalTime()J

    move-result-wide v2

    .line 5685
    .restart local v2    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5686
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 5687
    goto/16 :goto_1963

    .line 5675
    .end local v2    # "_result":J
    :pswitch_81e
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5676
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5677
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isEphemeralUser(Landroid/content/ComponentName;)Z

    move-result v3

    .line 5678
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5679
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5680
    goto/16 :goto_1963

    .line 5665
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_835
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5666
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5667
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getBindDeviceAdminTargetUsers(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 5668
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5669
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 5670
    goto/16 :goto_1963

    .line 5660
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :pswitch_84c
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$bindDeviceAdminServiceAsUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5656
    :pswitch_851
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$retrieveNetworkLogs$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5645
    :pswitch_856
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5647
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5648
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5649
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isNetworkLoggingEnabled(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v4

    .line 5650
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5651
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5652
    goto/16 :goto_1963

    .line 5640
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_871
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setNetworkLoggingEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5631
    :pswitch_876
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5632
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5633
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isBackupServiceEnabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 5634
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5635
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5636
    goto/16 :goto_1963

    .line 5620
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_88d
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5622
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 5623
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5624
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setBackupServiceEnabled(Landroid/content/ComponentName;Z)V

    .line 5625
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5626
    goto/16 :goto_1963

    .line 5611
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_8a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5612
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5613
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->forceUpdateUserSetupComplete(I)V

    .line 5614
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5615
    goto/16 :goto_1963

    .line 5604
    .end local v2    # "_arg0":I
    :pswitch_8b3
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDeviceProvisioningConfigApplied()V

    .line 5605
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5606
    goto/16 :goto_1963

    .line 5597
    :pswitch_8bb
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isDeviceProvisioningConfigApplied()Z

    move-result v2

    .line 5598
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5599
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5600
    goto/16 :goto_1963

    .line 5590
    .end local v2    # "_result":Z
    :pswitch_8c7
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isDeviceProvisioned()Z

    move-result v2

    .line 5591
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5592
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5593
    goto/16 :goto_1963

    .line 5582
    .end local v2    # "_result":Z
    :pswitch_8d3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5583
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5584
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->uninstallPackageWithActiveAdmins(Ljava/lang/String;)V

    .line 5585
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5586
    goto/16 :goto_1963

    .line 5572
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_8e2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5573
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5574
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isUninstallInQueue(Ljava/lang/String;)Z

    move-result v3

    .line 5575
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5576
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5577
    goto/16 :goto_1963

    .line 5564
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_8f5
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->forceSecurityLogs()J

    move-result-wide v2

    .line 5565
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5566
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 5567
    goto/16 :goto_1963

    .line 5557
    .end local v2    # "_result":J
    :pswitch_901
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->forceNetworkLogs()J

    move-result-wide v2

    .line 5558
    .restart local v2    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5559
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 5560
    goto/16 :goto_1963

    .line 5546
    .end local v2    # "_result":J
    :pswitch_90d
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5548
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5549
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5550
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->retrievePreRebootSecurityLogs(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 5551
    .local v4, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5552
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5553
    goto/16 :goto_1963

    .line 5534
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_928
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5536
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5537
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5538
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->retrieveSecurityLogs(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 5539
    .restart local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5540
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5541
    goto/16 :goto_1963

    .line 5522
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_943
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5524
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5525
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5526
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isSecurityLoggingEnabled(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v4

    .line 5527
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5528
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5529
    goto/16 :goto_1963

    .line 5517
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_95e
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setSecurityLoggingEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5508
    :pswitch_963
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5509
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5510
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAffiliatedUser(I)Z

    move-result v3

    .line 5511
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5512
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5513
    goto/16 :goto_1963

    .line 5500
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_976
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isCallingUserAffiliated()Z

    move-result v2

    .line 5501
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5502
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5503
    goto/16 :goto_1963

    .line 5491
    .end local v2    # "_result":Z
    :pswitch_982
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5492
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5493
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAffiliationIds(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 5494
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5495
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5496
    goto/16 :goto_1963

    .line 5480
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_999
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5482
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 5483
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5484
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAffiliationIds(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 5485
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5486
    goto/16 :goto_1963

    .line 5469
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_9b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5471
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5472
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5473
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserProvisioningState(II)V

    .line 5474
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5475
    goto/16 :goto_1963

    .line 5461
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_9c3
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getUserProvisioningState()I

    move-result v2

    .line 5462
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5463
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5464
    goto/16 :goto_1963

    .line 5446
    .end local v2    # "_result":I
    :pswitch_9cf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5447
    .local v3, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5448
    invoke-virtual {p0, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOrganizationNameForUser(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 5449
    .local v4, "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5450
    if-eqz v4, :cond_9e7

    .line 5451
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5452
    invoke-static {v4, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_1963

    .line 5455
    :cond_9e7
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5457
    goto/16 :goto_1963

    .line 5432
    .end local v3    # "_arg0":I
    .end local v4    # "_result":Ljava/lang/CharSequence;
    :pswitch_9ec
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object v3

    .line 5433
    .local v3, "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5434
    if-eqz v3, :cond_9fd

    .line 5435
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5436
    invoke-static {v3, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_1963

    .line 5439
    :cond_9fd
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5441
    goto/16 :goto_1963

    .line 5417
    .end local v3    # "_result":Ljava/lang/CharSequence;
    :pswitch_a02
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 5418
    .local v3, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5419
    invoke-virtual {p0, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOrganizationName(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 5420
    .restart local v4    # "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5421
    if-eqz v4, :cond_a1e

    .line 5422
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5423
    invoke-static {v4, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_1963

    .line 5426
    :cond_a1e
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5428
    goto/16 :goto_1963

    .line 5406
    .end local v3    # "_arg0":Landroid/content/ComponentName;
    .end local v4    # "_result":Ljava/lang/CharSequence;
    :pswitch_a23
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5408
    .local v2, "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 5409
    .local v3, "_arg1":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5410
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setOrganizationName(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 5411
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5412
    goto/16 :goto_1963

    .line 5396
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/CharSequence;
    :pswitch_a3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5397
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5398
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOrganizationColorForUser(I)I

    move-result v3

    .line 5399
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5400
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5401
    goto/16 :goto_1963

    .line 5386
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_a51
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5387
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5388
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOrganizationColor(Landroid/content/ComponentName;)I

    move-result v3

    .line 5389
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5390
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5391
    goto/16 :goto_1963

    .line 5377
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":I
    :pswitch_a68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5378
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5379
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearOrganizationIdForUser(I)V

    .line 5380
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5381
    goto/16 :goto_1963

    .line 5366
    .end local v2    # "_arg0":I
    :pswitch_a77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5368
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5369
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5370
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setOrganizationColorForUser(II)V

    .line 5371
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5372
    goto/16 :goto_1963

    .line 5355
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_a8a
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5357
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5358
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5359
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setOrganizationColor(Landroid/content/ComponentName;I)V

    .line 5360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5361
    goto/16 :goto_1963

    .line 5337
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    :pswitch_aa1
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 5339
    .local v3, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 5340
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5341
    invoke-virtual {p0, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLongSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 5342
    .local v5, "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5343
    if-eqz v5, :cond_ac1

    .line 5344
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5345
    invoke-static {v5, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_1963

    .line 5348
    :cond_ac1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5350
    goto/16 :goto_1963

    .line 5319
    .end local v3    # "_arg0":Landroid/content/ComponentName;
    .end local v4    # "_arg1":I
    .end local v5    # "_result":Ljava/lang/CharSequence;
    :pswitch_ac6
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 5321
    .restart local v3    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 5322
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5323
    invoke-virtual {p0, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getShortSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 5324
    .restart local v5    # "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5325
    if-eqz v5, :cond_ae6

    .line 5326
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5327
    invoke-static {v5, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_1963

    .line 5330
    :cond_ae6
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5332
    goto/16 :goto_1963

    .line 5303
    .end local v3    # "_arg0":Landroid/content/ComponentName;
    .end local v4    # "_arg1":I
    .end local v5    # "_result":Ljava/lang/CharSequence;
    :pswitch_aeb
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 5304
    .restart local v3    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5305
    invoke-virtual {p0, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLongSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 5306
    .local v4, "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5307
    if-eqz v4, :cond_b07

    .line 5308
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5309
    invoke-static {v4, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_1963

    .line 5312
    :cond_b07
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5314
    goto/16 :goto_1963

    .line 5292
    .end local v3    # "_arg0":Landroid/content/ComponentName;
    .end local v4    # "_result":Ljava/lang/CharSequence;
    :pswitch_b0c
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5294
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 5295
    .local v3, "_arg1":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5296
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setLongSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 5297
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5298
    goto/16 :goto_1963

    .line 5276
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/CharSequence;
    :pswitch_b27
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 5277
    .local v3, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5278
    invoke-virtual {p0, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getShortSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 5279
    .restart local v4    # "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5280
    if-eqz v4, :cond_b43

    .line 5281
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5282
    invoke-static {v4, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_1963

    .line 5285
    :cond_b43
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5287
    goto/16 :goto_1963

    .line 5265
    .end local v3    # "_arg0":Landroid/content/ComponentName;
    .end local v4    # "_result":Ljava/lang/CharSequence;
    :pswitch_b48
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5267
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 5268
    .local v3, "_arg1":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5269
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setShortSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 5270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5271
    goto/16 :goto_1963

    .line 5256
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/CharSequence;
    :pswitch_b63
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5257
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5258
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->reboot(Landroid/content/ComponentName;)V

    .line 5259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5260
    goto/16 :goto_1963

    .line 5246
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    :pswitch_b76
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5247
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5248
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getWifiMacAddress(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    .line 5249
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5250
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5251
    goto/16 :goto_1963

    .line 5236
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_b8d
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5237
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5238
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isManagedProfile(Landroid/content/ComponentName;)Z

    move-result v3

    .line 5239
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5240
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5241
    goto/16 :goto_1963

    .line 5224
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_ba4
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5226
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5227
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5228
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getKeepUninstalledPackages(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 5229
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5230
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5231
    goto/16 :goto_1963

    .line 5219
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_bbf
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setKeepUninstalledPackages$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5208
    :pswitch_bc4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5210
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5211
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5212
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->checkProvisioningPrecondition(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 5213
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5214
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5215
    goto/16 :goto_1963

    .line 5196
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_bdb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5198
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5199
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5200
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isProvisioningAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 5201
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5202
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5203
    goto/16 :goto_1963

    .line 5191
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_bf2
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPermissionGrantState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5187
    :pswitch_bf7
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPermissionGrantState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5178
    :pswitch_bfc
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5179
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5180
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermissionPolicy(Landroid/content/ComponentName;)I

    move-result v3

    .line 5181
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5182
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5183
    goto/16 :goto_1963

    .line 5173
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":I
    :pswitch_c13
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPermissionPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5164
    :pswitch_c18
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5165
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5166
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPendingSystemUpdate(Landroid/content/ComponentName;)Landroid/app/admin/SystemUpdateInfo;

    move-result-object v3

    .line 5167
    .local v3, "_result":Landroid/app/admin/SystemUpdateInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5168
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5169
    goto/16 :goto_1963

    .line 5155
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Landroid/app/admin/SystemUpdateInfo;
    :pswitch_c2f
    sget-object v2, Landroid/app/admin/SystemUpdateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/SystemUpdateInfo;

    .line 5156
    .local v2, "_arg0":Landroid/app/admin/SystemUpdateInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5157
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->notifyPendingSystemUpdate(Landroid/app/admin/SystemUpdateInfo;)V

    .line 5158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5159
    goto/16 :goto_1963

    .line 5147
    .end local v2    # "_arg0":Landroid/app/admin/SystemUpdateInfo;
    :pswitch_c42
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDoNotAskCredentialsOnBoot()Z

    move-result v2

    .line 5148
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5149
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5150
    goto/16 :goto_1963

    .line 5136
    .end local v2    # "_result":Z
    :pswitch_c4e
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5138
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 5139
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5140
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setStatusBarDisabled(Landroid/content/ComponentName;Z)Z

    move-result v4

    .line 5141
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5142
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5143
    goto/16 :goto_1963

    .line 5124
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_c69
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5126
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 5127
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5128
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeyguardDisabled(Landroid/content/ComponentName;Z)Z

    move-result v4

    .line 5129
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5130
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5131
    goto/16 :goto_1963

    .line 5117
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_c84
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearSystemUpdatePolicyFreezePeriodRecord()V

    .line 5118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5119
    goto/16 :goto_1963

    .line 5110
    :pswitch_c8c
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getSystemUpdatePolicy()Landroid/app/admin/SystemUpdatePolicy;

    move-result-object v2

    .line 5111
    .local v2, "_result":Landroid/app/admin/SystemUpdatePolicy;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5112
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5113
    goto/16 :goto_1963

    .line 5100
    .end local v2    # "_result":Landroid/app/admin/SystemUpdatePolicy;
    :pswitch_c98
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5102
    .local v2, "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/app/admin/SystemUpdatePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/SystemUpdatePolicy;

    .line 5103
    .local v3, "_arg1":Landroid/app/admin/SystemUpdatePolicy;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5104
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSystemUpdatePolicy(Landroid/content/ComponentName;Landroid/app/admin/SystemUpdatePolicy;)V

    .line 5105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5106
    goto/16 :goto_1963

    .line 5089
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Landroid/app/admin/SystemUpdatePolicy;
    :pswitch_cb3
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5091
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 5092
    .local v3, "_arg1":Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5093
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserIcon(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)V

    .line 5094
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5095
    goto/16 :goto_1963

    .line 5077
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Landroid/graphics/Bitmap;
    :pswitch_cce
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5079
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5080
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5081
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isRemovingAdmin(Landroid/content/ComponentName;I)Z

    move-result v4

    .line 5082
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5083
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5084
    goto/16 :goto_1963

    .line 5067
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_ce9
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5068
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5069
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getForceEphemeralUsers(Landroid/content/ComponentName;)Z

    move-result v3

    .line 5070
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5071
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5072
    goto/16 :goto_1963

    .line 5056
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_d00
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5058
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 5059
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5060
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setForceEphemeralUsers(Landroid/content/ComponentName;Z)V

    .line 5061
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5062
    goto/16 :goto_1963

    .line 5046
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_d17
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5047
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5048
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAutoTimeZoneEnabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 5049
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5050
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5051
    goto/16 :goto_1963

    .line 5035
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_d2e
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5037
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 5038
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5039
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAutoTimeZoneEnabled(Landroid/content/ComponentName;Z)V

    .line 5040
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5041
    goto/16 :goto_1963

    .line 5025
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_d45
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5026
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5027
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAutoTimeEnabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 5028
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5029
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5030
    goto/16 :goto_1963

    .line 5014
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_d5c
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5016
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 5017
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5018
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAutoTimeEnabled(Landroid/content/ComponentName;Z)V

    .line 5019
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5020
    goto/16 :goto_1963

    .line 5006
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_d73
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAutoTimeRequired()Z

    move-result v2

    .line 5007
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5008
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5009
    goto/16 :goto_1963

    .line 4996
    .end local v2    # "_result":Z
    :pswitch_d7f
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4998
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4999
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5000
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAutoTimeRequired(Landroid/content/ComponentName;Z)V

    .line 5001
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5002
    goto/16 :goto_1963

    .line 4986
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_d96
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4987
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4988
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileWidgetProviders(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 4989
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4990
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4991
    goto/16 :goto_1963

    .line 4974
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_dad
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4976
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4977
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4978
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v4

    .line 4979
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4980
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4981
    goto/16 :goto_1963

    .line 4962
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_dc8
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4964
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4965
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4966
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->addCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v4

    .line 4967
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4968
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4969
    goto/16 :goto_1963

    .line 4957
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_de3
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getTrustAgentConfiguration$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4953
    :pswitch_de8
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setTrustAgentConfiguration$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4944
    :pswitch_ded
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4945
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4946
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getBluetoothContactSharingDisabledForUser(I)Z

    move-result v3

    .line 4947
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4948
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4949
    goto/16 :goto_1963

    .line 4934
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_e00
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4935
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4936
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getBluetoothContactSharingDisabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 4937
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4938
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4939
    goto/16 :goto_1963

    .line 4923
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_e17
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4925
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4926
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4927
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setBluetoothContactSharingDisabled(Landroid/content/ComponentName;Z)V

    .line 4928
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4929
    goto/16 :goto_1963

    .line 4918
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_e2e
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$startManagedQuickContact$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4909
    :pswitch_e33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4910
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4911
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileContactsSearchDisabledForUser(I)Z

    move-result v3

    .line 4912
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4913
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4914
    goto/16 :goto_1963

    .line 4899
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_e46
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4900
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4901
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 4902
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4903
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4904
    goto/16 :goto_1963

    .line 4888
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_e5d
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4890
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4891
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4892
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;Z)V

    .line 4893
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4894
    goto/16 :goto_1963

    .line 4878
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_e74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4879
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4880
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileCallerIdDisabledForUser(I)Z

    move-result v3

    .line 4881
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4882
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4883
    goto/16 :goto_1963

    .line 4868
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_e87
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4869
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4870
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileCallerIdDisabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 4871
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4872
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4873
    goto/16 :goto_1963

    .line 4857
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_e9e
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4859
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4860
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4861
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCrossProfileCallerIdDisabled(Landroid/content/ComponentName;Z)V

    .line 4862
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4863
    goto/16 :goto_1963

    .line 4845
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_eb5
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4847
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4848
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4849
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v4

    .line 4850
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4851
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4852
    goto/16 :goto_1963

    .line 4840
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_ed0
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setUninstallBlocked$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4836
    :pswitch_ed5
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$notifyLockTaskModeChanged$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4827
    :pswitch_eda
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4828
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4829
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isMasterVolumeMuted(Landroid/content/ComponentName;)Z

    move-result v3

    .line 4830
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4831
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4832
    goto/16 :goto_1963

    .line 4816
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_ef1
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4818
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4819
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4820
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMasterVolumeMuted(Landroid/content/ComponentName;Z)V

    .line 4821
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4822
    goto/16 :goto_1963

    .line 4804
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_f08
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4806
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4807
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4808
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setTimeZone(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v4

    .line 4809
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4810
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4811
    goto/16 :goto_1963

    .line 4792
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_f23
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4794
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 4795
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4796
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setTime(Landroid/content/ComponentName;J)Z

    move-result v5

    .line 4797
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4798
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4799
    goto/16 :goto_1963

    .line 4781
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":J
    .end local v5    # "_result":Z
    :pswitch_f3e
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4783
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4784
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4785
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setLocationEnabled(Landroid/content/ComponentName;Z)V

    .line 4786
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4787
    goto/16 :goto_1963

    .line 4771
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_f55
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4772
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4773
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasLockdownAdminConfiguredNetworks(Landroid/content/ComponentName;)Z

    move-result v3

    .line 4774
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4775
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4776
    goto/16 :goto_1963

    .line 4760
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_f6c
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4762
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4763
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4764
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setConfiguredNetworksLockdownState(Landroid/content/ComponentName;Z)V

    .line 4765
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4766
    goto/16 :goto_1963

    .line 4755
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_f83
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setSecureSetting$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4751
    :pswitch_f88
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setSystemSetting$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4747
    :pswitch_f8d
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setGlobalSetting$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4738
    :pswitch_f92
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4739
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4740
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLockTaskFeatures(Landroid/content/ComponentName;)I

    move-result v3

    .line 4741
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4742
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4743
    goto/16 :goto_1963

    .line 4727
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":I
    :pswitch_fa9
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4729
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4730
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4731
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setLockTaskFeatures(Landroid/content/ComponentName;I)V

    .line 4732
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4733
    goto/16 :goto_1963

    .line 4717
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    :pswitch_fc0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4718
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4719
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isLockTaskPermitted(Ljava/lang/String;)Z

    move-result v3

    .line 4720
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4721
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4722
    goto/16 :goto_1963

    .line 4707
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_fd3
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4708
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4709
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLockTaskPackages(Landroid/content/ComponentName;)[Ljava/lang/String;

    move-result-object v3

    .line 4710
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4711
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4712
    goto/16 :goto_1963

    .line 4696
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":[Ljava/lang/String;
    :pswitch_fea
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4698
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 4699
    .local v3, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4700
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setLockTaskPackages(Landroid/content/ComponentName;[Ljava/lang/String;)V

    .line 4701
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4702
    goto/16 :goto_1963

    .line 4688
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":[Ljava/lang/String;
    :pswitch_1001
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPreferentialNetworkServiceConfigs()Ljava/util/List;

    move-result-object v2

    .line 4689
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/PreferentialNetworkServiceConfig;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4690
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 4691
    goto/16 :goto_1963

    .line 4680
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/PreferentialNetworkServiceConfig;>;"
    :pswitch_100d
    sget-object v2, Landroid/app/admin/PreferentialNetworkServiceConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4681
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/PreferentialNetworkServiceConfig;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4682
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPreferentialNetworkServiceConfigs(Ljava/util/List;)V

    .line 4683
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4684
    goto/16 :goto_1963

    .line 4670
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/PreferentialNetworkServiceConfig;>;"
    :pswitch_101e
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 4671
    .local v2, "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4672
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isSecondaryLockscreenEnabled(Landroid/os/UserHandle;)Z

    move-result v3

    .line 4673
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4674
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4675
    goto/16 :goto_1963

    .line 4659
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_result":Z
    :pswitch_1035
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4661
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4662
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4663
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSecondaryLockscreenEnabled(Landroid/content/ComponentName;Z)V

    .line 4664
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4665
    goto/16 :goto_1963

    .line 4647
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_104c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4649
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4650
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4651
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAccountTypesWithManagementDisabledAsUser(IZ)[Ljava/lang/String;

    move-result-object v4

    .line 4652
    .local v4, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4653
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4654
    goto/16 :goto_1963

    .line 4639
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":[Ljava/lang/String;
    :pswitch_1063
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAccountTypesWithManagementDisabled()[Ljava/lang/String;

    move-result-object v2

    .line 4640
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4641
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4642
    goto/16 :goto_1963

    .line 4635
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_106f
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setAccountManagementDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4631
    :pswitch_1074
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$installExistingPackage$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4627
    :pswitch_1079
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$enableSystemAppWithIntent$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4623
    :pswitch_107e
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$enableSystemApp$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4614
    :pswitch_1083
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4615
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4616
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isNewUserDisclaimerAcknowledged(I)Z

    move-result v3

    .line 4617
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4618
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4619
    goto/16 :goto_1963

    .line 4605
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_1096
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4606
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4607
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->acknowledgeNewUserDisclaimer(I)V

    .line 4608
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4609
    goto/16 :goto_1963

    .line 4595
    .end local v2    # "_arg0":I
    :pswitch_10a5
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4596
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4597
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getSecondaryUsers(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 4598
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4599
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 4600
    goto/16 :goto_1963

    .line 4587
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :pswitch_10bc
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLogoutUserId()I

    move-result v2

    .line 4588
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4589
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4590
    goto/16 :goto_1963

    .line 4580
    .end local v2    # "_result":I
    :pswitch_10c8
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->logoutUserInternal()I

    move-result v2

    .line 4581
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4582
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4583
    goto/16 :goto_1963

    .line 4571
    .end local v2    # "_result":I
    :pswitch_10d4
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4572
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4573
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->logoutUser(Landroid/content/ComponentName;)I

    move-result v3

    .line 4574
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4575
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4576
    goto/16 :goto_1963

    .line 4559
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":I
    :pswitch_10eb
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4561
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 4562
    .local v3, "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4563
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->stopUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)I

    move-result v4

    .line 4564
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4565
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4566
    goto/16 :goto_1963

    .line 4547
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Landroid/os/UserHandle;
    .end local v4    # "_result":I
    :pswitch_110a
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4549
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 4550
    .restart local v3    # "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4551
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->startUserInBackground(Landroid/content/ComponentName;Landroid/os/UserHandle;)I

    move-result v4

    .line 4552
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4553
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4554
    goto/16 :goto_1963

    .line 4535
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Landroid/os/UserHandle;
    .end local v4    # "_result":I
    :pswitch_1129
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4537
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 4538
    .restart local v3    # "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4539
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->switchUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v4

    .line 4540
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4541
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4542
    goto/16 :goto_1963

    .line 4523
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Landroid/os/UserHandle;
    .end local v4    # "_result":Z
    :pswitch_1148
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4525
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 4526
    .restart local v3    # "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4527
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v4

    .line 4528
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4529
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4530
    goto/16 :goto_1963

    .line 4518
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Landroid/os/UserHandle;
    .end local v4    # "_result":Z
    :pswitch_1167
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$createAndManageUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4514
    :pswitch_116c
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$isApplicationHidden$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4510
    :pswitch_1171
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setApplicationHidden$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4499
    :pswitch_1176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4501
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4502
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4503
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getEnforcingAdminAndUserDetails(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 4504
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4505
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4506
    goto/16 :goto_1963

    .line 4489
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/os/Bundle;
    :pswitch_118d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4490
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4491
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->createAdminSupportIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 4492
    .local v3, "_result":Landroid/content/Intent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4493
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4494
    goto/16 :goto_1963

    .line 4477
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/content/Intent;
    :pswitch_11a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4479
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4480
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4481
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isNotificationListenerServicePermitted(Ljava/lang/String;I)Z

    move-result v4

    .line 4482
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4483
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4484
    goto/16 :goto_1963

    .line 4467
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_11b7
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4468
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4469
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedCrossProfileNotificationListeners(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 4470
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4471
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4472
    goto/16 :goto_1963

    .line 4455
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_11ce
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4457
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 4458
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4459
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermittedCrossProfileNotificationListeners(Landroid/content/ComponentName;Ljava/util/List;)Z

    move-result v4

    .line 4460
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4461
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4462
    goto/16 :goto_1963

    .line 4450
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_result":Z
    :pswitch_11e9
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$isInputMethodPermittedByAdmin$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4441
    :pswitch_11ee
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4442
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4443
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedInputMethodsAsUser(I)Ljava/util/List;

    move-result-object v3

    .line 4444
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4445
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4446
    goto/16 :goto_1963

    .line 4429
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1201
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4431
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4432
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4433
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedInputMethods(Landroid/content/ComponentName;Z)Ljava/util/List;

    move-result-object v4

    .line 4434
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4435
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4436
    goto/16 :goto_1963

    .line 4424
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_121c
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPermittedInputMethods$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4420
    :pswitch_1221
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$isAccessibilityServicePermittedByAdmin$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4411
    :pswitch_1226
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4412
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4413
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedAccessibilityServicesForUser(I)Ljava/util/List;

    move-result-object v3

    .line 4414
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4415
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4416
    goto/16 :goto_1963

    .line 4401
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1239
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4402
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4403
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedAccessibilityServices(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 4404
    .restart local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4405
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4406
    goto/16 :goto_1963

    .line 4389
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1250
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4391
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 4392
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4393
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermittedAccessibilityServices(Landroid/content/ComponentName;Ljava/util/List;)Z

    move-result v4

    .line 4394
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4395
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4396
    goto/16 :goto_1963

    .line 4380
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_result":Z
    :pswitch_126b
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4381
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4382
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearCrossProfileIntentFilters(Landroid/content/ComponentName;)V

    .line 4383
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4384
    goto/16 :goto_1963

    .line 4375
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    :pswitch_127e
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$addCrossProfileIntentFilter$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4364
    :pswitch_1283
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4366
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4367
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4368
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getUserRestrictions(Landroid/content/ComponentName;Z)Landroid/os/Bundle;

    move-result-object v4

    .line 4369
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4370
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4371
    goto/16 :goto_1963

    .line 4359
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Landroid/os/Bundle;
    :pswitch_129e
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setUserRestriction$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4350
    :pswitch_12a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4351
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4352
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRestrictionsProvider(I)Landroid/content/ComponentName;

    move-result-object v3

    .line 4353
    .local v3, "_result":Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4354
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4355
    goto/16 :goto_1963

    .line 4339
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/content/ComponentName;
    :pswitch_12b6
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4341
    .local v2, "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 4342
    .local v3, "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4343
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRestrictionsProvider(Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 4344
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4345
    goto/16 :goto_1963

    .line 4329
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    :pswitch_12d1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4330
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4331
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isCallerApplicationRestrictionsManagingPackage(Ljava/lang/String;)Z

    move-result v3

    .line 4332
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4333
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4334
    goto/16 :goto_1963

    .line 4319
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_12e4
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4320
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4321
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    .line 4322
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4323
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4324
    goto/16 :goto_1963

    .line 4307
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_12fb
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4309
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4310
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4311
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v4

    .line 4312
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4313
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4314
    goto/16 :goto_1963

    .line 4302
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_1316
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getApplicationRestrictions$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4298
    :pswitch_131b
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setApplicationRestrictions$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4294
    :pswitch_1320
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setDefaultSmsApplication$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4284
    :pswitch_1325
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4286
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4287
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4288
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearPackagePersistentPreferredActivities(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 4289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4290
    goto/16 :goto_1963

    .line 4279
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_133c
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$addPersistentPreferredActivity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4270
    :pswitch_1341
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4271
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4272
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAlwaysOnVpnLockdownAllowlist(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 4273
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4274
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4275
    goto/16 :goto_1963

    .line 4260
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1358
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4261
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4262
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAlwaysOnVpnLockdownEnabledForUser(I)Z

    move-result v3

    .line 4263
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4264
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4265
    goto/16 :goto_1963

    .line 4250
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_136b
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4251
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4252
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAlwaysOnVpnLockdownEnabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 4253
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4254
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4255
    goto/16 :goto_1963

    .line 4240
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_1382
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4241
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4242
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAlwaysOnVpnPackageForUser(I)Ljava/lang/String;

    move-result-object v3

    .line 4243
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4244
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4245
    goto/16 :goto_1963

    .line 4230
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_1395
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4231
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4232
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAlwaysOnVpnPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    .line 4233
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4234
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4235
    goto/16 :goto_1963

    .line 4225
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_13ac
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setAlwaysOnVpnPackage$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4216
    :pswitch_13b1
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4217
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4218
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCertInstallerPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    .line 4219
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4220
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4221
    goto/16 :goto_1963

    .line 4205
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_13c8
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4207
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4208
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4209
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCertInstallerPackage(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 4210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4211
    goto/16 :goto_1963

    .line 4193
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_13df
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4195
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4196
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4197
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDelegatePackages(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 4198
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4199
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4200
    goto/16 :goto_1963

    .line 4181
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_13fa
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4183
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4184
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4185
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 4186
    .restart local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4187
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4188
    goto/16 :goto_1963

    .line 4176
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1415
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setDelegatedScopes$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4172
    :pswitch_141a
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$choosePrivateKeyAlias$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4168
    :pswitch_141f
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setKeyPairCertificate$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4164
    :pswitch_1424
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$generateKeyPair$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4153
    :pswitch_1429
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4155
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4156
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4157
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasKeyPair(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 4158
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4159
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4160
    goto/16 :goto_1963

    .line 4148
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_1440
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$removeKeyPair$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4144
    :pswitch_1445
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$installKeyPair$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4133
    :pswitch_144a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4135
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4136
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4137
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isCaCertApproved(Ljava/lang/String;I)Z

    move-result v4

    .line 4138
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4139
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4140
    goto/16 :goto_1963

    .line 4128
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_1461
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$approveCaCert$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4118
    :pswitch_1466
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4120
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4121
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4122
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->enforceCanManageCaCerts(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 4123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4124
    goto/16 :goto_1963

    .line 4113
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_147d
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$uninstallCaCerts$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4109
    :pswitch_1482
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$installCaCert$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4102
    :pswitch_1487
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->listPolicyExemptApps()Ljava/util/List;

    move-result-object v2

    .line 4103
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4104
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4105
    goto/16 :goto_1963

    .line 4098
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1493
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$isPackageSuspended$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4094
    :pswitch_1498
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPackagesSuspended$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4081
    :pswitch_149d
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerLockScreenInfo()Ljava/lang/CharSequence;

    move-result-object v3

    .line 4082
    .local v3, "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4083
    if-eqz v3, :cond_14ae

    .line 4084
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4085
    invoke-static {v3, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_1963

    .line 4088
    :cond_14ae
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4090
    goto/16 :goto_1963

    .line 4071
    .end local v3    # "_result":Ljava/lang/CharSequence;
    :pswitch_14b3
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4073
    .local v2, "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 4074
    .local v3, "_arg1":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4075
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDeviceOwnerLockScreenInfo(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 4076
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4077
    goto/16 :goto_1963

    .line 4066
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/CharSequence;
    :pswitch_14ce
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$checkDeviceIdentifierAccess$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4059
    :pswitch_14d3
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result v2

    .line 4060
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4061
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4062
    goto/16 :goto_1963

    .line 4052
    .end local v2    # "_result":Z
    :pswitch_14df
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasUserSetupCompleted()Z

    move-result v2

    .line 4053
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4054
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4055
    goto/16 :goto_1963

    .line 4044
    .end local v2    # "_result":Z
    :pswitch_14eb
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4045
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4046
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearProfileOwner(Landroid/content/ComponentName;)V

    .line 4047
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4048
    goto/16 :goto_1963

    .line 4033
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    :pswitch_14fe
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4035
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4036
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4037
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setProfileName(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 4038
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4039
    goto/16 :goto_1963

    .line 4024
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_1515
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4025
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4026
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setProfileEnabled(Landroid/content/ComponentName;)V

    .line 4027
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4028
    goto/16 :goto_1963

    .line 4014
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    :pswitch_1528
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4015
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4016
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getProfileOwnerName(I)Ljava/lang/String;

    move-result-object v3

    .line 4017
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4018
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4019
    goto/16 :goto_1963

    .line 4004
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_153b
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4005
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4006
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isSupervisionComponent(Landroid/content/ComponentName;)Z

    move-result v3

    .line 4007
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4008
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4009
    goto/16 :goto_1963

    .line 3994
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_1552
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 3995
    .local v2, "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3996
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getProfileOwnerOrDeviceOwnerSupervisionComponent(Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v3

    .line 3997
    .local v3, "_result":Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3998
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3999
    goto/16 :goto_1963

    .line 3984
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_result":Landroid/content/ComponentName;
    :pswitch_1569
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3985
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3986
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v3

    .line 3987
    .restart local v3    # "_result":Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3988
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3989
    goto/16 :goto_1963

    .line 3979
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/content/ComponentName;
    :pswitch_157c
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setProfileOwner$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3972
    :pswitch_1581
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerUserId()I

    move-result v2

    .line 3973
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3974
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3975
    goto/16 :goto_1963

    .line 3964
    .end local v2    # "_result":I
    :pswitch_158d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3965
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3966
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearDeviceOwner(Ljava/lang/String;)V

    .line 3967
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3968
    goto/16 :goto_1963

    .line 3956
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_159c
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v2

    .line 3957
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3958
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3959
    goto/16 :goto_1963

    .line 3949
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_15a8
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasDeviceOwner()Z

    move-result v2

    .line 3950
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3951
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3952
    goto/16 :goto_1963

    .line 3940
    .end local v2    # "_result":Z
    :pswitch_15b4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3941
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3942
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerComponent(Z)Landroid/content/ComponentName;

    move-result-object v3

    .line 3943
    .restart local v3    # "_result":Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3944
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3945
    goto/16 :goto_1963

    .line 3935
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Landroid/content/ComponentName;
    :pswitch_15c7
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setDeviceOwner$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3927
    :pswitch_15cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3928
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3929
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportKeyguardSecured(I)V

    .line 3930
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3931
    goto/16 :goto_1963

    .line 3918
    .end local v2    # "_arg0":I
    :pswitch_15db
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3919
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3920
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportKeyguardDismissed(I)V

    .line 3921
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3922
    goto/16 :goto_1963

    .line 3909
    .end local v2    # "_arg0":I
    :pswitch_15ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3910
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3911
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportSuccessfulBiometricAttempt(I)V

    .line 3912
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3913
    goto/16 :goto_1963

    .line 3900
    .end local v2    # "_arg0":I
    :pswitch_15f9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3901
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3902
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportFailedBiometricAttempt(I)V

    .line 3903
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3904
    goto/16 :goto_1963

    .line 3891
    .end local v2    # "_arg0":I
    :pswitch_1608
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3892
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3893
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportSuccessfulPasswordAttempt(I)V

    .line 3894
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3895
    goto/16 :goto_1963

    .line 3882
    .end local v2    # "_arg0":I
    :pswitch_1617
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3883
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3884
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportFailedPasswordAttempt(I)V

    .line 3885
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3886
    goto/16 :goto_1963

    .line 3871
    .end local v2    # "_arg0":I
    :pswitch_1626
    sget-object v2, Landroid/app/admin/PasswordMetrics;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/PasswordMetrics;

    .line 3873
    .local v2, "_arg0":Landroid/app/admin/PasswordMetrics;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3874
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3875
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportPasswordChanged(Landroid/app/admin/PasswordMetrics;I)V

    .line 3876
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3877
    goto/16 :goto_1963

    .line 3866
    .end local v2    # "_arg0":Landroid/app/admin/PasswordMetrics;
    .end local v3    # "_arg1":I
    :pswitch_163d
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$hasGrantedPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3856
    :pswitch_1642
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3858
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3859
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3860
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->forceRemoveActiveAdmin(Landroid/content/ComponentName;I)V

    .line 3861
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3862
    goto/16 :goto_1963

    .line 3845
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    :pswitch_1659
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3847
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3848
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3849
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    .line 3850
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3851
    goto/16 :goto_1963

    .line 3840
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    :pswitch_1670
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getRemoveWarning$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3829
    :pswitch_1675
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3831
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3832
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3833
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->packageHasActiveAdmins(Ljava/lang/String;I)Z

    move-result v4

    .line 3834
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3835
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3836
    goto/16 :goto_1963

    .line 3819
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_168c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3820
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3821
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getActiveAdmins(I)Ljava/util/List;

    move-result-object v3

    .line 3822
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3823
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3824
    goto/16 :goto_1963

    .line 3807
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :pswitch_169f
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3809
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3810
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3811
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAdminActive(Landroid/content/ComponentName;I)Z

    move-result v4

    .line 3812
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3813
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3814
    goto/16 :goto_1963

    .line 3802
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_16ba
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setActiveAdmin$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3798
    :pswitch_16bf
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getKeyguardDisabledFeatures$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3794
    :pswitch_16c4
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setKeyguardDisabledFeatures$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3785
    :pswitch_16c9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3786
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3787
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getNearbyAppStreamingPolicy(I)I

    move-result v3

    .line 3788
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3789
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3790
    goto/16 :goto_1963

    .line 3776
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_16dc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3777
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3778
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setNearbyAppStreamingPolicy(I)V

    .line 3779
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3780
    goto/16 :goto_1963

    .line 3766
    .end local v2    # "_arg0":I
    :pswitch_16eb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3767
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3768
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getNearbyNotificationStreamingPolicy(I)I

    move-result v3

    .line 3769
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3770
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3771
    goto/16 :goto_1963

    .line 3757
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_16fe
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3758
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3759
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setNearbyNotificationStreamingPolicy(I)V

    .line 3760
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3761
    goto/16 :goto_1963

    .line 3752
    .end local v2    # "_arg0":I
    :pswitch_170d
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getScreenCaptureDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3748
    :pswitch_1712
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setScreenCaptureDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3744
    :pswitch_1717
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getCameraDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3740
    :pswitch_171c
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setCameraDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3731
    :pswitch_1721
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3732
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3733
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->requestBugreport(Landroid/content/ComponentName;)Z

    move-result v3

    .line 3734
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3735
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3736
    goto/16 :goto_1963

    .line 3719
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_1738
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3721
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3722
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3723
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStorageEncryptionStatus(Ljava/lang/String;I)I

    move-result v4

    .line 3724
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3725
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3726
    goto/16 :goto_1963

    .line 3707
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_174f
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3709
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3710
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3711
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStorageEncryption(Landroid/content/ComponentName;I)Z

    move-result v4

    .line 3712
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3713
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3714
    goto/16 :goto_1963

    .line 3695
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_176a
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3697
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3698
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3699
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setStorageEncryption(Landroid/content/ComponentName;Z)I

    move-result v4

    .line 3700
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3701
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3702
    goto/16 :goto_1963

    .line 3684
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":I
    :pswitch_1785
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3686
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/net/ProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ProxyInfo;

    .line 3687
    .local v3, "_arg1":Landroid/net/ProxyInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3688
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRecommendedGlobalProxy(Landroid/content/ComponentName;Landroid/net/ProxyInfo;)V

    .line 3689
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3690
    goto/16 :goto_1963

    .line 3674
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Landroid/net/ProxyInfo;
    :pswitch_17a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3675
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3676
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getGlobalProxyAdmin(I)Landroid/content/ComponentName;

    move-result-object v3

    .line 3677
    .local v3, "_result":Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3678
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3679
    goto/16 :goto_1963

    .line 3669
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/content/ComponentName;
    :pswitch_17b3
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setGlobalProxy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3661
    :pswitch_17b8
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    .line 3662
    .local v2, "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3663
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->sendLostModeLocationUpdate(Lcom/android/internal/infra/AndroidFuture;)V

    .line 3664
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3665
    goto/16 :goto_1963

    .line 3653
    .end local v2    # "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    :pswitch_17cb
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isFactoryResetProtectionPolicySupported()Z

    move-result v2

    .line 3654
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3655
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3656
    goto/16 :goto_1963

    .line 3644
    .end local v2    # "_result":Z
    :pswitch_17d7
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3645
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3646
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getFactoryResetProtectionPolicy(Landroid/content/ComponentName;)Landroid/app/admin/FactoryResetProtectionPolicy;

    move-result-object v3

    .line 3647
    .local v3, "_result":Landroid/app/admin/FactoryResetProtectionPolicy;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3648
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3649
    goto/16 :goto_1963

    .line 3633
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Landroid/app/admin/FactoryResetProtectionPolicy;
    :pswitch_17ee
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3635
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/app/admin/FactoryResetProtectionPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/FactoryResetProtectionPolicy;

    .line 3636
    .local v3, "_arg1":Landroid/app/admin/FactoryResetProtectionPolicy;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3637
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setFactoryResetProtectionPolicy(Landroid/content/ComponentName;Landroid/app/admin/FactoryResetProtectionPolicy;)V

    .line 3638
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3639
    goto/16 :goto_1963

    .line 3628
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Landroid/app/admin/FactoryResetProtectionPolicy;
    :pswitch_1809
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$wipeDataWithReason$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3618
    :pswitch_180e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3620
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3621
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3622
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->lockNow(IZ)V

    .line 3623
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3624
    goto/16 :goto_1963

    .line 3613
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_1821
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getRequiredStrongAuthTimeout$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3609
    :pswitch_1826
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setRequiredStrongAuthTimeout$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3605
    :pswitch_182b
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getMaximumTimeToLock$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3601
    :pswitch_1830
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setMaximumTimeToLock$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3590
    :pswitch_1835
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3592
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3593
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3594
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetPassword(Ljava/lang/String;I)Z

    move-result v4

    .line 3595
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3596
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3597
    goto/16 :goto_1963

    .line 3585
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_184c
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getMaximumFailedPasswordsForWipe$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3581
    :pswitch_1851
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setMaximumFailedPasswordsForWipe$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3570
    :pswitch_1856
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3572
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3573
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3574
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getProfileWithMinimumFailedPasswordsForWipe(IZ)I

    move-result v4

    .line 3575
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3576
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3577
    goto/16 :goto_1963

    .line 3560
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":I
    :pswitch_186d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3561
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3562
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCurrentFailedBiometricAttempts(I)I

    move-result v3

    .line 3563
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3564
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3565
    goto/16 :goto_1963

    .line 3548
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_1880
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3550
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3551
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3552
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCurrentFailedPasswordAttempts(IZ)I

    move-result v4

    .line 3553
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3554
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3555
    goto/16 :goto_1963

    .line 3538
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":I
    :pswitch_1897
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3539
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3540
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isUsingUnifiedPassword(Landroid/content/ComponentName;)Z

    move-result v3

    .line 3541
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3542
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3543
    goto/16 :goto_1963

    .line 3526
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_18ae
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3528
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3529
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3530
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAggregatedPasswordComplexityForUser(IZ)I

    move-result v4

    .line 3531
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3532
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3533
    goto/16 :goto_1963

    .line 3516
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":I
    :pswitch_18c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3517
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3518
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRequiredPasswordComplexity(Z)I

    move-result v3

    .line 3519
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3520
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3521
    goto/16 :goto_1963

    .line 3505
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":I
    :pswitch_18d8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3507
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3508
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3509
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRequiredPasswordComplexity(IZ)V

    .line 3510
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3511
    goto/16 :goto_1963

    .line 3495
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_18eb
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3496
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3497
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordComplexity(Z)I

    move-result v3

    .line 3498
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3499
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3500
    goto :goto_1963

    .line 3483
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":I
    :pswitch_18fd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3485
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3486
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3487
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isPasswordSufficientAfterProfileUnification(II)Z

    move-result v4

    .line 3488
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3489
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3490
    goto :goto_1963

    .line 3475
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_1913
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isActivePasswordSufficientForDeviceRequirement()Z

    move-result v2

    .line 3476
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3477
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3478
    goto :goto_1963

    .line 3464
    .end local v2    # "_result":Z
    :pswitch_191e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3466
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3467
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3468
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isActivePasswordSufficient(IZ)Z

    move-result v4

    .line 3469
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3470
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3471
    goto :goto_1963

    .line 3459
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_1934
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPasswordExpiration$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3455
    :pswitch_1939
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPasswordExpirationTimeout$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3451
    :pswitch_193e
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordExpirationTimeout$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3447
    :pswitch_1943
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPasswordHistoryLength$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3443
    :pswitch_1948
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordHistoryLength$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3432
    :pswitch_194d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3434
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3435
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3436
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumMetrics(IZ)Landroid/app/admin/PasswordMetrics;

    move-result-object v4

    .line 3437
    .local v4, "_result":Landroid/app/admin/PasswordMetrics;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3438
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3439
    nop

    .line 6805
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Landroid/app/admin/PasswordMetrics;
    :goto_1963
    return v1

    .line 3427
    :pswitch_1964
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPasswordMinimumNonLetter$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3423
    :pswitch_1969
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordMinimumNonLetter$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3419
    :pswitch_196e
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPasswordMinimumSymbols$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3415
    :pswitch_1973
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordMinimumSymbols$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3411
    :pswitch_1978
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPasswordMinimumNumeric$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3407
    :pswitch_197d
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordMinimumNumeric$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3403
    :pswitch_1982
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPasswordMinimumLetters$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3399
    :pswitch_1987
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordMinimumLetters$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3395
    :pswitch_198c
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPasswordMinimumLowerCase$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3391
    :pswitch_1991
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordMinimumLowerCase$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3387
    :pswitch_1996
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPasswordMinimumUpperCase$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3383
    :pswitch_199b
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordMinimumUpperCase$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3379
    :pswitch_19a0
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPasswordMinimumLength$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3375
    :pswitch_19a5
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordMinimumLength$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3371
    :pswitch_19aa
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPasswordQuality$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3367
    :pswitch_19af
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordQuality$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_data_19b4
    .packed-switch 0x5f4e5446
        :pswitch_19
    .end packed-switch

    :pswitch_data_19ba
    .packed-switch 0x1
        :pswitch_19af
        :pswitch_19aa
        :pswitch_19a5
        :pswitch_19a0
        :pswitch_199b
        :pswitch_1996
        :pswitch_1991
        :pswitch_198c
        :pswitch_1987
        :pswitch_1982
        :pswitch_197d
        :pswitch_1978
        :pswitch_1973
        :pswitch_196e
        :pswitch_1969
        :pswitch_1964
        :pswitch_194d
        :pswitch_1948
        :pswitch_1943
        :pswitch_193e
        :pswitch_1939
        :pswitch_1934
        :pswitch_191e
        :pswitch_1913
        :pswitch_18fd
        :pswitch_18eb
        :pswitch_18d8
        :pswitch_18c5
        :pswitch_18ae
        :pswitch_1897
        :pswitch_1880
        :pswitch_186d
        :pswitch_1856
        :pswitch_1851
        :pswitch_184c
        :pswitch_1835
        :pswitch_1830
        :pswitch_182b
        :pswitch_1826
        :pswitch_1821
        :pswitch_180e
        :pswitch_1809
        :pswitch_17ee
        :pswitch_17d7
        :pswitch_17cb
        :pswitch_17b8
        :pswitch_17b3
        :pswitch_17a0
        :pswitch_1785
        :pswitch_176a
        :pswitch_174f
        :pswitch_1738
        :pswitch_1721
        :pswitch_171c
        :pswitch_1717
        :pswitch_1712
        :pswitch_170d
        :pswitch_16fe
        :pswitch_16eb
        :pswitch_16dc
        :pswitch_16c9
        :pswitch_16c4
        :pswitch_16bf
        :pswitch_16ba
        :pswitch_169f
        :pswitch_168c
        :pswitch_1675
        :pswitch_1670
        :pswitch_1659
        :pswitch_1642
        :pswitch_163d
        :pswitch_1626
        :pswitch_1617
        :pswitch_1608
        :pswitch_15f9
        :pswitch_15ea
        :pswitch_15db
        :pswitch_15cc
        :pswitch_15c7
        :pswitch_15b4
        :pswitch_15a8
        :pswitch_159c
        :pswitch_158d
        :pswitch_1581
        :pswitch_157c
        :pswitch_1569
        :pswitch_1552
        :pswitch_153b
        :pswitch_1528
        :pswitch_1515
        :pswitch_14fe
        :pswitch_14eb
        :pswitch_14df
        :pswitch_14d3
        :pswitch_14ce
        :pswitch_14b3
        :pswitch_149d
        :pswitch_1498
        :pswitch_1493
        :pswitch_1487
        :pswitch_1482
        :pswitch_147d
        :pswitch_1466
        :pswitch_1461
        :pswitch_144a
        :pswitch_1445
        :pswitch_1440
        :pswitch_1429
        :pswitch_1424
        :pswitch_141f
        :pswitch_141a
        :pswitch_1415
        :pswitch_13fa
        :pswitch_13df
        :pswitch_13c8
        :pswitch_13b1
        :pswitch_13ac
        :pswitch_1395
        :pswitch_1382
        :pswitch_136b
        :pswitch_1358
        :pswitch_1341
        :pswitch_133c
        :pswitch_1325
        :pswitch_1320
        :pswitch_131b
        :pswitch_1316
        :pswitch_12fb
        :pswitch_12e4
        :pswitch_12d1
        :pswitch_12b6
        :pswitch_12a3
        :pswitch_129e
        :pswitch_1283
        :pswitch_127e
        :pswitch_126b
        :pswitch_1250
        :pswitch_1239
        :pswitch_1226
        :pswitch_1221
        :pswitch_121c
        :pswitch_1201
        :pswitch_11ee
        :pswitch_11e9
        :pswitch_11ce
        :pswitch_11b7
        :pswitch_11a0
        :pswitch_118d
        :pswitch_1176
        :pswitch_1171
        :pswitch_116c
        :pswitch_1167
        :pswitch_1148
        :pswitch_1129
        :pswitch_110a
        :pswitch_10eb
        :pswitch_10d4
        :pswitch_10c8
        :pswitch_10bc
        :pswitch_10a5
        :pswitch_1096
        :pswitch_1083
        :pswitch_107e
        :pswitch_1079
        :pswitch_1074
        :pswitch_106f
        :pswitch_1063
        :pswitch_104c
        :pswitch_1035
        :pswitch_101e
        :pswitch_100d
        :pswitch_1001
        :pswitch_fea
        :pswitch_fd3
        :pswitch_fc0
        :pswitch_fa9
        :pswitch_f92
        :pswitch_f8d
        :pswitch_f88
        :pswitch_f83
        :pswitch_f6c
        :pswitch_f55
        :pswitch_f3e
        :pswitch_f23
        :pswitch_f08
        :pswitch_ef1
        :pswitch_eda
        :pswitch_ed5
        :pswitch_ed0
        :pswitch_eb5
        :pswitch_e9e
        :pswitch_e87
        :pswitch_e74
        :pswitch_e5d
        :pswitch_e46
        :pswitch_e33
        :pswitch_e2e
        :pswitch_e17
        :pswitch_e00
        :pswitch_ded
        :pswitch_de8
        :pswitch_de3
        :pswitch_dc8
        :pswitch_dad
        :pswitch_d96
        :pswitch_d7f
        :pswitch_d73
        :pswitch_d5c
        :pswitch_d45
        :pswitch_d2e
        :pswitch_d17
        :pswitch_d00
        :pswitch_ce9
        :pswitch_cce
        :pswitch_cb3
        :pswitch_c98
        :pswitch_c8c
        :pswitch_c84
        :pswitch_c69
        :pswitch_c4e
        :pswitch_c42
        :pswitch_c2f
        :pswitch_c18
        :pswitch_c13
        :pswitch_bfc
        :pswitch_bf7
        :pswitch_bf2
        :pswitch_bdb
        :pswitch_bc4
        :pswitch_bbf
        :pswitch_ba4
        :pswitch_b8d
        :pswitch_b76
        :pswitch_b63
        :pswitch_b48
        :pswitch_b27
        :pswitch_b0c
        :pswitch_aeb
        :pswitch_ac6
        :pswitch_aa1
        :pswitch_a8a
        :pswitch_a77
        :pswitch_a68
        :pswitch_a51
        :pswitch_a3e
        :pswitch_a23
        :pswitch_a02
        :pswitch_9ec
        :pswitch_9cf
        :pswitch_9c3
        :pswitch_9b0
        :pswitch_999
        :pswitch_982
        :pswitch_976
        :pswitch_963
        :pswitch_95e
        :pswitch_943
        :pswitch_928
        :pswitch_90d
        :pswitch_901
        :pswitch_8f5
        :pswitch_8e2
        :pswitch_8d3
        :pswitch_8c7
        :pswitch_8bb
        :pswitch_8b3
        :pswitch_8a4
        :pswitch_88d
        :pswitch_876
        :pswitch_871
        :pswitch_856
        :pswitch_851
        :pswitch_84c
        :pswitch_835
        :pswitch_81e
        :pswitch_812
        :pswitch_806
        :pswitch_7fa
        :pswitch_7df
        :pswitch_7c8
        :pswitch_7b1
        :pswitch_7ac
        :pswitch_7a0
        :pswitch_789
        :pswitch_784
        :pswitch_76d
        :pswitch_761
        :pswitch_75c
        :pswitch_757
        :pswitch_74b
        :pswitch_730
        :pswitch_715
        :pswitch_6f4
        :pswitch_6d3
        :pswitch_6b8
        :pswitch_6a1
        :pswitch_682
        :pswitch_67d
        :pswitch_662
        :pswitch_64b
        :pswitch_634
        :pswitch_61d
        :pswitch_618
        :pswitch_60c
        :pswitch_5f9
        :pswitch_5f4
        :pswitch_5ef
        :pswitch_5ea
        :pswitch_5e5
        :pswitch_5e0
        :pswitch_5db
        :pswitch_5d6
        :pswitch_5d1
        :pswitch_5cc
        :pswitch_5c7
        :pswitch_5c2
        :pswitch_5bd
        :pswitch_5b8
        :pswitch_5b3
        :pswitch_5ae
        :pswitch_5a9
        :pswitch_592
        :pswitch_58d
        :pswitch_572
        :pswitch_557
        :pswitch_552
        :pswitch_54d
        :pswitch_53a
        :pswitch_535
        :pswitch_530
        :pswitch_519
        :pswitch_502
        :pswitch_4fd
        :pswitch_4f8
        :pswitch_4e1
        :pswitch_4ca
        :pswitch_4b3
        :pswitch_4a0
        :pswitch_489
        :pswitch_472
        :pswitch_466
        :pswitch_45a
        :pswitch_44e
        :pswitch_442
        :pswitch_43d
        :pswitch_438
        :pswitch_421
        :pswitch_41c
        :pswitch_405
        :pswitch_3ee
        :pswitch_3d7
        :pswitch_3c0
        :pswitch_3a9
        :pswitch_392
        :pswitch_37b
        :pswitch_364
        :pswitch_34d
        :pswitch_345
        :pswitch_339
        :pswitch_326
        :pswitch_313
        :pswitch_300
        :pswitch_2ed
        :pswitch_2e8
        :pswitch_2cd
        :pswitch_2b6
        :pswitch_29b
        :pswitch_284
        :pswitch_26d
        :pswitch_25e
        :pswitch_24b
        :pswitch_238
        :pswitch_225
        :pswitch_212
        :pswitch_206
        :pswitch_1f7
        :pswitch_1eb
        :pswitch_1d8
        :pswitch_1cc
        :pswitch_1c0
        :pswitch_1af
        :pswitch_1a0
        :pswitch_19b
        :pswitch_18f
        :pswitch_180
        :pswitch_16f
        :pswitch_160
        :pswitch_14d
        :pswitch_141
        :pswitch_12a
        :pswitch_113
        :pswitch_fc
        :pswitch_f7
        :pswitch_f2
        :pswitch_ed
        :pswitch_e8
        :pswitch_e3
        :pswitch_de
        :pswitch_d9
        :pswitch_d4
        :pswitch_c1
        :pswitch_bc
        :pswitch_b7
        :pswitch_b2
        :pswitch_ad
        :pswitch_a8
        :pswitch_a3
        :pswitch_9e
        :pswitch_99
        :pswitch_94
        :pswitch_8f
        :pswitch_8a
        :pswitch_85
        :pswitch_80
        :pswitch_7b
        :pswitch_76
        :pswitch_71
        :pswitch_6c
        :pswitch_67
        :pswitch_62
        :pswitch_5d
        :pswitch_58
        :pswitch_53
        :pswitch_4e
        :pswitch_49
        :pswitch_44
        :pswitch_3f
        :pswitch_2c
        :pswitch_27
        :pswitch_22
        :pswitch_1d
    .end packed-switch
.end method
