.class public interface abstract Lcom/android/server/enterprise/adapter/ISystemUIAdapter;
.super Ljava/lang/Object;
.source "ISystemUIAdapter.java"

# interfaces
.implements Lcom/android/server/enterprise/adapter/IAdapterHandle;


# virtual methods
.method public abstract clearAllNotificationsAsUser(I)Z
.end method

.method public abstract excludeExternalStorageForFailedPasswordsWipeAsUser(IZ)V
.end method

.method public abstract getAdapterId()I
.end method

.method public abstract getRegisteredCount()I
.end method

.method public abstract isKnoxStateMonitorRegistered()Z
.end method

.method public abstract registerSystemUICallback(Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;)Z
.end method

.method public abstract setAdminLockEnabled(IZZ)V
.end method

.method public abstract setAirplaneModeAllowedAsUser(IZ)V
.end method

.method public abstract setApplicationNameControlEnabledAsUser(IZ)V
.end method

.method public abstract setBluetoothAllowedAsUser(IZ)V
.end method

.method public abstract setCameraAllowedAsUser(IZ)V
.end method

.method public abstract setCellularDataAllowedAsUser(IZ)V
.end method

.method public abstract setFaceRecognitionEvenCameraBlockedAllowedAsUser(IZ)V
.end method

.method public abstract setGPSStateChangeAllowedAsUser(IZ)V
.end method

.method public abstract setKioskModeEnabledAsUser(IZ)V
.end method

.method public abstract setLocationProviderAllowedAsUser(ILjava/lang/String;Z)V
.end method

.method public abstract setLockedIccIdsAsUser(I[Ljava/lang/String;)V
.end method

.method public abstract setLockscreenInvisibleOverlayAsUser(IZ)V
.end method

.method public abstract setLockscreenWallpaperAsUser(IZ)V
.end method

.method public abstract setMaximumFailedPasswordsForDisableAsUser(IILjava/lang/String;)V
.end method

.method public abstract setMultifactorAuthEnabled(IZ)V
.end method

.method public abstract setNFCStateChangeAllowedAsUser(IZ)V
.end method

.method public abstract setNavigationBarHiddenAsUser(IZ)V
.end method

.method public abstract setPasswordLockDelayAsUser(II)V
.end method

.method public abstract setPasswordVisibilityEnabledAsUser(IZ)V
.end method

.method public abstract setPwdChangeRequestedAsUser(II)V
.end method

.method public abstract setRoamingDataAllowedAsUser(IZ)V
.end method

.method public abstract setSettingsChangeAllowedAsUser(IZ)V
.end method

.method public abstract setStatusBarExpansionAllowedAsUser(IZLjava/lang/String;)V
.end method

.method public abstract setStatusBarHiddenAsUser(IZ)V
.end method

.method public abstract setWifiAllowedAsUser(IZ)V
.end method

.method public abstract setWifiStateChangeAllowedAsUser(IZ)V
.end method

.method public abstract setWifiTetheringAllowedAsUser(IZ)V
.end method

.method public abstract updateSystemUIMonitor(I)V
.end method
