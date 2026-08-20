.class public abstract Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;
.super Landroid/os/Binder;
.source "IKnoxCustomManager.java"

# interfaces
.implements Lcom/samsung/android/knox/custom/IKnoxCustomManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/custom/IKnoxCustomManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist TRANSACTION_addAutoCallNumber:I = 0xd1

.field public static final greylist TRANSACTION_addDexShortcut:I = 0xf3

.field public static final greylist TRANSACTION_addDexURLShortcut:I = 0xf5

.field public static final greylist TRANSACTION_addDexURLShortcutExtend:I = 0xf6

.field public static final greylist TRANSACTION_addPackagesToUltraPowerSaving:I = 0x87

.field public static final greylist TRANSACTION_addRoleHolder:I = 0x125

.field public static final greylist TRANSACTION_addShortcut:I = 0xe2

.field public static final greylist TRANSACTION_addWidget:I = 0xe4

.field public static final greylist TRANSACTION_allowDexAutoOpenLastApp:I = 0x100

.field public static final greylist TRANSACTION_checkEnterprisePermission:I = 0x1

.field public static final greylist TRANSACTION_clearAnimation:I = 0xbc

.field public static final greylist TRANSACTION_clearDexLoadingLogo:I = 0xfb

.field public static final greylist TRANSACTION_clearForcedDisplaySizeDensity:I = 0x111

.field public static final greylist TRANSACTION_deleteHomeScreenPage:I = 0xe6

.field public static final greylist TRANSACTION_dialEmergencyNumber:I = 0x2

.field public static final greylist TRANSACTION_getAccessibilitySettingsItems:I = 0xb9

.field public static final greylist TRANSACTION_getAirGestureOptionState:I = 0x8c

.field public static final greylist TRANSACTION_getAppBlockDownloadNamespaces:I = 0x49

.field public static final greylist TRANSACTION_getAppBlockDownloadState:I = 0x4b

.field public static final greylist TRANSACTION_getApplicationRestrictionsInternal:I = 0x121

.field public static final greylist TRANSACTION_getAppsButtonState:I = 0xe8

.field public static final greylist TRANSACTION_getAsoc:I = 0x119

.field public static final greylist TRANSACTION_getAutoCallNumberAnswerMode:I = 0xd4

.field public static final greylist TRANSACTION_getAutoCallNumberDelay:I = 0xd3

.field public static final greylist TRANSACTION_getAutoCallNumberList:I = 0xd5

.field public static final greylist TRANSACTION_getAutoCallPickupState:I = 0xd7

.field public static final greylist TRANSACTION_getAutoRotationState:I = 0x7

.field public static final greylist TRANSACTION_getBackupRestoreState:I = 0x3c

.field public static final greylist TRANSACTION_getBatteryLevelColourItem:I = 0x4d

.field public static final greylist TRANSACTION_getBsoh:I = 0x11b

.field public static final greylist TRANSACTION_getBsohUnbiased:I = 0x11c

.field public static final greylist TRANSACTION_getCallScreenDisabledItems:I = 0x4f

.field public static final greylist TRANSACTION_getChargerConnectionSoundEnabledState:I = 0x8f

.field public static final greylist TRANSACTION_getChargingLEDState:I = 0x51

.field public static final greylist TRANSACTION_getDeviceSpeakerEnabledState:I = 0x91

.field public static final greylist TRANSACTION_getDexForegroundModePackageList:I = 0xf9

.field public static final greylist TRANSACTION_getDexHDMIAutoEnterState:I = 0x103

.field public static final greylist TRANSACTION_getDexHomeAlignment:I = 0xff

.field public static final greylist TRANSACTION_getDexScreenTimeout:I = 0xfd

.field public static final greylist TRANSACTION_getDisplayMirroringState:I = 0x93

.field public static final greylist TRANSACTION_getExitUI:I = 0xc

.field public static final greylist TRANSACTION_getExtendedCallInfoState:I = 0xe

.field public static final greylist TRANSACTION_getFavoriteApp:I = 0xec

.field public static final greylist TRANSACTION_getFavoriteAppsMaxCount:I = 0xeb

.field public static final greylist TRANSACTION_getForceAutoShutDownState:I = 0xe0

.field public static final greylist TRANSACTION_getForceAutoStartUpState:I = 0xbf

.field public static final greylist TRANSACTION_getGearNotificationState:I = 0x53

.field public static final greylist TRANSACTION_getHardKeyBlockState:I = 0x10b

.field public static final greylist TRANSACTION_getHardKeyIntentBroadcast:I = 0x10f

.field public static final greylist TRANSACTION_getHardKeyIntentMode:I = 0xf0

.field public static final greylist TRANSACTION_getHardKeyIntentState:I = 0x55

.field public static final greylist TRANSACTION_getHardKeyReportState:I = 0x10a

.field public static final greylist TRANSACTION_getHideNotificationMessages:I = 0x3e

.field public static final greylist TRANSACTION_getHomeActivity:I = 0x10

.field public static final greylist TRANSACTION_getHomeScreenMode:I = 0xf2

.field public static final greylist TRANSACTION_getInfraredState:I = 0x57

.field public static final greylist TRANSACTION_getInputMethodRestrictionState:I = 0x13

.field public static final greylist TRANSACTION_getKeyboardMode:I = 0x95

.field public static final greylist TRANSACTION_getKeyboardModeOverriden:I = 0x96

.field public static final greylist TRANSACTION_getLTESettingState:I = 0x5c

.field public static final greylist TRANSACTION_getLcdBacklightState:I = 0x98

.field public static final greylist TRANSACTION_getLoadingLogoPath:I = 0x113

.field public static final greylist TRANSACTION_getLockScreenHiddenItems:I = 0x59

.field public static final greylist TRANSACTION_getLockScreenOverrideMode:I = 0x9a

.field public static final greylist TRANSACTION_getLockScreenShortcut:I = 0xdb

.field public static final greylist TRANSACTION_getMacAddress:I = 0xd8

.field public static final greylist TRANSACTION_getMobileNetworkType:I = 0xc2

.field public static final greylist TRANSACTION_getMotionControlState:I = 0x41

.field public static final greylist TRANSACTION_getPowerDialogCustomItems:I = 0x9c

.field public static final greylist TRANSACTION_getPowerDialogCustomItemsState:I = 0x9e

.field public static final greylist TRANSACTION_getPowerDialogItems:I = 0x18

.field public static final greylist TRANSACTION_getPowerDialogOptionMode:I = 0x1a

.field public static final greylist TRANSACTION_getPowerMenuLockedState:I = 0x5e

.field public static final greylist TRANSACTION_getPowerSavingMode:I = 0x60

.field public static final greylist TRANSACTION_getProKioskNotificationMessagesState:I = 0x1c

.field public static final greylist TRANSACTION_getProKioskPowerDialogCustomItems:I = 0x1e

.field public static final greylist TRANSACTION_getProKioskPowerDialogCustomItemsState:I = 0x20

.field public static final greylist TRANSACTION_getProKioskState:I = 0x22

.field public static final greylist TRANSACTION_getProKioskStatusBarClockState:I = 0x24

.field public static final greylist TRANSACTION_getProKioskStatusBarIconsState:I = 0x26

.field public static final greylist TRANSACTION_getProKioskStatusBarMode:I = 0x28

.field public static final greylist TRANSACTION_getProKioskString:I = 0x2a

.field public static final greylist TRANSACTION_getProKioskUsbMassStorageState:I = 0x2c

.field public static final greylist TRANSACTION_getProKioskUsbNetAddress:I = 0x2e

.field public static final greylist TRANSACTION_getProKioskUsbNetState:I = 0x30

.field public static final greylist TRANSACTION_getProtectBatteryState:I = 0x105

.field public static final greylist TRANSACTION_getQuickPanelButtons:I = 0xc4

.field public static final greylist TRANSACTION_getQuickPanelEditMode:I = 0xc6

.field public static final greylist TRANSACTION_getQuickPanelItems:I = 0xc9

.field public static final greylist TRANSACTION_getRecentLongPressActivity:I = 0x62

.field public static final greylist TRANSACTION_getRecentLongPressMode:I = 0x64

.field public static final greylist TRANSACTION_getRoleHolders:I = 0x124

.field public static final greylist TRANSACTION_getScreenOffOnHomeLongPressState:I = 0x66

.field public static final greylist TRANSACTION_getScreenOffOnStatusBarDoubleTapState:I = 0x68

.field public static final greylist TRANSACTION_getScreenTimeout:I = 0x33

.field public static final greylist TRANSACTION_getScreenWakeupOnPowerState:I = 0x6a

.field public static final greylist TRANSACTION_getSensorDisabled:I = 0x6c

.field public static final greylist TRANSACTION_getSerialNumber:I = 0x8a

.field public static final greylist TRANSACTION_getSettingsEnabledItems:I = 0xa0

.field public static final greylist TRANSACTION_getSettingsHiddenState:I = 0x43

.field public static final greylist TRANSACTION_getShowIMEWithHardKeyboard:I = 0x107

.field public static final greylist TRANSACTION_getStatusBarClockState:I = 0xa2

.field public static final greylist TRANSACTION_getStatusBarIconsState:I = 0xa4

.field public static final greylist TRANSACTION_getStatusBarMode:I = 0xa6

.field public static final greylist TRANSACTION_getStatusBarNotificationsState:I = 0xa8

.field public static final greylist TRANSACTION_getStatusBarText:I = 0x6e

.field public static final greylist TRANSACTION_getStatusBarTextScrollWidth:I = 0xaa

.field public static final greylist TRANSACTION_getStatusBarTextSize:I = 0x70

.field public static final greylist TRANSACTION_getStatusBarTextStyle:I = 0x6f

.field public static final greylist TRANSACTION_getSystemSoundsEnabledState:I = 0xcb

.field public static final greylist TRANSACTION_getTcpDump:I = 0x11f

.field public static final greylist TRANSACTION_getToastEnabledState:I = 0x72

.field public static final greylist TRANSACTION_getToastGravity:I = 0x74

.field public static final greylist TRANSACTION_getToastGravityEnabledState:I = 0x78

.field public static final greylist TRANSACTION_getToastGravityXOffset:I = 0x75

.field public static final greylist TRANSACTION_getToastGravityYOffset:I = 0x76

.field public static final greylist TRANSACTION_getToastShowPackageNameState:I = 0x7a

.field public static final greylist TRANSACTION_getTorchOnVolumeButtonsState:I = 0x7c

.field public static final greylist TRANSACTION_getUltraPowerSavingPackages:I = 0x89

.field public static final greylist TRANSACTION_getUnlockSimOnBootState:I = 0xac

.field public static final greylist TRANSACTION_getUnlockSimPin:I = 0xae

.field public static final greylist TRANSACTION_getUsbConnectionType:I = 0xdd

.field public static final greylist TRANSACTION_getUsbConnectionTypeInternal:I = 0xde

.field public static final greylist TRANSACTION_getUsbMassStorageState:I = 0xb0

.field public static final greylist TRANSACTION_getUsbNetAddress:I = 0xb2

.field public static final greylist TRANSACTION_getUsbNetState:I = 0xb4

.field public static final greylist TRANSACTION_getUsbNetStateInternal:I = 0xb5

.field public static final greylist TRANSACTION_getUserInactivityTimeout:I = 0x38

.field public static final greylist TRANSACTION_getVibrationIntensity:I = 0xcd

.field public static final greylist TRANSACTION_getVolumeButtonRotationState:I = 0x7e

.field public static final greylist TRANSACTION_getVolumeControlStream:I = 0x80

.field public static final greylist TRANSACTION_getVolumeKeyAppState:I = 0x84

.field public static final greylist TRANSACTION_getVolumeKeyAppsList:I = 0x82

.field public static final greylist TRANSACTION_getVolumePanelEnabledState:I = 0x86

.field public static final greylist TRANSACTION_getWifiConnectionMonitorState:I = 0x47

.field public static final greylist TRANSACTION_getWifiFrequencyBand:I = 0xb7

.field public static final greylist TRANSACTION_getWifiHotspotEnabledState:I = 0xcf

.field public static final greylist TRANSACTION_getWifiState:I = 0xd0

.field public static final greylist TRANSACTION_getZeroPageState:I = 0xee

.field public static final greylist TRANSACTION_isDexAutoOpenLastAppAllowed:I = 0x101

.field public static final greylist TRANSACTION_isSupportedForceAutoStartUpState:I = 0xc0

.field public static final greylist TRANSACTION_migrateApplicationRestrictions:I = 0x123

.field public static final greylist TRANSACTION_powerOff:I = 0xd9

.field public static final greylist TRANSACTION_registerSystemUiCallback:I = 0x114

.field public static final greylist TRANSACTION_removeAutoCallNumber:I = 0xd2

.field public static final greylist TRANSACTION_removeDexShortcut:I = 0xf4

.field public static final greylist TRANSACTION_removeDexURLShortcut:I = 0xf7

.field public static final greylist TRANSACTION_removeFavoriteApp:I = 0xea

.field public static final greylist TRANSACTION_removeLockScreen:I = 0x3

.field public static final greylist TRANSACTION_removePackagesFromUltraPowerSaving:I = 0x88

.field public static final greylist TRANSACTION_removeRoleHolder:I = 0x126

.field public static final greylist TRANSACTION_removeShortcut:I = 0xe3

.field public static final greylist TRANSACTION_removeWidget:I = 0xe5

.field public static final greylist TRANSACTION_setAccessibilitySettingsItems:I = 0xb8

.field public static final greylist TRANSACTION_setAdbState:I = 0x4

.field public static final greylist TRANSACTION_setAirGestureOptionState:I = 0x8b

.field public static final greylist TRANSACTION_setAppBlockDownloadNamespaces:I = 0x48

.field public static final greylist TRANSACTION_setAppBlockDownloadState:I = 0x4a

.field public static final greylist TRANSACTION_setApplicationRestrictionsInternal:I = 0x120

.field public static final greylist TRANSACTION_setAppsButtonState:I = 0xe7

.field public static final greylist TRANSACTION_setAsoc:I = 0x11a

.field public static final greylist TRANSACTION_setAudioVolume:I = 0x5

.field public static final greylist TRANSACTION_setAutoCallPickupState:I = 0xd6

.field public static final greylist TRANSACTION_setAutoRotationState:I = 0x6

.field public static final greylist TRANSACTION_setBackupRestoreState:I = 0x3b

.field public static final greylist TRANSACTION_setBatteryLevelColourItem:I = 0x4c

.field public static final greylist TRANSACTION_setBluetoothState:I = 0x8

.field public static final greylist TRANSACTION_setBootingAnimation:I = 0xba

.field public static final greylist TRANSACTION_setBrightness:I = 0xe1

.field public static final greylist TRANSACTION_setBrowserHomepage:I = 0x8d

.field public static final greylist TRANSACTION_setCallScreenDisabledItems:I = 0x4e

.field public static final greylist TRANSACTION_setChargerConnectionSoundEnabledState:I = 0x8e

.field public static final greylist TRANSACTION_setChargingLEDState:I = 0x50

.field public static final greylist TRANSACTION_setCpuPowerSavingState:I = 0x9

.field public static final greylist TRANSACTION_setDeveloperOptionsHidden:I = 0xa

.field public static final greylist TRANSACTION_setDeviceSpeakerEnabledState:I = 0x90

.field public static final greylist TRANSACTION_setDexForegroundModePackageList:I = 0xf8

.field public static final greylist TRANSACTION_setDexHDMIAutoEnterState:I = 0x102

.field public static final greylist TRANSACTION_setDexHomeAlignment:I = 0xfe

.field public static final greylist TRANSACTION_setDexLoadingLogo:I = 0xfa

.field public static final greylist TRANSACTION_setDexScreenTimeout:I = 0xfc

.field public static final greylist TRANSACTION_setDisplayMirroringState:I = 0x92

.field public static final greylist TRANSACTION_setExitUI:I = 0xb

.field public static final greylist TRANSACTION_setExtendedCallInfoState:I = 0xd

.field public static final greylist TRANSACTION_setFavoriteApp:I = 0xe9

.field public static final greylist TRANSACTION_setFlightModeState:I = 0xbd

.field public static final greylist TRANSACTION_setForceAutoShutDownState:I = 0xdf

.field public static final greylist TRANSACTION_setForceAutoStartUpState:I = 0xbe

.field public static final greylist TRANSACTION_setForcedDisplaySizeDensity:I = 0x110

.field public static final greylist TRANSACTION_setGearNotificationState:I = 0x52

.field public static final greylist TRANSACTION_setHardKeyIntentBroadcast:I = 0x10c

.field public static final greylist TRANSACTION_setHardKeyIntentBroadcastExternal:I = 0x10d

.field public static final greylist TRANSACTION_setHardKeyIntentBroadcastInternal:I = 0x10e

.field public static final greylist TRANSACTION_setHardKeyIntentMode:I = 0xef

.field public static final greylist TRANSACTION_setHardKeyIntentState:I = 0x54

.field public static final greylist TRANSACTION_setHardKeyReportState:I = 0x109

.field public static final greylist TRANSACTION_setHideNotificationMessages:I = 0x3d

.field public static final greylist TRANSACTION_setHomeActivity:I = 0xf

.field public static final greylist TRANSACTION_setHomeScreenMode:I = 0xf1

.field public static final greylist TRANSACTION_setInfraredState:I = 0x56

.field public static final greylist TRANSACTION_setInputMethod:I = 0x11

.field public static final greylist TRANSACTION_setInputMethodRestrictionState:I = 0x12

.field public static final greylist TRANSACTION_setKeyboardMode:I = 0x94

.field public static final greylist TRANSACTION_setKeyedAppStatesReport:I = 0x122

.field public static final greylist TRANSACTION_setKnoxNDALicenseActivated:I = 0x118

.field public static final greylist TRANSACTION_setLTESettingState:I = 0x5b

.field public static final greylist TRANSACTION_setLcdBacklightState:I = 0x97

.field public static final greylist TRANSACTION_setLockScreenHiddenItems:I = 0x58

.field public static final greylist TRANSACTION_setLockScreenOverrideMode:I = 0x99

.field public static final greylist TRANSACTION_setLockScreenShortcut:I = 0xda

.field public static final greylist TRANSACTION_setLockscreenWallpaper:I = 0x5a

.field public static final greylist TRANSACTION_setMobileDataRoamingState:I = 0x3f

.field public static final greylist TRANSACTION_setMobileDataState:I = 0x14

.field public static final greylist TRANSACTION_setMobileNetworkType:I = 0xc1

.field public static final greylist TRANSACTION_setMotionControlState:I = 0x40

.field public static final greylist TRANSACTION_setMultiWindowState:I = 0x15

.field public static final greylist TRANSACTION_setPassCode:I = 0x16

.field public static final greylist TRANSACTION_setPowerDialogCustomItems:I = 0x9b

.field public static final greylist TRANSACTION_setPowerDialogCustomItemsState:I = 0x9d

.field public static final greylist TRANSACTION_setPowerDialogItems:I = 0x17

.field public static final greylist TRANSACTION_setPowerDialogOptionMode:I = 0x19

.field public static final greylist TRANSACTION_setPowerMenuLockedState:I = 0x5d

.field public static final greylist TRANSACTION_setPowerSavingMode:I = 0x5f

.field public static final greylist TRANSACTION_setProKioskNotificationMessagesState:I = 0x1b

.field public static final greylist TRANSACTION_setProKioskPowerDialogCustomItems:I = 0x1d

.field public static final greylist TRANSACTION_setProKioskPowerDialogCustomItemsState:I = 0x1f

.field public static final greylist TRANSACTION_setProKioskState:I = 0x21

.field public static final greylist TRANSACTION_setProKioskStatusBarClockState:I = 0x23

.field public static final greylist TRANSACTION_setProKioskStatusBarIconsState:I = 0x25

.field public static final greylist TRANSACTION_setProKioskStatusBarMode:I = 0x27

.field public static final greylist TRANSACTION_setProKioskString:I = 0x29

.field public static final greylist TRANSACTION_setProKioskUsbMassStorageState:I = 0x2b

.field public static final greylist TRANSACTION_setProKioskUsbNetAddresses:I = 0x2d

.field public static final greylist TRANSACTION_setProKioskUsbNetState:I = 0x2f

.field public static final greylist TRANSACTION_setProtectBatteryState:I = 0x104

.field public static final greylist TRANSACTION_setQuickPanelButtons:I = 0xc3

.field public static final greylist TRANSACTION_setQuickPanelEditMode:I = 0xc5

.field public static final greylist TRANSACTION_setQuickPanelItems:I = 0xc7

.field public static final greylist TRANSACTION_setQuickPanelItemsInternal:I = 0xc8

.field public static final greylist TRANSACTION_setRecentLongPressActivity:I = 0x61

.field public static final greylist TRANSACTION_setRecentLongPressMode:I = 0x63

.field public static final greylist TRANSACTION_setScreenOffOnHomeLongPressState:I = 0x65

.field public static final greylist TRANSACTION_setScreenOffOnStatusBarDoubleTapState:I = 0x67

.field public static final greylist TRANSACTION_setScreenPowerSavingState:I = 0x31

.field public static final greylist TRANSACTION_setScreenTimeout:I = 0x32

.field public static final greylist TRANSACTION_setScreenWakeupOnPowerState:I = 0x69

.field public static final greylist TRANSACTION_setSensorDisabled:I = 0x6b

.field public static final greylist TRANSACTION_setSettingsEnabledItems:I = 0x9f

.field public static final greylist TRANSACTION_setSettingsHiddenState:I = 0x42

.field public static final greylist TRANSACTION_setShowIMEWithHardKeyboard:I = 0x106

.field public static final greylist TRANSACTION_setShuttingDownAnimation:I = 0xbb

.field public static final greylist TRANSACTION_setStatusBarClockState:I = 0xa1

.field public static final greylist TRANSACTION_setStatusBarIconsState:I = 0xa3

.field public static final greylist TRANSACTION_setStatusBarMode:I = 0xa5

.field public static final greylist TRANSACTION_setStatusBarNotificationsState:I = 0xa7

.field public static final greylist TRANSACTION_setStatusBarText:I = 0x6d

.field public static final greylist TRANSACTION_setStatusBarTextScrollWidth:I = 0xa9

.field public static final greylist TRANSACTION_setStayAwakeState:I = 0x44

.field public static final greylist TRANSACTION_setSystemLocale:I = 0x34

.field public static final greylist TRANSACTION_setSystemRingtone:I = 0x35

.field public static final greylist TRANSACTION_setSystemSoundsEnabledState:I = 0xca

.field public static final greylist TRANSACTION_setSystemSoundsSilent:I = 0x45

.field public static final greylist TRANSACTION_setToastEnabledState:I = 0x71

.field public static final greylist TRANSACTION_setToastGravity:I = 0x73

.field public static final greylist TRANSACTION_setToastGravityEnabledState:I = 0x77

.field public static final greylist TRANSACTION_setToastShowPackageNameState:I = 0x79

.field public static final greylist TRANSACTION_setTorchOnVolumeButtonsState:I = 0x7b

.field public static final greylist TRANSACTION_setUnlockSimOnBootState:I = 0xab

.field public static final greylist TRANSACTION_setUnlockSimPin:I = 0xad

.field public static final greylist TRANSACTION_setUsbConnectionType:I = 0xdc

.field public static final greylist TRANSACTION_setUsbDeviceDefaultPackage:I = 0x36

.field public static final greylist TRANSACTION_setUsbMassStorageState:I = 0xaf

.field public static final greylist TRANSACTION_setUsbNetAddresses:I = 0xb1

.field public static final greylist TRANSACTION_setUsbNetState:I = 0xb3

.field public static final greylist TRANSACTION_setUserInactivityTimeout:I = 0x37

.field public static final greylist TRANSACTION_setVibrationIntensity:I = 0xcc

.field public static final greylist TRANSACTION_setVolumeButtonRotationState:I = 0x7d

.field public static final greylist TRANSACTION_setVolumeControlStream:I = 0x7f

.field public static final greylist TRANSACTION_setVolumeKeyAppState:I = 0x83

.field public static final greylist TRANSACTION_setVolumeKeyAppsList:I = 0x81

.field public static final greylist TRANSACTION_setVolumePanelEnabledState:I = 0x85

.field public static final greylist TRANSACTION_setWallpaper:I = 0x108

.field public static final greylist TRANSACTION_setWifiConnectionMonitorState:I = 0x46

.field public static final greylist TRANSACTION_setWifiFrequencyBand:I = 0xb6

.field public static final greylist TRANSACTION_setWifiHotspotEnabledState:I = 0xce

.field public static final greylist TRANSACTION_setWifiState:I = 0x39

.field public static final greylist TRANSACTION_setWifiStateEap:I = 0x3a

.field public static final greylist TRANSACTION_setZeroPageState:I = 0xed

.field public static final greylist TRANSACTION_startProKioskMode:I = 0x115

.field public static final greylist TRANSACTION_startSmartView:I = 0x112

.field public static final greylist TRANSACTION_startTcpDump:I = 0x11d

.field public static final greylist TRANSACTION_stayInDexForegroundMode:I = 0x117

.field public static final greylist TRANSACTION_stopProKioskMode:I = 0x116

.field public static final greylist TRANSACTION_stopTcpDump:I = 0x11e


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 0
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 1
    .line 2
    .line 3
    const-string v0, "com.samsung.android.knox.custom.IKnoxCustomManager"

    .line 4
    .line 5
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
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

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/custom/IKnoxCustomManager;
    .registers 3

    .line 0
    if-nez p0, :cond_4

    .line 1
    .line 2
    const/4 p0, 0x0

    .line 3
    return-object p0

    .line 4
    :cond_4
    const-string v0, "com.samsung.android.knox.custom.IKnoxCustomManager"

    .line 5
    .line 6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_13

    .line 11
    .line 12
    instance-of v1, v0, Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 13
    .line 14
    if-eqz v1, :cond_13

    .line 15
    .line 16
    check-cast v0, Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_13
    new-instance v0, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub$Proxy;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 22
    .line 23
    .line 24
    return-object v0
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


# virtual methods
.method public final whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public final whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    const/4 v0, 0x1

    .line 1
    const-string v1, "com.samsung.android.knox.custom.IKnoxCustomManager"

    .line 2
    .line 3
    if-lt p1, v0, :cond_d

    .line 4
    .line 5
    const v2, 0xffffff

    .line 6
    .line 7
    .line 8
    if-gt p1, v2, :cond_d

    .line 9
    .line 10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_d
    const v2, 0x5f4e5446

    .line 14
    .line 15
    .line 16
    if-eq p1, v2, :cond_126c

    .line 17
    .line 18
    packed-switch p1, :pswitch_data_1270

    .line 19
    .line 20
    .line 21
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0

    .line 26
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p4

    .line 34
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 35
    .line 36
    .line 37
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->removeRoleHolder(Ljava/lang/String;Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 45
    .line 46
    .line 47
    goto/16 :goto_126b

    .line 48
    .line 49
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p4

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 58
    .line 59
    .line 60
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->addRoleHolder(Ljava/lang/String;Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 68
    .line 69
    .line 70
    goto/16 :goto_126b

    .line 71
    .line 72
    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 77
    .line 78
    .line 79
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getRoleHolders(Ljava/lang/String;)Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 87
    .line 88
    .line 89
    goto/16 :goto_126b

    .line 90
    .line 91
    :pswitch_5b
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->migrateApplicationRestrictions()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    .line 96
    .line 97
    goto/16 :goto_126b

    .line 98
    .line 99
    :pswitch_63
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$setKeyedAppStatesReport$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    return p0

    .line 104
    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 109
    .line 110
    .line 111
    move-result p4

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 113
    .line 114
    .line 115
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getApplicationRestrictionsInternal(Ljava/lang/String;I)Landroid/os/Bundle;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p3, p0, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 123
    .line 124
    .line 125
    goto/16 :goto_126b

    .line 126
    .line 127
    :pswitch_7f
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$setApplicationRestrictionsInternal$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 128
    .line 129
    .line 130
    move-result p0

    .line 131
    return p0

    .line 132
    :pswitch_84
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getTcpDump()Landroid/os/ParcelFileDescriptor;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p3, p0, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 140
    .line 141
    .line 142
    goto/16 :goto_126b

    .line 143
    .line 144
    :pswitch_90
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->stopTcpDump()I

    .line 145
    .line 146
    .line 147
    move-result p0

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    .line 153
    .line 154
    goto/16 :goto_126b

    .line 155
    .line 156
    :pswitch_9c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 161
    .line 162
    .line 163
    move-result p4

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    .line 166
    .line 167
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->startTcpDump(Ljava/lang/String;I)I

    .line 168
    .line 169
    .line 170
    move-result p0

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    .line 176
    .line 177
    goto/16 :goto_126b

    .line 178
    .line 179
    :pswitch_b3
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getBsohUnbiased()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    goto/16 :goto_126b

    .line 190
    .line 191
    :pswitch_bf
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getBsoh()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    goto/16 :goto_126b

    .line 202
    .line 203
    :pswitch_cb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 208
    .line 209
    .line 210
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setAsoc(I)I

    .line 211
    .line 212
    .line 213
    move-result p0

    .line 214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    .line 219
    .line 220
    goto/16 :goto_126b

    .line 221
    .line 222
    :pswitch_de
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAsoc()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    goto/16 :goto_126b

    .line 233
    .line 234
    :pswitch_ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 235
    .line 236
    .line 237
    move-result p1

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 239
    .line 240
    .line 241
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setKnoxNDALicenseActivated(Z)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    .line 246
    .line 247
    goto/16 :goto_126b

    .line 248
    .line 249
    :pswitch_f9
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 250
    .line 251
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    check-cast p1, Landroid/content/ComponentName;

    .line 256
    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 258
    .line 259
    .line 260
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->stayInDexForegroundMode(Landroid/content/ComponentName;)Z

    .line 261
    .line 262
    .line 263
    move-result p0

    .line 264
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 268
    .line 269
    .line 270
    goto/16 :goto_126b

    .line 271
    .line 272
    :pswitch_110
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 277
    .line 278
    .line 279
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->stopProKioskMode(Ljava/lang/String;)I

    .line 280
    .line 281
    .line 282
    move-result p0

    .line 283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    .line 285
    .line 286
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    .line 288
    .line 289
    goto/16 :goto_126b

    .line 290
    .line 291
    :pswitch_123
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object p4

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 300
    .line 301
    .line 302
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->startProKioskMode(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    .line 304
    .line 305
    move-result p0

    .line 306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    .line 308
    .line 309
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    .line 311
    .line 312
    goto/16 :goto_126b

    .line 313
    .line 314
    :pswitch_13a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 315
    .line 316
    .line 317
    move-result-object p1

    .line 318
    invoke-static {p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 323
    .line 324
    .line 325
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->registerSystemUiCallback(Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;)Z

    .line 326
    .line 327
    .line 328
    move-result p0

    .line 329
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    .line 331
    .line 332
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 333
    .line 334
    .line 335
    goto/16 :goto_126b

    .line 336
    .line 337
    :pswitch_151
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLoadingLogoPath()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object p0

    .line 341
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    .line 343
    .line 344
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    goto/16 :goto_126b

    .line 348
    .line 349
    :pswitch_15d
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->startSmartView()I

    .line 350
    .line 351
    .line 352
    move-result p0

    .line 353
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    .line 355
    .line 356
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    .line 358
    .line 359
    goto/16 :goto_126b

    .line 360
    .line 361
    :pswitch_169
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->clearForcedDisplaySizeDensity()I

    .line 362
    .line 363
    .line 364
    move-result p0

    .line 365
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    .line 367
    .line 368
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 369
    .line 370
    .line 371
    goto/16 :goto_126b

    .line 372
    .line 373
    :pswitch_175
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$setForcedDisplaySizeDensity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 374
    .line 375
    .line 376
    move-result p0

    .line 377
    return p0

    .line 378
    :pswitch_17a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 379
    .line 380
    .line 381
    move-result p1

    .line 382
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 383
    .line 384
    .line 385
    move-result p4

    .line 386
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 387
    .line 388
    .line 389
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHardKeyIntentBroadcast(II)I

    .line 390
    .line 391
    .line 392
    move-result p0

    .line 393
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    .line 395
    .line 396
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 397
    .line 398
    .line 399
    goto/16 :goto_126b

    .line 400
    .line 401
    :pswitch_191
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$setHardKeyIntentBroadcastInternal$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 402
    .line 403
    .line 404
    move-result p0

    .line 405
    return p0

    .line 406
    :pswitch_196
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$setHardKeyIntentBroadcastExternal$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 407
    .line 408
    .line 409
    move-result p0

    .line 410
    return p0

    .line 411
    :pswitch_19b
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$setHardKeyIntentBroadcast$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 412
    .line 413
    .line 414
    move-result p0

    .line 415
    return p0

    .line 416
    :pswitch_1a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 417
    .line 418
    .line 419
    move-result p1

    .line 420
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 421
    .line 422
    .line 423
    move-result p4

    .line 424
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 425
    .line 426
    .line 427
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHardKeyBlockState(II)I

    .line 428
    .line 429
    .line 430
    move-result p0

    .line 431
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    .line 433
    .line 434
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 435
    .line 436
    .line 437
    goto/16 :goto_126b

    .line 438
    .line 439
    :pswitch_1b7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 440
    .line 441
    .line 442
    move-result p1

    .line 443
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 444
    .line 445
    .line 446
    move-result p4

    .line 447
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 448
    .line 449
    .line 450
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHardKeyReportState(II)I

    .line 451
    .line 452
    .line 453
    move-result p0

    .line 454
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    .line 456
    .line 457
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 458
    .line 459
    .line 460
    goto/16 :goto_126b

    .line 461
    .line 462
    :pswitch_1ce
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$setHardKeyReportState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 463
    .line 464
    .line 465
    move-result p0

    .line 466
    return p0

    .line 467
    :pswitch_1d3
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$setWallpaper$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 468
    .line 469
    .line 470
    move-result p0

    .line 471
    return p0

    .line 472
    :pswitch_1d8
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getShowIMEWithHardKeyboard()I

    .line 473
    .line 474
    .line 475
    move-result p0

    .line 476
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    .line 478
    .line 479
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 480
    .line 481
    .line 482
    goto/16 :goto_126b

    .line 483
    .line 484
    :pswitch_1e4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 485
    .line 486
    .line 487
    move-result p1

    .line 488
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 489
    .line 490
    .line 491
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setShowIMEWithHardKeyboard(I)I

    .line 492
    .line 493
    .line 494
    move-result p0

    .line 495
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    .line 497
    .line 498
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 499
    .line 500
    .line 501
    goto/16 :goto_126b

    .line 502
    .line 503
    :pswitch_1f7
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProtectBatteryState()Z

    .line 504
    .line 505
    .line 506
    move-result p0

    .line 507
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 508
    .line 509
    .line 510
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 511
    .line 512
    .line 513
    goto/16 :goto_126b

    .line 514
    .line 515
    :pswitch_203
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 516
    .line 517
    .line 518
    move-result p1

    .line 519
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 520
    .line 521
    .line 522
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProtectBatteryState(Z)I

    .line 523
    .line 524
    .line 525
    move-result p0

    .line 526
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    .line 528
    .line 529
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 530
    .line 531
    .line 532
    goto/16 :goto_126b

    .line 533
    .line 534
    :pswitch_216
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getDexHDMIAutoEnterState()I

    .line 535
    .line 536
    .line 537
    move-result p0

    .line 538
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    .line 540
    .line 541
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 542
    .line 543
    .line 544
    goto/16 :goto_126b

    .line 545
    .line 546
    :pswitch_222
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 547
    .line 548
    .line 549
    move-result p1

    .line 550
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 551
    .line 552
    .line 553
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setDexHDMIAutoEnterState(I)I

    .line 554
    .line 555
    .line 556
    move-result p0

    .line 557
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    .line 559
    .line 560
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 561
    .line 562
    .line 563
    goto/16 :goto_126b

    .line 564
    .line 565
    :pswitch_235
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->isDexAutoOpenLastAppAllowed()I

    .line 566
    .line 567
    .line 568
    move-result p0

    .line 569
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 570
    .line 571
    .line 572
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 573
    .line 574
    .line 575
    goto/16 :goto_126b

    .line 576
    .line 577
    :pswitch_241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 578
    .line 579
    .line 580
    move-result p1

    .line 581
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 582
    .line 583
    .line 584
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->allowDexAutoOpenLastApp(I)I

    .line 585
    .line 586
    .line 587
    move-result p0

    .line 588
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 589
    .line 590
    .line 591
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 592
    .line 593
    .line 594
    goto/16 :goto_126b

    .line 595
    .line 596
    :pswitch_254
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getDexHomeAlignment()I

    .line 597
    .line 598
    .line 599
    move-result p0

    .line 600
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 601
    .line 602
    .line 603
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 604
    .line 605
    .line 606
    goto/16 :goto_126b

    .line 607
    .line 608
    :pswitch_260
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 609
    .line 610
    .line 611
    move-result p1

    .line 612
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 613
    .line 614
    .line 615
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setDexHomeAlignment(I)I

    .line 616
    .line 617
    .line 618
    move-result p0

    .line 619
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 620
    .line 621
    .line 622
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 623
    .line 624
    .line 625
    goto/16 :goto_126b

    .line 626
    .line 627
    :pswitch_273
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getDexScreenTimeout()I

    .line 628
    .line 629
    .line 630
    move-result p0

    .line 631
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    .line 633
    .line 634
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 635
    .line 636
    .line 637
    goto/16 :goto_126b

    .line 638
    .line 639
    :pswitch_27f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 640
    .line 641
    .line 642
    move-result p1

    .line 643
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 644
    .line 645
    .line 646
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setDexScreenTimeout(I)I

    .line 647
    .line 648
    .line 649
    move-result p0

    .line 650
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    .line 652
    .line 653
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 654
    .line 655
    .line 656
    goto/16 :goto_126b

    .line 657
    .line 658
    :pswitch_292
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->clearDexLoadingLogo()I

    .line 659
    .line 660
    .line 661
    move-result p0

    .line 662
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 663
    .line 664
    .line 665
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 666
    .line 667
    .line 668
    goto/16 :goto_126b

    .line 669
    .line 670
    :pswitch_29e
    sget-object p1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 671
    .line 672
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 673
    .line 674
    .line 675
    move-result-object p1

    .line 676
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 677
    .line 678
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 679
    .line 680
    .line 681
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setDexLoadingLogo(Landroid/os/ParcelFileDescriptor;)I

    .line 682
    .line 683
    .line 684
    move-result p0

    .line 685
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 686
    .line 687
    .line 688
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 689
    .line 690
    .line 691
    goto/16 :goto_126b

    .line 692
    .line 693
    :pswitch_2b5
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getDexForegroundModePackageList()Ljava/util/List;

    .line 694
    .line 695
    .line 696
    move-result-object p0

    .line 697
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    .line 699
    .line 700
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 701
    .line 702
    .line 703
    goto/16 :goto_126b

    .line 704
    .line 705
    :pswitch_2c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 706
    .line 707
    .line 708
    move-result p1

    .line 709
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 710
    .line 711
    .line 712
    move-result-object p4

    .line 713
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 714
    .line 715
    .line 716
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setDexForegroundModePackageList(ILjava/util/List;)I

    .line 717
    .line 718
    .line 719
    move-result p0

    .line 720
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    .line 722
    .line 723
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 724
    .line 725
    .line 726
    goto/16 :goto_126b

    .line 727
    .line 728
    :pswitch_2d8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 729
    .line 730
    .line 731
    move-result-object p1

    .line 732
    sget-object p4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 733
    .line 734
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 735
    .line 736
    .line 737
    move-result-object p4

    .line 738
    check-cast p4, Landroid/content/ComponentName;

    .line 739
    .line 740
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 741
    .line 742
    .line 743
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->removeDexURLShortcut(Ljava/lang/String;Landroid/content/ComponentName;)I

    .line 744
    .line 745
    .line 746
    move-result p0

    .line 747
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 748
    .line 749
    .line 750
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 751
    .line 752
    .line 753
    goto/16 :goto_126b

    .line 754
    .line 755
    :pswitch_2f3
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$addDexURLShortcutExtend$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 756
    .line 757
    .line 758
    move-result p0

    .line 759
    return p0

    .line 760
    :pswitch_2f8
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$addDexURLShortcut$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 761
    .line 762
    .line 763
    move-result p0

    .line 764
    return p0

    .line 765
    :pswitch_2fd
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 766
    .line 767
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 768
    .line 769
    .line 770
    move-result-object p1

    .line 771
    check-cast p1, Landroid/content/ComponentName;

    .line 772
    .line 773
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 774
    .line 775
    .line 776
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->removeDexShortcut(Landroid/content/ComponentName;)I

    .line 777
    .line 778
    .line 779
    move-result p0

    .line 780
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 781
    .line 782
    .line 783
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 784
    .line 785
    .line 786
    goto/16 :goto_126b

    .line 787
    .line 788
    :pswitch_314
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$addDexShortcut$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 789
    .line 790
    .line 791
    move-result p0

    .line 792
    return p0

    .line 793
    :pswitch_319
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHomeScreenMode()I

    .line 794
    .line 795
    .line 796
    move-result p0

    .line 797
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 798
    .line 799
    .line 800
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 801
    .line 802
    .line 803
    goto/16 :goto_126b

    .line 804
    .line 805
    :pswitch_325
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 806
    .line 807
    .line 808
    move-result p1

    .line 809
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 810
    .line 811
    .line 812
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setHomeScreenMode(I)I

    .line 813
    .line 814
    .line 815
    move-result p0

    .line 816
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 817
    .line 818
    .line 819
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 820
    .line 821
    .line 822
    goto/16 :goto_126b

    .line 823
    .line 824
    :pswitch_338
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHardKeyIntentMode()I

    .line 825
    .line 826
    .line 827
    move-result p0

    .line 828
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 829
    .line 830
    .line 831
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 832
    .line 833
    .line 834
    goto/16 :goto_126b

    .line 835
    .line 836
    :pswitch_344
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 837
    .line 838
    .line 839
    move-result p1

    .line 840
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 841
    .line 842
    .line 843
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setHardKeyIntentMode(I)I

    .line 844
    .line 845
    .line 846
    move-result p0

    .line 847
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 848
    .line 849
    .line 850
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 851
    .line 852
    .line 853
    goto/16 :goto_126b

    .line 854
    .line 855
    :pswitch_357
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getZeroPageState()I

    .line 856
    .line 857
    .line 858
    move-result p0

    .line 859
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 860
    .line 861
    .line 862
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 863
    .line 864
    .line 865
    goto/16 :goto_126b

    .line 866
    .line 867
    :pswitch_363
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 868
    .line 869
    .line 870
    move-result p1

    .line 871
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 872
    .line 873
    .line 874
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setZeroPageState(I)I

    .line 875
    .line 876
    .line 877
    move-result p0

    .line 878
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 879
    .line 880
    .line 881
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 882
    .line 883
    .line 884
    goto/16 :goto_126b

    .line 885
    .line 886
    :pswitch_376
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 887
    .line 888
    .line 889
    move-result p1

    .line 890
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 891
    .line 892
    .line 893
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getFavoriteApp(I)Ljava/lang/String;

    .line 894
    .line 895
    .line 896
    move-result-object p0

    .line 897
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 898
    .line 899
    .line 900
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 901
    .line 902
    .line 903
    goto/16 :goto_126b

    .line 904
    .line 905
    :pswitch_389
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getFavoriteAppsMaxCount()I

    .line 906
    .line 907
    .line 908
    move-result p0

    .line 909
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 910
    .line 911
    .line 912
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 913
    .line 914
    .line 915
    goto/16 :goto_126b

    .line 916
    .line 917
    :pswitch_395
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 918
    .line 919
    .line 920
    move-result p1

    .line 921
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 922
    .line 923
    .line 924
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->removeFavoriteApp(I)I

    .line 925
    .line 926
    .line 927
    move-result p0

    .line 928
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 929
    .line 930
    .line 931
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 932
    .line 933
    .line 934
    goto/16 :goto_126b

    .line 935
    .line 936
    :pswitch_3a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 937
    .line 938
    .line 939
    move-result-object p1

    .line 940
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 941
    .line 942
    .line 943
    move-result p4

    .line 944
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 945
    .line 946
    .line 947
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setFavoriteApp(Ljava/lang/String;I)I

    .line 948
    .line 949
    .line 950
    move-result p0

    .line 951
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 952
    .line 953
    .line 954
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 955
    .line 956
    .line 957
    goto/16 :goto_126b

    .line 958
    .line 959
    :pswitch_3bf
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAppsButtonState()I

    .line 960
    .line 961
    .line 962
    move-result p0

    .line 963
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 964
    .line 965
    .line 966
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 967
    .line 968
    .line 969
    goto/16 :goto_126b

    .line 970
    .line 971
    :pswitch_3cb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 972
    .line 973
    .line 974
    move-result p1

    .line 975
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 976
    .line 977
    .line 978
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setAppsButtonState(I)I

    .line 979
    .line 980
    .line 981
    move-result p0

    .line 982
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 983
    .line 984
    .line 985
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 986
    .line 987
    .line 988
    goto/16 :goto_126b

    .line 989
    .line 990
    :pswitch_3de
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 991
    .line 992
    .line 993
    move-result p1

    .line 994
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 995
    .line 996
    .line 997
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->deleteHomeScreenPage(I)I

    .line 998
    .line 999
    .line 1000
    move-result p0

    .line 1001
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1002
    .line 1003
    .line 1004
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1005
    .line 1006
    .line 1007
    goto/16 :goto_126b

    .line 1008
    .line 1009
    :pswitch_3f1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1010
    .line 1011
    .line 1012
    move-result-object p1

    .line 1013
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1014
    .line 1015
    .line 1016
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->removeWidget(Ljava/lang/String;)I

    .line 1017
    .line 1018
    .line 1019
    move-result p0

    .line 1020
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1021
    .line 1022
    .line 1023
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1024
    .line 1025
    .line 1026
    goto/16 :goto_126b

    .line 1027
    .line 1028
    :pswitch_404
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$addWidget$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 1029
    .line 1030
    .line 1031
    move-result p0

    .line 1032
    return p0

    .line 1033
    :pswitch_409
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1034
    .line 1035
    .line 1036
    move-result-object p1

    .line 1037
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1038
    .line 1039
    .line 1040
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->removeShortcut(Ljava/lang/String;)I

    .line 1041
    .line 1042
    .line 1043
    move-result p0

    .line 1044
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1045
    .line 1046
    .line 1047
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1048
    .line 1049
    .line 1050
    goto/16 :goto_126b

    .line 1051
    .line 1052
    :pswitch_41c
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$addShortcut$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 1053
    .line 1054
    .line 1055
    move-result p0

    .line 1056
    return p0

    .line 1057
    :pswitch_421
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1058
    .line 1059
    .line 1060
    move-result p1

    .line 1061
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1062
    .line 1063
    .line 1064
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setBrightness(I)I

    .line 1065
    .line 1066
    .line 1067
    move-result p0

    .line 1068
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1069
    .line 1070
    .line 1071
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1072
    .line 1073
    .line 1074
    goto/16 :goto_126b

    .line 1075
    .line 1076
    :pswitch_434
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getForceAutoShutDownState()I

    .line 1077
    .line 1078
    .line 1079
    move-result p0

    .line 1080
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1081
    .line 1082
    .line 1083
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1084
    .line 1085
    .line 1086
    goto/16 :goto_126b

    .line 1087
    .line 1088
    :pswitch_440
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1089
    .line 1090
    .line 1091
    move-result p1

    .line 1092
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1093
    .line 1094
    .line 1095
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setForceAutoShutDownState(I)I

    .line 1096
    .line 1097
    .line 1098
    move-result p0

    .line 1099
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1100
    .line 1101
    .line 1102
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1103
    .line 1104
    .line 1105
    goto/16 :goto_126b

    .line 1106
    .line 1107
    :pswitch_453
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbConnectionTypeInternal()I

    .line 1108
    .line 1109
    .line 1110
    move-result p0

    .line 1111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1112
    .line 1113
    .line 1114
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1115
    .line 1116
    .line 1117
    goto/16 :goto_126b

    .line 1118
    .line 1119
    :pswitch_45f
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbConnectionType()I

    .line 1120
    .line 1121
    .line 1122
    move-result p0

    .line 1123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1124
    .line 1125
    .line 1126
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1127
    .line 1128
    .line 1129
    goto/16 :goto_126b

    .line 1130
    .line 1131
    :pswitch_46b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1132
    .line 1133
    .line 1134
    move-result p1

    .line 1135
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1136
    .line 1137
    .line 1138
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setUsbConnectionType(I)I

    .line 1139
    .line 1140
    .line 1141
    move-result p0

    .line 1142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1143
    .line 1144
    .line 1145
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1146
    .line 1147
    .line 1148
    goto/16 :goto_126b

    .line 1149
    .line 1150
    :pswitch_47e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1151
    .line 1152
    .line 1153
    move-result p1

    .line 1154
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1155
    .line 1156
    .line 1157
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLockScreenShortcut(I)Ljava/lang/String;

    .line 1158
    .line 1159
    .line 1160
    move-result-object p0

    .line 1161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1162
    .line 1163
    .line 1164
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1165
    .line 1166
    .line 1167
    goto/16 :goto_126b

    .line 1168
    .line 1169
    :pswitch_491
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1170
    .line 1171
    .line 1172
    move-result p1

    .line 1173
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1174
    .line 1175
    .line 1176
    move-result-object p4

    .line 1177
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1178
    .line 1179
    .line 1180
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setLockScreenShortcut(ILjava/lang/String;)I

    .line 1181
    .line 1182
    .line 1183
    move-result p0

    .line 1184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1185
    .line 1186
    .line 1187
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1188
    .line 1189
    .line 1190
    goto/16 :goto_126b

    .line 1191
    .line 1192
    :pswitch_4a8
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->powerOff()I

    .line 1193
    .line 1194
    .line 1195
    move-result p0

    .line 1196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1197
    .line 1198
    .line 1199
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1200
    .line 1201
    .line 1202
    goto/16 :goto_126b

    .line 1203
    .line 1204
    :pswitch_4b4
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getMacAddress()Ljava/lang/String;

    .line 1205
    .line 1206
    .line 1207
    move-result-object p0

    .line 1208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1209
    .line 1210
    .line 1211
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1212
    .line 1213
    .line 1214
    goto/16 :goto_126b

    .line 1215
    .line 1216
    :pswitch_4c0
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoCallPickupState()I

    .line 1217
    .line 1218
    .line 1219
    move-result p0

    .line 1220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1221
    .line 1222
    .line 1223
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1224
    .line 1225
    .line 1226
    goto/16 :goto_126b

    .line 1227
    .line 1228
    :pswitch_4cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1229
    .line 1230
    .line 1231
    move-result p1

    .line 1232
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1233
    .line 1234
    .line 1235
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setAutoCallPickupState(I)I

    .line 1236
    .line 1237
    .line 1238
    move-result p0

    .line 1239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1240
    .line 1241
    .line 1242
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1243
    .line 1244
    .line 1245
    goto/16 :goto_126b

    .line 1246
    .line 1247
    :pswitch_4df
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoCallNumberList()Ljava/util/List;

    .line 1248
    .line 1249
    .line 1250
    move-result-object p0

    .line 1251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1252
    .line 1253
    .line 1254
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1255
    .line 1256
    .line 1257
    goto/16 :goto_126b

    .line 1258
    .line 1259
    :pswitch_4eb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1260
    .line 1261
    .line 1262
    move-result-object p1

    .line 1263
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1264
    .line 1265
    .line 1266
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoCallNumberAnswerMode(Ljava/lang/String;)I

    .line 1267
    .line 1268
    .line 1269
    move-result p0

    .line 1270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1271
    .line 1272
    .line 1273
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1274
    .line 1275
    .line 1276
    goto/16 :goto_126b

    .line 1277
    .line 1278
    :pswitch_4fe
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1279
    .line 1280
    .line 1281
    move-result-object p1

    .line 1282
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1283
    .line 1284
    .line 1285
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoCallNumberDelay(Ljava/lang/String;)I

    .line 1286
    .line 1287
    .line 1288
    move-result p0

    .line 1289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1290
    .line 1291
    .line 1292
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1293
    .line 1294
    .line 1295
    goto/16 :goto_126b

    .line 1296
    .line 1297
    :pswitch_511
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1298
    .line 1299
    .line 1300
    move-result-object p1

    .line 1301
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1302
    .line 1303
    .line 1304
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->removeAutoCallNumber(Ljava/lang/String;)I

    .line 1305
    .line 1306
    .line 1307
    move-result p0

    .line 1308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1309
    .line 1310
    .line 1311
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1312
    .line 1313
    .line 1314
    goto/16 :goto_126b

    .line 1315
    .line 1316
    :pswitch_524
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$addAutoCallNumber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 1317
    .line 1318
    .line 1319
    move-result p0

    .line 1320
    return p0

    .line 1321
    :pswitch_529
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getWifiState()Z

    .line 1322
    .line 1323
    .line 1324
    move-result p0

    .line 1325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1326
    .line 1327
    .line 1328
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1329
    .line 1330
    .line 1331
    goto/16 :goto_126b

    .line 1332
    .line 1333
    :pswitch_535
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getWifiHotspotEnabledState()I

    .line 1334
    .line 1335
    .line 1336
    move-result p0

    .line 1337
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1338
    .line 1339
    .line 1340
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1341
    .line 1342
    .line 1343
    goto/16 :goto_126b

    .line 1344
    .line 1345
    :pswitch_541
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1346
    .line 1347
    .line 1348
    move-result p1

    .line 1349
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1350
    .line 1351
    .line 1352
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setWifiHotspotEnabledState(I)I

    .line 1353
    .line 1354
    .line 1355
    move-result p0

    .line 1356
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1357
    .line 1358
    .line 1359
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1360
    .line 1361
    .line 1362
    goto/16 :goto_126b

    .line 1363
    .line 1364
    :pswitch_554
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1365
    .line 1366
    .line 1367
    move-result p1

    .line 1368
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1369
    .line 1370
    .line 1371
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVibrationIntensity(I)I

    .line 1372
    .line 1373
    .line 1374
    move-result p0

    .line 1375
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1376
    .line 1377
    .line 1378
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1379
    .line 1380
    .line 1381
    goto/16 :goto_126b

    .line 1382
    .line 1383
    :pswitch_567
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1384
    .line 1385
    .line 1386
    move-result p1

    .line 1387
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1388
    .line 1389
    .line 1390
    move-result p4

    .line 1391
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1392
    .line 1393
    .line 1394
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setVibrationIntensity(II)I

    .line 1395
    .line 1396
    .line 1397
    move-result p0

    .line 1398
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1399
    .line 1400
    .line 1401
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1402
    .line 1403
    .line 1404
    goto/16 :goto_126b

    .line 1405
    .line 1406
    :pswitch_57e
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getSystemSoundsEnabledState()I

    .line 1407
    .line 1408
    .line 1409
    move-result p0

    .line 1410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1411
    .line 1412
    .line 1413
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1414
    .line 1415
    .line 1416
    goto/16 :goto_126b

    .line 1417
    .line 1418
    :pswitch_58a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1419
    .line 1420
    .line 1421
    move-result p1

    .line 1422
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1423
    .line 1424
    .line 1425
    move-result p4

    .line 1426
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1427
    .line 1428
    .line 1429
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setSystemSoundsEnabledState(II)I

    .line 1430
    .line 1431
    .line 1432
    move-result p0

    .line 1433
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1434
    .line 1435
    .line 1436
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1437
    .line 1438
    .line 1439
    goto/16 :goto_126b

    .line 1440
    .line 1441
    :pswitch_5a1
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getQuickPanelItems()Ljava/lang/String;

    .line 1442
    .line 1443
    .line 1444
    move-result-object p0

    .line 1445
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1446
    .line 1447
    .line 1448
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1449
    .line 1450
    .line 1451
    goto/16 :goto_126b

    .line 1452
    .line 1453
    :pswitch_5ad
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1454
    .line 1455
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1456
    .line 1457
    .line 1458
    move-result-object p1

    .line 1459
    check-cast p1, Landroid/os/Bundle;

    .line 1460
    .line 1461
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1462
    .line 1463
    .line 1464
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setQuickPanelItemsInternal(Landroid/os/Bundle;)I

    .line 1465
    .line 1466
    .line 1467
    move-result p0

    .line 1468
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1469
    .line 1470
    .line 1471
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1472
    .line 1473
    .line 1474
    goto/16 :goto_126b

    .line 1475
    .line 1476
    :pswitch_5c4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1477
    .line 1478
    .line 1479
    move-result-object p1

    .line 1480
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1481
    .line 1482
    .line 1483
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setQuickPanelItems(Ljava/lang/String;)I

    .line 1484
    .line 1485
    .line 1486
    move-result p0

    .line 1487
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1488
    .line 1489
    .line 1490
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1491
    .line 1492
    .line 1493
    goto/16 :goto_126b

    .line 1494
    .line 1495
    :pswitch_5d7
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getQuickPanelEditMode()I

    .line 1496
    .line 1497
    .line 1498
    move-result p0

    .line 1499
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1500
    .line 1501
    .line 1502
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1503
    .line 1504
    .line 1505
    goto/16 :goto_126b

    .line 1506
    .line 1507
    :pswitch_5e3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1508
    .line 1509
    .line 1510
    move-result p1

    .line 1511
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1512
    .line 1513
    .line 1514
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setQuickPanelEditMode(I)I

    .line 1515
    .line 1516
    .line 1517
    move-result p0

    .line 1518
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1519
    .line 1520
    .line 1521
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1522
    .line 1523
    .line 1524
    goto/16 :goto_126b

    .line 1525
    .line 1526
    :pswitch_5f6
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getQuickPanelButtons()I

    .line 1527
    .line 1528
    .line 1529
    move-result p0

    .line 1530
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1531
    .line 1532
    .line 1533
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1534
    .line 1535
    .line 1536
    goto/16 :goto_126b

    .line 1537
    .line 1538
    :pswitch_602
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1539
    .line 1540
    .line 1541
    move-result p1

    .line 1542
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1543
    .line 1544
    .line 1545
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setQuickPanelButtons(I)I

    .line 1546
    .line 1547
    .line 1548
    move-result p0

    .line 1549
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1550
    .line 1551
    .line 1552
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1553
    .line 1554
    .line 1555
    goto/16 :goto_126b

    .line 1556
    .line 1557
    :pswitch_615
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getMobileNetworkType()I

    .line 1558
    .line 1559
    .line 1560
    move-result p0

    .line 1561
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1562
    .line 1563
    .line 1564
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1565
    .line 1566
    .line 1567
    goto/16 :goto_126b

    .line 1568
    .line 1569
    :pswitch_621
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1570
    .line 1571
    .line 1572
    move-result p1

    .line 1573
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1574
    .line 1575
    .line 1576
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setMobileNetworkType(I)I

    .line 1577
    .line 1578
    .line 1579
    move-result p0

    .line 1580
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1581
    .line 1582
    .line 1583
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1584
    .line 1585
    .line 1586
    goto/16 :goto_126b

    .line 1587
    .line 1588
    :pswitch_634
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->isSupportedForceAutoStartUpState()Z

    .line 1589
    .line 1590
    .line 1591
    move-result p0

    .line 1592
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1593
    .line 1594
    .line 1595
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1596
    .line 1597
    .line 1598
    goto/16 :goto_126b

    .line 1599
    .line 1600
    :pswitch_640
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getForceAutoStartUpState()I

    .line 1601
    .line 1602
    .line 1603
    move-result p0

    .line 1604
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1605
    .line 1606
    .line 1607
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1608
    .line 1609
    .line 1610
    goto/16 :goto_126b

    .line 1611
    .line 1612
    :pswitch_64c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1613
    .line 1614
    .line 1615
    move-result p1

    .line 1616
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1617
    .line 1618
    .line 1619
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setForceAutoStartUpState(I)I

    .line 1620
    .line 1621
    .line 1622
    move-result p0

    .line 1623
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1624
    .line 1625
    .line 1626
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1627
    .line 1628
    .line 1629
    goto/16 :goto_126b

    .line 1630
    .line 1631
    :pswitch_65f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1632
    .line 1633
    .line 1634
    move-result p1

    .line 1635
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1636
    .line 1637
    .line 1638
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setFlightModeState(I)I

    .line 1639
    .line 1640
    .line 1641
    move-result p0

    .line 1642
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1643
    .line 1644
    .line 1645
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1646
    .line 1647
    .line 1648
    goto/16 :goto_126b

    .line 1649
    .line 1650
    :pswitch_672
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1651
    .line 1652
    .line 1653
    move-result p1

    .line 1654
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1655
    .line 1656
    .line 1657
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->clearAnimation(I)I

    .line 1658
    .line 1659
    .line 1660
    move-result p0

    .line 1661
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1662
    .line 1663
    .line 1664
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1665
    .line 1666
    .line 1667
    goto/16 :goto_126b

    .line 1668
    .line 1669
    :pswitch_685
    sget-object p1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1670
    .line 1671
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1672
    .line 1673
    .line 1674
    move-result-object p1

    .line 1675
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 1676
    .line 1677
    sget-object p4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1678
    .line 1679
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1680
    .line 1681
    .line 1682
    move-result-object p4

    .line 1683
    check-cast p4, Landroid/os/ParcelFileDescriptor;

    .line 1684
    .line 1685
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1686
    .line 1687
    .line 1688
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setShuttingDownAnimation(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)I

    .line 1689
    .line 1690
    .line 1691
    move-result p0

    .line 1692
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1693
    .line 1694
    .line 1695
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1696
    .line 1697
    .line 1698
    goto/16 :goto_126b

    .line 1699
    .line 1700
    :pswitch_6a4
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$setBootingAnimation$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 1701
    .line 1702
    .line 1703
    move-result p0

    .line 1704
    return p0

    .line 1705
    :pswitch_6a9
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAccessibilitySettingsItems()I

    .line 1706
    .line 1707
    .line 1708
    move-result p0

    .line 1709
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1710
    .line 1711
    .line 1712
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1713
    .line 1714
    .line 1715
    goto/16 :goto_126b

    .line 1716
    .line 1717
    :pswitch_6b5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1718
    .line 1719
    .line 1720
    move-result p1

    .line 1721
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1722
    .line 1723
    .line 1724
    move-result p4

    .line 1725
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1726
    .line 1727
    .line 1728
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setAccessibilitySettingsItems(II)I

    .line 1729
    .line 1730
    .line 1731
    move-result p0

    .line 1732
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1733
    .line 1734
    .line 1735
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1736
    .line 1737
    .line 1738
    goto/16 :goto_126b

    .line 1739
    .line 1740
    :pswitch_6cc
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getWifiFrequencyBand()I

    .line 1741
    .line 1742
    .line 1743
    move-result p0

    .line 1744
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1745
    .line 1746
    .line 1747
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1748
    .line 1749
    .line 1750
    goto/16 :goto_126b

    .line 1751
    .line 1752
    :pswitch_6d8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1753
    .line 1754
    .line 1755
    move-result p1

    .line 1756
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1757
    .line 1758
    .line 1759
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setWifiFrequencyBand(I)I

    .line 1760
    .line 1761
    .line 1762
    move-result p0

    .line 1763
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1764
    .line 1765
    .line 1766
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1767
    .line 1768
    .line 1769
    goto/16 :goto_126b

    .line 1770
    .line 1771
    :pswitch_6eb
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbNetStateInternal()Z

    .line 1772
    .line 1773
    .line 1774
    move-result p0

    .line 1775
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1776
    .line 1777
    .line 1778
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1779
    .line 1780
    .line 1781
    goto/16 :goto_126b

    .line 1782
    .line 1783
    :pswitch_6f7
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbNetState()Z

    .line 1784
    .line 1785
    .line 1786
    move-result p0

    .line 1787
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1788
    .line 1789
    .line 1790
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1791
    .line 1792
    .line 1793
    goto/16 :goto_126b

    .line 1794
    .line 1795
    :pswitch_703
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1796
    .line 1797
    .line 1798
    move-result p1

    .line 1799
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1800
    .line 1801
    .line 1802
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setUsbNetState(Z)I

    .line 1803
    .line 1804
    .line 1805
    move-result p0

    .line 1806
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1807
    .line 1808
    .line 1809
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1810
    .line 1811
    .line 1812
    goto/16 :goto_126b

    .line 1813
    .line 1814
    :pswitch_716
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1815
    .line 1816
    .line 1817
    move-result p1

    .line 1818
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1819
    .line 1820
    .line 1821
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbNetAddress(I)Ljava/lang/String;

    .line 1822
    .line 1823
    .line 1824
    move-result-object p0

    .line 1825
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1826
    .line 1827
    .line 1828
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1829
    .line 1830
    .line 1831
    goto/16 :goto_126b

    .line 1832
    .line 1833
    :pswitch_729
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1834
    .line 1835
    .line 1836
    move-result-object p1

    .line 1837
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1838
    .line 1839
    .line 1840
    move-result-object p4

    .line 1841
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1842
    .line 1843
    .line 1844
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setUsbNetAddresses(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    .line 1846
    .line 1847
    move-result p0

    .line 1848
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1849
    .line 1850
    .line 1851
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1852
    .line 1853
    .line 1854
    goto/16 :goto_126b

    .line 1855
    .line 1856
    :pswitch_740
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbMassStorageState()Z

    .line 1857
    .line 1858
    .line 1859
    move-result p0

    .line 1860
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1861
    .line 1862
    .line 1863
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1864
    .line 1865
    .line 1866
    goto/16 :goto_126b

    .line 1867
    .line 1868
    :pswitch_74c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1869
    .line 1870
    .line 1871
    move-result p1

    .line 1872
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1873
    .line 1874
    .line 1875
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setUsbMassStorageState(Z)I

    .line 1876
    .line 1877
    .line 1878
    move-result p0

    .line 1879
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1880
    .line 1881
    .line 1882
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1883
    .line 1884
    .line 1885
    goto/16 :goto_126b

    .line 1886
    .line 1887
    :pswitch_75f
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUnlockSimPin()Ljava/lang/String;

    .line 1888
    .line 1889
    .line 1890
    move-result-object p0

    .line 1891
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1892
    .line 1893
    .line 1894
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1895
    .line 1896
    .line 1897
    goto/16 :goto_126b

    .line 1898
    .line 1899
    :pswitch_76b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1900
    .line 1901
    .line 1902
    move-result-object p1

    .line 1903
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1904
    .line 1905
    .line 1906
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setUnlockSimPin(Ljava/lang/String;)I

    .line 1907
    .line 1908
    .line 1909
    move-result p0

    .line 1910
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1911
    .line 1912
    .line 1913
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1914
    .line 1915
    .line 1916
    goto/16 :goto_126b

    .line 1917
    .line 1918
    :pswitch_77e
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUnlockSimOnBootState()Z

    .line 1919
    .line 1920
    .line 1921
    move-result p0

    .line 1922
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1923
    .line 1924
    .line 1925
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1926
    .line 1927
    .line 1928
    goto/16 :goto_126b

    .line 1929
    .line 1930
    :pswitch_78a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1931
    .line 1932
    .line 1933
    move-result p1

    .line 1934
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1935
    .line 1936
    .line 1937
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setUnlockSimOnBootState(Z)I

    .line 1938
    .line 1939
    .line 1940
    move-result p0

    .line 1941
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1942
    .line 1943
    .line 1944
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1945
    .line 1946
    .line 1947
    goto/16 :goto_126b

    .line 1948
    .line 1949
    :pswitch_79d
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarTextScrollWidth()I

    .line 1950
    .line 1951
    .line 1952
    move-result p0

    .line 1953
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1954
    .line 1955
    .line 1956
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1957
    .line 1958
    .line 1959
    goto/16 :goto_126b

    .line 1960
    .line 1961
    :pswitch_7a9
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$setStatusBarTextScrollWidth$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 1962
    .line 1963
    .line 1964
    move-result p0

    .line 1965
    return p0

    .line 1966
    :pswitch_7ae
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarNotificationsState()Z

    .line 1967
    .line 1968
    .line 1969
    move-result p0

    .line 1970
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1971
    .line 1972
    .line 1973
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1974
    .line 1975
    .line 1976
    goto/16 :goto_126b

    .line 1977
    .line 1978
    :pswitch_7ba
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1979
    .line 1980
    .line 1981
    move-result p1

    .line 1982
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1983
    .line 1984
    .line 1985
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setStatusBarNotificationsState(Z)I

    .line 1986
    .line 1987
    .line 1988
    move-result p0

    .line 1989
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1990
    .line 1991
    .line 1992
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1993
    .line 1994
    .line 1995
    goto/16 :goto_126b

    .line 1996
    .line 1997
    :pswitch_7cd
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarMode()I

    .line 1998
    .line 1999
    .line 2000
    move-result p0

    .line 2001
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2002
    .line 2003
    .line 2004
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2005
    .line 2006
    .line 2007
    goto/16 :goto_126b

    .line 2008
    .line 2009
    :pswitch_7d9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2010
    .line 2011
    .line 2012
    move-result p1

    .line 2013
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2014
    .line 2015
    .line 2016
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setStatusBarMode(I)I

    .line 2017
    .line 2018
    .line 2019
    move-result p0

    .line 2020
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2021
    .line 2022
    .line 2023
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2024
    .line 2025
    .line 2026
    goto/16 :goto_126b

    .line 2027
    .line 2028
    :pswitch_7ec
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarIconsState()Z

    .line 2029
    .line 2030
    .line 2031
    move-result p0

    .line 2032
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2033
    .line 2034
    .line 2035
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2036
    .line 2037
    .line 2038
    goto/16 :goto_126b

    .line 2039
    .line 2040
    :pswitch_7f8
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2041
    .line 2042
    .line 2043
    move-result p1

    .line 2044
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2045
    .line 2046
    .line 2047
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setStatusBarIconsState(Z)I

    .line 2048
    .line 2049
    .line 2050
    move-result p0

    .line 2051
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2052
    .line 2053
    .line 2054
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2055
    .line 2056
    .line 2057
    goto/16 :goto_126b

    .line 2058
    .line 2059
    :pswitch_80b
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarClockState()Z

    .line 2060
    .line 2061
    .line 2062
    move-result p0

    .line 2063
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2064
    .line 2065
    .line 2066
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2067
    .line 2068
    .line 2069
    goto/16 :goto_126b

    .line 2070
    .line 2071
    :pswitch_817
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2072
    .line 2073
    .line 2074
    move-result p1

    .line 2075
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2076
    .line 2077
    .line 2078
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setStatusBarClockState(Z)I

    .line 2079
    .line 2080
    .line 2081
    move-result p0

    .line 2082
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2083
    .line 2084
    .line 2085
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2086
    .line 2087
    .line 2088
    goto/16 :goto_126b

    .line 2089
    .line 2090
    :pswitch_82a
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getSettingsEnabledItems()I

    .line 2091
    .line 2092
    .line 2093
    move-result p0

    .line 2094
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2095
    .line 2096
    .line 2097
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2098
    .line 2099
    .line 2100
    goto/16 :goto_126b

    .line 2101
    .line 2102
    :pswitch_836
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2103
    .line 2104
    .line 2105
    move-result p1

    .line 2106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2107
    .line 2108
    .line 2109
    move-result p4

    .line 2110
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2111
    .line 2112
    .line 2113
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setSettingsEnabledItems(ZI)I

    .line 2114
    .line 2115
    .line 2116
    move-result p0

    .line 2117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2118
    .line 2119
    .line 2120
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2121
    .line 2122
    .line 2123
    goto/16 :goto_126b

    .line 2124
    .line 2125
    :pswitch_84d
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogCustomItemsState()Z

    .line 2126
    .line 2127
    .line 2128
    move-result p0

    .line 2129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2130
    .line 2131
    .line 2132
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2133
    .line 2134
    .line 2135
    goto/16 :goto_126b

    .line 2136
    .line 2137
    :pswitch_859
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2138
    .line 2139
    .line 2140
    move-result p1

    .line 2141
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2142
    .line 2143
    .line 2144
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setPowerDialogCustomItemsState(Z)I

    .line 2145
    .line 2146
    .line 2147
    move-result p0

    .line 2148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2149
    .line 2150
    .line 2151
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2152
    .line 2153
    .line 2154
    goto/16 :goto_126b

    .line 2155
    .line 2156
    :pswitch_86c
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogCustomItems()Ljava/util/List;

    .line 2157
    .line 2158
    .line 2159
    move-result-object p0

    .line 2160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2161
    .line 2162
    .line 2163
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2164
    .line 2165
    .line 2166
    goto/16 :goto_126b

    .line 2167
    .line 2168
    :pswitch_878
    sget-object p1, Lcom/samsung/android/knox/custom/PowerItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2169
    .line 2170
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 2171
    .line 2172
    .line 2173
    move-result-object p1

    .line 2174
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2175
    .line 2176
    .line 2177
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setPowerDialogCustomItems(Ljava/util/List;)I

    .line 2178
    .line 2179
    .line 2180
    move-result p0

    .line 2181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2182
    .line 2183
    .line 2184
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2185
    .line 2186
    .line 2187
    goto/16 :goto_126b

    .line 2188
    .line 2189
    :pswitch_88d
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLockScreenOverrideMode()I

    .line 2190
    .line 2191
    .line 2192
    move-result p0

    .line 2193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2194
    .line 2195
    .line 2196
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2197
    .line 2198
    .line 2199
    goto/16 :goto_126b

    .line 2200
    .line 2201
    :pswitch_899
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2202
    .line 2203
    .line 2204
    move-result p1

    .line 2205
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2206
    .line 2207
    .line 2208
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setLockScreenOverrideMode(I)I

    .line 2209
    .line 2210
    .line 2211
    move-result p0

    .line 2212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2213
    .line 2214
    .line 2215
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2216
    .line 2217
    .line 2218
    goto/16 :goto_126b

    .line 2219
    .line 2220
    :pswitch_8ac
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLcdBacklightState()Z

    .line 2221
    .line 2222
    .line 2223
    move-result p0

    .line 2224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2225
    .line 2226
    .line 2227
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2228
    .line 2229
    .line 2230
    goto/16 :goto_126b

    .line 2231
    .line 2232
    :pswitch_8b8
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2233
    .line 2234
    .line 2235
    move-result p1

    .line 2236
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2237
    .line 2238
    .line 2239
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setLcdBacklightState(Z)I

    .line 2240
    .line 2241
    .line 2242
    move-result p0

    .line 2243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2244
    .line 2245
    .line 2246
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2247
    .line 2248
    .line 2249
    goto/16 :goto_126b

    .line 2250
    .line 2251
    :pswitch_8cb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2252
    .line 2253
    .line 2254
    move-result p1

    .line 2255
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2256
    .line 2257
    .line 2258
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getKeyboardModeOverriden(I)Z

    .line 2259
    .line 2260
    .line 2261
    move-result p0

    .line 2262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2263
    .line 2264
    .line 2265
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2266
    .line 2267
    .line 2268
    goto/16 :goto_126b

    .line 2269
    .line 2270
    :pswitch_8de
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getKeyboardMode()I

    .line 2271
    .line 2272
    .line 2273
    move-result p0

    .line 2274
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2275
    .line 2276
    .line 2277
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2278
    .line 2279
    .line 2280
    goto/16 :goto_126b

    .line 2281
    .line 2282
    :pswitch_8ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2283
    .line 2284
    .line 2285
    move-result p1

    .line 2286
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2287
    .line 2288
    .line 2289
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setKeyboardMode(I)I

    .line 2290
    .line 2291
    .line 2292
    move-result p0

    .line 2293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2294
    .line 2295
    .line 2296
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2297
    .line 2298
    .line 2299
    goto/16 :goto_126b

    .line 2300
    .line 2301
    :pswitch_8fd
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getDisplayMirroringState()Z

    .line 2302
    .line 2303
    .line 2304
    move-result p0

    .line 2305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2306
    .line 2307
    .line 2308
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2309
    .line 2310
    .line 2311
    goto/16 :goto_126b

    .line 2312
    .line 2313
    :pswitch_909
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2314
    .line 2315
    .line 2316
    move-result p1

    .line 2317
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2318
    .line 2319
    .line 2320
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setDisplayMirroringState(Z)I

    .line 2321
    .line 2322
    .line 2323
    move-result p0

    .line 2324
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2325
    .line 2326
    .line 2327
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2328
    .line 2329
    .line 2330
    goto/16 :goto_126b

    .line 2331
    .line 2332
    :pswitch_91c
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getDeviceSpeakerEnabledState()Z

    .line 2333
    .line 2334
    .line 2335
    move-result p0

    .line 2336
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2337
    .line 2338
    .line 2339
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2340
    .line 2341
    .line 2342
    goto/16 :goto_126b

    .line 2343
    .line 2344
    :pswitch_928
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2345
    .line 2346
    .line 2347
    move-result p1

    .line 2348
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2349
    .line 2350
    .line 2351
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setDeviceSpeakerEnabledState(Z)I

    .line 2352
    .line 2353
    .line 2354
    move-result p0

    .line 2355
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2356
    .line 2357
    .line 2358
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2359
    .line 2360
    .line 2361
    goto/16 :goto_126b

    .line 2362
    .line 2363
    :pswitch_93b
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getChargerConnectionSoundEnabledState()Z

    .line 2364
    .line 2365
    .line 2366
    move-result p0

    .line 2367
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2368
    .line 2369
    .line 2370
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2371
    .line 2372
    .line 2373
    goto/16 :goto_126b

    .line 2374
    .line 2375
    :pswitch_947
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2376
    .line 2377
    .line 2378
    move-result p1

    .line 2379
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2380
    .line 2381
    .line 2382
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setChargerConnectionSoundEnabledState(Z)I

    .line 2383
    .line 2384
    .line 2385
    move-result p0

    .line 2386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2387
    .line 2388
    .line 2389
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2390
    .line 2391
    .line 2392
    goto/16 :goto_126b

    .line 2393
    .line 2394
    :pswitch_95a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2395
    .line 2396
    .line 2397
    move-result-object p1

    .line 2398
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2399
    .line 2400
    .line 2401
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setBrowserHomepage(Ljava/lang/String;)I

    .line 2402
    .line 2403
    .line 2404
    move-result p0

    .line 2405
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2406
    .line 2407
    .line 2408
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2409
    .line 2410
    .line 2411
    goto/16 :goto_126b

    .line 2412
    .line 2413
    :pswitch_96d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2414
    .line 2415
    .line 2416
    move-result p1

    .line 2417
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2418
    .line 2419
    .line 2420
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAirGestureOptionState(I)Z

    .line 2421
    .line 2422
    .line 2423
    move-result p0

    .line 2424
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2425
    .line 2426
    .line 2427
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2428
    .line 2429
    .line 2430
    goto/16 :goto_126b

    .line 2431
    .line 2432
    :pswitch_980
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2433
    .line 2434
    .line 2435
    move-result p1

    .line 2436
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2437
    .line 2438
    .line 2439
    move-result p4

    .line 2440
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2441
    .line 2442
    .line 2443
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setAirGestureOptionState(IZ)I

    .line 2444
    .line 2445
    .line 2446
    move-result p0

    .line 2447
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2448
    .line 2449
    .line 2450
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2451
    .line 2452
    .line 2453
    goto/16 :goto_126b

    .line 2454
    .line 2455
    :pswitch_997
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getSerialNumber()Ljava/lang/String;

    .line 2456
    .line 2457
    .line 2458
    move-result-object p0

    .line 2459
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2460
    .line 2461
    .line 2462
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2463
    .line 2464
    .line 2465
    goto/16 :goto_126b

    .line 2466
    .line 2467
    :pswitch_9a3
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUltraPowerSavingPackages()Ljava/util/List;

    .line 2468
    .line 2469
    .line 2470
    move-result-object p0

    .line 2471
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2472
    .line 2473
    .line 2474
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2475
    .line 2476
    .line 2477
    goto/16 :goto_126b

    .line 2478
    .line 2479
    :pswitch_9af
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 2480
    .line 2481
    .line 2482
    move-result-object p1

    .line 2483
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2484
    .line 2485
    .line 2486
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->removePackagesFromUltraPowerSaving(Ljava/util/List;)I

    .line 2487
    .line 2488
    .line 2489
    move-result p0

    .line 2490
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2491
    .line 2492
    .line 2493
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2494
    .line 2495
    .line 2496
    goto/16 :goto_126b

    .line 2497
    .line 2498
    :pswitch_9c2
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 2499
    .line 2500
    .line 2501
    move-result-object p1

    .line 2502
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2503
    .line 2504
    .line 2505
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->addPackagesToUltraPowerSaving(Ljava/util/List;)I

    .line 2506
    .line 2507
    .line 2508
    move-result p0

    .line 2509
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2510
    .line 2511
    .line 2512
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2513
    .line 2514
    .line 2515
    goto/16 :goto_126b

    .line 2516
    .line 2517
    :pswitch_9d5
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumePanelEnabledState()Z

    .line 2518
    .line 2519
    .line 2520
    move-result p0

    .line 2521
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2522
    .line 2523
    .line 2524
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2525
    .line 2526
    .line 2527
    goto/16 :goto_126b

    .line 2528
    .line 2529
    :pswitch_9e1
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2530
    .line 2531
    .line 2532
    move-result p1

    .line 2533
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2534
    .line 2535
    .line 2536
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setVolumePanelEnabledState(Z)I

    .line 2537
    .line 2538
    .line 2539
    move-result p0

    .line 2540
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2541
    .line 2542
    .line 2543
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2544
    .line 2545
    .line 2546
    goto/16 :goto_126b

    .line 2547
    .line 2548
    :pswitch_9f4
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeKeyAppState()Z

    .line 2549
    .line 2550
    .line 2551
    move-result p0

    .line 2552
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2553
    .line 2554
    .line 2555
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2556
    .line 2557
    .line 2558
    goto/16 :goto_126b

    .line 2559
    .line 2560
    :pswitch_a00
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2561
    .line 2562
    .line 2563
    move-result p1

    .line 2564
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2565
    .line 2566
    .line 2567
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setVolumeKeyAppState(Z)I

    .line 2568
    .line 2569
    .line 2570
    move-result p0

    .line 2571
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2572
    .line 2573
    .line 2574
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2575
    .line 2576
    .line 2577
    goto/16 :goto_126b

    .line 2578
    .line 2579
    :pswitch_a13
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeKeyAppsList()Ljava/util/List;

    .line 2580
    .line 2581
    .line 2582
    move-result-object p0

    .line 2583
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2584
    .line 2585
    .line 2586
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2587
    .line 2588
    .line 2589
    goto/16 :goto_126b

    .line 2590
    .line 2591
    :pswitch_a1f
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 2592
    .line 2593
    .line 2594
    move-result-object p1

    .line 2595
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2596
    .line 2597
    .line 2598
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setVolumeKeyAppsList(Ljava/util/List;)I

    .line 2599
    .line 2600
    .line 2601
    move-result p0

    .line 2602
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2603
    .line 2604
    .line 2605
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2606
    .line 2607
    .line 2608
    goto/16 :goto_126b

    .line 2609
    .line 2610
    :pswitch_a32
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeControlStream()I

    .line 2611
    .line 2612
    .line 2613
    move-result p0

    .line 2614
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2615
    .line 2616
    .line 2617
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2618
    .line 2619
    .line 2620
    goto/16 :goto_126b

    .line 2621
    .line 2622
    :pswitch_a3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2623
    .line 2624
    .line 2625
    move-result p1

    .line 2626
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2627
    .line 2628
    .line 2629
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setVolumeControlStream(I)I

    .line 2630
    .line 2631
    .line 2632
    move-result p0

    .line 2633
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2634
    .line 2635
    .line 2636
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2637
    .line 2638
    .line 2639
    goto/16 :goto_126b

    .line 2640
    .line 2641
    :pswitch_a51
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeButtonRotationState()Z

    .line 2642
    .line 2643
    .line 2644
    move-result p0

    .line 2645
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2646
    .line 2647
    .line 2648
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2649
    .line 2650
    .line 2651
    goto/16 :goto_126b

    .line 2652
    .line 2653
    :pswitch_a5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2654
    .line 2655
    .line 2656
    move-result p1

    .line 2657
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2658
    .line 2659
    .line 2660
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setVolumeButtonRotationState(Z)I

    .line 2661
    .line 2662
    .line 2663
    move-result p0

    .line 2664
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2665
    .line 2666
    .line 2667
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2668
    .line 2669
    .line 2670
    goto/16 :goto_126b

    .line 2671
    .line 2672
    :pswitch_a70
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getTorchOnVolumeButtonsState()Z

    .line 2673
    .line 2674
    .line 2675
    move-result p0

    .line 2676
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2677
    .line 2678
    .line 2679
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2680
    .line 2681
    .line 2682
    goto/16 :goto_126b

    .line 2683
    .line 2684
    :pswitch_a7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2685
    .line 2686
    .line 2687
    move-result p1

    .line 2688
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2689
    .line 2690
    .line 2691
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setTorchOnVolumeButtonsState(Z)I

    .line 2692
    .line 2693
    .line 2694
    move-result p0

    .line 2695
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2696
    .line 2697
    .line 2698
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2699
    .line 2700
    .line 2701
    goto/16 :goto_126b

    .line 2702
    .line 2703
    :pswitch_a8f
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastShowPackageNameState()Z

    .line 2704
    .line 2705
    .line 2706
    move-result p0

    .line 2707
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2708
    .line 2709
    .line 2710
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2711
    .line 2712
    .line 2713
    goto/16 :goto_126b

    .line 2714
    .line 2715
    :pswitch_a9b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2716
    .line 2717
    .line 2718
    move-result p1

    .line 2719
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2720
    .line 2721
    .line 2722
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setToastShowPackageNameState(Z)I

    .line 2723
    .line 2724
    .line 2725
    move-result p0

    .line 2726
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2727
    .line 2728
    .line 2729
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2730
    .line 2731
    .line 2732
    goto/16 :goto_126b

    .line 2733
    .line 2734
    :pswitch_aae
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastGravityEnabledState()Z

    .line 2735
    .line 2736
    .line 2737
    move-result p0

    .line 2738
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2739
    .line 2740
    .line 2741
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2742
    .line 2743
    .line 2744
    goto/16 :goto_126b

    .line 2745
    .line 2746
    :pswitch_aba
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2747
    .line 2748
    .line 2749
    move-result p1

    .line 2750
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2751
    .line 2752
    .line 2753
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setToastGravityEnabledState(Z)I

    .line 2754
    .line 2755
    .line 2756
    move-result p0

    .line 2757
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2758
    .line 2759
    .line 2760
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2761
    .line 2762
    .line 2763
    goto/16 :goto_126b

    .line 2764
    .line 2765
    :pswitch_acd
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastGravityYOffset()I

    .line 2766
    .line 2767
    .line 2768
    move-result p0

    .line 2769
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2770
    .line 2771
    .line 2772
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2773
    .line 2774
    .line 2775
    goto/16 :goto_126b

    .line 2776
    .line 2777
    :pswitch_ad9
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastGravityXOffset()I

    .line 2778
    .line 2779
    .line 2780
    move-result p0

    .line 2781
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2782
    .line 2783
    .line 2784
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2785
    .line 2786
    .line 2787
    goto/16 :goto_126b

    .line 2788
    .line 2789
    :pswitch_ae5
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastGravity()I

    .line 2790
    .line 2791
    .line 2792
    move-result p0

    .line 2793
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2794
    .line 2795
    .line 2796
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2797
    .line 2798
    .line 2799
    goto/16 :goto_126b

    .line 2800
    .line 2801
    :pswitch_af1
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$setToastGravity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 2802
    .line 2803
    .line 2804
    move-result p0

    .line 2805
    return p0

    .line 2806
    :pswitch_af6
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastEnabledState()Z

    .line 2807
    .line 2808
    .line 2809
    move-result p0

    .line 2810
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2811
    .line 2812
    .line 2813
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2814
    .line 2815
    .line 2816
    goto/16 :goto_126b

    .line 2817
    .line 2818
    :pswitch_b02
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2819
    .line 2820
    .line 2821
    move-result p1

    .line 2822
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2823
    .line 2824
    .line 2825
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setToastEnabledState(Z)I

    .line 2826
    .line 2827
    .line 2828
    move-result p0

    .line 2829
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2830
    .line 2831
    .line 2832
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2833
    .line 2834
    .line 2835
    goto/16 :goto_126b

    .line 2836
    .line 2837
    :pswitch_b15
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarTextSize()I

    .line 2838
    .line 2839
    .line 2840
    move-result p0

    .line 2841
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2842
    .line 2843
    .line 2844
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2845
    .line 2846
    .line 2847
    goto/16 :goto_126b

    .line 2848
    .line 2849
    :pswitch_b21
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarTextStyle()I

    .line 2850
    .line 2851
    .line 2852
    move-result p0

    .line 2853
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2854
    .line 2855
    .line 2856
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2857
    .line 2858
    .line 2859
    goto/16 :goto_126b

    .line 2860
    .line 2861
    :pswitch_b2d
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarText()Ljava/lang/String;

    .line 2862
    .line 2863
    .line 2864
    move-result-object p0

    .line 2865
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2866
    .line 2867
    .line 2868
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2869
    .line 2870
    .line 2871
    goto/16 :goto_126b

    .line 2872
    .line 2873
    :pswitch_b39
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$setStatusBarText$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 2874
    .line 2875
    .line 2876
    move-result p0

    .line 2877
    return p0

    .line 2878
    :pswitch_b3e
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getSensorDisabled()I

    .line 2879
    .line 2880
    .line 2881
    move-result p0

    .line 2882
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2883
    .line 2884
    .line 2885
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2886
    .line 2887
    .line 2888
    goto/16 :goto_126b

    .line 2889
    .line 2890
    :pswitch_b4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2891
    .line 2892
    .line 2893
    move-result p1

    .line 2894
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2895
    .line 2896
    .line 2897
    move-result p4

    .line 2898
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2899
    .line 2900
    .line 2901
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setSensorDisabled(ZI)I

    .line 2902
    .line 2903
    .line 2904
    move-result p0

    .line 2905
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2906
    .line 2907
    .line 2908
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2909
    .line 2910
    .line 2911
    goto/16 :goto_126b

    .line 2912
    .line 2913
    :pswitch_b61
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getScreenWakeupOnPowerState()Z

    .line 2914
    .line 2915
    .line 2916
    move-result p0

    .line 2917
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2918
    .line 2919
    .line 2920
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2921
    .line 2922
    .line 2923
    goto/16 :goto_126b

    .line 2924
    .line 2925
    :pswitch_b6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2926
    .line 2927
    .line 2928
    move-result p1

    .line 2929
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2930
    .line 2931
    .line 2932
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setScreenWakeupOnPowerState(Z)I

    .line 2933
    .line 2934
    .line 2935
    move-result p0

    .line 2936
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2937
    .line 2938
    .line 2939
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2940
    .line 2941
    .line 2942
    goto/16 :goto_126b

    .line 2943
    .line 2944
    :pswitch_b80
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getScreenOffOnStatusBarDoubleTapState()Z

    .line 2945
    .line 2946
    .line 2947
    move-result p0

    .line 2948
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2949
    .line 2950
    .line 2951
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2952
    .line 2953
    .line 2954
    goto/16 :goto_126b

    .line 2955
    .line 2956
    :pswitch_b8c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2957
    .line 2958
    .line 2959
    move-result p1

    .line 2960
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2961
    .line 2962
    .line 2963
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setScreenOffOnStatusBarDoubleTapState(Z)I

    .line 2964
    .line 2965
    .line 2966
    move-result p0

    .line 2967
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2968
    .line 2969
    .line 2970
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2971
    .line 2972
    .line 2973
    goto/16 :goto_126b

    .line 2974
    .line 2975
    :pswitch_b9f
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getScreenOffOnHomeLongPressState()Z

    .line 2976
    .line 2977
    .line 2978
    move-result p0

    .line 2979
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2980
    .line 2981
    .line 2982
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2983
    .line 2984
    .line 2985
    goto/16 :goto_126b

    .line 2986
    .line 2987
    :pswitch_bab
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2988
    .line 2989
    .line 2990
    move-result p1

    .line 2991
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2992
    .line 2993
    .line 2994
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setScreenOffOnHomeLongPressState(Z)I

    .line 2995
    .line 2996
    .line 2997
    move-result p0

    .line 2998
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2999
    .line 3000
    .line 3001
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3002
    .line 3003
    .line 3004
    goto/16 :goto_126b

    .line 3005
    .line 3006
    :pswitch_bbe
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getRecentLongPressMode()I

    .line 3007
    .line 3008
    .line 3009
    move-result p0

    .line 3010
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3011
    .line 3012
    .line 3013
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3014
    .line 3015
    .line 3016
    goto/16 :goto_126b

    .line 3017
    .line 3018
    :pswitch_bca
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3019
    .line 3020
    .line 3021
    move-result p1

    .line 3022
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3023
    .line 3024
    .line 3025
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setRecentLongPressMode(I)I

    .line 3026
    .line 3027
    .line 3028
    move-result p0

    .line 3029
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3030
    .line 3031
    .line 3032
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3033
    .line 3034
    .line 3035
    goto/16 :goto_126b

    .line 3036
    .line 3037
    :pswitch_bdd
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getRecentLongPressActivity()Ljava/lang/String;

    .line 3038
    .line 3039
    .line 3040
    move-result-object p0

    .line 3041
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3042
    .line 3043
    .line 3044
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3045
    .line 3046
    .line 3047
    goto/16 :goto_126b

    .line 3048
    .line 3049
    :pswitch_be9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3050
    .line 3051
    .line 3052
    move-result-object p1

    .line 3053
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3054
    .line 3055
    .line 3056
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setRecentLongPressActivity(Ljava/lang/String;)I

    .line 3057
    .line 3058
    .line 3059
    move-result p0

    .line 3060
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3061
    .line 3062
    .line 3063
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3064
    .line 3065
    .line 3066
    goto/16 :goto_126b

    .line 3067
    .line 3068
    :pswitch_bfc
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerSavingMode()I

    .line 3069
    .line 3070
    .line 3071
    move-result p0

    .line 3072
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3073
    .line 3074
    .line 3075
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3076
    .line 3077
    .line 3078
    goto/16 :goto_126b

    .line 3079
    .line 3080
    :pswitch_c08
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3081
    .line 3082
    .line 3083
    move-result p1

    .line 3084
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3085
    .line 3086
    .line 3087
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setPowerSavingMode(I)I

    .line 3088
    .line 3089
    .line 3090
    move-result p0

    .line 3091
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3092
    .line 3093
    .line 3094
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3095
    .line 3096
    .line 3097
    goto/16 :goto_126b

    .line 3098
    .line 3099
    :pswitch_c1b
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerMenuLockedState()Z

    .line 3100
    .line 3101
    .line 3102
    move-result p0

    .line 3103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3104
    .line 3105
    .line 3106
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3107
    .line 3108
    .line 3109
    goto/16 :goto_126b

    .line 3110
    .line 3111
    :pswitch_c27
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3112
    .line 3113
    .line 3114
    move-result p1

    .line 3115
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3116
    .line 3117
    .line 3118
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setPowerMenuLockedState(Z)I

    .line 3119
    .line 3120
    .line 3121
    move-result p0

    .line 3122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3123
    .line 3124
    .line 3125
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3126
    .line 3127
    .line 3128
    goto/16 :goto_126b

    .line 3129
    .line 3130
    :pswitch_c3a
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLTESettingState()Z

    .line 3131
    .line 3132
    .line 3133
    move-result p0

    .line 3134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3135
    .line 3136
    .line 3137
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3138
    .line 3139
    .line 3140
    goto/16 :goto_126b

    .line 3141
    .line 3142
    :pswitch_c46
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3143
    .line 3144
    .line 3145
    move-result p1

    .line 3146
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3147
    .line 3148
    .line 3149
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setLTESettingState(Z)I

    .line 3150
    .line 3151
    .line 3152
    move-result p0

    .line 3153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3154
    .line 3155
    .line 3156
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3157
    .line 3158
    .line 3159
    goto/16 :goto_126b

    .line 3160
    .line 3161
    :pswitch_c59
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3162
    .line 3163
    .line 3164
    move-result-object p1

    .line 3165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3166
    .line 3167
    .line 3168
    move-result p4

    .line 3169
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3170
    .line 3171
    .line 3172
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setLockscreenWallpaper(Ljava/lang/String;I)I

    .line 3173
    .line 3174
    .line 3175
    move-result p0

    .line 3176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3177
    .line 3178
    .line 3179
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3180
    .line 3181
    .line 3182
    goto/16 :goto_126b

    .line 3183
    .line 3184
    :pswitch_c70
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLockScreenHiddenItems()I

    .line 3185
    .line 3186
    .line 3187
    move-result p0

    .line 3188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3189
    .line 3190
    .line 3191
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3192
    .line 3193
    .line 3194
    goto/16 :goto_126b

    .line 3195
    .line 3196
    :pswitch_c7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3197
    .line 3198
    .line 3199
    move-result p1

    .line 3200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3201
    .line 3202
    .line 3203
    move-result p4

    .line 3204
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3205
    .line 3206
    .line 3207
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setLockScreenHiddenItems(ZI)I

    .line 3208
    .line 3209
    .line 3210
    move-result p0

    .line 3211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3212
    .line 3213
    .line 3214
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3215
    .line 3216
    .line 3217
    goto/16 :goto_126b

    .line 3218
    .line 3219
    :pswitch_c93
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getInfraredState()Z

    .line 3220
    .line 3221
    .line 3222
    move-result p0

    .line 3223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3224
    .line 3225
    .line 3226
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3227
    .line 3228
    .line 3229
    goto/16 :goto_126b

    .line 3230
    .line 3231
    :pswitch_c9f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3232
    .line 3233
    .line 3234
    move-result p1

    .line 3235
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3236
    .line 3237
    .line 3238
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setInfraredState(Z)I

    .line 3239
    .line 3240
    .line 3241
    move-result p0

    .line 3242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3243
    .line 3244
    .line 3245
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3246
    .line 3247
    .line 3248
    goto/16 :goto_126b

    .line 3249
    .line 3250
    :pswitch_cb2
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHardKeyIntentState()Z

    .line 3251
    .line 3252
    .line 3253
    move-result p0

    .line 3254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3255
    .line 3256
    .line 3257
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3258
    .line 3259
    .line 3260
    goto/16 :goto_126b

    .line 3261
    .line 3262
    :pswitch_cbe
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3263
    .line 3264
    .line 3265
    move-result p1

    .line 3266
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3267
    .line 3268
    .line 3269
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setHardKeyIntentState(Z)I

    .line 3270
    .line 3271
    .line 3272
    move-result p0

    .line 3273
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3274
    .line 3275
    .line 3276
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3277
    .line 3278
    .line 3279
    goto/16 :goto_126b

    .line 3280
    .line 3281
    :pswitch_cd1
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getGearNotificationState()Z

    .line 3282
    .line 3283
    .line 3284
    move-result p0

    .line 3285
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3286
    .line 3287
    .line 3288
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3289
    .line 3290
    .line 3291
    goto/16 :goto_126b

    .line 3292
    .line 3293
    :pswitch_cdd
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3294
    .line 3295
    .line 3296
    move-result p1

    .line 3297
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3298
    .line 3299
    .line 3300
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setGearNotificationState(Z)I

    .line 3301
    .line 3302
    .line 3303
    move-result p0

    .line 3304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3305
    .line 3306
    .line 3307
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3308
    .line 3309
    .line 3310
    goto/16 :goto_126b

    .line 3311
    .line 3312
    :pswitch_cf0
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getChargingLEDState()Z

    .line 3313
    .line 3314
    .line 3315
    move-result p0

    .line 3316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3317
    .line 3318
    .line 3319
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3320
    .line 3321
    .line 3322
    goto/16 :goto_126b

    .line 3323
    .line 3324
    :pswitch_cfc
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3325
    .line 3326
    .line 3327
    move-result p1

    .line 3328
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3329
    .line 3330
    .line 3331
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setChargingLEDState(Z)I

    .line 3332
    .line 3333
    .line 3334
    move-result p0

    .line 3335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3336
    .line 3337
    .line 3338
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3339
    .line 3340
    .line 3341
    goto/16 :goto_126b

    .line 3342
    .line 3343
    :pswitch_d0f
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getCallScreenDisabledItems()I

    .line 3344
    .line 3345
    .line 3346
    move-result p0

    .line 3347
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3348
    .line 3349
    .line 3350
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3351
    .line 3352
    .line 3353
    goto/16 :goto_126b

    .line 3354
    .line 3355
    :pswitch_d1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3356
    .line 3357
    .line 3358
    move-result p1

    .line 3359
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3360
    .line 3361
    .line 3362
    move-result p4

    .line 3363
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3364
    .line 3365
    .line 3366
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setCallScreenDisabledItems(ZI)I

    .line 3367
    .line 3368
    .line 3369
    move-result p0

    .line 3370
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3371
    .line 3372
    .line 3373
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3374
    .line 3375
    .line 3376
    goto/16 :goto_126b

    .line 3377
    .line 3378
    :pswitch_d32
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getBatteryLevelColourItem()Lcom/samsung/android/knox/custom/StatusbarIconItem;

    .line 3379
    .line 3380
    .line 3381
    move-result-object p0

    .line 3382
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3383
    .line 3384
    .line 3385
    invoke-virtual {p3, p0, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3386
    .line 3387
    .line 3388
    goto/16 :goto_126b

    .line 3389
    .line 3390
    :pswitch_d3e
    sget-object p1, Lcom/samsung/android/knox/custom/StatusbarIconItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3391
    .line 3392
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3393
    .line 3394
    .line 3395
    move-result-object p1

    .line 3396
    check-cast p1, Lcom/samsung/android/knox/custom/StatusbarIconItem;

    .line 3397
    .line 3398
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3399
    .line 3400
    .line 3401
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setBatteryLevelColourItem(Lcom/samsung/android/knox/custom/StatusbarIconItem;)I

    .line 3402
    .line 3403
    .line 3404
    move-result p0

    .line 3405
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3406
    .line 3407
    .line 3408
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3409
    .line 3410
    .line 3411
    goto/16 :goto_126b

    .line 3412
    .line 3413
    :pswitch_d55
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAppBlockDownloadState()Z

    .line 3414
    .line 3415
    .line 3416
    move-result p0

    .line 3417
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3418
    .line 3419
    .line 3420
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3421
    .line 3422
    .line 3423
    goto/16 :goto_126b

    .line 3424
    .line 3425
    :pswitch_d61
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3426
    .line 3427
    .line 3428
    move-result p1

    .line 3429
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3430
    .line 3431
    .line 3432
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setAppBlockDownloadState(Z)I

    .line 3433
    .line 3434
    .line 3435
    move-result p0

    .line 3436
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3437
    .line 3438
    .line 3439
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3440
    .line 3441
    .line 3442
    goto/16 :goto_126b

    .line 3443
    .line 3444
    :pswitch_d74
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAppBlockDownloadNamespaces()Ljava/util/List;

    .line 3445
    .line 3446
    .line 3447
    move-result-object p0

    .line 3448
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3449
    .line 3450
    .line 3451
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3452
    .line 3453
    .line 3454
    goto/16 :goto_126b

    .line 3455
    .line 3456
    :pswitch_d80
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 3457
    .line 3458
    .line 3459
    move-result-object p1

    .line 3460
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3461
    .line 3462
    .line 3463
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setAppBlockDownloadNamespaces(Ljava/util/List;)I

    .line 3464
    .line 3465
    .line 3466
    move-result p0

    .line 3467
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3468
    .line 3469
    .line 3470
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3471
    .line 3472
    .line 3473
    goto/16 :goto_126b

    .line 3474
    .line 3475
    :pswitch_d93
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getWifiConnectionMonitorState()Z

    .line 3476
    .line 3477
    .line 3478
    move-result p0

    .line 3479
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3480
    .line 3481
    .line 3482
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3483
    .line 3484
    .line 3485
    goto/16 :goto_126b

    .line 3486
    .line 3487
    :pswitch_d9f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3488
    .line 3489
    .line 3490
    move-result p1

    .line 3491
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3492
    .line 3493
    .line 3494
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setWifiConnectionMonitorState(Z)I

    .line 3495
    .line 3496
    .line 3497
    move-result p0

    .line 3498
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3499
    .line 3500
    .line 3501
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3502
    .line 3503
    .line 3504
    goto/16 :goto_126b

    .line 3505
    .line 3506
    :pswitch_db2
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setSystemSoundsSilent()I

    .line 3507
    .line 3508
    .line 3509
    move-result p0

    .line 3510
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3511
    .line 3512
    .line 3513
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3514
    .line 3515
    .line 3516
    goto/16 :goto_126b

    .line 3517
    .line 3518
    :pswitch_dbe
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3519
    .line 3520
    .line 3521
    move-result p1

    .line 3522
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3523
    .line 3524
    .line 3525
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setStayAwakeState(Z)I

    .line 3526
    .line 3527
    .line 3528
    move-result p0

    .line 3529
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3530
    .line 3531
    .line 3532
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3533
    .line 3534
    .line 3535
    goto/16 :goto_126b

    .line 3536
    .line 3537
    :pswitch_dd1
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getSettingsHiddenState()I

    .line 3538
    .line 3539
    .line 3540
    move-result p0

    .line 3541
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3542
    .line 3543
    .line 3544
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3545
    .line 3546
    .line 3547
    goto/16 :goto_126b

    .line 3548
    .line 3549
    :pswitch_ddd
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3550
    .line 3551
    .line 3552
    move-result p1

    .line 3553
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3554
    .line 3555
    .line 3556
    move-result p4

    .line 3557
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3558
    .line 3559
    .line 3560
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setSettingsHiddenState(ZI)I

    .line 3561
    .line 3562
    .line 3563
    move-result p0

    .line 3564
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3565
    .line 3566
    .line 3567
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3568
    .line 3569
    .line 3570
    goto/16 :goto_126b

    .line 3571
    .line 3572
    :pswitch_df4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3573
    .line 3574
    .line 3575
    move-result p1

    .line 3576
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3577
    .line 3578
    .line 3579
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getMotionControlState(I)Z

    .line 3580
    .line 3581
    .line 3582
    move-result p0

    .line 3583
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3584
    .line 3585
    .line 3586
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3587
    .line 3588
    .line 3589
    goto/16 :goto_126b

    .line 3590
    .line 3591
    :pswitch_e07
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3592
    .line 3593
    .line 3594
    move-result p1

    .line 3595
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3596
    .line 3597
    .line 3598
    move-result p4

    .line 3599
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3600
    .line 3601
    .line 3602
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setMotionControlState(IZ)I

    .line 3603
    .line 3604
    .line 3605
    move-result p0

    .line 3606
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3607
    .line 3608
    .line 3609
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3610
    .line 3611
    .line 3612
    goto/16 :goto_126b

    .line 3613
    .line 3614
    :pswitch_e1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3615
    .line 3616
    .line 3617
    move-result p1

    .line 3618
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3619
    .line 3620
    .line 3621
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setMobileDataRoamingState(Z)I

    .line 3622
    .line 3623
    .line 3624
    move-result p0

    .line 3625
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3626
    .line 3627
    .line 3628
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3629
    .line 3630
    .line 3631
    goto/16 :goto_126b

    .line 3632
    .line 3633
    :pswitch_e31
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHideNotificationMessages()I

    .line 3634
    .line 3635
    .line 3636
    move-result p0

    .line 3637
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3638
    .line 3639
    .line 3640
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3641
    .line 3642
    .line 3643
    goto/16 :goto_126b

    .line 3644
    .line 3645
    :pswitch_e3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3646
    .line 3647
    .line 3648
    move-result p1

    .line 3649
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3650
    .line 3651
    .line 3652
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setHideNotificationMessages(I)I

    .line 3653
    .line 3654
    .line 3655
    move-result p0

    .line 3656
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3657
    .line 3658
    .line 3659
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3660
    .line 3661
    .line 3662
    goto/16 :goto_126b

    .line 3663
    .line 3664
    :pswitch_e50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3665
    .line 3666
    .line 3667
    move-result p1

    .line 3668
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3669
    .line 3670
    .line 3671
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getBackupRestoreState(I)Z

    .line 3672
    .line 3673
    .line 3674
    move-result p0

    .line 3675
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3676
    .line 3677
    .line 3678
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3679
    .line 3680
    .line 3681
    goto/16 :goto_126b

    .line 3682
    .line 3683
    :pswitch_e63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3684
    .line 3685
    .line 3686
    move-result p1

    .line 3687
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3688
    .line 3689
    .line 3690
    move-result p4

    .line 3691
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3692
    .line 3693
    .line 3694
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setBackupRestoreState(IZ)I

    .line 3695
    .line 3696
    .line 3697
    move-result p0

    .line 3698
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3699
    .line 3700
    .line 3701
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3702
    .line 3703
    .line 3704
    goto/16 :goto_126b

    .line 3705
    .line 3706
    :pswitch_e7a
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$setWifiStateEap$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 3707
    .line 3708
    .line 3709
    move-result p0

    .line 3710
    return p0

    .line 3711
    :pswitch_e7f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3712
    .line 3713
    .line 3714
    move-result p1

    .line 3715
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3716
    .line 3717
    .line 3718
    move-result-object p4

    .line 3719
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3720
    .line 3721
    .line 3722
    move-result-object v1

    .line 3723
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3724
    .line 3725
    .line 3726
    invoke-interface {p0, p1, p4, v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setWifiState(ZLjava/lang/String;Ljava/lang/String;)I

    .line 3727
    .line 3728
    .line 3729
    move-result p0

    .line 3730
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3731
    .line 3732
    .line 3733
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3734
    .line 3735
    .line 3736
    goto/16 :goto_126b

    .line 3737
    .line 3738
    :pswitch_e9a
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUserInactivityTimeout()I

    .line 3739
    .line 3740
    .line 3741
    move-result p0

    .line 3742
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3743
    .line 3744
    .line 3745
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3746
    .line 3747
    .line 3748
    goto/16 :goto_126b

    .line 3749
    .line 3750
    :pswitch_ea6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3751
    .line 3752
    .line 3753
    move-result p1

    .line 3754
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3755
    .line 3756
    .line 3757
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setUserInactivityTimeout(I)I

    .line 3758
    .line 3759
    .line 3760
    move-result p0

    .line 3761
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3762
    .line 3763
    .line 3764
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3765
    .line 3766
    .line 3767
    goto/16 :goto_126b

    .line 3768
    .line 3769
    :pswitch_eb9
    sget-object p1, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3770
    .line 3771
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3772
    .line 3773
    .line 3774
    move-result-object p1

    .line 3775
    check-cast p1, Landroid/hardware/usb/UsbDevice;

    .line 3776
    .line 3777
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3778
    .line 3779
    .line 3780
    move-result-object p4

    .line 3781
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3782
    .line 3783
    .line 3784
    move-result v1

    .line 3785
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3786
    .line 3787
    .line 3788
    invoke-interface {p0, p1, p4, v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setUsbDeviceDefaultPackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)I

    .line 3789
    .line 3790
    .line 3791
    move-result p0

    .line 3792
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3793
    .line 3794
    .line 3795
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3796
    .line 3797
    .line 3798
    goto/16 :goto_126b

    .line 3799
    .line 3800
    :pswitch_ed8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3801
    .line 3802
    .line 3803
    move-result p1

    .line 3804
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3805
    .line 3806
    .line 3807
    move-result-object p4

    .line 3808
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3809
    .line 3810
    .line 3811
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setSystemRingtone(ILjava/lang/String;)I

    .line 3812
    .line 3813
    .line 3814
    move-result p0

    .line 3815
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3816
    .line 3817
    .line 3818
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3819
    .line 3820
    .line 3821
    goto/16 :goto_126b

    .line 3822
    .line 3823
    :pswitch_eef
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3824
    .line 3825
    .line 3826
    move-result-object p1

    .line 3827
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3828
    .line 3829
    .line 3830
    move-result-object p4

    .line 3831
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3832
    .line 3833
    .line 3834
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setSystemLocale(Ljava/lang/String;Ljava/lang/String;)I

    .line 3835
    .line 3836
    .line 3837
    move-result p0

    .line 3838
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3839
    .line 3840
    .line 3841
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3842
    .line 3843
    .line 3844
    goto/16 :goto_126b

    .line 3845
    .line 3846
    :pswitch_f06
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getScreenTimeout()I

    .line 3847
    .line 3848
    .line 3849
    move-result p0

    .line 3850
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3851
    .line 3852
    .line 3853
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3854
    .line 3855
    .line 3856
    goto/16 :goto_126b

    .line 3857
    .line 3858
    :pswitch_f12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3859
    .line 3860
    .line 3861
    move-result p1

    .line 3862
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3863
    .line 3864
    .line 3865
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setScreenTimeout(I)I

    .line 3866
    .line 3867
    .line 3868
    move-result p0

    .line 3869
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3870
    .line 3871
    .line 3872
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3873
    .line 3874
    .line 3875
    goto/16 :goto_126b

    .line 3876
    .line 3877
    :pswitch_f25
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3878
    .line 3879
    .line 3880
    move-result p1

    .line 3881
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3882
    .line 3883
    .line 3884
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setScreenPowerSavingState(Z)I

    .line 3885
    .line 3886
    .line 3887
    move-result p0

    .line 3888
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3889
    .line 3890
    .line 3891
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3892
    .line 3893
    .line 3894
    goto/16 :goto_126b

    .line 3895
    .line 3896
    :pswitch_f38
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskUsbNetState()Z

    .line 3897
    .line 3898
    .line 3899
    move-result p0

    .line 3900
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3901
    .line 3902
    .line 3903
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3904
    .line 3905
    .line 3906
    goto/16 :goto_126b

    .line 3907
    .line 3908
    :pswitch_f44
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3909
    .line 3910
    .line 3911
    move-result p1

    .line 3912
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3913
    .line 3914
    .line 3915
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskUsbNetState(Z)I

    .line 3916
    .line 3917
    .line 3918
    move-result p0

    .line 3919
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3920
    .line 3921
    .line 3922
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3923
    .line 3924
    .line 3925
    goto/16 :goto_126b

    .line 3926
    .line 3927
    :pswitch_f57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3928
    .line 3929
    .line 3930
    move-result p1

    .line 3931
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3932
    .line 3933
    .line 3934
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskUsbNetAddress(I)Ljava/lang/String;

    .line 3935
    .line 3936
    .line 3937
    move-result-object p0

    .line 3938
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3939
    .line 3940
    .line 3941
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3942
    .line 3943
    .line 3944
    goto/16 :goto_126b

    .line 3945
    .line 3946
    :pswitch_f6a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3947
    .line 3948
    .line 3949
    move-result-object p1

    .line 3950
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3951
    .line 3952
    .line 3953
    move-result-object p4

    .line 3954
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3955
    .line 3956
    .line 3957
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskUsbNetAddresses(Ljava/lang/String;Ljava/lang/String;)I

    .line 3958
    .line 3959
    .line 3960
    move-result p0

    .line 3961
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3962
    .line 3963
    .line 3964
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3965
    .line 3966
    .line 3967
    goto/16 :goto_126b

    .line 3968
    .line 3969
    :pswitch_f81
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskUsbMassStorageState()Z

    .line 3970
    .line 3971
    .line 3972
    move-result p0

    .line 3973
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3974
    .line 3975
    .line 3976
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3977
    .line 3978
    .line 3979
    goto/16 :goto_126b

    .line 3980
    .line 3981
    :pswitch_f8d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3982
    .line 3983
    .line 3984
    move-result p1

    .line 3985
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3986
    .line 3987
    .line 3988
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskUsbMassStorageState(Z)I

    .line 3989
    .line 3990
    .line 3991
    move-result p0

    .line 3992
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3993
    .line 3994
    .line 3995
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3996
    .line 3997
    .line 3998
    goto/16 :goto_126b

    .line 3999
    .line 4000
    :pswitch_fa0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4001
    .line 4002
    .line 4003
    move-result p1

    .line 4004
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4005
    .line 4006
    .line 4007
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskString(I)Ljava/lang/String;

    .line 4008
    .line 4009
    .line 4010
    move-result-object p0

    .line 4011
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4012
    .line 4013
    .line 4014
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4015
    .line 4016
    .line 4017
    goto/16 :goto_126b

    .line 4018
    .line 4019
    :pswitch_fb3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4020
    .line 4021
    .line 4022
    move-result p1

    .line 4023
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4024
    .line 4025
    .line 4026
    move-result-object p4

    .line 4027
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4028
    .line 4029
    .line 4030
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskString(ILjava/lang/String;)I

    .line 4031
    .line 4032
    .line 4033
    move-result p0

    .line 4034
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4035
    .line 4036
    .line 4037
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4038
    .line 4039
    .line 4040
    goto/16 :goto_126b

    .line 4041
    .line 4042
    :pswitch_fca
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskStatusBarMode()I

    .line 4043
    .line 4044
    .line 4045
    move-result p0

    .line 4046
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4047
    .line 4048
    .line 4049
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4050
    .line 4051
    .line 4052
    goto/16 :goto_126b

    .line 4053
    .line 4054
    :pswitch_fd6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4055
    .line 4056
    .line 4057
    move-result p1

    .line 4058
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4059
    .line 4060
    .line 4061
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskStatusBarMode(I)I

    .line 4062
    .line 4063
    .line 4064
    move-result p0

    .line 4065
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4066
    .line 4067
    .line 4068
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4069
    .line 4070
    .line 4071
    goto/16 :goto_126b

    .line 4072
    .line 4073
    :pswitch_fe9
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskStatusBarIconsState()Z

    .line 4074
    .line 4075
    .line 4076
    move-result p0

    .line 4077
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4078
    .line 4079
    .line 4080
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4081
    .line 4082
    .line 4083
    goto/16 :goto_126b

    .line 4084
    .line 4085
    :pswitch_ff5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 4086
    .line 4087
    .line 4088
    move-result p1

    .line 4089
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4090
    .line 4091
    .line 4092
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskStatusBarIconsState(Z)I

    .line 4093
    .line 4094
    .line 4095
    move-result p0

    .line 4096
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4097
    .line 4098
    .line 4099
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4100
    .line 4101
    .line 4102
    goto/16 :goto_126b

    .line 4103
    .line 4104
    :pswitch_1008
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskStatusBarClockState()Z

    .line 4105
    .line 4106
    .line 4107
    move-result p0

    .line 4108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4109
    .line 4110
    .line 4111
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4112
    .line 4113
    .line 4114
    goto/16 :goto_126b

    .line 4115
    .line 4116
    :pswitch_1014
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 4117
    .line 4118
    .line 4119
    move-result p1

    .line 4120
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4121
    .line 4122
    .line 4123
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskStatusBarClockState(Z)I

    .line 4124
    .line 4125
    .line 4126
    move-result p0

    .line 4127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4128
    .line 4129
    .line 4130
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4131
    .line 4132
    .line 4133
    goto/16 :goto_126b

    .line 4134
    .line 4135
    :pswitch_1027
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskState()Z

    .line 4136
    .line 4137
    .line 4138
    move-result p0

    .line 4139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4140
    .line 4141
    .line 4142
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4143
    .line 4144
    .line 4145
    goto/16 :goto_126b

    .line 4146
    .line 4147
    :pswitch_1033
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 4148
    .line 4149
    .line 4150
    move-result p1

    .line 4151
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4152
    .line 4153
    .line 4154
    move-result-object p4

    .line 4155
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4156
    .line 4157
    .line 4158
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskState(ZLjava/lang/String;)I

    .line 4159
    .line 4160
    .line 4161
    move-result p0

    .line 4162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4163
    .line 4164
    .line 4165
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4166
    .line 4167
    .line 4168
    goto/16 :goto_126b

    .line 4169
    .line 4170
    :pswitch_104a
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskPowerDialogCustomItemsState()Z

    .line 4171
    .line 4172
    .line 4173
    move-result p0

    .line 4174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4175
    .line 4176
    .line 4177
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4178
    .line 4179
    .line 4180
    goto/16 :goto_126b

    .line 4181
    .line 4182
    :pswitch_1056
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 4183
    .line 4184
    .line 4185
    move-result p1

    .line 4186
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4187
    .line 4188
    .line 4189
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskPowerDialogCustomItemsState(Z)I

    .line 4190
    .line 4191
    .line 4192
    move-result p0

    .line 4193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4194
    .line 4195
    .line 4196
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4197
    .line 4198
    .line 4199
    goto/16 :goto_126b

    .line 4200
    .line 4201
    :pswitch_1069
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskPowerDialogCustomItems()Ljava/util/List;

    .line 4202
    .line 4203
    .line 4204
    move-result-object p0

    .line 4205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4206
    .line 4207
    .line 4208
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 4209
    .line 4210
    .line 4211
    goto/16 :goto_126b

    .line 4212
    .line 4213
    :pswitch_1075
    sget-object p1, Lcom/samsung/android/knox/custom/PowerItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4214
    .line 4215
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 4216
    .line 4217
    .line 4218
    move-result-object p1

    .line 4219
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4220
    .line 4221
    .line 4222
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskPowerDialogCustomItems(Ljava/util/List;)I

    .line 4223
    .line 4224
    .line 4225
    move-result p0

    .line 4226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4227
    .line 4228
    .line 4229
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4230
    .line 4231
    .line 4232
    goto/16 :goto_126b

    .line 4233
    .line 4234
    :pswitch_108a
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskNotificationMessagesState()Z

    .line 4235
    .line 4236
    .line 4237
    move-result p0

    .line 4238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4239
    .line 4240
    .line 4241
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4242
    .line 4243
    .line 4244
    goto/16 :goto_126b

    .line 4245
    .line 4246
    :pswitch_1096
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 4247
    .line 4248
    .line 4249
    move-result p1

    .line 4250
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4251
    .line 4252
    .line 4253
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskNotificationMessagesState(Z)I

    .line 4254
    .line 4255
    .line 4256
    move-result p0

    .line 4257
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4258
    .line 4259
    .line 4260
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4261
    .line 4262
    .line 4263
    goto/16 :goto_126b

    .line 4264
    .line 4265
    :pswitch_10a9
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogOptionMode()I

    .line 4266
    .line 4267
    .line 4268
    move-result p0

    .line 4269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4270
    .line 4271
    .line 4272
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4273
    .line 4274
    .line 4275
    goto/16 :goto_126b

    .line 4276
    .line 4277
    :pswitch_10b5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4278
    .line 4279
    .line 4280
    move-result p1

    .line 4281
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4282
    .line 4283
    .line 4284
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setPowerDialogOptionMode(I)I

    .line 4285
    .line 4286
    .line 4287
    move-result p0

    .line 4288
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4289
    .line 4290
    .line 4291
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4292
    .line 4293
    .line 4294
    goto/16 :goto_126b

    .line 4295
    .line 4296
    :pswitch_10c8
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogItems()I

    .line 4297
    .line 4298
    .line 4299
    move-result p0

    .line 4300
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4301
    .line 4302
    .line 4303
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4304
    .line 4305
    .line 4306
    goto/16 :goto_126b

    .line 4307
    .line 4308
    :pswitch_10d4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4309
    .line 4310
    .line 4311
    move-result p1

    .line 4312
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4313
    .line 4314
    .line 4315
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setPowerDialogItems(I)I

    .line 4316
    .line 4317
    .line 4318
    move-result p0

    .line 4319
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4320
    .line 4321
    .line 4322
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4323
    .line 4324
    .line 4325
    goto/16 :goto_126b

    .line 4326
    .line 4327
    :pswitch_10e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4328
    .line 4329
    .line 4330
    move-result-object p1

    .line 4331
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4332
    .line 4333
    .line 4334
    move-result-object p4

    .line 4335
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4336
    .line 4337
    .line 4338
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setPassCode(Ljava/lang/String;Ljava/lang/String;)I

    .line 4339
    .line 4340
    .line 4341
    move-result p0

    .line 4342
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4343
    .line 4344
    .line 4345
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4346
    .line 4347
    .line 4348
    goto/16 :goto_126b

    .line 4349
    .line 4350
    :pswitch_10fe
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 4351
    .line 4352
    .line 4353
    move-result p1

    .line 4354
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4355
    .line 4356
    .line 4357
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setMultiWindowState(Z)I

    .line 4358
    .line 4359
    .line 4360
    move-result p0

    .line 4361
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4362
    .line 4363
    .line 4364
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4365
    .line 4366
    .line 4367
    goto/16 :goto_126b

    .line 4368
    .line 4369
    :pswitch_1111
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 4370
    .line 4371
    .line 4372
    move-result p1

    .line 4373
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4374
    .line 4375
    .line 4376
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setMobileDataState(Z)I

    .line 4377
    .line 4378
    .line 4379
    move-result p0

    .line 4380
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4381
    .line 4382
    .line 4383
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4384
    .line 4385
    .line 4386
    goto/16 :goto_126b

    .line 4387
    .line 4388
    :pswitch_1124
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getInputMethodRestrictionState()Z

    .line 4389
    .line 4390
    .line 4391
    move-result p0

    .line 4392
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4393
    .line 4394
    .line 4395
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4396
    .line 4397
    .line 4398
    goto/16 :goto_126b

    .line 4399
    .line 4400
    :pswitch_1130
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 4401
    .line 4402
    .line 4403
    move-result p1

    .line 4404
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4405
    .line 4406
    .line 4407
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setInputMethodRestrictionState(Z)I

    .line 4408
    .line 4409
    .line 4410
    move-result p0

    .line 4411
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4412
    .line 4413
    .line 4414
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4415
    .line 4416
    .line 4417
    goto/16 :goto_126b

    .line 4418
    .line 4419
    :pswitch_1143
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4420
    .line 4421
    .line 4422
    move-result-object p1

    .line 4423
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 4424
    .line 4425
    .line 4426
    move-result p4

    .line 4427
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4428
    .line 4429
    .line 4430
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setInputMethod(Ljava/lang/String;Z)I

    .line 4431
    .line 4432
    .line 4433
    move-result p0

    .line 4434
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4435
    .line 4436
    .line 4437
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4438
    .line 4439
    .line 4440
    goto/16 :goto_126b

    .line 4441
    .line 4442
    :pswitch_115a
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHomeActivity()Ljava/lang/String;

    .line 4443
    .line 4444
    .line 4445
    move-result-object p0

    .line 4446
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4447
    .line 4448
    .line 4449
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4450
    .line 4451
    .line 4452
    goto/16 :goto_126b

    .line 4453
    .line 4454
    :pswitch_1166
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4455
    .line 4456
    .line 4457
    move-result-object p1

    .line 4458
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4459
    .line 4460
    .line 4461
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setHomeActivity(Ljava/lang/String;)I

    .line 4462
    .line 4463
    .line 4464
    move-result p0

    .line 4465
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4466
    .line 4467
    .line 4468
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4469
    .line 4470
    .line 4471
    goto/16 :goto_126b

    .line 4472
    .line 4473
    :pswitch_1179
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getExtendedCallInfoState()Z

    .line 4474
    .line 4475
    .line 4476
    move-result p0

    .line 4477
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4478
    .line 4479
    .line 4480
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4481
    .line 4482
    .line 4483
    goto/16 :goto_126b

    .line 4484
    .line 4485
    :pswitch_1185
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 4486
    .line 4487
    .line 4488
    move-result p1

    .line 4489
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4490
    .line 4491
    .line 4492
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setExtendedCallInfoState(Z)I

    .line 4493
    .line 4494
    .line 4495
    move-result p0

    .line 4496
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4497
    .line 4498
    .line 4499
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4500
    .line 4501
    .line 4502
    goto/16 :goto_126b

    .line 4503
    .line 4504
    :pswitch_1198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4505
    .line 4506
    .line 4507
    move-result p1

    .line 4508
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4509
    .line 4510
    .line 4511
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getExitUI(I)Ljava/lang/String;

    .line 4512
    .line 4513
    .line 4514
    move-result-object p0

    .line 4515
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4516
    .line 4517
    .line 4518
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4519
    .line 4520
    .line 4521
    goto/16 :goto_126b

    .line 4522
    .line 4523
    :pswitch_11ab
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4524
    .line 4525
    .line 4526
    move-result-object p1

    .line 4527
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4528
    .line 4529
    .line 4530
    move-result-object p4

    .line 4531
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4532
    .line 4533
    .line 4534
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setExitUI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4535
    .line 4536
    .line 4537
    move-result p0

    .line 4538
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4539
    .line 4540
    .line 4541
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4542
    .line 4543
    .line 4544
    goto/16 :goto_126b

    .line 4545
    .line 4546
    :pswitch_11c2
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setDeveloperOptionsHidden()I

    .line 4547
    .line 4548
    .line 4549
    move-result p0

    .line 4550
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4551
    .line 4552
    .line 4553
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4554
    .line 4555
    .line 4556
    goto/16 :goto_126b

    .line 4557
    .line 4558
    :pswitch_11ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 4559
    .line 4560
    .line 4561
    move-result p1

    .line 4562
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4563
    .line 4564
    .line 4565
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setCpuPowerSavingState(Z)I

    .line 4566
    .line 4567
    .line 4568
    move-result p0

    .line 4569
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4570
    .line 4571
    .line 4572
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4573
    .line 4574
    .line 4575
    goto/16 :goto_126b

    .line 4576
    .line 4577
    :pswitch_11e1
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 4578
    .line 4579
    .line 4580
    move-result p1

    .line 4581
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4582
    .line 4583
    .line 4584
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setBluetoothState(Z)I

    .line 4585
    .line 4586
    .line 4587
    move-result p0

    .line 4588
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4589
    .line 4590
    .line 4591
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4592
    .line 4593
    .line 4594
    goto/16 :goto_126b

    .line 4595
    .line 4596
    :pswitch_11f4
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoRotationState()Z

    .line 4597
    .line 4598
    .line 4599
    move-result p0

    .line 4600
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4601
    .line 4602
    .line 4603
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4604
    .line 4605
    .line 4606
    goto :goto_126b

    .line 4607
    :pswitch_11ff
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 4608
    .line 4609
    .line 4610
    move-result p1

    .line 4611
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4612
    .line 4613
    .line 4614
    move-result p4

    .line 4615
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4616
    .line 4617
    .line 4618
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setAutoRotationState(ZI)I

    .line 4619
    .line 4620
    .line 4621
    move-result p0

    .line 4622
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4623
    .line 4624
    .line 4625
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4626
    .line 4627
    .line 4628
    goto :goto_126b

    .line 4629
    :pswitch_1215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4630
    .line 4631
    .line 4632
    move-result p1

    .line 4633
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4634
    .line 4635
    .line 4636
    move-result p4

    .line 4637
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4638
    .line 4639
    .line 4640
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setAudioVolume(II)I

    .line 4641
    .line 4642
    .line 4643
    move-result p0

    .line 4644
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4645
    .line 4646
    .line 4647
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4648
    .line 4649
    .line 4650
    goto :goto_126b

    .line 4651
    :pswitch_122b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 4652
    .line 4653
    .line 4654
    move-result p1

    .line 4655
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4656
    .line 4657
    .line 4658
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setAdbState(Z)I

    .line 4659
    .line 4660
    .line 4661
    move-result p0

    .line 4662
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4663
    .line 4664
    .line 4665
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4666
    .line 4667
    .line 4668
    goto :goto_126b

    .line 4669
    :pswitch_123d
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->removeLockScreen()I

    .line 4670
    .line 4671
    .line 4672
    move-result p0

    .line 4673
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4674
    .line 4675
    .line 4676
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4677
    .line 4678
    .line 4679
    goto :goto_126b

    .line 4680
    :pswitch_1248
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4681
    .line 4682
    .line 4683
    move-result-object p1

    .line 4684
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4685
    .line 4686
    .line 4687
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->dialEmergencyNumber(Ljava/lang/String;)I

    .line 4688
    .line 4689
    .line 4690
    move-result p0

    .line 4691
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4692
    .line 4693
    .line 4694
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4695
    .line 4696
    .line 4697
    goto :goto_126b

    .line 4698
    :pswitch_125a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4699
    .line 4700
    .line 4701
    move-result-object p1

    .line 4702
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4703
    .line 4704
    .line 4705
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->checkEnterprisePermission(Ljava/lang/String;)Z

    .line 4706
    .line 4707
    .line 4708
    move-result p0

    .line 4709
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4710
    .line 4711
    .line 4712
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4713
    .line 4714
    .line 4715
    :goto_126b
    return v0

    .line 4716
    :cond_126c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4717
    .line 4718
    .line 4719
    return v0

    .line 4720
    :pswitch_data_1270
    .packed-switch 0x1
        :pswitch_125a
        :pswitch_1248
        :pswitch_123d
        :pswitch_122b
        :pswitch_1215
        :pswitch_11ff
        :pswitch_11f4
        :pswitch_11e1
        :pswitch_11ce
        :pswitch_11c2
        :pswitch_11ab
        :pswitch_1198
        :pswitch_1185
        :pswitch_1179
        :pswitch_1166
        :pswitch_115a
        :pswitch_1143
        :pswitch_1130
        :pswitch_1124
        :pswitch_1111
        :pswitch_10fe
        :pswitch_10e7
        :pswitch_10d4
        :pswitch_10c8
        :pswitch_10b5
        :pswitch_10a9
        :pswitch_1096
        :pswitch_108a
        :pswitch_1075
        :pswitch_1069
        :pswitch_1056
        :pswitch_104a
        :pswitch_1033
        :pswitch_1027
        :pswitch_1014
        :pswitch_1008
        :pswitch_ff5
        :pswitch_fe9
        :pswitch_fd6
        :pswitch_fca
        :pswitch_fb3
        :pswitch_fa0
        :pswitch_f8d
        :pswitch_f81
        :pswitch_f6a
        :pswitch_f57
        :pswitch_f44
        :pswitch_f38
        :pswitch_f25
        :pswitch_f12
        :pswitch_f06
        :pswitch_eef
        :pswitch_ed8
        :pswitch_eb9
        :pswitch_ea6
        :pswitch_e9a
        :pswitch_e7f
        :pswitch_e7a
        :pswitch_e63
        :pswitch_e50
        :pswitch_e3d
        :pswitch_e31
        :pswitch_e1e
        :pswitch_e07
        :pswitch_df4
        :pswitch_ddd
        :pswitch_dd1
        :pswitch_dbe
        :pswitch_db2
        :pswitch_d9f
        :pswitch_d93
        :pswitch_d80
        :pswitch_d74
        :pswitch_d61
        :pswitch_d55
        :pswitch_d3e
        :pswitch_d32
        :pswitch_d1b
        :pswitch_d0f
        :pswitch_cfc
        :pswitch_cf0
        :pswitch_cdd
        :pswitch_cd1
        :pswitch_cbe
        :pswitch_cb2
        :pswitch_c9f
        :pswitch_c93
        :pswitch_c7c
        :pswitch_c70
        :pswitch_c59
        :pswitch_c46
        :pswitch_c3a
        :pswitch_c27
        :pswitch_c1b
        :pswitch_c08
        :pswitch_bfc
        :pswitch_be9
        :pswitch_bdd
        :pswitch_bca
        :pswitch_bbe
        :pswitch_bab
        :pswitch_b9f
        :pswitch_b8c
        :pswitch_b80
        :pswitch_b6d
        :pswitch_b61
        :pswitch_b4a
        :pswitch_b3e
        :pswitch_b39
        :pswitch_b2d
        :pswitch_b21
        :pswitch_b15
        :pswitch_b02
        :pswitch_af6
        :pswitch_af1
        :pswitch_ae5
        :pswitch_ad9
        :pswitch_acd
        :pswitch_aba
        :pswitch_aae
        :pswitch_a9b
        :pswitch_a8f
        :pswitch_a7c
        :pswitch_a70
        :pswitch_a5d
        :pswitch_a51
        :pswitch_a3e
        :pswitch_a32
        :pswitch_a1f
        :pswitch_a13
        :pswitch_a00
        :pswitch_9f4
        :pswitch_9e1
        :pswitch_9d5
        :pswitch_9c2
        :pswitch_9af
        :pswitch_9a3
        :pswitch_997
        :pswitch_980
        :pswitch_96d
        :pswitch_95a
        :pswitch_947
        :pswitch_93b
        :pswitch_928
        :pswitch_91c
        :pswitch_909
        :pswitch_8fd
        :pswitch_8ea
        :pswitch_8de
        :pswitch_8cb
        :pswitch_8b8
        :pswitch_8ac
        :pswitch_899
        :pswitch_88d
        :pswitch_878
        :pswitch_86c
        :pswitch_859
        :pswitch_84d
        :pswitch_836
        :pswitch_82a
        :pswitch_817
        :pswitch_80b
        :pswitch_7f8
        :pswitch_7ec
        :pswitch_7d9
        :pswitch_7cd
        :pswitch_7ba
        :pswitch_7ae
        :pswitch_7a9
        :pswitch_79d
        :pswitch_78a
        :pswitch_77e
        :pswitch_76b
        :pswitch_75f
        :pswitch_74c
        :pswitch_740
        :pswitch_729
        :pswitch_716
        :pswitch_703
        :pswitch_6f7
        :pswitch_6eb
        :pswitch_6d8
        :pswitch_6cc
        :pswitch_6b5
        :pswitch_6a9
        :pswitch_6a4
        :pswitch_685
        :pswitch_672
        :pswitch_65f
        :pswitch_64c
        :pswitch_640
        :pswitch_634
        :pswitch_621
        :pswitch_615
        :pswitch_602
        :pswitch_5f6
        :pswitch_5e3
        :pswitch_5d7
        :pswitch_5c4
        :pswitch_5ad
        :pswitch_5a1
        :pswitch_58a
        :pswitch_57e
        :pswitch_567
        :pswitch_554
        :pswitch_541
        :pswitch_535
        :pswitch_529
        :pswitch_524
        :pswitch_511
        :pswitch_4fe
        :pswitch_4eb
        :pswitch_4df
        :pswitch_4cc
        :pswitch_4c0
        :pswitch_4b4
        :pswitch_4a8
        :pswitch_491
        :pswitch_47e
        :pswitch_46b
        :pswitch_45f
        :pswitch_453
        :pswitch_440
        :pswitch_434
        :pswitch_421
        :pswitch_41c
        :pswitch_409
        :pswitch_404
        :pswitch_3f1
        :pswitch_3de
        :pswitch_3cb
        :pswitch_3bf
        :pswitch_3a8
        :pswitch_395
        :pswitch_389
        :pswitch_376
        :pswitch_363
        :pswitch_357
        :pswitch_344
        :pswitch_338
        :pswitch_325
        :pswitch_319
        :pswitch_314
        :pswitch_2fd
        :pswitch_2f8
        :pswitch_2f3
        :pswitch_2d8
        :pswitch_2c1
        :pswitch_2b5
        :pswitch_29e
        :pswitch_292
        :pswitch_27f
        :pswitch_273
        :pswitch_260
        :pswitch_254
        :pswitch_241
        :pswitch_235
        :pswitch_222
        :pswitch_216
        :pswitch_203
        :pswitch_1f7
        :pswitch_1e4
        :pswitch_1d8
        :pswitch_1d3
        :pswitch_1ce
        :pswitch_1b7
        :pswitch_1a0
        :pswitch_19b
        :pswitch_196
        :pswitch_191
        :pswitch_17a
        :pswitch_175
        :pswitch_169
        :pswitch_15d
        :pswitch_151
        :pswitch_13a
        :pswitch_123
        :pswitch_110
        :pswitch_f9
        :pswitch_ea
        :pswitch_de
        :pswitch_cb
        :pswitch_bf
        :pswitch_b3
        :pswitch_9c
        :pswitch_90
        :pswitch_84
        :pswitch_7f
        :pswitch_68
        :pswitch_63
        :pswitch_5b
        :pswitch_48
        :pswitch_31
        :pswitch_1a
    .end packed-switch
    .line 4721
    .line 4722
    .line 4723
    .line 4724
    .line 4725
    .line 4726
    .line 4727
    .line 4728
    .line 4729
    .line 4730
    .line 4731
    .line 4732
    .line 4733
    .line 4734
    .line 4735
    .line 4736
    .line 4737
    .line 4738
    .line 4739
    .line 4740
    .line 4741
    .line 4742
    .line 4743
    .line 4744
    .line 4745
    .line 4746
    .line 4747
    .line 4748
    .line 4749
    .line 4750
    .line 4751
    .line 4752
    .line 4753
    .line 4754
    .line 4755
    .line 4756
    .line 4757
    .line 4758
    .line 4759
    .line 4760
    .line 4761
    .line 4762
    .line 4763
    .line 4764
    .line 4765
    .line 4766
    .line 4767
    .line 4768
    .line 4769
    .line 4770
    .line 4771
    .line 4772
    .line 4773
    .line 4774
    .line 4775
    .line 4776
    .line 4777
    .line 4778
    .line 4779
    .line 4780
    .line 4781
    .line 4782
    .line 4783
    .line 4784
    .line 4785
    .line 4786
    .line 4787
    .line 4788
    .line 4789
    .line 4790
    .line 4791
    .line 4792
    .line 4793
    .line 4794
    .line 4795
    .line 4796
    .line 4797
    .line 4798
    .line 4799
    .line 4800
    .line 4801
    .line 4802
    .line 4803
    .line 4804
    .line 4805
    .line 4806
    .line 4807
    .line 4808
    .line 4809
    .line 4810
    .line 4811
    .line 4812
    .line 4813
    .line 4814
    .line 4815
    .line 4816
    .line 4817
    .line 4818
    .line 4819
    .line 4820
    .line 4821
    .line 4822
    .line 4823
    .line 4824
    .line 4825
    .line 4826
    .line 4827
    .line 4828
    .line 4829
    .line 4830
    .line 4831
    .line 4832
    .line 4833
    .line 4834
    .line 4835
    .line 4836
    .line 4837
    .line 4838
    .line 4839
    .line 4840
    .line 4841
    .line 4842
    .line 4843
    .line 4844
    .line 4845
    .line 4846
    .line 4847
    .line 4848
    .line 4849
    .line 4850
    .line 4851
    .line 4852
    .line 4853
    .line 4854
    .line 4855
    .line 4856
    .line 4857
    .line 4858
    .line 4859
    .line 4860
    .line 4861
    .line 4862
    .line 4863
    .line 4864
    .line 4865
    .line 4866
    .line 4867
    .line 4868
    .line 4869
    .line 4870
    .line 4871
    .line 4872
    .line 4873
    .line 4874
    .line 4875
    .line 4876
    .line 4877
    .line 4878
    .line 4879
    .line 4880
    .line 4881
    .line 4882
    .line 4883
    .line 4884
    .line 4885
    .line 4886
    .line 4887
    .line 4888
    .line 4889
    .line 4890
    .line 4891
    .line 4892
    .line 4893
    .line 4894
    .line 4895
    .line 4896
    .line 4897
    .line 4898
    .line 4899
    .line 4900
    .line 4901
    .line 4902
    .line 4903
    .line 4904
    .line 4905
    .line 4906
    .line 4907
    .line 4908
    .line 4909
    .line 4910
    .line 4911
    .line 4912
    .line 4913
    .line 4914
    .line 4915
    .line 4916
    .line 4917
    .line 4918
    .line 4919
    .line 4920
    .line 4921
    .line 4922
    .line 4923
    .line 4924
    .line 4925
    .line 4926
    .line 4927
    .line 4928
    .line 4929
    .line 4930
    .line 4931
    .line 4932
    .line 4933
    .line 4934
    .line 4935
    .line 4936
    .line 4937
    .line 4938
    .line 4939
    .line 4940
    .line 4941
    .line 4942
    .line 4943
    .line 4944
    .line 4945
    .line 4946
    .line 4947
    .line 4948
    .line 4949
    .line 4950
    .line 4951
    .line 4952
    .line 4953
    .line 4954
    .line 4955
    .line 4956
    .line 4957
    .line 4958
    .line 4959
    .line 4960
    .line 4961
    .line 4962
    .line 4963
    .line 4964
    .line 4965
    .line 4966
    .line 4967
    .line 4968
    .line 4969
    .line 4970
    .line 4971
    .line 4972
    .line 4973
    .line 4974
    .line 4975
    .line 4976
    .line 4977
    .line 4978
    .line 4979
    .line 4980
    .line 4981
    .line 4982
    .line 4983
    .line 4984
    .line 4985
    .line 4986
    .line 4987
    .line 4988
    .line 4989
    .line 4990
    .line 4991
    .line 4992
    .line 4993
    .line 4994
    .line 4995
    .line 4996
    .line 4997
    .line 4998
    .line 4999
    .line 5000
    .line 5001
    .line 5002
    .line 5003
    .line 5004
    .line 5005
    .line 5006
    .line 5007
    .line 5008
    .line 5009
    .line 5010
    .line 5011
    .line 5012
    .line 5013
    .line 5014
    .line 5015
    .line 5016
    .line 5017
    .line 5018
    .line 5019
    .line 5020
    .line 5021
    .line 5022
    .line 5023
    .line 5024
    .line 5025
    .line 5026
    .line 5027
    .line 5028
    .line 5029
    .line 5030
    .line 5031
    .line 5032
    .line 5033
    .line 5034
    .line 5035
    .line 5036
    .line 5037
    .line 5038
    .line 5039
    .line 5040
    .line 5041
    .line 5042
    .line 5043
    .line 5044
    .line 5045
    .line 5046
    .line 5047
    .line 5048
    .line 5049
    .line 5050
    .line 5051
    .line 5052
    .line 5053
    .line 5054
    .line 5055
    .line 5056
    .line 5057
    .line 5058
    .line 5059
    .line 5060
    .line 5061
    .line 5062
    .line 5063
    .line 5064
    .line 5065
    .line 5066
    .line 5067
    .line 5068
    .line 5069
    .line 5070
    .line 5071
    .line 5072
    .line 5073
    .line 5074
    .line 5075
    .line 5076
    .line 5077
    .line 5078
    .line 5079
    .line 5080
    .line 5081
    .line 5082
    .line 5083
    .line 5084
    .line 5085
    .line 5086
    .line 5087
    .line 5088
    .line 5089
    .line 5090
    .line 5091
    .line 5092
    .line 5093
    .line 5094
    .line 5095
    .line 5096
    .line 5097
    .line 5098
    .line 5099
    .line 5100
    .line 5101
    .line 5102
    .line 5103
    .line 5104
    .line 5105
    .line 5106
    .line 5107
    .line 5108
    .line 5109
    .line 5110
    .line 5111
    .line 5112
    .line 5113
    .line 5114
    .line 5115
    .line 5116
    .line 5117
    .line 5118
    .line 5119
    .line 5120
    .line 5121
    .line 5122
    .line 5123
    .line 5124
    .line 5125
    .line 5126
    .line 5127
    .line 5128
    .line 5129
    .line 5130
    .line 5131
    .line 5132
    .line 5133
    .line 5134
    .line 5135
    .line 5136
    .line 5137
    .line 5138
    .line 5139
    .line 5140
    .line 5141
    .line 5142
    .line 5143
    .line 5144
    .line 5145
    .line 5146
    .line 5147
    .line 5148
    .line 5149
    .line 5150
    .line 5151
    .line 5152
    .line 5153
    .line 5154
    .line 5155
    .line 5156
    .line 5157
    .line 5158
    .line 5159
    .line 5160
    .line 5161
    .line 5162
    .line 5163
    .line 5164
    .line 5165
    .line 5166
    .line 5167
    .line 5168
    .line 5169
    .line 5170
    .line 5171
    .line 5172
    .line 5173
    .line 5174
    .line 5175
    .line 5176
    .line 5177
    .line 5178
    .line 5179
    .line 5180
    .line 5181
    .line 5182
    .line 5183
    .line 5184
    .line 5185
    .line 5186
    .line 5187
    .line 5188
    .line 5189
    .line 5190
    .line 5191
    .line 5192
    .line 5193
    .line 5194
    .line 5195
    .line 5196
    .line 5197
    .line 5198
    .line 5199
    .line 5200
    .line 5201
    .line 5202
    .line 5203
    .line 5204
    .line 5205
    .line 5206
    .line 5207
    .line 5208
    .line 5209
    .line 5210
    .line 5211
    .line 5212
    .line 5213
    .line 5214
    .line 5215
    .line 5216
    .line 5217
    .line 5218
    .line 5219
    .line 5220
    .line 5221
    .line 5222
    .line 5223
    .line 5224
    .line 5225
    .line 5226
    .line 5227
    .line 5228
    .line 5229
    .line 5230
    .line 5231
    .line 5232
    .line 5233
    .line 5234
    .line 5235
    .line 5236
    .line 5237
    .line 5238
    .line 5239
    .line 5240
    .line 5241
    .line 5242
    .line 5243
    .line 5244
    .line 5245
    .line 5246
    .line 5247
    .line 5248
    .line 5249
    .line 5250
    .line 5251
    .line 5252
    .line 5253
    .line 5254
    .line 5255
    .line 5256
    .line 5257
    .line 5258
    .line 5259
    .line 5260
    .line 5261
    .line 5262
    .line 5263
    .line 5264
    .line 5265
    .line 5266
    .line 5267
    .line 5268
    .line 5269
    .line 5270
    .line 5271
    .line 5272
    .line 5273
    .line 5274
    .line 5275
    .line 5276
    .line 5277
    .line 5278
    .line 5279
    .line 5280
    .line 5281
    .line 5282
    .line 5283
    .line 5284
    .line 5285
    .line 5286
    .line 5287
    .line 5288
.end method

.method public final greylist onTransact$addAutoCallNumber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1
    .line 2
    .line 3
    move-result-object v0

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, v0, v1, v2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->addAutoCallNumber(Ljava/lang/String;II)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    return p0
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

.method public final greylist onTransact$addDexShortcut$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 1
    .line 2
    .line 3
    move-result v0

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Landroid/content/ComponentName;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17
    .line 18
    .line 19
    invoke-interface {p0, v0, v1, v2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->addDexShortcut(IILandroid/content/ComponentName;)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x1

    .line 30
    return p0
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

.method public final greylist onTransact$addDexURLShortcut$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 1
    .line 2
    .line 3
    move-result v1

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    move-object v5, v0

    .line 23
    check-cast v5, Landroid/content/ComponentName;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 26
    .line 27
    .line 28
    move-object v0, p0

    .line 29
    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->addDexURLShortcut(IILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    .line 38
    .line 39
    const/4 p0, 0x1

    .line 40
    return p0
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

.method public final greylist onTransact$addDexURLShortcutExtend$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 1
    .line 2
    .line 3
    move-result v1

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    move-object v6, v0

    .line 27
    check-cast v6, Landroid/content/ComponentName;

    .line 28
    .line 29
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    move-object v7, v0

    .line 36
    check-cast v7, Landroid/os/ParcelFileDescriptor;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 39
    .line 40
    .line 41
    move-object v0, p0

    .line 42
    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->addDexURLShortcutExtend(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/ParcelFileDescriptor;)I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    .line 51
    .line 52
    const/4 p0, 0x1

    .line 53
    return p0
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

.method public final greylist onTransact$addShortcut$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 1
    .line 2
    .line 3
    move-result v0

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17
    .line 18
    .line 19
    invoke-interface {p0, v0, v1, v2, v3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->addShortcut(IIILjava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x1

    .line 30
    return p0
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

.method public final greylist onTransact$addWidget$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 1
    .line 2
    .line 3
    move-result v1

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 25
    .line 26
    .line 27
    move-object v0, p0

    .line 28
    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->addWidget(IIIIILjava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x1

    .line 39
    return p0
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

.method public final greylist onTransact$setApplicationRestrictionsInternal$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1
    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    move-object v2, v0

    .line 7
    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    move-object v5, v0

    .line 24
    check-cast v5, Landroid/os/Bundle;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 31
    .line 32
    .line 33
    move-object v1, p0

    .line 34
    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setApplicationRestrictionsInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 39
    .line 40
    .line 41
    const/4 p1, 0x1

    .line 42
    invoke-virtual {p2, p0, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 43
    .line 44
    .line 45
    return p1
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

.method public final greylist onTransact$setBootingAnimation$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1
    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 7
    .line 8
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 15
    .line 16
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 17
    .line 18
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 29
    .line 30
    .line 31
    invoke-interface {p0, v0, v1, v2, v3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setBootingAnimation(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;I)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    .line 40
    .line 41
    const/4 p0, 0x1

    .line 42
    return p0
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

.method public final greylist onTransact$setForcedDisplaySizeDensity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 1
    .line 2
    .line 3
    move-result v0

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, v0, v1, v2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setForcedDisplaySizeDensity(III)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    return p0
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

.method public final greylist onTransact$setHardKeyIntentBroadcast$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 1
    .line 2
    .line 3
    move-result v1

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    move-object v3, v0

    .line 15
    check-cast v3, Landroid/content/Intent;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 30
    .line 31
    .line 32
    move-object v0, p0

    .line 33
    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setHardKeyIntentBroadcast(ZILandroid/content/Intent;Ljava/lang/String;ZZ)I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    .line 42
    .line 43
    const/4 p0, 0x1

    .line 44
    return p0
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

.method public final greylist onTransact$setHardKeyIntentBroadcastExternal$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 1
    .line 2
    .line 3
    move-result v1

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    move-object v4, v0

    .line 19
    check-cast v4, Landroid/content/Intent;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 30
    .line 31
    .line 32
    move-object v0, p0

    .line 33
    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setHardKeyIntentBroadcastExternal(ZIILandroid/content/Intent;Ljava/lang/String;Z)I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    .line 42
    .line 43
    const/4 p0, 0x1

    .line 44
    return p0
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

.method public final greylist onTransact$setHardKeyIntentBroadcastInternal$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1
    .line 2
    .line 3
    move-result-object v1

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    move-object v4, v0

    .line 19
    check-cast v4, Landroid/content/Intent;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 34
    .line 35
    .line 36
    move-object v0, p0

    .line 37
    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setHardKeyIntentBroadcastInternal(Ljava/lang/String;ZILandroid/content/Intent;Ljava/lang/String;ZZ)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    .line 46
    .line 47
    const/4 p0, 0x1

    .line 48
    return p0
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

.method public final greylist onTransact$setHardKeyReportState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 1
    .line 2
    .line 3
    move-result v0

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17
    .line 18
    .line 19
    invoke-interface {p0, v0, v1, v2, v3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setHardKeyReportState(IIII)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x1

    .line 30
    return p0
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

.method public final greylist onTransact$setKeyedAppStatesReport$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1
    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    move-object v2, v0

    .line 7
    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    move-object v5, v0

    .line 24
    check-cast v5, Landroid/os/Bundle;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 31
    .line 32
    .line 33
    move-object v1, p0

    .line 34
    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setKeyedAppStatesReport(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 38
    .line 39
    .line 40
    const/4 p0, 0x1

    .line 41
    return p0
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

.method public final greylist onTransact$setStatusBarText$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1
    .line 2
    .line 3
    move-result-object v0

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, v0, v1, v2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setStatusBarText(Ljava/lang/String;II)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    return p0
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

.method public final greylist onTransact$setStatusBarTextScrollWidth$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1
    .line 2
    .line 3
    move-result-object v0

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17
    .line 18
    .line 19
    invoke-interface {p0, v0, v1, v2, v3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setStatusBarTextScrollWidth(Ljava/lang/String;III)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x1

    .line 30
    return p0
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

.method public final greylist onTransact$setToastGravity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 1
    .line 2
    .line 3
    move-result v0

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, v0, v1, v2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setToastGravity(III)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    return p0
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

.method public final greylist onTransact$setWallpaper$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1
    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    check-cast v0, Landroid/os/Bundle;

    .line 7
    .line 8
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Landroid/graphics/Rect;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 25
    .line 26
    .line 27
    invoke-interface {p0, v0, v1, v2, v3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setWallpaper(Landroid/os/Bundle;Landroid/graphics/Rect;ZI)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x1

    .line 38
    return p0
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

.method public final greylist onTransact$setWifiStateEap$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 1
    .line 2
    .line 3
    move-result v0

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 17
    .line 18
    .line 19
    invoke-interface {p0, v0, v1, v2, v3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setWifiStateEap(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x1

    .line 30
    return p0
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
