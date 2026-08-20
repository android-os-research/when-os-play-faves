.class public Lcom/android/server/enterprise/restriction/RestrictionPolicy;
.super Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;
.source "RestrictionPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
.implements Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/restriction/RestrictionPolicy$LocalService;,
        Lcom/android/server/enterprise/restriction/RestrictionPolicy$Injector;
    }
.end annotation


# static fields
.field public static final BROADCAST_DELAY:I = 0x1388

.field public static final CONF_FILE:Ljava/lang/String; = "/data/system/enterprise.conf"

.field public static final CONTAINER_MIGRATION_AGENT_PACKAGE_NAME:Ljava/lang/String; = "com.sec.knox.containeragent"

.field public static final DEFAULT_NETWORK_POLICY_APPLIED:Ljava/lang/String; = "edm.intent.action.internal.sec.DEFAULT_NETWORK_POLICY_APPLIED"

.field public static final EDM_SDCARD_WRITEACCESS_BLOCKED:Ljava/lang/String; = "sdCardWriteAccessBlocked"

.field public static final EXTRA_EMERGENCY_START_SERVICE_ENABLE:Ljava/lang/String; = "enabled"

.field public static final EXTRA_EMERGENCY_START_SERVICE_FLAG:Ljava/lang/String; = "flag"

.field public static final EXTRA_EMERGENCY_START_SERVICE_SKIPDIALOG:Ljava/lang/String; = "skipdialog"

.field public static final FACTORYRESET_EFS_DIR_PATH:Ljava/lang/String; = "/efs/MDM"

.field public static final FACTORYRESET_EFS_FILE_PATH:Ljava/lang/String; = "/efs/MDM/FactoryReset"

.field public static final MAX_BACKGROUND_PROCESSES:I = 0x14

.field public static final MESSAGE_ID:I = 0x1

.field public static final PACKAGE_CAMERA_APP:Ljava/lang/String; = "com.sec.android.app.camera"

.field public static final PACKAGE_DIRECT_SHARE_PKGNAME:Ljava/lang/String; = "com.sec.android.directshare"

.field public static final PACKAGE_SETTINGS_APP:Ljava/lang/String; = "com.android.settings"

.field public static final PARAM_INDEX_FACTORY_RESET:I = 0x3

.field public static final PARAM_INDEX_FIRMWARE_RECOVERY:I = 0x7

.field public static final PARAM_INDEX_MDM1:I = 0x1e

.field public static final PARAM_INDEX_MDM2:I = 0x1f

.field public static final PARAM_MDM1_VALUE:I = 0x2

.field public static final PARAM_MDM2_VALUE:I = 0x6

.field public static final PARAM_PATH:Ljava/lang/String; = "/dev/block/param"

.field public static final PARAM_POLICY_VALUE:I = 0x8

.field public static final PARAM_START_POS:I = 0x600

.field public static final POWEROFF_EFS_FILE_PATH:Ljava/lang/String; = "efs/MDM/PowerOff"

.field public static final RESTRICTION_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_RESTRICTION_MGMT"

.field public static final SAMSUNG_KEYBOARD_PKGNAME:Ljava/lang/String; = "com.sec.android.inputmethod"

.field public static final SELCETIVE_FOTA_VERSION_NONE:Ljava/lang/String; = "NONE"

.field public static final SELETIVE_FOTA_UNREGISTER:Ljava/lang/String; = "sec.fota.intent.MDM_UNREGISTER"

.field public static final SELETIVE_FOTA_UPDATE_RESULT:Ljava/lang/String; = "sec.fota.intent.MDM_REGISTER_RESULT"

.field public static final SELETIVE_FOTA_UPDATE_STATUS:Ljava/lang/String; = "com.xdm.intent.UPDATE_RESULT"

.field public static final TAG:Ljava/lang/String; = "RestrictionPolicy"

.field public static final UCM_SERVICE_NAME:Ljava/lang/String; = "com.samsung.ucs.ucsservice"

.field public static final USB_DRIVER_EXCEPTION_LIST_PATH:Ljava/lang/String; = "sys/class/usb_notify/usb_control/whitelist_for_mdm"

.field public static final USB_INTERFACE_DEFAULT_VALUE:I = -0x1

.field public static final excludedAdminList:[Ljava/lang/String;


# instance fields
.field public isLockScreenShortcutsAllowedCache:Z

.field public isLockScreenWidgetsAllowedCache:Z

.field public isSafeModeAllowedCache:Z

.field public mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field public final mAudioManager:Landroid/media/AudioManager;

.field public mBluetoothPan:Landroid/bluetooth/BluetoothPan;

.field public mBootReceiver:Landroid/content/BroadcastReceiver;

.field public final mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

.field public mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mEdmService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

.field public mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public mFotaReceiver:Landroid/content/BroadcastReceiver;

.field public mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/enterprise/restriction/RestrictionPolicy$Injector;

.field public mIsUsbMassStorageAvailable:Z

.field public mKeyCodeMediator:Lcom/android/server/enterprise/common/KeyCodeMediator;

.field public mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field public mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

.field public mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public mStorageListener:Landroid/os/storage/StorageEventListener;

.field public mStorageManager:Landroid/os/storage/StorageManager;

.field public mToken:Landroid/os/IBinder;

.field public mUsbSyncFlag:Z

.field public mUserManager:Landroid/os/UserManager;

.field public mVpnPolicy:Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

.field public mWindowManager:Landroid/view/IWindowManager;

.field public preAdminRemoval_SDCardWrite:Z


# direct methods
.method public static synthetic $r8$lambda$hISCAFby_tlqcCo6OHReg5DrDCk(Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->lambda$getRestrictionList$1(Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$o4jI37t3NoA5AX-1GndeB3Y0JXY(ILcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->lambda$getRestrictionList$0(ILcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProfileServiceListener(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStorageListener(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Landroid/os/storage/StorageEventListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmBluetoothPan(Lcom/android/server/enterprise/restriction/RestrictionPolicy;Landroid/bluetooth/BluetoothPan;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearSelectiveFota(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->clearSelectiveFota()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misFirmwareChanged(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFirmwareChanged()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misScreenCaptureEnabled(Lcom/android/server/enterprise/restriction/RestrictionPolicy;IZ)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(IZ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mmigrateDisallowNonMarketAppOnUserRestrictions(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->migrateDisallowNonMarketAppOnUserRestrictions()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmountSdCard(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mountSdCard()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mnotifyChanges(Lcom/android/server/enterprise/restriction/RestrictionPolicy;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->notifyChanges(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserAdded(Lcom/android/server/enterprise/restriction/RestrictionPolicy;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->onUserAdded(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserRemoved(Lcom/android/server/enterprise/restriction/RestrictionPolicy;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->onUserRemoved(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendSeletiveFotaResult(Lcom/android/server/enterprise/restriction/RestrictionPolicy;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->sendSeletiveFotaResult(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetStatusBarExpansionSystemUI(Lcom/android/server/enterprise/restriction/RestrictionPolicy;IZ)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setStatusBarExpansionSystemUI(IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mturnOffAirPlaneMode(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->turnOffAirPlaneMode()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateSystemUIMonitor(Lcom/android/server/enterprise/restriction/RestrictionPolicy;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateSystemUIMonitor(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateUSBMode(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateUSBMode()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateUsbStorageStatebyIntent(Lcom/android/server/enterprise/restriction/RestrictionPolicy;Z)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateUsbStorageStatebyIntent(Z)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 5

    const-string v0, "com.sec.enterprise.knox.cloudmdm.smdms"

    const-string v1, "com.sec.sprextension.phoneinfo"

    const-string v2, "com.samsung.klmsagent"

    const-string v3, "com.samsung.android.knox.containercore"

    const-string v4, "com.samsung.android.kgclient"

    .line 263
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->excludedAdminList:[Ljava/lang/String;

    :try_start_10
    const-string v0, "android_servers"

    .line 328
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_10 .. :try_end_15} :catch_16

    goto :goto_1d

    :catch_16
    const-string v0, "RestrictionPolicy"

    const-string v1, "Unable to Load Library android_servers"

    .line 330
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1d
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 363
    new-instance v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;-><init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy$Injector;)V
    .registers 9

    .line 366
    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;-><init>()V

    const/4 v0, 0x0

    .line 267
    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 268
    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mVpnPolicy:Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    .line 270
    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    const/4 v1, 0x0

    .line 279
    iput-boolean v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->preAdminRemoval_SDCardWrite:Z

    .line 280
    iput-boolean v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mIsUsbMassStorageAvailable:Z

    const/4 v2, 0x1

    .line 289
    iput-boolean v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenWidgetsAllowedCache:Z

    .line 290
    iput-boolean v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenShortcutsAllowedCache:Z

    .line 291
    iput-boolean v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSafeModeAllowedCache:Z

    .line 318
    iput-boolean v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mUsbSyncFlag:Z

    .line 321
    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 322
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mToken:Landroid/os/IBinder;

    .line 428
    new-instance v2, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;-><init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V

    iput-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 438
    new-instance v2, Lcom/android/server/enterprise/restriction/RestrictionPolicy$2;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy$2;-><init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V

    iput-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mFotaReceiver:Landroid/content/BroadcastReceiver;

    .line 499
    new-instance v2, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;-><init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V

    iput-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 600
    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 957
    new-instance v2, Lcom/android/server/enterprise/restriction/RestrictionPolicy$4;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy$4;-><init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V

    iput-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mHandler:Landroid/os/Handler;

    .line 2603
    new-instance v2, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;-><init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V

    iput-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 367
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mInjector:Lcom/android/server/enterprise/restriction/RestrictionPolicy$Injector;

    .line 368
    iget-object v2, p1, Lcom/android/server/enterprise/restriction/RestrictionPolicy$Injector;->mContext:Landroid/content/Context;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Landroid/content/Context;

    iput-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 370
    invoke-virtual {p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy$Injector;->getEDMStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 372
    new-instance v2, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v2, v3, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/storage/EdmStorageProvider;)V

    iput-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-string v2, "application_policy"

    .line 373
    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/application/ApplicationPolicy;

    iput-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const-string/jumbo v2, "vpn_policy"

    .line 374
    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    iput-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mVpnPolicy:Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    .line 376
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 377
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 378
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "edm.intent.action.internal.sec.DEFAULT_NETWORK_POLICY_APPLIED"

    .line 379
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.USER_SWITCHED"

    .line 380
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.USER_ADDED"

    .line 381
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.USER_REMOVED"

    .line 382
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    .line 383
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 385
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v4, "sec.fota.intent.MDM_REGISTER_RESULT"

    .line 386
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.xdm.intent.UPDATE_RESULT"

    .line 387
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "sec.fota.intent.MDM_UNREGISTER"

    .line 388
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 389
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mFotaReceiver:Landroid/content/BroadcastReceiver;

    const-string v6, "com.sec.android.fotaclient.permission.FOTA"

    invoke-virtual {v4, v5, v3, v6, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 390
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 392
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v0, "window"

    .line 395
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mWindowManager:Landroid/view/IWindowManager;

    .line 396
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAudioManager:Landroid/media/AudioManager;

    .line 399
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isHomeKeyEnabledInDb()Z

    move-result v0

    if-nez v0, :cond_f5

    .line 400
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setHomeKeyVisibilityOnNavi(Z)V

    .line 403
    :cond_f5
    invoke-virtual {p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy$Injector;->getConstrainedState()Lcom/android/server/enterprise/utils/ConstrainedState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    return-void
.end method

.method public static enforceSystemUser()V
    .registers 2

    .line 4404
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x1482

    if-ne v0, v1, :cond_d

    return-void

    .line 4407
    :cond_d
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_18

    return-void

    .line 4408
    :cond_18
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by system user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getHash(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    const-string v0, "SHA-256"

    .line 5959
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 5960
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 5961
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const/4 v0, 0x2

    .line 5962
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    const-string v0, "RestrictionPolicy"

    .line 5963
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHash : hashed imei: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_2c} :catch_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2d

    return-object p0

    :catch_2d
    move-exception p0

    .line 5968
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_36

    :catch_32
    move-exception p0

    .line 5966
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_36
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic lambda$getRestrictionList$0(ILcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;)Z
    .registers 2

    .line 6292
    invoke-virtual {p1}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->getValue()I

    move-result p1

    and-int/2addr p0, p1

    if-lez p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static synthetic lambda$getRestrictionList$1(Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;)Ljava/lang/String;
    .registers 1

    .line 6293
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private native readParamData()[B
.end method

.method public static writeData(IZ)Z
    .registers 5

    .line 4413
    invoke-static {}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceSystemUser()V

    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 4418
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 4420
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/16 v1, 0x1f

    const/16 v2, 0x1e

    if-nez p1, :cond_20

    const/16 p1, 0x8

    .line 4426
    aput-byte p1, v0, p0

    const/4 p1, 0x2

    aput-byte p1, v0, v2

    const/4 p1, 0x6

    aput-byte p1, v0, v1

    goto :goto_29

    :cond_20
    const/4 p1, 0x7

    .line 4430
    aput-byte p1, v0, p0

    const/4 p1, 0x1

    aput-byte p1, v0, v2

    const/4 p1, 0x5

    aput-byte p1, v0, v1

    .line 4435
    :goto_29
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "writeData : index - "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " value - "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RestrictionPolicy"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4436
    invoke-static {v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->writeParamData([B)Z

    move-result p0

    return p0
.end method

.method private static native writeParamData([B)Z
.end method


# virtual methods
.method public addNewAdminActivationAppWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 5284
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOldAdvancedRestrictionOrNewApplicationPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 5286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_38

    .line 5288
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_f
    :goto_f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 5289
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_f

    .line 5290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 5294
    :cond_38
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 5295
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "RESTRICTION"

    const-string/jumbo v1, "preventAdminActivationWhiteList"

    .line 5294
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public allowActivationLock(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 12

    .line 4678
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 4680
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowActivationLock"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 4684
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 4688
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v2, "allowActivationLock"

    const-wide/32 v3, 0x8000000

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 4684
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    return v0
.end method

.method public allowAirplaneMode(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 14

    .line 4497
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 4498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "allowAirplaneMode : allow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RestrictionPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4501
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v3, "RESTRICTION"

    const-string v4, "allowAirplaneMode"

    invoke-virtual {v0, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 4505
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 4509
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string v3, "allowAirplaneMode"

    const-wide/16 v4, 0x80

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 4505
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    if-eqz v0, :cond_90

    const/4 v2, 0x0

    .line 4512
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAirplaneModeAllowed(Z)Z

    move-result v3

    if-nez v3, :cond_47

    .line 4514
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->turnOffAirPlaneMode()V

    .line 4516
    :cond_47
    invoke-virtual {p0, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setAirplaneModeAllowedSystemUI(IZ)V

    .line 4517
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 4520
    :try_start_51
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "RestrictionPolicy"

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Admin "

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " has "

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_70

    const-string p2, "allowed"

    goto :goto_72

    :cond_70
    const-string p2, "disallowed"

    .line 4521
    :goto_72
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " airplane mode."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 4522
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 4519
    invoke-static/range {v4 .. v10}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_87
    .catchall {:try_start_51 .. :try_end_87} :catchall_8b

    .line 4524
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_90

    :catchall_8b
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4525
    throw p0

    .line 4528
    :cond_90
    :goto_90
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "allowAirplaneMode : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public allowAndroidBeam(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 13

    .line 3705
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 3707
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowAndroidBeam"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    and-int/lit8 v0, v0, 0x1

    .line 3711
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 3715
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v2, "allowAndroidBeam"

    const-wide/32 v3, 0x40000

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 3711
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    const-string p0, "RestrictionPolicy"

    if-eqz v0, :cond_5a

    if-nez p2, :cond_5a

    .line 3718
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    :try_start_33
    const-string/jumbo v4, "nfc"

    .line 3721
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 3720
    invoke-static {v4}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v4

    if-nez v4, :cond_46

    const-string v0, "RestrictionPolicy.allowAndroidBeam(): can\'t bind service"

    .line 3724
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    .line 3727
    :cond_46
    invoke-interface {v4}, Landroid/nfc/INfcAdapter;->disableNdefPush()Z

    .line 3728
    invoke-interface {v4}, Landroid/nfc/INfcAdapter;->isNdefPushEnabled()Z

    move-result v3
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_4d} :catch_51

    xor-int/lit8 v3, v3, 0x1

    and-int/2addr v3, v0

    goto :goto_56

    :catch_51
    const-string v0, "RestrictionPolicy.allowAndroidBeam() exception : "

    .line 3732
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_56
    move v0, v3

    .line 3734
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3736
    :cond_5a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowAndroidBeam : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_b6

    .line 3738
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 3741
    :try_start_77
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v7, "RestrictionPolicy"

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " has "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_96

    const-string p2, "enabled"

    goto :goto_98

    :cond_96
    const-string p2, "disabled"

    .line 3743
    :goto_98
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Android Beam."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 3744
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 3740
    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_ad
    .catchall {:try_start_77 .. :try_end_ad} :catchall_b1

    .line 3746
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_b6

    :catchall_b1
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3747
    throw p0

    :cond_b6
    :goto_b6
    return v0
.end method

.method public allowAudioRecord(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 14

    .line 3141
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceHwPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 3143
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowAudioRecording"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 3146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowAudioRecord : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RestrictionPolicy"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3148
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 3152
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const-string v4, "allowAudioRecording"

    const-wide/16 v5, 0x1

    const/4 v7, 0x1

    .line 3148
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    if-eqz v0, :cond_58

    const/4 p2, 0x0

    .line 3156
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAudioRecordAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p1

    if-nez p1, :cond_51

    .line 3158
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAudioManager:Landroid/media/AudioManager;

    const-string p1, "g_knox_audiorecord_allowed=false"

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_58

    .line 3161
    :cond_51
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAudioManager:Landroid/media/AudioManager;

    const-string p1, "g_knox_audiorecord_allowed=true"

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :cond_58
    :goto_58
    return v0
.end method

.method public allowBackgroundProcessLimit(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 13

    .line 3308
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string v0, "RestrictionPolicy"

    if-nez p2, :cond_33

    .line 3312
    :try_start_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3314
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    const/4 v4, -0x1

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->setProcessLimit(I)V

    .line 3315
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_17} :catch_18

    goto :goto_33

    :catch_18
    move-exception v1

    .line 3317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail getting ActivityManager "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_34

    :cond_33
    :goto_33
    const/4 v1, 0x1

    :goto_34
    if-eqz v1, :cond_5a

    .line 3322
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string/jumbo v5, "limitOfBackgroundProcess"

    invoke-virtual {v2, v3, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    and-int/2addr v1, v2

    .line 3325
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/16 v4, 0x4000

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 3329
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string/jumbo v3, "limitOfBackgroundProcess"

    .line 3325
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 3331
    :cond_5a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "allowBackgroundProcessLimit : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public allowClipboardShare(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 12

    .line 3466
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 3467
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    .line 3468
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowClipboardShare"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    .line 3471
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 3475
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v1, "allowClipboardShare"

    const-wide/32 v2, 0x20000

    const/4 v4, 0x1

    .line 3471
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 3476
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string p1, "content://com.sec.knox.provider/RestrictionPolicy1/isClipboardShareAllowed"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 3479
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "allowClipboardShare : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", ret = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RestrictionPolicy"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8
.end method

.method public allowDataSaving(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 13

    .line 6168
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 6169
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowDataSaving"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 6173
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/high16 v3, 0x800000000000000L

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 6176
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v2, "allowDataSaving"

    .line 6173
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 6178
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->applyBackgroundDataRestriction()V

    .line 6179
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 6182
    :try_start_31
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v7, "RestrictionPolicy"

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " has "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_50

    const-string p2, "allowed"

    goto :goto_52

    :cond_50
    const-string p2, "disallowed"

    .line 6183
    :goto_52
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " data saving."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 6184
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 6181
    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_67
    .catchall {:try_start_31 .. :try_end_67} :catchall_6b

    .line 6186
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_70

    :catchall_6b
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6187
    throw p0

    .line 6190
    :cond_70
    :goto_70
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "allowDataSaver : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RestrictionPolicy"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public allowDeveloperMode(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 4445
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v1, :cond_17

    .line 4452
    new-instance v4, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;

    iget-object v5, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;-><init>(Landroid/content/Context;)V

    .line 4456
    invoke-virtual {v4}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->resetDeveloperModeOptions()Z

    move-result v4

    goto :goto_18

    :cond_17
    move v4, v3

    .line 4461
    :goto_18
    iget-object v5, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v7, "RESTRICTION"

    const-string v8, "allowDeveloperMode"

    invoke-virtual {v5, v6, v7, v8, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    .line 4467
    iget-object v6, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/16 v8, 0x40

    const/4 v10, 0x1

    const/4 v11, 0x0

    iget v0, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 4471
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const-string v7, "allowDeveloperMode"

    .line 4467
    invoke-virtual/range {v6 .. v13}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    const/4 v14, 0x5

    const/4 v15, 0x1

    const/16 v16, 0x1

    .line 4477
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v17

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " has "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_5a

    const-string v1, "allowed"

    goto :goto_5c

    :cond_5a
    const-string v1, "disallowed"

    .line 4478
    :goto_5c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " developer mode."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    iget v0, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 4479
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v20

    const-string v18, "RestrictionPolicy"

    .line 4476
    invoke-static/range {v14 .. v20}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    if-eqz v5, :cond_78

    if-eqz v4, :cond_78

    goto :goto_79

    :cond_78
    const/4 v3, 0x0

    :goto_79
    return v3
.end method

.method public allowFaceRecognitionEvenCameraBlocked(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 16

    .line 6422
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceAdvancedRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 6423
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 6425
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 6426
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    const/4 v11, 0x0

    .line 6428
    :try_start_f
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v3, "RESTRICTION"

    const-string v4, "allowFaceRecognitionEvenCameraBlocked"

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v12
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1b} :catch_76
    .catchall {:try_start_f .. :try_end_1b} :catchall_74

    .line 6432
    :try_start_1b
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-string v2, "allowFaceRecognitionEvenCameraBlocked"

    const-wide/high16 v3, 0x2000000000000000L

    const/4 v5, 0x0

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 6436
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move v6, v0

    .line 6432
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    if-eqz v12, :cond_6d

    .line 6439
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFaceRecognitionAllowedEvenCameraBlocked(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    invoke-virtual {p0, v11, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setFaceRecognitionEvenCameraBlockedAllowedSystemUI(IZ)V

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 6441
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-string v5, "RestrictionPolicy"

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin "

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_5b

    const-string p1, "allowed"

    goto :goto_5d

    :cond_5b
    const-string p1, "disallowed"

    .line 6442
    :goto_5d
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " camera."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move v7, v0

    .line 6440
    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_6d} :catch_71
    .catchall {:try_start_1b .. :try_end_6d} :catchall_74

    .line 6447
    :cond_6d
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_7e

    :catch_71
    move-exception p0

    move v11, v12

    goto :goto_77

    :catchall_74
    move-exception p0

    goto :goto_7f

    :catch_76
    move-exception p0

    .line 6445
    :goto_77
    :try_start_77
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_74

    .line 6447
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v12, v11

    :goto_7e
    return v12

    :goto_7f
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6448
    throw p0
.end method

.method public allowFactoryReset(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 14

    .line 2218
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2220
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFactoryResetAllowedFromDB(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowFactoryReset : oldState - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", allow - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RestrictionPolicy"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string v5, "factoryresetallowed"

    invoke-virtual {v1, v3, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 2227
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2231
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const-string v4, "factoryresetallowed"

    const-wide/high16 v5, 0x8000000000000L

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2227
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    if-eqz v1, :cond_5b

    .line 2234
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFactoryResetAllowedFromDB(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p1

    if-ne v0, p1, :cond_56

    const-string p0, "allowFactoryReset : do not need to update"

    .line 2237
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_56
    const-string p1, "/efs/MDM/FactoryReset"

    .line 2249
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->manageEFSFile(ZLjava/lang/String;)Z

    .line 2252
    :cond_5b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "allowFactoryReset : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public allowFastEncryption(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 14

    .line 4819
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 4821
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowFastEncryption"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 4824
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " allowFastEncryption : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RestrictionPolicy"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4826
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 4830
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const-string v4, "allowFastEncryption"

    const-wide/16 v5, 0x10

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 4826
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    return v0
.end method

.method public allowFirmwareAutoUpdate(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 12

    .line 4635
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndAdvancedRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 4636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " allowFirmwareAutoUpdate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RestrictionPolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4638
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowFirmwareAutoUpdate"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 4641
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 4645
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v2, "allowFirmwareAutoUpdate"

    const-wide/32 v3, 0x4000000

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 4641
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    if-eqz v0, :cond_55

    .line 4648
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 p2, 0x0

    .line 4649
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFirmwareAutoUpdateAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p1

    .line 4650
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "SOFTWARE_UPDATE_WIFI_ONLY2"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4651
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_55
    return v0
.end method

.method public allowFirmwareRecovery(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 14

    .line 4301
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 4303
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFirmwareRecoveryAllowedFromDB(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 4306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowFirmwareRecovery :oldState - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", allow - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RestrictionPolicy"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4308
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string v5, "firmwarerecoveryallowed"

    invoke-virtual {v1, v3, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 4311
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 4315
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const-string v4, "firmwarerecoveryallowed"

    const-wide/32 v5, 0x1000000

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 4311
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    if-eqz v1, :cond_70

    .line 4318
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFirmwareRecoveryAllowedFromDB(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0

    if-ne v0, p0, :cond_57

    const-string p0, "allowFirmwareRecovery : do not need to update"

    .line 4321
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 4325
    :cond_57
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p0

    const/4 v0, 0x7

    .line 4327
    :try_start_5c
    invoke-static {v0, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->writeData(IZ)Z

    move-result p2
    :try_end_60
    .catchall {:try_start_5c .. :try_end_60} :catchall_6b

    .line 4329
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez p2, :cond_70

    const-string p0, "allowFirmwareRecovery : write fail"

    .line 4332
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70

    :catchall_6b
    move-exception p2

    .line 4329
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4330
    throw p2

    .line 4337
    :cond_70
    :goto_70
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "allowFirmwareRecovery : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public allowGoogleAccountsAutoSync(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 20

    move-object/from16 v1, p0

    move/from16 v2, p2

    .line 4558
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v3

    .line 4559
    iget v0, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    if-nez v2, :cond_85

    .line 4561
    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isGoogleAccountsAutoSyncAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 4563
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 4565
    iget-object v0, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 4566
    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v11}, Landroid/os/UserHandle;-><init>(I)V

    const-string v7, "com.google"

    invoke-virtual {v0, v7, v6}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v0

    .line 4570
    array-length v6, v0

    if-eqz v6, :cond_82

    .line 4571
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v6

    .line 4574
    :try_start_32
    invoke-interface {v6, v11}, Landroid/content/IContentService;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v8

    .line 4575
    array-length v9, v0

    const/4 v12, 0x0

    :goto_38
    if-ge v12, v9, :cond_82

    aget-object v13, v0, v12

    .line 4576
    array-length v14, v8

    const/4 v15, 0x0

    :goto_3e
    if-ge v15, v14, :cond_61

    aget-object v10, v8, v15

    move-object/from16 v16, v0

    .line 4577
    iget-object v0, v10, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, v10, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    .line 4578
    invoke-interface {v6, v13, v0, v11}, Landroid/content/IContentService;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 4580
    iget-object v0, v10, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-interface {v6, v13, v0, v10, v11}, Landroid/content/IContentService;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_5a} :catch_67

    goto :goto_5c

    :cond_5b
    const/4 v10, 0x0

    :goto_5c
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v16

    goto :goto_3e

    :cond_61
    move-object/from16 v16, v0

    const/4 v10, 0x0

    add-int/lit8 v12, v12, 0x1

    goto :goto_38

    :catch_67
    move-exception v0

    .line 4588
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to get content service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "RestrictionPolicy"

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4591
    :cond_82
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4594
    :cond_85
    iget-object v0, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v4, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v5, "RESTRICTION"

    const-string v6, "allowGoogleAccountsAutoSync"

    invoke-virtual {v0, v4, v5, v6, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 4598
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 4601
    :try_start_9a
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "RestrictionPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Admin "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " has "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_b9

    const-string v10, "enabled"

    goto :goto_bb

    :cond_b9
    const-string v10, "disabled"

    .line 4602
    :goto_bb
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " Autosync of Google account."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move v10, v11

    .line 4600
    invoke-static/range {v4 .. v10}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_cb
    .catchall {:try_start_9a .. :try_end_cb} :catchall_cf

    .line 4604
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_d4

    :catchall_cf
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4605
    throw v0

    .line 4608
    :cond_d4
    :goto_d4
    iget-object v4, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/32 v6, 0x2000000

    const/4 v8, 0x1

    iget v1, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 4612
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v5, "allowGoogleAccountsAutoSync"

    move v9, v11

    move-object v11, v1

    .line 4608
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    return v0
.end method

.method public allowGoogleCrashReport(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 12

    .line 2501
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2503
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "googleCrashReportEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 2507
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2511
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string/jumbo v2, "googleCrashReportEnabled"

    const-wide/high16 v3, 0x80000000000000L

    const/4 v5, 0x1

    .line 2507
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 2513
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "allowGoogleCrashReport : allow="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " callingUid="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RestrictionPolicy"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public allowKillingActivitiesOnLeave(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 12

    .line 3351
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_45

    .line 3355
    :try_start_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3356
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, p2}, Landroid/app/IActivityManager;->setAlwaysFinish(Z)V

    .line 3357
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "always_finish_activities"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_23

    move v4, v0

    goto :goto_24

    :cond_23
    move v4, v1

    :goto_24
    and-int/2addr v0, v4

    .line 3359
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_28} :catch_29

    goto :goto_45

    :catch_29
    move-exception v0

    .line 3361
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail getting ActivityManager "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RestrictionPolicy"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :cond_45
    :goto_45
    if-eqz v0, :cond_6a

    .line 3366
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v3, "RESTRICTION"

    const-string v4, "allowKeepActivities"

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 3369
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/32 v3, 0x8000

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 3373
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v2, "allowKeepActivities"

    .line 3369
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    :cond_6a
    return v0
.end method

.method public allowLocalContactStorage(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 14

    .line 6462
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceAdvancedRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 6463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "allowLocalContactStorage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RestrictionPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6464
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 6466
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    const/4 v2, 0x0

    .line 6469
    :try_start_21
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v5, "RESTRICTION"

    const-string v6, "allowLocalContactStorage"

    invoke-virtual {v3, v4, v5, v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v10
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2d} :catch_67

    .line 6473
    :try_start_2d
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-string v3, "allowLocalContactStorage"

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const/4 v6, 0x1

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 6477
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move v7, v0

    .line 6473
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    if-eqz v10, :cond_4f

    .line 6480
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string p1, "content://com.sec.knox.provider/RestrictionPolicy/isLocalContactStorageAllowed"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAsUser(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 6484
    :cond_4f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Allow local contact storage state input DB : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_63} :catch_64

    goto :goto_71

    :catch_64
    move-exception p0

    move v2, v10

    goto :goto_68

    :catch_67
    move-exception p0

    :goto_68
    const-string p1, "Allow local contact storage state write fail"

    .line 6486
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6487
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move v10, v2

    :goto_71
    return v10
.end method

.method public allowLockScreenView(Lcom/samsung/android/knox/ContextInfo;IZ)Z
    .registers 15

    const-string v0, "allowLockScreenViews"

    const-string v1, "RESTRICTION"

    .line 4111
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 4114
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "RestrictionPolicy"

    if-eq p2, v4, :cond_1c

    const/4 v7, 0x2

    if-ne p2, v7, :cond_16

    goto :goto_1c

    .line 4118
    :cond_16
    :try_start_16
    new-instance p0, Ljava/security/InvalidParameterException;

    invoke-direct {p0}, Ljava/security/InvalidParameterException;-><init>()V

    throw p0

    .line 4122
    :cond_1c
    :goto_1c
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenViewAllowed(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 4123
    invoke-virtual {p0, p2, p3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setLockScreenViewProperty(IZ)Z

    move-result v7
    :try_end_26
    .catch Ljava/security/InvalidParameterException; {:try_start_16 .. :try_end_26} :catch_5f
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_26} :catch_58
    .catchall {:try_start_16 .. :try_end_26} :catchall_56

    goto :goto_28

    :cond_27
    move v7, v5

    :goto_28
    const v8, 0xffff

    .line 4128
    :try_start_2b
    iget-object v9, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v10, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v9, v10, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v8
    :try_end_33
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_2b .. :try_end_33} :catch_34
    .catch Ljava/security/InvalidParameterException; {:try_start_2b .. :try_end_33} :catch_5f
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_33} :catch_58
    .catchall {:try_start_2b .. :try_end_33} :catchall_56

    goto :goto_39

    :catch_34
    :try_start_34
    const-string v9, "allowLockScreenView() failed: cannot get value from edmstorageprovider."

    .line 4131
    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_39
    if-ne v4, p3, :cond_3e

    or-int v4, v8, p2

    goto :goto_40

    :cond_3e
    not-int v4, p2

    and-int/2addr v4, v8

    .line 4135
    :goto_40
    iget-object v8, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v8, v9, v1, v0, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_65

    if-nez v7, :cond_65

    .line 4140
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenViewAllowed(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result p1

    if-eqz p1, :cond_65

    .line 4141
    invoke-virtual {p0, p2, p3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setLockScreenViewProperty(IZ)Z
    :try_end_55
    .catch Ljava/security/InvalidParameterException; {:try_start_34 .. :try_end_55} :catch_5f
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_55} :catch_58
    .catchall {:try_start_34 .. :try_end_55} :catchall_56

    goto :goto_65

    :catchall_56
    move-exception p0

    goto :goto_69

    :catch_58
    move-exception p0

    :try_start_59
    const-string p1, "allowLockScreenView() failed: unexpected exception"

    .line 4146
    invoke-static {v6, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_65

    :catch_5f
    move-exception p0

    const-string p1, "allowLockScreenView() failed: INVALID PARAMETER INPUT"

    .line 4144
    invoke-static {v6, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_65
    .catchall {:try_start_59 .. :try_end_65} :catchall_56

    .line 4148
    :cond_65
    :goto_65
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :goto_69
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4149
    throw p0
.end method

.method public allowOTAUpgrade(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 2456
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v2

    .line 2458
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allowOTAUpgrade : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RestrictionPolicy"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 2460
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isOTAUpgradeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v4

    .line 2461
    iget-object v5, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v7, "RESTRICTION"

    const-string v8, "OTAUpgradeEnabled"

    invoke-virtual {v5, v6, v7, v8, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 2465
    iget-object v9, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    iget v5, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2469
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    const-string v10, "OTAUpgradeEnabled"

    const-wide/high16 v11, 0x40000000000000L

    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 2465
    invoke-virtual/range {v9 .. v16}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 2471
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isOTAUpgradeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-eq v1, v4, :cond_66

    if-nez v4, :cond_66

    .line 2474
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v3

    const-string v4, "com.sec.android.fotaclient"

    invoke-virtual {v3, v2, v4, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    .line 2475
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v3

    const-string v4, "com.wssyncmldm"

    invoke-virtual {v3, v2, v4, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    .line 2476
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v0

    const-string v3, "com.ws.dm"

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    :cond_66
    const/4 v0, 0x1

    return v0
.end method

.method public allowPowerOff(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 12

    .line 3083
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceHwPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 3084
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    if-eqz v5, :cond_13

    const-string p0, "RestrictionPolicy"

    const-string p1, "Failed. Caller is not owner"

    .line 3088
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 3092
    :cond_13
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "powerOffAllowed"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    .line 3095
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/16 v2, 0x800

    const/4 v4, 0x1

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 3099
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string/jumbo v1, "powerOffAllowed"

    .line 3095
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    if-eqz v8, :cond_3f

    const-string p1, "efs/MDM/PowerOff"

    .line 3101
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->manageEFSFile(ZLjava/lang/String;)Z

    .line 3102
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setPowerOffUserRestriction(Z)V

    :cond_3f
    return v8
.end method

.method public allowPowerSavingMode(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 12

    .line 6103
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 6105
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowPowerSavingMode"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 6108
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 6112
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v2, "allowPowerSavingMode"

    const-wide/high16 v3, 0x1000000000000000L

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 6108
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 6114
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "allowPowerSavingMode : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "RestrictionPolicy"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_a8

    .line 6116
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    .line 6118
    :try_start_41
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getCurrentPowerSavingMode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_67

    const-string v2, "allowPowerSavingMode : Power Saving Mode off"

    .line 6119
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6120
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "powersaving_switch"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 6121
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v2, "low_power"

    invoke-static {p0, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_97

    .line 6122
    :cond_67
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getCurrentPowerSavingMode()I

    move-result v2

    if-eqz v2, :cond_97

    const-string v2, "allowPowerSavingMode : send intent to PMS"

    .line 6123
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6124
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "enabled"

    .line 6125
    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "flag"

    const/16 v5, 0x200

    .line 6126
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "skipdialog"

    .line 6127
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    .line 6128
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6129
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->SEM_CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_97} :catch_9d
    .catchall {:try_start_41 .. :try_end_97} :catchall_9b

    .line 6134
    :cond_97
    :goto_97
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_a8

    :catchall_9b
    move-exception p0

    goto :goto_a4

    :catch_9d
    move-exception p0

    :try_start_9e
    const-string v2, "allowPowerSavingMode() failed. "

    .line 6132
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a3
    .catchall {:try_start_9e .. :try_end_a3} :catchall_9b

    goto :goto_97

    .line 6134
    :goto_a4
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6135
    throw p0

    :cond_a8
    :goto_a8
    return v0
.end method

.method public allowSBeam(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 13

    .line 3646
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 3648
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowSBeam"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    and-int/lit8 v0, v0, 0x1

    .line 3652
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 3656
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v2, "allowSBeam"

    const-wide/16 v3, 0x400

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 3652
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    if-eqz v0, :cond_4a

    if-nez p2, :cond_4a

    .line 3659
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3662
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.settings.action.SBEAM_STATE_UPDATED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x1000000

    .line 3663
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v4, 0x0

    const-string/jumbo v5, "turn_on"

    .line 3664
    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3665
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3666
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3668
    :cond_4a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "allowSBeam : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "RestrictionPolicy"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_a8

    .line 3670
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 3673
    :try_start_69
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v7, "RestrictionPolicy"

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " has "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_88

    const-string p2, "enabled"

    goto :goto_8a

    :cond_88
    const-string p2, "disabled"

    .line 3674
    :goto_8a
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " SBeam."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 3675
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 3672
    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_9f
    .catchall {:try_start_69 .. :try_end_9f} :catchall_a3

    .line 3677
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_a8

    :catchall_a3
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3678
    throw p0

    :cond_a8
    :goto_a8
    return v0
.end method

.method public allowSDCardMove(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 12

    .line 4777
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 4778
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    .line 4781
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 p0, 0x0

    return p0

    .line 4784
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " allowSDCardMove : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RestrictionPolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4785
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowSDCardMove"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    .line 4788
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/32 v2, 0x20000000

    const/4 v4, 0x1

    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 4792
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v1, "allowSDCardMove"

    .line 4788
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    return v8
.end method

.method public allowSDCardWrite(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 14

    .line 2553
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x0

    .line 2554
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSDCardWriteAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    .line 2555
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allowSDCardWrite : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RestrictionPolicy"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2556
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string/jumbo v5, "sdCardWriteEnabled"

    invoke-virtual {v2, v3, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 2560
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2564
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const-string/jumbo v4, "sdCardWriteEnabled"

    const-wide v5, 0x800000000L

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2560
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    if-eqz v2, :cond_57

    .line 2567
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    .line 2568
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSDCardWriteAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-eq v0, v1, :cond_54

    .line 2570
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->applySdCardWriteAccessPolicy()V

    .line 2572
    :cond_54
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_57
    return v2
.end method

.method public allowSVoice(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 15

    .line 3529
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 3531
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v8

    const/4 v9, 0x0

    .line 3533
    invoke-virtual {p0, p1, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSVoiceAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v10

    if-nez p2, :cond_46

    if-eqz v10, :cond_46

    .line 3536
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3538
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wake_up_lock_screen"

    invoke-static {v2, v3, v9, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3542
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "voice_input_control"

    invoke-static {v2, v3, v9, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 3546
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3548
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "voiceControl"

    .line 3546
    invoke-virtual {v4, v5, v2, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 3551
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v3, v9, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3553
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3556
    :cond_46
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowSVoice"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    .line 3559
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/16 v2, 0x20

    const/4 v4, 0x1

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 3563
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v1, "allowSVoice"

    move v5, v8

    .line 3559
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    if-eqz p2, :cond_6c

    .line 3567
    invoke-virtual {p0, v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->rollBackSVoice(I)V

    :cond_6c
    const-string v0, "RestrictionPolicy"

    if-eqz v11, :cond_fd

    if-eqz v10, :cond_fd

    if-nez p2, :cond_fd

    .line 3570
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3571
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    .line 3572
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/16 v3, 0xc

    .line 3574
    invoke-virtual {p0, v3, v9}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v3

    .line 3575
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f8

    .line 3577
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_92
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 3578
    iget-object v5, v4, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 3579
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_92

    .line 3581
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 3582
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "packageName "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_92

    const-string v6, "com.vlingo.midas"

    .line 3585
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d1

    const-string v6, "com.samsung.voiceserviceplatform"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_92

    .line 3586
    :cond_d1
    iget v3, v4, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {p0, v3, v9}, Landroid/app/ActivityManager;->semRemoveTask(II)Z

    .line 3590
    :try_start_d6
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0, v5, v8}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_dd
    .catch Landroid/os/RemoteException; {:try_start_d6 .. :try_end_dd} :catch_de

    goto :goto_f8

    :catch_de
    move-exception p0

    .line 3592
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail getting ActivityManager "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f9

    :cond_f8
    :goto_f8
    move v9, v11

    .line 3600
    :goto_f9
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v11, v9

    .line 3602
    :cond_fd
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "allowSVoice : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v11, :cond_159

    .line 3604
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 3607
    :try_start_11a
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "RestrictionPolicy"

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Admin "

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " has "

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_139

    const-string p2, "allowed"

    goto :goto_13b

    :cond_139
    const-string p2, "disallowed"

    .line 3608
    :goto_13b
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " SVoice."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 3609
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 3606
    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_150
    .catchall {:try_start_11a .. :try_end_150} :catchall_154

    .line 3611
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_159

    :catchall_154
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3612
    throw p0

    :cond_159
    :goto_159
    return v11
.end method

.method public allowSafeMode(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 9

    .line 4008
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 4010
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "allowSafeMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RestrictionPolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p2, :cond_26

    .line 4013
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSafeModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 4014
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setSafeModeProperty(Z)Z

    :cond_26
    const/4 v2, 0x0

    .line 4017
    :try_start_27
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string v5, "allowSafeMode"

    invoke-virtual {v3, p1, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p1
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_33} :catch_34

    goto :goto_3b

    :catch_34
    move-exception p1

    const-string v3, "allowSafeMode() : failed with error."

    .line 4020
    invoke-static {v1, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move p1, v2

    :goto_3b
    if-nez p1, :cond_45

    if-nez p2, :cond_45

    .line 4023
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getUserRestrictionSafeMode(I)Z

    move-result v1

    if-nez v1, :cond_4f

    :cond_45
    if-eqz p1, :cond_56

    if-eqz p2, :cond_56

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getUserRestrictionSafeMode(I)Z

    move-result p2

    if-nez p2, :cond_56

    .line 4024
    :cond_4f
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSafeModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setSafeModeProperty(Z)Z

    :cond_56
    return p1
.end method

.method public allowScreenPinning(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 13

    const-string v0, "RestrictionPolicy"

    .line 5637
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 5638
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 5642
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_18

    return v3

    :cond_18
    if-nez p2, :cond_2d

    .line 5647
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 5648
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v6, "lock_to_app_enabled"

    invoke-static {v2, v6, v3, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 5650
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5653
    :cond_2d
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v3, "RESTRICTION"

    const-string/jumbo v4, "screenPinningAllowed"

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 5656
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/high16 v4, 0x200000000000000L

    const/4 v6, 0x1

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 5659
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string/jumbo v3, "screenPinningAllowed"

    .line 5656
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    if-eqz v1, :cond_7d

    if-nez p2, :cond_7d

    .line 5662
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string p1, "activity"

    .line 5663
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 5664
    invoke-virtual {p0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result p0

    if-eqz p0, :cond_7d

    .line 5666
    :try_start_69
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IActivityTaskManager;->stopSystemLockTaskMode()V
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_70} :catch_78
    .catch Ljava/lang/SecurityException; {:try_start_69 .. :try_end_70} :catch_71

    goto :goto_7d

    :catch_71
    const-string/jumbo p0, "trying to un pin app from different user, just ignore"

    .line 5671
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7d

    :catch_78
    const-string p0, "failed taking activity manager service"

    .line 5668
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7d
    :goto_7d
    return v1
.end method

.method public allowSettingsChanges(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 15

    const-string v0, "com.android.settings"

    .line 1687
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1688
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    .line 1692
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    move-result-object v1

    invoke-interface {v1, v9}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v1

    const/4 v10, 0x0

    if-eqz v1, :cond_16

    return v10

    .line 1696
    :cond_16
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v3, "RESTRICTION"

    const-string v4, "allowSettingsChanges"

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    .line 1699
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/16 v3, 0x8

    const/4 v5, 0x1

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1703
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v2, "allowSettingsChanges"

    move v6, v9

    .line 1699
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 1705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowSettingsChanges : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RestrictionPolicy"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v11, :cond_11a

    .line 1708
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1710
    :try_start_53
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    .line 1711
    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const/16 v5, 0xc

    .line 1712
    invoke-virtual {v1, v5, v10}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v5

    if-nez p2, :cond_dd

    .line 1714
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_dd

    .line 1715
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6f
    :goto_6f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_dd

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 1716
    iget-object v6, v5, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 1717
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_6f

    .line 1719
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 1720
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "packageName "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_6f

    .line 1722
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6f

    const-string/jumbo v6, "password_policy"

    .line 1724
    invoke-static {v6}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/security/PasswordPolicy;

    if-eqz v6, :cond_6f

    .line 1725
    invoke-virtual {v6, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedAsUser(I)I

    move-result v6

    if-nez v6, :cond_6f

    .line 1726
    iget v5, v5, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v1, v5, v10}, Landroid/app/ActivityManager;->semRemoveTask(II)Z
    :try_end_ba
    .catchall {:try_start_53 .. :try_end_ba} :catchall_115

    .line 1728
    :try_start_ba
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5, v0, v9}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_c1
    .catch Landroid/os/RemoteException; {:try_start_ba .. :try_end_c1} :catch_c2
    .catchall {:try_start_ba .. :try_end_c1} :catchall_115

    goto :goto_6f

    :catch_c2
    move-exception v5

    .line 1730
    :try_start_c3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fail getting ActivityManager "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v11, v10

    goto :goto_6f

    .line 1738
    :cond_dd
    iget-object p2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.ALLOW_SETTINGS_CHANGES_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    .line 1739
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v9}, Landroid/os/UserHandle;-><init>(I)V

    .line 1738
    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_f4
    .catchall {:try_start_c3 .. :try_end_f4} :catchall_115

    .line 1741
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1743
    invoke-virtual {p0, p1, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p1

    .line 1744
    invoke-virtual {p0, v9, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setSettingsChangeSystemUI(IZ)V

    .line 1746
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string p2, "content://com.sec.knox.provider/RestrictionPolicy3/isSettingsChangesAllowed"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1748
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string p1, "content://com.sec.knox.provider/RestrictionPolicy/isSettingsChangesAllowed"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_11a

    :catchall_115
    move-exception p0

    .line 1741
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1742
    throw p0

    :cond_11a
    :goto_11a
    return v11
.end method

.method public allowShareList(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 12

    .line 3873
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 3874
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    .line 3875
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowShareList"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    .line 3878
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 3882
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v1, "allowShareList"

    const-wide/32 v2, 0x100000

    const/4 v4, 0x1

    .line 3878
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 3884
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "allowShareList : allow="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " containerId="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " = callingUid="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RestrictionPolicy"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8
.end method

.method public allowSmartClipMode(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 12

    .line 5585
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 5587
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "smartClipAllowed"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 5591
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 5595
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string/jumbo v2, "smartClipAllowed"

    const-wide/high16 v3, 0x100000000000000L

    const/4 v5, 0x1

    .line 5591
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    return v0
.end method

.method public allowStatusBarExpansion(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 15

    .line 3034
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 3035
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v8

    const/4 v9, 0x0

    const-string v10, "RestrictionPolicy"

    if-eqz v8, :cond_13

    const-string p0, "Failed. Caller is not owner"

    .line 3040
    invoke-static {v10, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    .line 3043
    :cond_13
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "statusBarExpansionEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_3f

    .line 3046
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/16 v2, 0x100

    const/4 v4, 0x1

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 3050
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string/jumbo v1, "statusBarExpansionEnabled"

    move v5, v8

    .line 3046
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 3052
    invoke-virtual {p0, v9, v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isStatusBarExpansionAllowedAsUser(ZI)Z

    move-result p1

    .line 3053
    invoke-virtual {p0, v8, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setStatusBarExpansionSystemUI(IZ)V

    .line 3055
    :cond_3f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "allowStatusBarExpansion : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", ret = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v10, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v11
.end method

.method public allowStopSystemApp(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 12

    .line 3220
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 3221
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    .line 3223
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowStopSystemApp"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    .line 3226
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 3230
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v1, "allowStopSystemApp"

    const-wide/16 v2, 0x1000

    const/4 v4, 0x1

    .line 3226
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 3232
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "allowStopSystemApp : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RestrictionPolicy"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8
.end method

.method public allowUWB(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 10

    .line 6505
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 6508
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.uwb"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "RestrictionPolicy"

    if-nez v0, :cond_1b

    const-string p0, "UWB is not supported on this device"

    .line 6510
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 6514
    :cond_1b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 6516
    :try_start_1f
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v5, "RESTRICTION"

    const-string v6, "allowUwb"

    invoke-virtual {v0, p1, v5, v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz p2, :cond_3c

    .line 6519
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUWBAllowed()Z

    move-result p0

    if-nez p0, :cond_3c

    const-string p0, "UWB is disallowed. No need to enable UWB."

    .line 6520
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_38} :catch_68
    .catchall {:try_start_1f .. :try_end_38} :catchall_66

    .line 6534
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :cond_3c
    if-nez v1, :cond_43

    const/4 p0, 0x0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 6526
    :cond_43
    :try_start_43
    const-class p0, Lcom/android/server/enterprise/adapter/IUwbManagerAdapter;

    invoke-static {p0}, Lcom/android/server/enterprise/adapter/AdapterRegistry;->getAdapter(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/adapter/IUwbManagerAdapter;

    if-eqz p0, :cond_6e

    .line 6528
    invoke-interface {p0, p2}, Lcom/android/server/enterprise/adapter/IUwbManagerAdapter;->enableUwb(Z)Z

    move-result p0

    .line 6529
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "UwbAdapter.enableUWB() = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_65} :catch_68
    .catchall {:try_start_43 .. :try_end_65} :catchall_66

    goto :goto_6e

    :catchall_66
    move-exception p0

    goto :goto_72

    :catch_68
    move-exception p0

    :try_start_69
    const-string p1, "exception in allowUWB."

    .line 6532
    invoke-static {v2, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6e
    .catchall {:try_start_69 .. :try_end_6e} :catchall_66

    .line 6534
    :cond_6e
    :goto_6e
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :goto_72
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6535
    throw p0
.end method

.method public allowUsbHostStorage(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 29

    move-object/from16 v1, p0

    move/from16 v0, p2

    .line 3774
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v2

    .line 3775
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    const/4 v5, 0x0

    .line 3777
    invoke-virtual {v1, v2, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbHostStorageAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v6

    .line 3779
    iget-object v7, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v8, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v9, "RESTRICTION"

    const-string v10, "allowUsbHostStorage"

    invoke-virtual {v7, v8, v9, v10, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    const/4 v8, 0x1

    and-int/2addr v7, v8

    .line 3782
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "allowUsbHostStorage : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "RestrictionPolicy"

    invoke-static {v10, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3784
    iget-object v11, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    iget v9, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 3788
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    const-string v12, "allowUsbHostStorage"

    const-wide/32 v13, 0x80000

    const/4 v15, 0x1

    const/16 v16, 0x0

    .line 3784
    invoke-virtual/range {v11 .. v18}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    if-eqz v7, :cond_8a

    const/16 v19, 0x5

    const/16 v20, 0x1

    const/16 v21, 0x1

    .line 3792
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v22

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Admin "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " has "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_71

    const-string v11, "allowed"

    goto :goto_73

    :cond_71
    const-string v11, "disallowed"

    .line 3793
    :goto_73
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " USB Host Storage."

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    iget v9, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 3794
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v25

    const-string v23, "RestrictionPolicy"

    .line 3791
    invoke-static/range {v19 .. v25}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    :cond_8a
    if-eqz v7, :cond_eb

    if-nez v0, :cond_eb

    .line 3799
    :try_start_8e
    iget-object v0, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "storage"

    .line 3800
    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    if-nez v0, :cond_a4

    const-string v0, "Failed to get StorageManager"

    .line 3802
    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_a0} :catch_de
    .catchall {:try_start_8e .. :try_end_a0} :catchall_dc

    .line 3826
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    .line 3805
    :cond_a4
    :try_start_a4
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v9

    .line 3806
    array-length v11, v9

    .line 3808
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getMountService()Landroid/os/storage/IStorageManager;

    move-result-object v12

    move v13, v5

    :goto_ae
    if-ge v13, v11, :cond_eb

    .line 3810
    aget-object v14, v9, v13

    .line 3811
    invoke-virtual {v14}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_d8

    const-string/jumbo v5, "usb"

    .line 3812
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d8

    .line 3813
    invoke-virtual {v14}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 3815
    invoke-virtual {v0, v5}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "mounted"

    .line 3816
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d8

    if-eqz v12, :cond_d8

    const/4 v14, 0x0

    .line 3817
    invoke-interface {v12, v5, v8, v14}, Landroid/os/storage/IStorageManager;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_d8} :catch_de
    .catchall {:try_start_a4 .. :try_end_d8} :catchall_dc

    :cond_d8
    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x0

    goto :goto_ae

    :catchall_dc
    move-exception v0

    goto :goto_e7

    :catch_de
    move-exception v0

    .line 3823
    :try_start_df
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e2
    .catchall {:try_start_df .. :try_end_e2} :catchall_dc

    .line 3826
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v7, 0x0

    goto :goto_ee

    :goto_e7
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3827
    throw v0

    .line 3826
    :cond_eb
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_ee
    if-eqz v7, :cond_114

    const/4 v3, 0x0

    .line 3829
    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbHostStorageAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateUsbStorageStatebyIntent(Z)Z

    move-result v0

    if-nez v0, :cond_100

    const-string v0, "allowUsbHostStorage() : failed to call updateUsbStorageStatebyIntent()"

    .line 3830
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_100
    if-nez v6, :cond_114

    .line 3832
    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbHostStorageAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    if-eqz v0, :cond_114

    const-string v0, "allowUsbHostStorage set true(false -> true). Sync UsbInterface Exception"

    .line 3833
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3834
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getUsbExceptionList()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->syncUsbExceptionList(I)I

    :cond_114
    return v7
.end method

.method public allowUserMobileDataLimit(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 12

    .line 3395
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 3399
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowMobileDataLimit"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    and-int/lit8 v0, v0, 0x1

    .line 3403
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 3407
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v2, "allowMobileDataLimit"

    const-wide/32 v3, 0x10000

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 3403
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    const/4 p1, 0x0

    if-nez p2, :cond_a3

    if-eqz v0, :cond_a3

    .line 3412
    :try_start_2d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const-string/jumbo p2, "netpolicy"

    .line 3415
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    .line 3414
    invoke-static {p2}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object p2

    if-eqz p2, :cond_7b

    .line 3421
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3423
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 3424
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Landroid/net/INetworkPolicyManager;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object p0

    if-eqz p0, :cond_62

    .line 3426
    array-length v4, p0

    if-lez v4, :cond_62

    .line 3427
    array-length v4, p0

    move v5, p1

    :goto_54
    if-ge v5, v4, :cond_62

    aget-object v6, p0, v5

    const-wide/16 v7, -0x1

    .line 3428
    iput-wide v7, v6, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 3429
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_54

    .line 3433
    :cond_62
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_77

    .line 3437
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/net/NetworkPolicy;

    .line 3436
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/net/NetworkPolicy;

    .line 3435
    invoke-interface {p2, p0}, Landroid/net/INetworkPolicyManager;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 3439
    :cond_77
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_a3

    .line 3418
    :cond_7b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "networkPolicyService is null"

    invoke-direct {p0, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_84} :catch_84

    :catch_84
    move-exception p0

    .line 3441
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3442
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RestrictionPolicy.allowUserMobileDataLimit() exception : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "RestrictionPolicy"

    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, p1

    :cond_a3
    :goto_a3
    return v0
.end method

.method public allowVideoRecord(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 14

    .line 3187
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceHwPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 3188
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowVideoRecording"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 3191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowVideoRecord : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RestrictionPolicy"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3192
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 3196
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const-string v4, "allowVideoRecording"

    const-wide/16 v5, 0x2

    const/4 v7, 0x1

    .line 3192
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    return v0
.end method

.method public allowVpn(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 13

    .line 2409
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2412
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "nativeVpnAllowed"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 2415
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2419
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string/jumbo v2, "nativeVpnAllowed"

    const-wide/high16 v3, 0x20000000000000L

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2415
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    if-eqz v0, :cond_32

    if-nez p2, :cond_32

    .line 2421
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getVpnInfoPolicy()Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->disconnectActiveVpnConnections()V

    .line 2423
    :cond_32
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "allowVpn():set :"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ret:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "RestrictionPolicy"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_99

    .line 2425
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 2428
    :try_start_5a
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v7, "RestrictionPolicy"

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " has "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_79

    const-string p2, "enabled"

    goto :goto_7b

    :cond_79
    const-string p2, "disabled"

    .line 2429
    :goto_7b
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Vpn."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2430
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 2427
    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_90
    .catchall {:try_start_5a .. :try_end_90} :catchall_94

    .line 2432
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_99

    :catchall_94
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2433
    throw p0

    :cond_99
    :goto_99
    return v0
.end method

.method public allowWallpaperChange(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 12

    .line 3004
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 3005
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "wallpaperEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 3008
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 3012
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string/jumbo v2, "wallpaperEnabled"

    const-wide v3, 0x400000000L

    const/4 v5, 0x1

    .line 3008
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 3014
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "allowWallpaperChange : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RestrictionPolicy"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public allowWifiDirect(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 3251
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v2

    .line 3253
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allowWifiDirect - caller uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", allow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RestrictionPolicy"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3256
    iget-object v3, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v6, "RESTRICTION"

    const-string v7, "allowWifiDirect"

    invoke-virtual {v3, v5, v6, v7, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_3c

    const-string v0, "allowWifiDirect - fail to store value to database"

    .line 3260
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    .line 3264
    :cond_3c
    iget-object v11, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/16 v13, 0x2000

    const/4 v15, 0x1

    const/16 v16, 0x0

    iget v3, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 3268
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    const-string v12, "allowWifiDirect"

    .line 3264
    invoke-virtual/range {v11 .. v18}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 3270
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    const/4 v8, 0x5

    const/4 v9, 0x1

    .line 3273
    :try_start_58
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    const-string v12, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " has "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_77

    const-string v1, "enabled"

    goto :goto_79

    :cond_77
    const-string v1, "disabled"

    .line 3274
    :goto_79
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Wifi Direct."

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iget v1, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 3275
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    .line 3272
    invoke-static/range {v8 .. v14}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_8e
    .catchall {:try_start_58 .. :try_end_8e} :catchall_9d

    .line 3277
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3280
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWifiDirectAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setWifiDirectUserRestriction(Z)V

    return v2

    :catchall_9d
    move-exception v0

    .line 3277
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3278
    throw v0
.end method

.method public applyBackgroundDataRestriction()V
    .registers 10

    const-string v0, "RestrictionPolicy"

    .line 2140
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_6
    const-string v3, "Applying Background Data Policy"

    .line 2142
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "netpolicy"

    .line 2144
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 2143
    invoke-static {v3}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v3

    if-eqz v3, :cond_9f

    .line 2148
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isDataSavingAllowed()Z

    move-result v4

    if-eqz v4, :cond_44

    const/4 v5, 0x0

    .line 2149
    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackgroundDataEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v5

    if-nez v5, :cond_44

    const/4 p0, 0x1

    .line 2152
    invoke-interface {v3, p0}, Landroid/net/INetworkPolicyManager;->setRestrictBackground(Z)V

    .line 2158
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2160
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_99

    .line 2161
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/net/NetworkPolicy;

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/net/NetworkPolicy;

    invoke-interface {v3, p0}, Landroid/net/INetworkPolicyManager;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    goto :goto_99

    :cond_44
    if-nez v4, :cond_99

    const/4 v4, 0x0

    .line 2165
    invoke-interface {v3, v4}, Landroid/net/INetworkPolicyManager;->setRestrictBackground(Z)V

    .line 2167
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 2168
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "user"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    if-eqz p0, :cond_99

    .line 2170
    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_99

    .line 2172
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_67
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_99

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    const/16 v7, 0x40

    .line 2173
    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    .line 2174
    invoke-virtual {v5, v7, v6}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v6

    .line 2175
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7f
    :goto_7f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_67

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    .line 2176
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2177
    invoke-static {v7}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v8

    if-eqz v8, :cond_7f

    .line 2178
    invoke-interface {v3, v7, v4}, Landroid/net/INetworkPolicyManager;->setUidPolicy(II)V

    goto :goto_7f

    :cond_99
    :goto_99
    const-string p0, "Applied Background Data Policy"

    .line 2188
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c0

    .line 2146
    :cond_9f
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "networkPolicyService is null"

    invoke-direct {p0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_a8} :catch_aa
    .catchall {:try_start_6 .. :try_end_a8} :catchall_a8

    :catchall_a8
    move-exception p0

    goto :goto_c4

    :catch_aa
    move-exception p0

    .line 2190
    :try_start_ab
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBackgroundData EX: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c0
    .catchall {:try_start_ab .. :try_end_c0} :catchall_a8

    .line 2192
    :goto_c0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_c4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2193
    throw p0
.end method

.method public final applySdCardWriteAccessPolicy()V
    .registers 5

    const/4 v0, 0x0

    .line 2586
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSDCardWriteAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "0"

    goto :goto_c

    :cond_a
    const-string v1, "1"

    :goto_c
    const-string/jumbo v2, "sdCardWriteAccessBlocked"

    const-string v3, "/data/system/enterprise.conf"

    invoke-static {v2, v1, v3}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2587
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isExternalSdCardPresent()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSdCardEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 2588
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getStorageManager()Landroid/os/storage/StorageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    const/4 v0, 0x1

    .line 2589
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->unmountSdCard(Z)Z

    :cond_2d
    return-void
.end method

.method public checkAdminActivationEnabled(ILjava/lang/String;)Z
    .registers 4

    .line 5387
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNewAdminActivationEnabledInternal(I)Z

    move-result v0

    if-nez v0, :cond_22

    .line 5388
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->checkPackageWhiteList(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_22

    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p1, "com.samsung.android.knox.permission.KNOX_INTERNAL_EXCEPTION"

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_22

    const p0, 0x1040bac

    .line 5389
    invoke-static {p0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    const/4 p0, 0x0

    return p0

    :cond_22
    const/4 p0, 0x1

    return p0
.end method

.method public checkPackageSource(ILjava/lang/String;)Z
    .registers 3

    if-eqz p2, :cond_14

    .line 5404
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getUidForAdminInstallation(I)I

    move-result p1

    .line 5405
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 5406
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public checkPackageWhiteList(ILjava/lang/String;)Z
    .registers 3

    .line 5397
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getUidForAdminActivation(I)I

    move-result p1

    .line 5398
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isPackageOnExclusionList(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public clearNewAdminActivationAppWhiteList(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 3

    const/4 v0, 0x0

    .line 5354
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->addNewAdminActivationAppWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public final clearSelectiveFota()Z
    .registers 3

    .line 5865
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "SelectiveFotaTable"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p0

    .line 5867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearSelectiveFota : return( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RestrictionPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p0, :cond_28

    const/4 p0, 0x1

    goto :goto_29

    :cond_28
    const/4 p0, 0x0

    :goto_29
    return p0
.end method

.method public final createEFSFile(Ljava/io/File;)Z
    .registers 7

    const-string p0, "RestrictionPolicy"

    const-string v0, "createEFSFile"

    .line 5468
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_10

    const-string p1, "createEFSFile : efsFile fail"

    .line 5471
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 5474
    :cond_10
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1d

    const-string p1, "createEFSFile : efsFile exist"

    .line 5475
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1d
    const/4 v1, 0x0

    .line 5480
    :try_start_1e
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    move-result v0

    .line 5481
    invoke-virtual {p1, v2, v2}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v3

    .line 5482
    invoke-virtual {p1, v2, v2}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v2

    .line 5483
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_2f} :catch_5e
    .catchall {:try_start_1e .. :try_end_2f} :catchall_5c

    .line 5484
    :try_start_2f
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V

    .line 5485
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createEFSFile: setReadable - "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " setWritable - "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_52} :catch_59
    .catchall {:try_start_2f .. :try_end_52} :catchall_56

    .line 5491
    :try_start_52
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_69

    goto :goto_69

    :catchall_56
    move-exception p0

    move-object v1, v4

    goto :goto_7e

    :catch_59
    move-exception p1

    move-object v1, v4

    goto :goto_5f

    :catchall_5c
    move-exception p0

    goto :goto_7e

    :catch_5e
    move-exception p1

    :goto_5f
    :try_start_5f
    const-string v2, "Exception : "

    .line 5487
    invoke-static {p0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_64
    .catchall {:try_start_5f .. :try_end_64} :catchall_5c

    if-eqz v1, :cond_69

    .line 5491
    :try_start_66
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_69

    .line 5495
    :catch_69
    :cond_69
    :goto_69
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createEFSFile : create "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :goto_7e
    if-eqz v1, :cond_83

    .line 5491
    :try_start_80
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_83

    .line 5494
    :catch_83
    :cond_83
    throw p0
.end method

.method public final deleteEFSFile(Ljava/io/File;)Z
    .registers 4

    const-string p0, "RestrictionPolicy"

    const-string v0, "createEFSFile"

    .line 5501
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_10

    const-string p1, "deleteEFSFile : efsFile fail"

    .line 5504
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 5507
    :cond_10
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1d

    const-string p1, "deleteEFSFile : efsFile exist"

    .line 5508
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 5511
    :cond_1d
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    .line 5512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteEFSFile : delete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public disableConstrainedState(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 2

    .line 6569
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/utils/ConstrainedState;->disableConstrainedState(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 6151
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string p3, "android.permission.DUMP"

    invoke-virtual {p1, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_10

    const-string p0, "Permission Denial: can\'t dump Restriction Policy"

    .line 6153
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 6156
    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[Restriction Policy]"

    .line 6157
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6158
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6159
    iget-object p3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    invoke-virtual {p3}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->dump()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6160
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "   UsbExceptionList: 0x"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getUsbExceptionList()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6161
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6162
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "   allowUWB : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUWBAllowed()Z

    move-result p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6163
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6164
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public enableConstrainedState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 14

    .line 6564
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

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

.method public enableODETrustedBootVerification(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 12

    .line 5054
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndAdvancedRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 5055
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableODETrustedBootVerification  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RestrictionPolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5058
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "ODETrustedBootVerification"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 5061
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 5065
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v2, "ODETrustedBootVerification"

    const-wide v3, 0x80000000L

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 5061
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    return v0
.end method

.method public enableWearablePolicy(Lcom/samsung/android/knox/ContextInfo;IZ)Z
    .registers 11

    const-string/jumbo v0, "wearablePolicyEnabled"

    const-string v1, "RESTRICTION"

    .line 5907
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 5908
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 5910
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableGearPolicy() : userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", enable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RestrictionPolicy"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5911
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_4d

    .line 5912
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "enableGearPolicy() : this api doesn\'t support multi-user. userId = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 5916
    :cond_4d
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isValidDevice(I)Z

    move-result v3

    if-nez v3, :cond_68

    .line 5917
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "enableGearPolicy() : this api called unsupport device. device = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_68
    const v3, 0xffff

    .line 5923
    :try_start_6b
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v6, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3
    :try_end_73
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_6b .. :try_end_73} :catch_73

    :catch_73
    const/4 v4, 0x1

    if-ne v4, p3, :cond_79

    not-int p2, p2

    and-int/2addr p2, v3

    goto :goto_7a

    :cond_79
    or-int/2addr p2, v3

    .line 5931
    :goto_7a
    iget-object p3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p3, p1, v1, v0, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_88

    .line 5934
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->sendIntentGearManagerforUpdate(I)V

    move v5, v4

    :cond_88
    return v5
.end method

.method public final enforceAdvancedRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 673
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 674
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 673
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceCertificatePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 685
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_CERTIFICATE"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 686
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 685
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceHwPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 615
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_HW_CONTROL"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 616
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 615
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceLocationPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 643
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_LOCATION"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 644
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 643
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceOldAdvancedRestrictionOrNewApplicationPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 679
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 680
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 679
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceOwnerOnlyAndAdvancedRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 667
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 668
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 667
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceOwnerOnlyAndHwPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 620
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_HW_CONTROL"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 621
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 620
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceOwnerOnlyAndLocationPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 648
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_LOCATION"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 649
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 648
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 662
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_RESTRICTION_MGMT"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 663
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 662
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceOwnerOnlyAndTetheringPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 634
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_RESTRICTION_MGMT"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 635
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 634
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 657
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_RESTRICTION_MGMT"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 658
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 657
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceTetheringPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 629
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_RESTRICTION_MGMT"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/util/List;)V

    return-object p1
.end method

.method public evaluateAndMigrateWifiRelatedPolicyAPIs()V
    .registers 10

    const-string v0, "evaluateAndMigrateWifiRelatedPolicyAPIs - END"

    .line 2765
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_75

    const-string v1, "RestrictionPolicy"

    const-string v2, "evaluateAndMigrateWifiRelatedPolicyAPIs - START"

    .line 2769
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "wifiTetheringEnabled"

    const-string v3, "allowWifiDirect"

    .line 2771
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 2777
    :try_start_1d
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "RESTRICTION"

    invoke-virtual {v6, v7, v4, v5, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_57

    .line 2780
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_57

    const/4 v4, 0x0

    const/4 v6, 0x1

    move v7, v4

    .line 2784
    :cond_30
    :goto_30
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_4d

    .line 2785
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-nez v8, :cond_41

    move v4, v6

    .line 2790
    :cond_41
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-nez v8, :cond_30

    move v7, v6

    goto :goto_30

    :cond_4d
    if-eqz v4, :cond_52

    .line 2797
    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setWifiTetheringUserRestriction(Z)V

    :cond_52
    if-eqz v7, :cond_57

    .line 2800
    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setWifiDirectUserRestriction(Z)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_57} :catch_62
    .catchall {:try_start_1d .. :try_end_57} :catchall_60

    :cond_57
    if-eqz v5, :cond_5c

    .line 2807
    :goto_59
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 2809
    :cond_5c
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    :catchall_60
    move-exception p0

    goto :goto_6c

    :catch_62
    move-exception p0

    :try_start_63
    const-string v2, "evaluateAndMigrateWifiRelatedPolicyAPIs"

    .line 2804
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_68
    .catchall {:try_start_63 .. :try_end_68} :catchall_60

    if-eqz v5, :cond_5c

    goto :goto_59

    :goto_6b
    return-void

    :goto_6c
    if-eqz v5, :cond_71

    .line 2807
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 2809
    :cond_71
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2810
    throw p0

    .line 2766
    :cond_75
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Can only be called by system process"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAllowedFOTAInfo(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 8
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

    const-string p1, "RestrictionPolicy"

    const-string v0, "getAllowedFOTAInfo"

    .line 5786
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5788
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5789
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x0

    .line 5790
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "containerID"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "userID"

    .line 5791
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "adminUid"

    const-string v3, "corpid"

    const-string/jumbo v4, "version"

    .line 5792
    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    .line 5795
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "SelectiveFotaTable"

    invoke-virtual {p0, v5, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_87

    .line 5797
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_87

    .line 5798
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_40
    :goto_40
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    if-eqz v1, :cond_40

    .line 5799
    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-lez v2, :cond_40

    .line 5800
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5801
    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5803
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAllowedFOTAInfo : corpID = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " version = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5804
    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5803
    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    :cond_87
    const-string p0, "getAllowedFOTAInfo: cursor is null"

    .line 5808
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5811
    :cond_8c
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_93

    const/4 v0, 0x0

    :cond_93
    return-object v0
.end method

.method public getAllowedFOTAVersion(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 2

    .line 5817
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getAllowedFOTAInfo(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 5818
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_15

    :cond_d
    const/4 p1, 0x1

    .line 5821
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_15
    :goto_15
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getAppUid(ILjava/lang/String;)I
    .registers 3

    .line 1323
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1325
    :try_start_6
    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p0
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 1327
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Package Name not found error = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RestrictionPolicy"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public final getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;
    .registers 2

    .line 415
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    if-nez v0, :cond_e

    const-string v0, "application_policy"

    .line 416
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 418
    :cond_e
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    return-object p0
.end method

.method public getCCModeState(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 6

    .line 5603
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/32 v1, 0x40000000

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result v0

    .line 5606
    invoke-virtual {p0, p1, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCCModeSupported(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0

    if-eqz p0, :cond_15

    .line 5607
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->updateMdfStatus()I

    move-result p0

    goto :goto_16

    :cond_15
    const/4 p0, -0x1

    .line 5609
    :goto_16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCCModeState : mdm ret = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", MdfUtils ret = : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RestrictionPolicy"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getConstrainedState()I
    .registers 1

    .line 6573
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedState()I

    move-result p0

    return p0
.end method

.method public final getCurrentPowerSavingMode()I
    .registers 5

    .line 6082
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "low_power"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    move v0, v1

    goto :goto_14

    :cond_13
    move v0, v2

    .line 6083
    :goto_14
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v3, "ultra_powersaving_mode"

    invoke-static {p0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_25

    move p0, v1

    goto :goto_26

    :cond_25
    move p0, v2

    :goto_26
    if-eqz p0, :cond_2a

    const/4 v2, 0x2

    goto :goto_2d

    :cond_2a
    if-eqz v0, :cond_2d

    move v2, v1

    .line 6094
    :cond_2d
    :goto_2d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCurrentPowerSavingMode : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RestrictionPolicy"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 604
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 605
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 607
    :cond_c
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object p0
.end method

.method public final getExternalSdCardPath()Ljava/lang/String;
    .registers 6

    .line 2657
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getStorageAdapter()Lcom/android/server/enterprise/adapter/IStorageManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/enterprise/adapter/IStorageManagerAdapter;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object p0

    .line 2658
    array-length v0, p0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_23

    aget-object v2, p0, v1

    .line 2659
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "sd"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 2660
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method

.method public final declared-synchronized getMountService()Landroid/os/storage/IStorageManager;
    .registers 2

    monitor-enter p0

    :try_start_1
    const-string/jumbo v0, "mount"

    .line 2596
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_f
    .catchall {:try_start_1 .. :try_end_c} :catchall_d

    goto :goto_14

    :catchall_d
    move-exception v0

    goto :goto_16

    :catch_f
    move-exception v0

    .line 2598
    :try_start_10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_d

    const/4 v0, 0x0

    .line 2600
    :goto_14
    monitor-exit p0

    return-object v0

    :goto_16
    monitor-exit p0

    throw v0
.end method

.method public getNewAdminActivationAppWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
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

    .line 5357
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOldAdvancedRestrictionOrNewApplicationPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 5359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5360
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v1, "RESTRICTION"

    const-string/jumbo v2, "preventAdminActivationWhiteList"

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5362
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_22

    const-string p0, ""

    .line 5363
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    :cond_22
    const-string p1, ","

    .line 5365
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_2f
    return-object v0
.end method

.method public final getPackageNameForUid(I)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_6

    return-object v0

    .line 5372
    :cond_6
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "ADMIN_INFO"

    const-string v2, "adminName"

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_13

    return-object v0

    .line 5378
    :cond_13
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_1a

    return-object p0

    .line 5382
    :cond_1a
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;
    .registers 1

    .line 3940
    const-class p0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    invoke-static {p0}, Lcom/android/server/enterprise/adapter/AdapterRegistry;->getAdapter(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    return-object p0
.end method

.method public getRestrictedKeyCodes()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2815
    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isHomeKeyEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0

    if-nez p0, :cond_1c

    .line 2816
    new-instance p0, Ljava/util/HashSet;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object p0

    :cond_1c
    return-object v0
.end method

.method public final getRestrictionList(I)Ljava/lang/String;
    .registers 3

    .line 6289
    new-instance p0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->values()[Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6290
    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->OFF:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6291
    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->ABL:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6292
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/enterprise/restriction/RestrictionPolicy$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy$$ExternalSyntheticLambda1;-><init>()V

    .line 6293
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string p1, ":"

    .line 6294
    invoke-static {p1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getSDCardState()Ljava/lang/String;
    .registers 3

    .line 1842
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1844
    :try_start_4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 1846
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1847
    throw p0
.end method

.method public final getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;
    .registers 2

    .line 407
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    if-nez v0, :cond_10

    const-string v0, "enterprise_policy"

    .line 409
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 408
    invoke-static {v0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    .line 411
    :cond_10
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    return-object p0
.end method

.method public getServiceName()Ljava/lang/String;
    .registers 1

    const-string p0, "RestrictionPolicy"

    return-object p0
.end method

.method public final declared-synchronized getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .registers 3

    monitor-enter p0

    .line 586
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_1c

    const-string/jumbo v0, "statusbar"

    .line 588
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 587
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_1c

    const-string v0, "RestrictionPolicy"

    const-string/jumbo v1, "warning: no STATUS_BAR_SERVICE"

    .line 590
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_1c
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-object v0

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getStatusSelectiveFota(ILjava/lang/String;Ljava/lang/String;)I
    .registers 10

    .line 5831
    new-instance p3, Landroid/content/ContentValues;

    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    const/4 v0, 0x0

    .line 5832
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "containerID"

    invoke-virtual {p3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "userID"

    .line 5833
    invoke-virtual {p3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "adminUid"

    const-string v1, "corpid"

    const-string/jumbo v2, "version"

    .line 5834
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v2

    .line 5837
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "SelectiveFotaTable"

    invoke-virtual {p0, v3, v2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p0

    const-string p3, "RestrictionPolicy"

    if-eqz p0, :cond_9d

    .line 5839
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9d

    .line 5840
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_36
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    if-eqz v2, :cond_36

    .line 5841
    invoke-virtual {v2}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-lez v3, :cond_36

    .line 5842
    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_55

    .line 5843
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_56

    :cond_55
    const/4 v3, -0x1

    .line 5844
    :goto_56
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getStatusSelectiveFota : enabled amdin = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v3, :cond_36

    const/4 p0, 0x3

    .line 5847
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "getStatusSelectiveFota : old corpID = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_9e

    .line 5848
    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9e

    const-string/jumbo p0, "getStatusSelectiveFota : same corpID"

    .line 5849
    invoke-static {p3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    goto :goto_9e

    :cond_9b
    const/4 p0, 0x4

    goto :goto_9e

    :cond_9d
    const/4 p0, 0x1

    .line 5859
    :cond_9e
    :goto_9e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "getStatusSelectiveFota : return( "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " )"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final getStorageAdapter()Lcom/android/server/enterprise/adapter/IStorageManagerAdapter;
    .registers 1

    .line 2549
    const-class p0, Lcom/android/server/enterprise/adapter/IStorageManagerAdapter;

    invoke-static {p0}, Lcom/android/server/enterprise/adapter/AdapterRegistry;->getAdapter(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/adapter/IStorageManagerAdapter;

    return-object p0
.end method

.method public getStorageManager()Landroid/os/storage/StorageManager;
    .registers 3

    .line 2543
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_11

    .line 2544
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 2545
    :cond_11
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object p0
.end method

.method public final getTopActivityUserId()I
    .registers 5

    .line 2393
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2395
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->getFocusedUserWithActivityManager()I

    move-result p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_12
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    .line 2399
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1f

    :catchall_10
    move-exception p0

    goto :goto_20

    :catch_12
    move-exception p0

    :try_start_13
    const-string v2, "RestrictionPolicy"

    const-string/jumbo v3, "getTopActivityUserId() failed"

    .line 2397
    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_10

    .line 2399
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    :goto_1f
    return p0

    :goto_20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2400
    throw p0
.end method

.method public final getUidForAdminActivation(I)I
    .registers 8

    .line 5204
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "RESTRICTION"

    const-string v2, "adminUid"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p1

    .line 5206
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_37

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 5208
    :try_start_1b
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v5, "preventAdminActivation"

    invoke-virtual {v3, v4, v1, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 5211
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_2e
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_1b .. :try_end_2e} :catch_2f

    return p0

    :catch_2f
    move-exception p0

    const-string p1, "RestrictionPolicy"

    const-string v0, "Admin not found on database "

    .line 5213
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_37
    return v2
.end method

.method public final getUidForAdminInstallation(I)I
    .registers 8

    .line 5224
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "RESTRICTION"

    const-string v2, "adminUid"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p1

    .line 5226
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_37

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 5228
    :try_start_1b
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v5, "preventAdminInstallation"

    invoke-virtual {v3, v4, v1, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 5231
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_2e
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_1b .. :try_end_2e} :catch_2f

    return p0

    :catch_2f
    move-exception p0

    const-string p1, "RestrictionPolicy"

    const-string v0, "Admin not found on database "

    .line 5233
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_37
    return v2
.end method

.method public final getUsbDriverExceptionList()I
    .registers 5

    .line 6332
    :try_start_0
    new-instance p0, Ljava/io/File;

    const-string/jumbo v0, "sys/class/usb_notify/usb_control/whitelist_for_mdm"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 6333
    invoke-static {p0, v1, v0}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 6335
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_3a

    const-string v0, ":"

    .line 6336
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    move v0, v1

    .line 6337
    :goto_20
    array-length v2, p0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_41

    if-ge v1, v2, :cond_47

    .line 6339
    :try_start_23
    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->getValue()I

    move-result v2
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2d} :catch_2f

    or-int/2addr v0, v2

    goto :goto_37

    :catch_2f
    :try_start_2f
    const-string v2, "RestrictionPolicy"

    const-string/jumbo v3, "input wrong value."

    .line 6342
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 6346
    :cond_3a
    sget-object p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->OFF:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->getValue()I

    move-result v0
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_40} :catch_41

    goto :goto_47

    .line 6349
    :catch_41
    sget-object p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->OFF:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->getValue()I

    move-result v0

    :cond_47
    :goto_47
    return v0
.end method

.method public getUsbExceptionList()I
    .registers 5

    const-string v0, "RestrictionPolicy"

    const-string/jumbo v1, "getUsbExceptionList."

    .line 6355
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6357
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getUsbInterfaceExceptionMaskListInDb()Ljava/util/List;

    move-result-object p0

    .line 6358
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_14

    return v2

    .line 6361
    :cond_14
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/2addr v2, v1

    goto :goto_18

    .line 6364
    :cond_2a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UsbInterface Exception mask MDM DB = 0x"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6365
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6364
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6367
    new-instance p0, Ljava/io/File;

    const-string/jumbo v1, "sys/class/usb_notify/usb_control/whitelist_for_mdm"

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6368
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6e

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 6370
    invoke-static {p0, v1, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 6371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UsbInterface Exception mask USB Driver = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_6e} :catch_6f

    :cond_6e
    return v2

    :catch_6f
    move-exception p0

    const-string v1, "Failed get DB exception mask"

    .line 6375
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p0, -0x3e8

    return p0
.end method

.method public final getUsbInterfaceExceptionMaskListInDb()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "UsbExceptionMask"

    .line 6383
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    .line 6384
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "RESTRICTION"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p0

    .line 6386
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6387
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 6388
    :cond_18
    :goto_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 6389
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    if-eqz v2, :cond_18

    .line 6391
    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 6393
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_18

    .line 6394
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_37
    return-object v1
.end method

.method public final getUserIdByPackageNameOrUid(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 4

    if-nez p1, :cond_b

    .line 4213
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 4216
    :cond_b
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3b

    const-string v0, ":"

    .line 4218
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_27

    const/4 v1, 0x0

    .line 4220
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_27
    const-string v0, "android.uid.systemui"

    .line 4222
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3b

    .line 4223
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p0

    .line 4224
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 4225
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    .line 4229
    :cond_3b
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p0

    return p0
.end method

.method public final getUserRestrictionSafeMode(I)Z
    .registers 3

    .line 4050
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    const-string/jumbo p0, "no_safe_boot"

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getUserRestrictions(ILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final getVpnInfoPolicy()Lcom/android/server/enterprise/vpn/VpnInfoPolicy;
    .registers 2

    .line 422
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mVpnPolicy:Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    if-nez v0, :cond_f

    const-string/jumbo v0, "vpn_policy"

    .line 423
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mVpnPolicy:Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    .line 425
    :cond_f
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mVpnPolicy:Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    return-object p0
.end method

.method public final hasKnoxInternalExceptionPermission(Ljava/lang/String;)Z
    .registers 3

    .line 5329
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.samsung.android.knox.permission.KNOX_INTERNAL_EXCEPTION"

    .line 5330
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

.method public isActivationLockAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 6

    .line 4698
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/32 v0, 0x8000000

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    if-eqz p2, :cond_15

    if-nez p0, :cond_15

    const p1, 0x1040ba1

    .line 4703
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 4706
    :cond_15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "isActivationLockAllowed : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RestrictionPolicy"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isAdminEnforcementAllowed(II)Z
    .registers 10

    const-string v0, "RestrictionPolicy"

    .line 5300
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5301
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v3

    .line 5303
    :try_start_a
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v4

    if-eqz v4, :cond_62

    .line 5304
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v4, p2}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->getActiveAdminsInfo(I)Ljava/util/List;

    move-result-object p2

    .line 5306
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1a
    :goto_1a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_62

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 5307
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " preventAdminActivation packageName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5309
    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 5310
    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isPackageOnExclusionList(ILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 5311
    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->hasKnoxInternalExceptionPermission(Ljava/lang/String;)Z

    move-result v4
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_5a} :catch_68
    .catchall {:try_start_a .. :try_end_5a} :catchall_66

    if-eqz v4, :cond_5d

    goto :goto_1a

    :cond_5d
    const/4 p0, 0x0

    .line 5322
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :cond_62
    :goto_62
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6f

    :catchall_66
    move-exception p0

    goto :goto_71

    :catch_68
    move-exception p0

    :try_start_69
    const-string p1, "RestrictionPolicy.preventAdminInstallation exception : "

    .line 5320
    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6e
    .catchall {:try_start_69 .. :try_end_6e} :catchall_66

    goto :goto_62

    :goto_6f
    const/4 p0, 0x1

    return p0

    .line 5322
    :goto_71
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5323
    throw p0
.end method

.method public isAirplaneModeAllowed(Z)Z
    .registers 6

    .line 4533
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/16 v0, 0x80

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    if-eqz p1, :cond_14

    if-nez p0, :cond_14

    const p1, 0x104019f

    .line 4538
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 4541
    :cond_14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isAirplaneModeAllowed : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RestrictionPolicy"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isAndroidBeamAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 6

    .line 3757
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/32 v0, 0x40000

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    if-eqz p2, :cond_15

    if-nez p0, :cond_15

    const p1, 0x1040ba2

    .line 3762
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 3765
    :cond_15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "isAndroidBeamAllowed : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RestrictionPolicy"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isAudioRecordAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 6

    .line 3169
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 3170
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/16 v0, 0x1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    .line 3175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "userId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " isAudioRecordAllowed : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RestrictionPolicy"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_36

    if-nez p0, :cond_36

    const p1, 0x1040baf

    .line 3179
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_36
    return p0
.end method

.method public isBackgroundDataEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 5

    .line 2203
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/high16 v0, 0x4000000000000L

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    .line 2206
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isBackgroundDataEnabled : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RestrictionPolicy"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isBackgroundProcessLimitAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 5

    .line 3336
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/16 v0, 0x4000

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    .line 3340
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isBackgroundProcessLimitAllowed : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RestrictionPolicy"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isBackupAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 6

    .line 1582
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide v0, 0x100000000000L

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    if-eqz p2, :cond_17

    if-nez p0, :cond_17

    const p1, 0x1040242

    .line 1586
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 1588
    :cond_17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "isBackupAllowed : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RestrictionPolicy"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isBluetoothTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 6

    .line 1250
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide v0, 0x8000000000L

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 1254
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    move-result p0

    if-eqz p0, :cond_1c

    goto :goto_1d

    :cond_1c
    move v3, p1

    .line 1258
    :goto_1d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "isBluetoothTetheringEnabled : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RestrictionPolicy"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public isCCModeEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 4

    .line 5024
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/32 p1, 0x40000000

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    .line 5028
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result p1

    .line 5029
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " isCCModeEnabled:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "security.mdf"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    mdm ret1 :"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "   ret :"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "RestrictionPolicy"

    invoke-static {p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public isCCModeSupported(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 4

    const-string/jumbo p0, "ro.security.mdf.ux"

    .line 5039
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_13

    const-string p1, "Enabled"

    .line 5040
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    .line 5043
    :goto_14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isCCModeSupported : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RestrictionPolicy"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_35

    if-nez p0, :cond_35

    const p1, 0x1040bb0

    .line 5045
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_35
    return p0
.end method

.method public isCameraDisabledByMultipleAdmin(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/Long;
    .registers 2

    .line 1016
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 1017
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->getCameraDisabledAdmin(I)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public isCameraEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 5

    .line 755
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 756
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCameraEnabledEx(ILcom/samsung/android/knox/ContextInfo;)Z

    move-result p0

    if-eqz p2, :cond_12

    if-nez p0, :cond_12

    const p2, 0x1040291

    .line 759
    invoke-static {p2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 762
    :cond_12
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isCameraEnabled ret("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") userId("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") cxtInfo.mCallerUid("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") cxtInfo.mContainerId("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RestrictionPolicy"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final isCameraEnabledAsUser(I)Z
    .registers 5

    .line 825
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide v0, 0x1000000000L

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    return p0
.end method

.method public final isCameraEnabledEx(ILcom/samsung/android/knox/ContextInfo;)Z
    .registers 11

    .line 770
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCameraDisabledByMultipleAdmin(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/Long;

    move-result-object v0

    .line 771
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-nez v1, :cond_10

    return v2

    .line 773
    :cond_10
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    const-string/jumbo v3, "isCameraEnabledEx isRestrictedByConstrainedState return true"

    const/4 v4, 0x1

    const-string v7, "RestrictionPolicy"

    if-nez v1, :cond_73

    .line 774
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCameraEnabledAsUser(I)Z

    move-result v0

    if-nez v0, :cond_60

    .line 776
    iget p1, p2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    if-lez p1, :cond_59

    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    if-eqz p1, :cond_59

    .line 778
    :try_start_2e
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 779
    invoke-virtual {p1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->getCameraDisabledAdmin(I)Ljava/lang/Long;

    move-result-object p1

    .line 780
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v5

    if-lez v0, :cond_59

    .line 781
    iget v0, p2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const v1, 0x186a0

    mul-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    add-int/2addr v0, p1

    const-string p1, "checking for camera in ApplicationPolicy when camera disabled in user 0 "

    .line 782
    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget p1, p2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isCameraAllowlistedApp(II)Z

    move-result p0
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_54} :catch_55

    return p0

    :catch_55
    move-exception p0

    .line 786
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_59
    const-string/jumbo p0, "isCameraEnabledEx isCameraEnabledEx with OWNER return false"

    .line 789
    invoke-static {v7, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 793
    :cond_60
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p2

    invoke-virtual {p2, v4}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    move-result p2

    if-eqz p2, :cond_6e

    .line 794
    invoke-static {v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 797
    :cond_6e
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCameraEnabledAsUser(I)Z

    move-result p0

    return p0

    .line 799
    :cond_73
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    move-result p1

    if-eqz p1, :cond_81

    .line 800
    invoke-static {v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 804
    :cond_81
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    if-eqz p1, :cond_9b

    :try_start_85
    const-string p1, "checking for camera in ApplicationPolicy"

    .line 806
    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget p1, p2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isCameraAllowlistedApp(II)Z

    move-result p0
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_96} :catch_97

    return p0

    :catch_97
    move-exception p0

    .line 809
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9b
    return v4
.end method

.method public isCellularDataAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 5

    .line 1673
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide v0, 0x400000000000L

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    .line 1676
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isCellularDataAllowed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RestrictionPolicy"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isClipboardAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 3

    .line 1897
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 1898
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardAllowedAsUser(ZI)Z

    move-result p0

    return p0
.end method

.method public isClipboardAllowedAsUser(ZI)Z
    .registers 6

    .line 1902
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/16 v0, 0x200

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    if-eqz p1, :cond_13

    if-nez p0, :cond_13

    const p1, 0x10402dc

    .line 1907
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 1909
    :cond_13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "isClipboardAllowed : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RestrictionPolicy"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isClipboardShareAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 2

    .line 3488
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 3489
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardShareAllowedAsUser(I)Z

    move-result p0

    return p0
.end method

.method public isClipboardShareAllowedAsUser(I)Z
    .registers 5

    .line 3495
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/32 v0, 0x20000

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    .line 3498
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isClipboardShareAllowed : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RestrictionPolicy"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isDataSavingAllowed()Z
    .registers 5

    .line 6195
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/high16 v0, 0x800000000000000L

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    .line 6197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isDataSavingAllowed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RestrictionPolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isDeveloperModeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 6

    .line 4485
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/16 v0, 0x40

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    if-eqz p2, :cond_14

    if-nez p0, :cond_14

    const p1, 0x1040bb1

    .line 4490
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 4492
    :cond_14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "isDeveloperModeAllowed : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RestrictionPolicy"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final isExistEFSFile(Ljava/lang/String;)Z
    .registers 4

    .line 5519
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5521
    :try_start_4
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5528
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_28

    .line 5530
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5533
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isExistEFSFile : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RestrictionPolicy"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :catchall_28
    move-exception p0

    .line 5530
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5531
    throw p0
.end method

.method public final isExternalSdCardPresent()Z
    .registers 2

    .line 2649
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getStorageAdapter()Lcom/android/server/enterprise/adapter/IStorageManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/enterprise/adapter/IStorageManagerAdapter;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object p0

    .line 2650
    array-length p0, p0

    const/4 v0, 0x2

    if-lt p0, v0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public isFaceRecognitionAllowedEvenCameraBlocked(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 5

    .line 6453
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 6454
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/high16 v0, 0x2000000000000000L

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    return p0
.end method

.method public isFactoryResetAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 6

    .line 2263
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFactoryResetAllowedFromDB(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p1

    const-string v0, "/efs/MDM/FactoryReset"

    .line 2271
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isExistEFSFile(Ljava/lang/String;)Z

    move-result v1

    .line 2272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isFactoryResetAllowed(): isExistEFSFile - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " DB - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RestrictionPolicy"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v1, p1, :cond_48

    .line 2274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isFactoryResetAllowed(): need to sync DB("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ") and efs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2275
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->manageEFSFile(ZLjava/lang/String;)Z

    :cond_48
    return p1
.end method

.method public final isFactoryResetAllowedFromDB(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 5

    .line 2287
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/high16 v0, 0x8000000000000L

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    return p0
.end method

.method public isFastEncryptionAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 5

    .line 4840
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/16 v0, 0x10

    const/4 p1, 0x0

    invoke-virtual {p0, v0, v1, p1, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    .line 4844
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isFastEncryptionAllowed : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RestrictionPolicy"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_2a

    if-nez p0, :cond_2a

    const p1, 0x1040ba4

    .line 4847
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_2a
    return p0
.end method

.method public isFirmwareAutoUpdateAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 5

    .line 4661
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/32 v0, 0x4000000

    const/4 p1, 0x0

    invoke-virtual {p0, v0, v1, p1, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    if-eqz p2, :cond_14

    if-nez p0, :cond_14

    const p1, 0x1040ba5

    .line 4666
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 4669
    :cond_14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "isFirmwareAutoUpdateAllowed : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RestrictionPolicy"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final isFirmwareChanged()Z
    .registers 3

    .line 567
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "PlatformSoftwareVersion"

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getDatabaseUpgradeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "ro.build.fingerprint"

    const-string/jumbo v1, "unknown"

    .line 568
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 569
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v0, 0x0

    :cond_19
    if-eqz p0, :cond_26

    if-eqz v0, :cond_24

    .line 570
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24

    goto :goto_26

    :cond_24
    const/4 p0, 0x0

    return p0

    :cond_26
    :goto_26
    const-string p0, "RestrictionPolicy"

    const-string/jumbo v0, "isFirmwareChanged : true"

    .line 571
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public isFirmwareRecoveryAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 5

    .line 4347
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFirmwareRecoveryAllowedFromDB(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p1

    const/4 p2, 0x7

    .line 4348
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->readData(I)Z

    move-result p0

    .line 4350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isFirmwareRecoveryAllowed(): ret -  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " param - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RestrictionPolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p0, p1, :cond_54

    .line 4352
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isFirmwareRecoveryAllowed(): need to sync DB("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ") and param"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4353
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4355
    :try_start_48
    invoke-static {p2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->writeData(IZ)Z
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_4f

    .line 4357
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_54

    :catchall_4f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4358
    throw p0

    :cond_54
    :goto_54
    return p1
.end method

.method public final isFirmwareRecoveryAllowedFromDB(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 5

    .line 4369
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/32 v0, 0x1000000

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    return p0
.end method

.method public isGoogleAccountsAutoSyncAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 2

    .line 4618
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 4619
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isGoogleAccountsAutoSyncAllowedAsUser(I)Z

    move-result p0

    return p0
.end method

.method public isGoogleAccountsAutoSyncAllowedAsUser(I)Z
    .registers 5

    .line 4623
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/32 v0, 0x2000000

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    return p0
.end method

.method public isGoogleCrashReportAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 2

    .line 2525
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 2524
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isGoogleCrashReportAllowedAsUser(I)Z

    move-result p0

    return p0
.end method

.method public isGoogleCrashReportAllowedAsUser(I)Z
    .registers 5

    .line 2531
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/high16 v0, 0x80000000000000L

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    .line 2536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isGoogleCrashReportAllowed : ret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " userId ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RestrictionPolicy"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isHeadphoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 6

    .line 4760
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/32 v0, 0x10000000

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    if-eqz p2, :cond_15

    if-nez p0, :cond_15

    const p1, 0x1040ba6

    .line 4765
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 4768
    :cond_15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "isHeadphoneEnabled : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RestrictionPolicy"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isHomeKeyEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 6

    .line 2381
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/high16 v0, 0x10000000000000L

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    if-eqz p2, :cond_14

    if-nez p0, :cond_14

    const p1, 0x10405de

    .line 2385
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 2387
    :cond_14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "isHomeKeyEnabled :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RestrictionPolicy"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final isHomeKeyEnabledInDb()Z
    .registers 4

    .line 2362
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "RESTRICTION"

    const-string/jumbo v1, "homeKeyEnabled"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p0

    .line 2365
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "RestrictionPolicy"

    if-eqz v0, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_10

    const-string/jumbo p0, "isHomeKeyEnabledInDb : false"

    .line 2367
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2b
    const-string/jumbo p0, "isHomeKeyEnabledInDb : true"

    .line 2371
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public isIrisCameraEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 3

    .line 849
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 850
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isIrisCameraEnabledAsUser(ZI)Z

    move-result p0

    return p0
.end method

.method public isIrisCameraEnabledAsUser(ZI)Z
    .registers 6

    .line 854
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/high16 v0, 0x400000000000000L

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    if-eqz p1, :cond_13

    if-nez p0, :cond_13

    const p1, 0x1040624

    .line 859
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 862
    :cond_13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "isIrisCameraEnabledAsUser : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RestrictionPolicy"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isKeyCodeInputAllowed(I)Z
    .registers 3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_a

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 2996
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isHomeKeyEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0

    return p0

    :cond_a
    const/4 p0, 0x1

    return p0
.end method

.method public isKillingActivitiesOnLeaveAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 5

    .line 3383
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/32 v0, 0x8000

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    return p0
.end method

.method public isKnoxDelegationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 5

    .line 6608
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 6609
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/high16 v0, -0x8000000000000000L

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    return p0
.end method

.method public isLocalContactStorageAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 6

    const-string v0, "RestrictionPolicy"

    const-string/jumbo v1, "isLocalContactStorageAllowed"

    .line 6494
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6495
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 6496
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    .line 6500
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isLocalContactStorageAllowed("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isLockScreenEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 5

    .line 4279
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 4286
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/32 v0, 0x800000

    const/4 p2, 0x1

    invoke-virtual {p0, v0, v1, p2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    .line 4290
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "isLockScreenEnabled : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RestrictionPolicy"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isLockScreenViewAllowed(Lcom/samsung/android/knox/ContextInfo;I)Z
    .registers 7

    const/4 p1, 0x0

    const/4 v0, 0x1

    const-string v1, "RestrictionPolicy"

    if-eq p2, v0, :cond_14

    const/4 v2, 0x2

    if-ne p2, v2, :cond_a

    goto :goto_14

    .line 4161
    :cond_a
    :try_start_a
    new-instance p0, Ljava/security/InvalidParameterException;

    invoke-direct {p0}, Ljava/security/InvalidParameterException;-><init>()V

    throw p0
    :try_end_10
    .catch Ljava/security/InvalidParameterException; {:try_start_a .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_10

    :catch_10
    move-exception p0

    goto :goto_40

    :catch_12
    move-exception p0

    goto :goto_49

    .line 4164
    :cond_14
    :goto_14
    :try_start_14
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "RESTRICTION"

    const-string v3, "allowLockScreenViews"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 4167
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_22
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 4168
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_22

    .line 4169
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_38
    .catch Ljava/security/InvalidParameterException; {:try_start_14 .. :try_end_38} :catch_47
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_38} :catch_3e

    and-int/2addr v2, p2

    if-eq p2, v2, :cond_22

    goto :goto_4f

    :cond_3c
    move p1, v0

    goto :goto_4f

    :catch_3e
    move-exception p0

    move p1, v0

    :goto_40
    const-string/jumbo p2, "isLockScreenViewAllowed() failed: unexpected exception"

    .line 4178
    invoke-static {v1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4f

    :catch_47
    move-exception p0

    move p1, v0

    :goto_49
    const-string/jumbo p2, "isLockScreenViewAllowed() failed: INVALID PARAMETER INPUT"

    .line 4176
    invoke-static {v1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4181
    :goto_4f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "isLockScreenViewAllowed : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public isMicrophoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 3

    .line 980
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 982
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabledAsUser(ZI)Z

    move-result p0

    return p0
.end method

.method public isMicrophoneEnabledAsUser(ZI)Z
    .registers 10

    const-string v0, "RestrictionPolicy"

    const-wide/16 v1, 0x4

    const/4 v3, 0x1

    if-eqz p2, :cond_24

    .line 991
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v2, v3, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result v4

    .line 995
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isMicrophoneEnabledAsUser (owner) : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    :cond_24
    move v4, v3

    :goto_25
    if-ne v4, v3, :cond_4a

    .line 999
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    invoke-virtual {v4, v1, v2, v3, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result v4

    .line 1003
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "userId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", isMicrophoneEnabledAsUser : "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    if-eqz p1, :cond_5f

    if-nez v4, :cond_5f

    const p1, 0x10407b5

    .line 1007
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 1009
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_5f
    return v4
.end method

.method public isMockLocationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 5

    .line 1521
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 1522
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide v0, 0x80000000000L

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    .line 1526
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isMockLocationEnabled : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RestrictionPolicy"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isNewAdminActivationEnabled(IZ)Z
    .registers 5

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2c

    .line 5250
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    .line 5251
    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p1

    .line 5253
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :cond_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 5254
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNewAdminActivationEnabledInternal(IZ)Z

    move-result v0

    if-nez v0, :cond_17

    :cond_2b
    return v0

    .line 5261
    :cond_2c
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNewAdminActivationEnabledInternal(IZ)Z

    move-result p0

    return p0
.end method

.method public isNewAdminActivationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 3

    .line 5242
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 5243
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNewAdminActivationEnabled(IZ)Z

    move-result p0

    return p0
.end method

.method public final isNewAdminActivationEnabledInternal(I)Z
    .registers 3

    const/4 v0, 0x0

    .line 5280
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNewAdminActivationEnabledInternal(IZ)Z

    move-result p0

    return p0
.end method

.method public final isNewAdminActivationEnabledInternal(IZ)Z
    .registers 6

    .line 5267
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide v0, 0x200000000L

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    if-eqz p2, :cond_16

    if-eqz p0, :cond_16

    const p1, 0x1040bac

    .line 5273
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 5275
    :cond_16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "isNewAdminActivationEnabledInternal : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 p2, p0, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RestrictionPolicy"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isNewAdminInstallationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 3

    .line 5123
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 5124
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNewAdminInstallationEnabledAsUser(IZ)Z

    move-result p0

    return p0
.end method

.method public isNewAdminInstallationEnabledAsUser(IZ)Z
    .registers 5

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2c

    .line 5132
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    .line 5133
    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p1

    .line 5135
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :cond_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 5136
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNewAdminInstallationEnabledInternal(IZ)Z

    move-result v0

    if-nez v0, :cond_17

    :cond_2b
    return v0

    .line 5142
    :cond_2c
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNewAdminInstallationEnabledInternal(IZ)Z

    move-result p0

    return p0
.end method

.method public final isNewAdminInstallationEnabledInternal(IZ)Z
    .registers 6

    .line 5151
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide v0, 0x100000000L

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    .line 5155
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isNewAdminInstallationEnabledInternal : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RestrictionPolicy"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_2d

    if-eqz p0, :cond_2d

    const p1, 0x1040bad

    .line 5157
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_2d
    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isNonMarketAppAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 5

    .line 2078
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/high16 v0, 0x1000000000000L

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    .line 2082
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isNonMarketAppAllowed : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RestrictionPolicy"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isNonTrustedAppInstallBlocked(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 2

    .line 3987
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 3988
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNonTrustedAppInstallBlockedAsUser(I)Z

    move-result p0

    return p0
.end method

.method public isNonTrustedAppInstallBlockedAsUser(I)Z
    .registers 5

    .line 3995
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/32 v0, 0x400000

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    return p0
.end method

.method public isODETrustedBootVerificationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 4

    .line 5078
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide v0, 0x80000000L

    const/4 p1, 0x0

    invoke-virtual {p0, v0, v1, p1, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    .line 5082
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isODETruestedBootVerfiicationEnabled : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RestrictionPolicy"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isOTAUpgradeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 5

    .line 2487
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/high16 v0, 0x40000000000000L

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    .line 2490
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isOTAUpgradeAllowed : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RestrictionPolicy"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final isPackageOnExclusionList(ILjava/lang/String;)Z
    .registers 8

    .line 5335
    sget-object v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->excludedAdminList:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    return v1

    .line 5339
    :cond_e
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "RESTRICTION"

    const-string/jumbo v2, "preventAdminActivationWhiteList"

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5342
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_3c

    const-string p1, ","

    .line 5343
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 5344
    array-length p1, p0

    move v2, v0

    :goto_28
    if-ge v2, p1, :cond_3c

    aget-object v3, p0, v2

    .line 5345
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_39

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    return v1

    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_3c
    return v0
.end method

.method public isPowerOffAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 7

    .line 3111
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/16 v0, 0x800

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p1

    const-string v0, "efs/MDM/PowerOff"

    .line 3115
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isExistEFSFile(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "RestrictionPolicy"

    if-ne v1, p1, :cond_31

    .line 3117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isPowerOffAllowed(): need to sync DB("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ") and efs"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3118
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->manageEFSFile(ZLjava/lang/String;)Z

    :cond_31
    if-eqz p2, :cond_3b

    if-nez p1, :cond_3b

    const p0, 0x1040594

    .line 3122
    invoke-static {p0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 3125
    :cond_3b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "isPowerOffAllowed : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public isPowerSavingModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 5

    .line 6146
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/high16 v0, 0x1000000000000000L

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    return p0
.end method

.method public isSBeamAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 6

    .line 3688
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/16 v0, 0x400

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    if-eqz p2, :cond_14

    if-nez p0, :cond_14

    const p1, 0x1040ba7

    .line 3692
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 3695
    :cond_14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "isSBeamAllowed : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RestrictionPolicy"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isSDCardMoveAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 6

    .line 4802
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 4803
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/32 v0, 0x20000000

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    if-eqz p2, :cond_18

    if-nez p0, :cond_18

    const p1, 0x1040ba8

    .line 4808
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 4811
    :cond_18
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "isSDCardMoveAllowed : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RestrictionPolicy"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isSDCardWriteAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 5

    .line 2578
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide v0, 0x800000000L

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    .line 2581
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isSDCardWriteAllowed : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RestrictionPolicy"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isSVoiceAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 3

    .line 3635
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 3637
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSVoiceAllowedAsUser(ZI)Z

    move-result p0

    return p0
.end method

.method public isSVoiceAllowedAsUser(ZI)Z
    .registers 6

    .line 3619
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3620
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3622
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/16 v0, 0x20

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    if-eqz p1, :cond_1a

    if-nez p0, :cond_1a

    const p1, 0x1040dea

    .line 3626
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 3629
    :cond_1a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isSVoiceAllowedAsUser, userId "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RestrictionPolicy"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isSafeModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 5

    const-string p1, "RestrictionPolicy"

    const/4 v0, 0x1

    .line 4060
    :try_start_3
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "RESTRICTION"

    const-string v2, "allowSafeMode"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 4062
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_21} :catch_24

    if-nez v1, :cond_11

    goto :goto_2b

    :catch_24
    const-string/jumbo p0, "isSafeModeAllowed() failed"

    .line 4069
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    move v1, v0

    :goto_2b
    if-eq v1, v0, :cond_33

    const-string/jumbo p0, "isSafeModeAllowed() - not allowed "

    .line 4072
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4074
    :cond_33
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isSafeModeAllowed : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final isScreenCaptureEnabled(IZ)Z
    .registers 3

    .line 1391
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabledEx(IZ)Z

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    const/4 p0, 0x1

    return p0
.end method

.method public isScreenCaptureEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 3

    .line 1345
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 1346
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(IZ)Z

    move-result p0

    return p0
.end method

.method public isScreenCaptureEnabledEx(IZ)Z
    .registers 8

    .line 1356
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1358
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isAppSeparationUserId(I)Z

    move-result v2
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_8f

    const/4 v3, 0x0

    if-eqz v2, :cond_10

    move p1, v3

    .line 1362
    :cond_10
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1364
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isLegacyClId(I)Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_31

    .line 1377
    :cond_28
    invoke-static {}, Landroid/app/admin/DevicePolicyCache;->getInstance()Landroid/app/admin/DevicePolicyCache;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyCache;->isScreenCaptureAllowed(I)Z

    move-result p0

    goto :goto_4e

    .line 1366
    :cond_31
    :goto_31
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide v1, 0x10000000000L

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1370
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    move-result p0

    if-eqz p0, :cond_4c

    goto :goto_4d

    :cond_4c
    move v3, v0

    :goto_4d
    move p0, v3

    :goto_4e
    if-eqz p2, :cond_58

    if-nez p0, :cond_58

    const p2, 0x1040c00

    .line 1381
    invoke-static {p2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_58
    const-string p2, "RestrictionPolicy"

    if-nez p0, :cond_71

    .line 1384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isScreenCaptureEnabledEx() : screencapture has disabled in user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    :cond_71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isScreenCaptureEnabled : ret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :catchall_8f
    move-exception p0

    .line 1362
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1363
    throw p0
.end method

.method public isScreenCaptureEnabledInternal(Z)Z
    .registers 3

    .line 1350
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getTopActivityUserId()I

    move-result v0

    .line 1351
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(IZ)Z

    move-result p0

    return p0
.end method

.method public isScreenPinningAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 3

    .line 5617
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    const/4 v0, 0x0

    .line 5618
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenPinningAllowedAsUser(ZI)Z

    move-result p0

    return p0
.end method

.method public isScreenPinningAllowedAsUser(ZI)Z
    .registers 5

    .line 5622
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/high16 v0, 0x200000000000000L

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    .line 5630
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "isScreenPinningAllowed : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RestrictionPolicy"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isSdCardEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 5

    .line 1855
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getSDCardState()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    .line 1859
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    move-result p1

    if-eqz p1, :cond_14

    return v0

    .line 1862
    :cond_14
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide v1, 0x800000000000L

    const/4 p1, 0x1

    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    .line 1865
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isSdCardEnabled : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RestrictionPolicy"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isSettingsChangesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 3

    .line 1762
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getUserIdByPackageNameOrUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 1764
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowedAsUser(ZI)Z

    move-result p0

    return p0
.end method

.method public isSettingsChangesAllowedAsUser(ZI)Z
    .registers 6

    .line 1775
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/16 v0, 0x8

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    if-eqz p1, :cond_13

    if-nez p0, :cond_13

    const p1, 0x10401a6

    .line 1780
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 1782
    :cond_13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isSettingsChangesAllowedAsUser, userId "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RestrictionPolicy"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isShareListAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 3

    .line 3890
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 3891
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isShareListAllowedAsUser(IZ)Z

    move-result p0

    return p0
.end method

.method public isShareListAllowedAsUser(IZ)Z
    .registers 6

    .line 3895
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/32 v0, 0x100000

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    if-eqz p2, :cond_14

    if-nez p0, :cond_14

    const p2, 0x1040d51

    .line 3900
    invoke-static {p2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 3903
    :cond_14
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isShareListAllowed : userId("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RestrictionPolicy"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isSmartClipModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 3

    .line 5546
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    const/4 v0, 0x0

    .line 5548
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSmartClipModeAllowedAsUser(ZI)Z

    move-result p0

    return p0
.end method

.method public final isSmartClipModeAllowedAsUser(ZI)Z
    .registers 6

    .line 5564
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/high16 v0, 0x100000000000000L

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    if-eqz p1, :cond_13

    if-nez p0, :cond_13

    const p1, 0x1040d82

    .line 5569
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 5572
    :cond_13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "isSmartClipModeAllowed : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RestrictionPolicy"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isSmartClipModeAllowedInternal(Z)Z
    .registers 3

    .line 5558
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getTopActivityUserId()I

    move-result v0

    .line 5560
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSmartClipModeAllowedAsUser(ZI)Z

    move-result p0

    return p0
.end method

.method public isStatusBarExpansionAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 3

    const/4 p1, 0x0

    .line 3060
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isStatusBarExpansionAllowedAsUser(ZI)Z

    move-result p0

    return p0
.end method

.method public isStatusBarExpansionAllowedAsUser(ZI)Z
    .registers 5

    .line 3070
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/16 p1, 0x100

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    .line 3078
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "isStatusBarExpansionAllowedAsUser : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", userId = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RestrictionPolicy"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isStopSystemAppAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 5

    .line 3238
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 3239
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/16 v0, 0x1000

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    .line 3243
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isStopSystemAppAllowed : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RestrictionPolicy"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 5

    const/4 p1, 0x0

    .line 1049
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 1050
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWifiTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    .line 1051
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBluetoothTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0

    .line 1052
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isTetheringEnabled : ret1 = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ret2 = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ret3 = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "RestrictionPolicy"

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_3d

    if-nez v1, :cond_3d

    if-eqz p0, :cond_3b

    goto :goto_3d

    :cond_3b
    const/4 p0, 0x0

    goto :goto_3e

    :cond_3d
    :goto_3d
    const/4 p0, 0x1

    :goto_3e
    return p0
.end method

.method public final isUCMKeyguardEnabled()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isUWBAllowed()Z
    .registers 6

    .line 6541
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x1

    .line 6544
    :try_start_5
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "RESTRICTION"

    const-string v4, "allowUwb"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_33

    .line 6547
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_25} :catch_2b
    .catchall {:try_start_5 .. :try_end_25} :catchall_29

    if-nez v3, :cond_15

    move v2, v3

    goto :goto_33

    :catchall_29
    move-exception p0

    goto :goto_37

    :catch_2b
    move-exception p0

    :try_start_2c
    const-string v3, "RestrictionPolicy"

    const-string v4, "Error on isUWBAllowed. "

    .line 6555
    invoke-static {v3, v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_29

    .line 6557
    :cond_33
    :goto_33
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_37
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6558
    throw p0
.end method

.method public isUsbDebuggingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 6

    .line 1447
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide v0, 0x20000000000L

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 1451
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    move-result p0

    if-eqz p0, :cond_1c

    goto :goto_1d

    :cond_1c
    move v3, p1

    .line 1455
    :goto_1d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "isUsbDebuggingEnabled : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RestrictionPolicy"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public isUsbHostStorageAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 6

    .line 3862
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/32 v0, 0x80000

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    if-eqz p2, :cond_15

    if-nez p0, :cond_15

    const p1, 0x1040ec3

    .line 3866
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 3868
    :cond_15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "isUsbHostStorageAllowed : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RestrictionPolicy"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isUsbKiesAvailable(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public isUsbMassStorageEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public isUsbMediaPlayerAvailable(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 6

    .line 2028
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    goto :goto_16

    .line 2031
    :cond_d
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/high16 v1, 0x2000000000000L

    const/4 p1, 0x1

    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result v0

    :goto_16
    if-eqz p2, :cond_20

    if-nez v0, :cond_20

    const p0, 0x104074a

    .line 2036
    invoke-static {p0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 2038
    :cond_20
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "isUsbMediaPlayerAvailable : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RestrictionPolicy"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isUsbTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 6

    .line 1110
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide v0, 0x2000000000L

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 1114
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    move-result p0

    if-eqz p0, :cond_1c

    goto :goto_1d

    :cond_1c
    move v3, p1

    .line 1118
    :goto_1d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "isUsbTetheringEnabled : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RestrictionPolicy"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public isUseSecureKeypadEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 6

    .line 3949
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 3951
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 3955
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/32 v1, 0x200000

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    .line 3958
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isUseSecureKeypadEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " cxtInfo.mContainerId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " userid:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RestrictionPolicy"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isUserMobileDataLimitAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 5

    .line 3454
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/32 v0, 0x10000

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    return p0
.end method

.method public final isValidDevice(I)Z
    .registers 2

    const/4 p0, 0x1

    if-ne p1, p0, :cond_4

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method public isVideoRecordAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 6

    .line 3202
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 3203
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/16 v0, 0x2

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    .line 3208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "userId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " isVideoRecordAllowed : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RestrictionPolicy"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_36

    if-nez p0, :cond_36

    const p1, 0x1040bb8

    .line 3211
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_36
    return p0
.end method

.method public isVpnAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 5

    .line 2442
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/high16 v0, 0x20000000000000L

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    .line 2445
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isVpnAllowed():ret:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RestrictionPolicy"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isWallpaperChangeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 6

    .line 3019
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 3020
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide v0, 0x400000000L

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    if-eqz p2, :cond_1a

    if-nez p0, :cond_1a

    const p1, 0x1040efc

    .line 3025
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 3027
    :cond_1a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "isWallpaperChangeAllowed : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RestrictionPolicy"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isWearablePolicyEnabled(Lcom/samsung/android/knox/ContextInfo;I)Z
    .registers 6

    const-string p1, "RestrictionPolicy"

    const/4 v0, 0x0

    .line 5881
    :try_start_3
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isValidDevice(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 5885
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "RESTRICTION"

    const-string/jumbo v2, "wearablePolicyEnabled"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 5888
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 5889
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/2addr v1, p2

    if-eq p2, v1, :cond_18

    const/4 v0, 0x1

    goto :goto_40

    .line 5883
    :cond_2d
    new-instance p0, Ljava/security/InvalidParameterException;

    invoke-direct {p0}, Ljava/security/InvalidParameterException;-><init>()V

    throw p0
    :try_end_33
    .catch Ljava/security/InvalidParameterException; {:try_start_3 .. :try_end_33} :catch_3a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_33} :catch_33

    :catch_33
    const-string/jumbo p0, "isWearablePolicyEnabled() failed."

    .line 5897
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    :catch_3a
    const-string/jumbo p0, "isWearablePolicyEnabled() failed: INVALID PARAMETER INPUT"

    .line 5895
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5900
    :cond_40
    :goto_40
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "isWearablePolicyEnabled() : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isWifiDirectAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 6

    .line 3296
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/16 v0, 0x2000

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p0

    if-eqz p2, :cond_14

    if-nez p0, :cond_14

    const p1, 0x1040bae

    .line 3301
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 3303
    :cond_14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "isWifiDirectAllowed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RestrictionPolicy"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isWifiTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 6

    .line 1188
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide v0, 0x4000000000L

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(JZI)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 1191
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    move-result p0

    if-eqz p0, :cond_1c

    goto :goto_1d

    :cond_1c
    move v3, p1

    .line 1194
    :goto_1d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "isWifiTetheringEnabled: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RestrictionPolicy"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public final loadRestrictionCacheAndNotifyChanges(I)V
    .registers 3

    .line 2827
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->load(I)V

    .line 2828
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->notifyChanges(I)V

    return-void
.end method

.method public final manageEFSFile(ZLjava/lang/String;)Z
    .registers 11

    const-string v0, "RestrictionPolicy"

    const-string/jumbo v1, "manageEFSFile"

    .line 5416
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5420
    new-instance v1, Ljava/io/File;

    const-string v2, "/efs/MDM"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5427
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 5428
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_7b

    .line 5429
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-eqz v4, :cond_71

    .line 5430
    invoke-virtual {v1, v6, v5}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v4

    .line 5431
    invoke-virtual {v1, v6, v6}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v5

    const/4 v6, 0x0

    .line 5433
    :try_start_2a
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2f} :catch_42
    .catchall {:try_start_2a .. :try_end_2f} :catchall_40

    .line 5434
    :try_start_2f
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_36} :catch_3d
    .catchall {:try_start_2f .. :try_end_36} :catchall_3a

    .line 5440
    :try_start_36
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_4d

    goto :goto_4d

    :catchall_3a
    move-exception p0

    move-object v6, v7

    goto :goto_6b

    :catch_3d
    move-exception v1

    move-object v6, v7

    goto :goto_43

    :catchall_40
    move-exception p0

    goto :goto_6b

    :catch_42
    move-exception v1

    :goto_43
    :try_start_43
    const-string v7, "Exception : "

    .line 5436
    invoke-static {v0, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_48
    .catchall {:try_start_43 .. :try_end_48} :catchall_40

    if-eqz v6, :cond_4d

    .line 5440
    :try_start_4a
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4d

    .line 5444
    :catch_4d
    :cond_4d
    :goto_4d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "manageEFSFile: setReadable - "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " setWritable - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_81

    :goto_6b
    if-eqz v6, :cond_70

    .line 5440
    :try_start_6d
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_70

    .line 5443
    :catch_70
    :cond_70
    throw p0

    :cond_71
    const-string/jumbo p0, "manageEFSFile : mkdirs fail"

    .line 5446
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5447
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    .line 5451
    :cond_7b
    invoke-virtual {v1, v5, v5}, Ljava/io/File;->setWritable(ZZ)Z

    .line 5452
    invoke-virtual {v1, v6, v6}, Ljava/io/File;->setWritable(ZZ)Z

    .line 5455
    :goto_81
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_8d

    .line 5457
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->deleteEFSFile(Ljava/io/File;)Z

    move-result p0

    goto :goto_91

    .line 5459
    :cond_8d
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->createEFSFile(Ljava/io/File;)Z

    move-result p0

    .line 5461
    :goto_91
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0
.end method

.method public final matchRegex([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 1023
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_12

    aget-object v2, p1, v1

    .line 1024
    invoke-virtual {p2, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_12
    return v0
.end method

.method public final migrateDisallowNonMarketAppOnUserRestrictions()V
    .registers 1

    .line 578
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateNonMarketAppOnUserManager()V

    return-void
.end method

.method public final mountSdCard()Z
    .registers 5

    const-string v0, "RestrictionPolicy"

    .line 2668
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getMountService()Landroid/os/storage/IStorageManager;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_44

    .line 2671
    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getExternalSdCardPath()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_16

    const-string/jumbo p0, "mountSdCard() : fail to mount media because path is null."

    .line 2673
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 2676
    :cond_16
    invoke-interface {v1, p0}, Landroid/os/storage/IStorageManager;->mountVolume(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1f

    const/4 p0, 0x1

    move v2, p0

    goto :goto_44

    .line 2680
    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mountSdCard() : Unable to mount media - error code : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_34} :catch_3d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_34} :catch_35

    goto :goto_44

    :catch_35
    move-exception p0

    const-string/jumbo v1, "mountSdCard() : failed by Exception."

    .line 2688
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_44

    :catch_3d
    move-exception p0

    const-string/jumbo v1, "mountSdCard() : failed by RemoteException."

    .line 2685
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_44
    :goto_44
    return v2
.end method

.method public final notifyChanges(I)V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_e

    .line 2835
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(IZ)Z

    move-result v0

    xor-int/2addr v0, v1

    .line 2834
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateScreenCaptureDisabledInWindowManager(IZ)V

    goto :goto_2e

    .line 2837
    :cond_e
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object p1

    .line 2838
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v3, v0

    :goto_19
    if-ge v3, v2, :cond_2e

    .line 2840
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 2843
    invoke-virtual {p0, v4, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(IZ)Z

    move-result v5

    xor-int/2addr v5, v1

    .line 2842
    invoke-virtual {p0, v4, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateScreenCaptureDisabledInWindowManager(IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 2846
    :cond_2e
    :goto_2e
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy1/isClipboardAllowed"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2848
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy1/isClipboardShareAllowed"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2850
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy1/isCameraEnabled"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2852
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy3/isSettingsChangesAllowed"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2855
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy/isSettingsChangesAllowed"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2856
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string p1, "content://com.sec.knox.provider/RestrictionPolicy/isCameraEnabled"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3

    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2

    return-void
.end method

.method public onAdminRemoved(IZ)V
    .registers 8

    .line 2701
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    if-nez p2, :cond_13

    .line 2705
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->loadRestrictionCacheAndNotifyChanges(I)V

    .line 2710
    :cond_13
    new-instance p2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p2, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2711
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFactoryResetAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 2712
    invoke-virtual {p0, p2, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFirmwareRecoveryAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2714
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2715
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {p0, v3, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v3, "microphoneEnabled"

    const-string v4, "/data/system/enterprise.conf"

    .line 2714
    invoke-static {v3, p2, v4}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2717
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2718
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {p0, v2, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v2, "screenCaptureEnabled"

    .line 2717
    invoke-static {v2, p2, v4}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 p2, 0x0

    .line 2719
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSDCardWriteAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    iget-boolean v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->preAdminRemoval_SDCardWrite:Z

    if-eq v2, v3, :cond_6c

    .line 2720
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->applySdCardWriteAccessPolicy()V

    .line 2721
    iput-boolean v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->preAdminRemoval_SDCardWrite:Z

    .line 2726
    :cond_6c
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->rollBackSVoice(I)V

    .line 2729
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {p0, p1, p2, p2, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setAllowedFOTAVersion(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Landroid/os/Bundle;Z)Z

    .line 2730
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbHostStorageAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateUsbStorageStatebyIntent(Z)Z

    .line 2737
    iget-boolean p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenWidgetsAllowedCache:Z

    const/4 v2, 0x1

    if-nez p1, :cond_9f

    .line 2738
    invoke-virtual {p0, p2, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenViewAllowed(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result p1

    if-eqz p1, :cond_9f

    .line 2739
    invoke-virtual {p0, v2, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setLockScreenViewProperty(IZ)Z

    .line 2740
    iput-boolean v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenWidgetsAllowedCache:Z

    .line 2742
    :cond_9f
    iget-boolean p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenShortcutsAllowedCache:Z

    if-nez p1, :cond_af

    const/4 p1, 0x2

    .line 2743
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenViewAllowed(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v3

    if-eqz v3, :cond_af

    .line 2744
    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setLockScreenViewProperty(IZ)Z

    .line 2745
    iput-boolean v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenShortcutsAllowedCache:Z

    .line 2747
    :cond_af
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    if-ne v0, p1, :cond_b8

    .line 2748
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateSystemUIMonitor(I)V

    .line 2750
    :cond_b8
    iget-boolean p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSafeModeAllowedCache:Z

    if-nez p1, :cond_cd

    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSafeModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p1

    if-eqz p1, :cond_cd

    if-nez v0, :cond_cd

    .line 2751
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getUserRestrictionSafeMode(I)Z

    move-result p1

    if-nez p1, :cond_cd

    .line 2752
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setSafeModeProperty(Z)Z

    .line 2754
    :cond_cd
    iget-boolean p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mUsbSyncFlag:Z

    if-eqz p1, :cond_da

    .line 2755
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getUsbExceptionList()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setUsbExceptionListOnDriver(I)I

    .line 2756
    iput-boolean v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mUsbSyncFlag:Z

    .line 2758
    :cond_da
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateNonMarketAppOnUserManager()V

    .line 2759
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isHomeKeyEnabledInDb()Z

    move-result p1

    if-eqz p1, :cond_e6

    .line 2760
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setHomeKeyVisibilityOnNavi(Z)V

    :cond_e6
    return-void
.end method

.method public onContainerCreation(II)V
    .registers 11

    .line 4189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RestrictionPolicy.onContainerCreation("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RestrictionPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4191
    :try_start_23
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string/jumbo v6, "useSecureKeypad"

    const/4 v7, 0x0

    move v3, p2

    move v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(IILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_3f

    const-string p0, "Failed to initialize container"

    .line 4194
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_38} :catch_39

    goto :goto_3f

    :catch_39
    const-string/jumbo p0, "onContainerCreation initialize exception : "

    .line 4197
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    :goto_3f
    return-void
.end method

.method public onContainerRemoved(II)V
    .registers 4

    .line 4208
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RestrictionPolicy.onContainerRemoved("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RestrictionPolicy"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 8

    const-string v0, "RestrictionPolicy"

    const-string v1, "UsbExceptionMask"

    .line 2889
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->resetWifiRelatedPolicyAPIs(I)V

    const/4 v2, 0x0

    .line 2890
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSDCardWriteAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->preAdminRemoval_SDCardWrite:Z

    const/4 v3, 0x1

    .line 2895
    invoke-virtual {p0, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenViewAllowed(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenWidgetsAllowedCache:Z

    const/4 v4, 0x2

    .line 2897
    invoke-virtual {p0, v2, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenViewAllowed(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenShortcutsAllowedCache:Z

    .line 2898
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSafeModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSafeModeAllowedCache:Z

    .line 2901
    :try_start_22
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    .line 2902
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    invoke-virtual {v4, p1, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(ILjava/lang/String;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p1

    .line 2903
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_3f

    .line 2905
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3f

    const/4 v1, 0x0

    .line 2906
    iput-boolean v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mUsbSyncFlag:Z

    goto :goto_41

    .line 2908
    :cond_3f
    iput-boolean v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mUsbSyncFlag:Z

    .line 2910
    :goto_41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPreAdminRemoval - Exception mask : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " | Sync : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mUsbSyncFlag:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_60} :catch_61

    goto :goto_66

    :catch_61
    const-string p0, "Read DB Error"

    .line 2912
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_66
    return-void
.end method

.method public onPreContainerRemoval(II)V
    .registers 4

    .line 4203
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RestrictionPolicy.onPreContainerRemoval("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RestrictionPolicy"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onUserAdded(I)V
    .registers 2

    .line 582
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->loadRestrictionCacheAndNotifyChanges(I)V

    return-void
.end method

.method public final onUserRemoved(I)V
    .registers 2

    .line 597
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->clearCache(I)V

    return-void
.end method

.method public preventNewAdminActivation(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 13

    .line 5164
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOldAdvancedRestrictionOrNewApplicationPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x0

    .line 5166
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNewAdminActivationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v1

    .line 5167
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v7

    const-string/jumbo v2, "preventAdminActivation"

    const-string v3, "RESTRICTION"

    if-eqz v1, :cond_42

    .line 5171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " preventAdminActivation : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "RestrictionPolicy"

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5174
    :try_start_2a
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v1, v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAdminEnforcementAllowed(II)Z

    move-result v1

    if-nez v1, :cond_33

    return v0

    .line 5178
    :cond_33
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v5, v3, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_3b} :catch_3c

    goto :goto_50

    :catch_3c
    const-string v1, "RestrictionPolicy.preventAdminActivation exception : "

    .line 5181
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50

    .line 5186
    :cond_42
    invoke-virtual {p0, v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getUidForAdminActivation(I)I

    move-result v1

    .line 5187
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-ne v4, v1, :cond_50

    .line 5188
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, v4, v3, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 5193
    :cond_50
    :goto_50
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide v4, 0x200000000L

    const/4 v6, 0x0

    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 5197
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string/jumbo v3, "preventAdminActivation"

    .line 5193
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    return v0
.end method

.method public preventNewAdminInstallation(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 13

    .line 5088
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOldAdvancedRestrictionOrNewApplicationPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x0

    .line 5090
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNewAdminInstallationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v1

    .line 5091
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v7

    const-string/jumbo v2, "preventAdminInstallation"

    const-string v3, "RESTRICTION"

    if-eqz v1, :cond_3c

    .line 5096
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " preventAdminInstallation : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "RestrictionPolicy"

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5097
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v1, v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAdminEnforcementAllowed(II)Z

    move-result v1

    if-nez v1, :cond_33

    return v0

    .line 5101
    :cond_33
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v1, v3, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_4a

    .line 5105
    :cond_3c
    invoke-virtual {p0, v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getUidForAdminInstallation(I)I

    move-result v1

    .line 5107
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-ne v4, v1, :cond_4a

    .line 5108
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, v4, v3, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 5113
    :cond_4a
    :goto_4a
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide v4, 0x100000000L

    const/4 v6, 0x0

    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 5117
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string/jumbo v3, "preventAdminInstallation"

    .line 5113
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    return v0
.end method

.method public final readData(I)Z
    .registers 6

    .line 4378
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4380
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->readParamData()[B

    move-result-object p0

    .line 4381
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v0, "RestrictionPolicy"

    const/4 v1, 0x1

    if-nez p0, :cond_17

    const-string/jumbo p0, "readParamData : fail to read"

    .line 4383
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4386
    :cond_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readParamData : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x1e

    .line 4391
    aget-byte v2, p0, v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_45

    const/16 v2, 0x1f

    aget-byte v2, p0, v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_45

    aget-byte p0, p0, p1

    const/16 v2, 0x8

    if-ne p0, v2, :cond_45

    const/4 v1, 0x0

    .line 4396
    :cond_45
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readParamData : index - "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ret - "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final resetWifiRelatedPolicyAPIs(I)V
    .registers 14

    const-string/jumbo v0, "resetWifiRelatedPolicyAPIs - END"

    const-string v1, "RestrictionPolicy"

    const-string/jumbo v2, "resetWifiRelatedPolicyAPIs - START"

    .line 2917
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "adminUid"

    const-string/jumbo v3, "wifiTetheringEnabled"

    const-string v4, "allowWifiDirect"

    .line 2919
    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 2927
    :try_start_17
    iget-object v7, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "RESTRICTION"

    invoke-virtual {v7, v8, v5, v6, v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_6a

    .line 2930
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-gtz v5, :cond_28

    goto :goto_6a

    .line 2942
    :cond_28
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v5, 0x0

    move v7, v5

    move v8, v7

    .line 2944
    :cond_2e
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 2948
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 2947
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v11, -0x1

    if-nez v10, :cond_48

    if-nez v7, :cond_45

    move v7, v9

    goto :goto_48

    :cond_45
    if-eq v7, v11, :cond_48

    move v7, v11

    .line 2959
    :cond_48
    :goto_48
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 2958
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-nez v10, :cond_59

    if-nez v8, :cond_56

    move v8, v9

    goto :goto_59

    :cond_56
    if-eq v8, v11, :cond_59

    move v8, v11

    .line 2966
    :cond_59
    :goto_59
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_2e

    if-ne v7, p1, :cond_64

    .line 2969
    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setWifiTetheringUserRestriction(Z)V

    :cond_64
    if-ne v8, p1, :cond_9a

    .line 2973
    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setWifiDirectUserRestriction(Z)V

    goto :goto_9a

    .line 2931
    :cond_6a
    :goto_6a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "resetWifiRelatedPolicyAPIs - "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v6, :cond_7a

    const-string p1, "Cursor is null"

    goto :goto_7c

    :cond_7a
    const-string p1, "Cursor is empty"

    .line 2932
    :goto_7c
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2931
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_86} :catch_91
    .catchall {:try_start_17 .. :try_end_86} :catchall_8f

    if-eqz v6, :cond_8b

    .line 2979
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2981
    :cond_8b
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_8f
    move-exception p0

    goto :goto_a1

    :catch_91
    move-exception p0

    :try_start_92
    const-string/jumbo p1, "resetWifiRelatedPolicyAPIs"

    .line 2976
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_98
    .catchall {:try_start_92 .. :try_end_98} :catchall_8f

    if-eqz v6, :cond_9d

    .line 2979
    :cond_9a
    :goto_9a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2981
    :cond_9d
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_a1
    if-eqz v6, :cond_a6

    .line 2979
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2981
    :cond_a6
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2982
    throw p0
.end method

.method public final rollBackSVoice(I)V
    .registers 6

    const/4 v0, 0x0

    .line 3506
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSVoiceAllowedAsUser(ZI)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 3510
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v1, "voiceControl"

    .line 3511
    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 3514
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3516
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 3517
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v3, "voice_input_control"

    .line 3516
    invoke-static {p0, v3, v0, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3518
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_29
    return-void
.end method

.method public final sendIntentGearManagerforUpdate(I)V
    .registers 6

    .line 5943
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5945
    :try_start_4
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.knox.intent.action.GEARPOLICY_ENABLE_INTERNAL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x1000000

    .line 5947
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 5945
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1b} :catch_1e
    .catchall {:try_start_4 .. :try_end_1b} :catchall_1c

    goto :goto_27

    :catchall_1c
    move-exception p0

    goto :goto_2b

    :catch_1e
    move-exception p0

    :try_start_1f
    const-string p1, "RestrictionPolicy"

    const-string/jumbo v2, "sendIntentGearManagerforUpdate() fas failed."

    .line 5950
    invoke-static {p1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_1c

    .line 5952
    :goto_27
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_2b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5953
    throw p0
.end method

.method public final sendSeletiveFotaResult(I)V
    .registers 6

    .line 5975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendSeletiveFotaResult: result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RestrictionPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5977
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5979
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.knox.intent.action.UPDATE_FOTA_VERSION_RESULT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.samsung.android.knox.intent.extra.UPDATE_FOTA_VERSION_STATUS"

    .line 5980
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5981
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "com.samsung.android.knox.permission.KNOX_RESTRICTION_MGMT"

    invoke-virtual {p0, v2, p1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 5982
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public final setAirplaneModeAllowedSystemUI(IZ)V
    .registers 5

    .line 6023
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6025
    :try_start_4
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object p0

    .line 6026
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setAirplaneModeAllowedAsUser(IZ)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_13
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    .line 6030
    :goto_d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1d

    :catchall_11
    move-exception p0

    goto :goto_1e

    :catch_13
    move-exception p0

    :try_start_14
    const-string p1, "RestrictionPolicy"

    const-string/jumbo p2, "setAirplaneModeAllowedSystemUI() failed. "

    .line 6028
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_11

    goto :goto_d

    :goto_1d
    return-void

    .line 6030
    :goto_1e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6031
    throw p0
.end method

.method public setAllowNonMarketApps(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 13

    const-string v0, "RestrictionPolicy"

    const-string v1, "MiscPolicy.setAllowNonMarketApps"

    .line 1918
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1921
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAllowNonMarketApps : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowNonMarketApp"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    and-int/lit8 v0, v0, 0x1

    .line 1927
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1931
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v2, "allowNonMarketApp"

    const-wide/high16 v3, 0x1000000000000L

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1927
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 1933
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateNonMarketAppOnUserManager()V

    .line 1934
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 1937
    :try_start_4d
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v7, "RestrictionPolicy"

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " has "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_6c

    const-string p2, "allowed"

    goto :goto_6e

    :cond_6c
    const-string p2, "disallowed"

    .line 1938
    :goto_6e
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " installation of non-Google-Play application."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1939
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 1936
    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_83
    .catchall {:try_start_4d .. :try_end_83} :catchall_87

    .line 1941
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_87
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1942
    throw p0
.end method

.method public setAllowedFOTAVersion(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Landroid/os/Bundle;Z)Z
    .registers 14

    .line 5683
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x3

    const/4 v1, 0x0

    const-string v2, "RestrictionPolicy"

    if-eqz p3, :cond_67

    const-string/jumbo v3, "update_fota_corpid"

    .line 5687
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_60

    .line 5689
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1a

    goto :goto_60

    .line 5693
    :cond_1a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setAllowedFOTAVersion : corpID =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_5e

    .line 5697
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setAllowedFOTAVersion : version =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "/"

    .line 5699
    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v6, v5, 0x1

    .line 5700
    invoke-virtual {p2, v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    const/4 v6, -0x1

    if-eq v5, v6, :cond_57

    if-ne v4, v6, :cond_5e

    :cond_57
    const-string/jumbo v4, "setAllowedFOTAVersion : ERROR_UPDATE_FOTA_INVALID_PARAMETER(version) "

    .line 5704
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    :cond_5e
    move v4, v1

    goto :goto_6f

    :cond_60
    :goto_60
    const-string/jumbo v4, "setAllowedFOTAVersion : ERROR_UPDATE_FOTA_INVALID_PARAMETER(corpID = null) "

    .line 5691
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    :cond_67
    const-string/jumbo v3, "setAllowedFOTAVersion : ERROR_UPDATE_FOTA_INVALID_PARAMETER(bundle = null) "

    .line 5713
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_6e
    move v4, v0

    .line 5717
    :goto_6f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setAllowedFOTAVersion : caller =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5719
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v5, v3, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getStatusSelectiveFota(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_a5

    if-eqz p2, :cond_97

    .line 5726
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_a5

    :cond_97
    if-eqz v3, :cond_9f

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_a5

    :cond_9f
    if-eqz p4, :cond_a4

    .line 5728
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->sendSeletiveFotaResult(I)V

    :cond_a4
    return v6

    :cond_a5
    const/4 v7, 0x4

    const/4 v8, 0x2

    if-eq v5, v8, :cond_b0

    if-ne v5, v0, :cond_ac

    goto :goto_b0

    :cond_ac
    if-ne v5, v7, :cond_c1

    move v4, v8

    goto :goto_c1

    :cond_b0
    :goto_b0
    if-eqz p2, :cond_b8

    .line 5731
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c1

    :cond_b8
    if-eqz v3, :cond_c0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c1

    :cond_c0
    move v4, v1

    :cond_c1
    :goto_c1
    if-nez v4, :cond_147

    if-eqz p2, :cond_cb

    .line 5741
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d2

    :cond_cb
    if-nez p3, :cond_d2

    .line 5742
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->clearSelectiveFota()Z

    move-result p1

    goto :goto_118

    .line 5745
    :cond_d2
    new-instance p3, Landroid/content/ContentValues;

    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    .line 5746
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "adminUid"

    invoke-virtual {p3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "version"

    .line 5747
    invoke-virtual {p3, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "corpid"

    .line 5748
    invoke-virtual {p3, p2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5750
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 5751
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5753
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "SelectiveFotaTable"

    invoke-virtual {p1, v0, p3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result p1

    .line 5754
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setAllowedFOTAVersion : result = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_118
    if-eqz p1, :cond_148

    .line 5760
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    const-string/jumbo p3, "setAllowedFOTAVersion : sendBroadcast : sec.fota.intent.MDM_REGISTER"

    .line 5761
    invoke-static {v2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p3, "com.wssyncmldm"

    const-string p4, "com.samsung.utagent"

    .line 5762
    filled-new-array {p3, p4}, [Ljava/lang/String;

    move-result-object p3

    :goto_12c
    if-ge v1, v8, :cond_143

    .line 5765
    new-instance p4, Landroid/content/Intent;

    const-string/jumbo v0, "sec.fota.intent.MDM_REGISTER"

    invoke-direct {p4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5766
    aget-object v0, p3, v1

    invoke-virtual {p4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5767
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_12c

    .line 5769
    :cond_143
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    :cond_147
    move v7, v4

    :cond_148
    if-eqz p4, :cond_14d

    .line 5778
    invoke-virtual {p0, v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->sendSeletiveFotaResult(I)V

    :cond_14d
    return v6
.end method

.method public setBackgroundData(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 15

    .line 2093
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2094
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2096
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string v5, "backgroundDataEnabled"

    invoke-virtual {v2, v3, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "RestrictionPolicy"

    if-eqz v2, :cond_75

    .line 2100
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/high16 v6, 0x4000000000000L

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2104
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const-string v5, "backgroundDataEnabled"

    .line 2100
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    if-eqz p2, :cond_72

    .line 2105
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isDataSavingAllowed()Z

    move-result p1

    if-eqz p1, :cond_72

    :try_start_35
    const-string/jumbo p0, "netpolicy"

    .line 2109
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 2108
    invoke-static {p0}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object p0

    if-eqz p0, :cond_52

    .line 2115
    invoke-interface {p0}, Landroid/net/INetworkPolicyManager;->getRestrictBackground()Z

    move-result p1

    const/4 v4, 0x1

    if-ne p1, v4, :cond_75

    .line 2116
    invoke-interface {p0, v4}, Landroid/net/INetworkPolicyManager;->setRestrictBackground(Z)V

    const-string p0, "Applied Background Data Removal Policy"

    .line 2117
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75

    .line 2112
    :cond_52
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "networkPolicyService is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_5b} :catch_5b

    :catch_5b
    move-exception p0

    .line 2120
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBackgroundData EX: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75

    .line 2123
    :cond_72
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->applyBackgroundDataRestriction()V

    .line 2127
    :cond_75
    :goto_75
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setBackgroundData : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2128
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2
.end method

.method public setBackup(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 16

    .line 1538
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1540
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const-string/jumbo v2, "setBackup : "

    const/4 v3, 0x0

    const-string v4, "RestrictionPolicy"

    if-nez p2, :cond_48

    :try_start_10
    const-string v5, "backup"

    .line 1545
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 1544
    invoke-static {v5}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v5

    if-nez v5, :cond_37

    const-string v5, "Failed to get BackupManager"

    .line 1547
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_21} :catch_43
    .catchall {:try_start_10 .. :try_end_21} :catchall_41

    .line 1570
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    .line 1550
    :cond_37
    :try_start_37
    invoke-interface {v5}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v6

    if-eqz v6, :cond_48

    .line 1551
    invoke-interface {v5, v3}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_40} :catch_43
    .catchall {:try_start_37 .. :try_end_40} :catchall_41

    goto :goto_48

    :catchall_41
    move-exception p0

    goto :goto_71

    :catch_43
    move-exception v5

    .line 1556
    :try_start_44
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_49

    :cond_48
    :goto_48
    const/4 v3, 0x1

    :goto_49
    if-eqz v3, :cond_87

    .line 1560
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v7, "RESTRICTION"

    const-string v8, "backupEnabled"

    invoke-virtual {v5, v6, v7, v8, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    and-int/2addr v3, v5

    .line 1563
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-string v6, "backupEnabled"

    const-wide v7, 0x100000000000L

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1567
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 1563
    invoke-virtual/range {v5 .. v12}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V
    :try_end_70
    .catchall {:try_start_44 .. :try_end_70} :catchall_41

    goto :goto_87

    .line 1570
    :goto_71
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1572
    throw p0

    .line 1570
    :cond_87
    :goto_87
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3
.end method

.method public setBluetoothTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p2

    const-string/jumbo v2, "setBluetoothTethering : "

    const-string v3, "RestrictionPolicy"

    .line 1204
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndTetheringPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    .line 1215
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    const/4 v7, 0x0

    .line 1217
    :try_start_12
    iget-object v8, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v9, v4, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v10, "RESTRICTION"

    const-string v11, "bluetoothTetheringEnabled"

    invoke-virtual {v8, v9, v10, v11, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v8
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1e} :catch_96

    .line 1220
    :try_start_1e
    iget-object v9, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-string v10, "bluetoothTetheringEnabled"

    const-wide v11, 0x8000000000L

    const/4 v13, 0x1

    const/4 v14, 0x0

    iget v15, v4, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1224
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .line 1220
    invoke-virtual/range {v9 .. v16}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 1226
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_b1

    const/4 v10, 0x5

    const/4 v11, 0x1

    const/4 v12, 0x1

    .line 1229
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    const-string v14, "RestrictionPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Admin "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v4, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " has "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_6c

    const-string v15, "enabled"

    goto :goto_6e

    :cond_6c
    const-string v15, "disabled"

    .line 1230
    :goto_6e
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " bluetooth tethering."

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    iget v4, v4, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1231
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v16

    .line 1228
    invoke-static/range {v10 .. v16}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    if-nez v1, :cond_b1

    .line 1232
    iget-object v4, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v4

    if-eqz v4, :cond_b1

    .line 1233
    iget-object v0, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, v7}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_92} :catch_93

    goto :goto_b1

    :catch_93
    move-exception v0

    move v7, v8

    goto :goto_97

    :catch_96
    move-exception v0

    .line 1237
    :goto_97
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setBluetoothTethering Ex:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v7

    .line 1239
    :cond_b1
    :goto_b1
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8
.end method

.method public setCCMode(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 22

    move-object/from16 v1, p0

    move/from16 v2, p2

    .line 4858
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndAdvancedRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v3

    .line 4859
    invoke-static {v3}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v10

    const/4 v4, 0x0

    .line 4860
    invoke-virtual {v1, v3, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCCModeEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 4861
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setCCMode() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " and current MDM state:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "RestrictionPolicy"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4862
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUCMKeyguardEnabled()Z

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_3d

    const-string v0, "UCM Keyguard is enabled, so cannot set CC mode"

    .line 4863
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_3d
    const/4 v6, -0x1

    .line 4867
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 4869
    iget-object v0, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->getInstance(Landroid/content/Context;)Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 4872
    :try_start_4a
    invoke-virtual {v0, v2}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->enableCCMode(Z)I

    move-result v6

    goto :goto_5a

    :catchall_4f
    move-exception v0

    goto/16 :goto_125

    :catch_52
    move-exception v0

    goto :goto_5e

    :cond_54
    const-string/jumbo v0, "setCCMode() : securtyManagerService is not available."

    .line 4874
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_5a} :catch_52
    .catchall {:try_start_4a .. :try_end_5a} :catchall_4f

    .line 4879
    :goto_5a
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_65

    :goto_5e
    :try_start_5e
    const-string/jumbo v9, "setCCMode(): failed to set CCMode with exception"

    .line 4877
    invoke-static {v5, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_64
    .catchall {:try_start_5e .. :try_end_64} :catchall_4f

    goto :goto_5a

    .line 4882
    :goto_65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setCCMode() result : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v6, :cond_c5

    .line 4884
    iget-object v0, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v7, "RESTRICTION"

    const-string/jumbo v8, "setCCMode"

    invoke-virtual {v0, v6, v7, v8, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 4888
    iget-object v11, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/32 v13, 0x40000000

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget v6, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 4892
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    const-string/jumbo v12, "setCCMode"

    .line 4888
    invoke-virtual/range {v11 .. v18}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    if-nez v0, :cond_db

    .line 4895
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setCCMode() : failed to update enterprise db. enable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", state="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCCModeEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_db

    .line 4898
    :cond_c5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setCCMode() : failed. securtyManagerService has failed to enforce CCMode. result = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 4905
    :cond_db
    :goto_db
    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getCCModeState(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_e5

    const/4 v4, 0x4

    if-ne v1, v4, :cond_11f

    .line 4907
    :cond_e5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 4910
    :try_start_ec
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Admin "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " has requested to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_10b

    const-string v2, "enable "

    goto :goto_10d

    :cond_10b
    const-string v2, "disable "

    .line 4911
    :goto_10d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "CCMode."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 4909
    invoke-static/range {v4 .. v10}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_11c
    .catchall {:try_start_ec .. :try_end_11c} :catchall_120

    .line 4913
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_11f
    return v0

    :catchall_120
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4914
    throw v0

    .line 4879
    :goto_125
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4880
    throw v0
.end method

.method public setCCModeOnlyForCallerSystem(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    .line 4925
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4926
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const-string v5, "RestrictionPolicy"

    const/16 v6, 0x3e8

    if-ne v0, v6, :cond_13a

    .line 4927
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    if-ne v4, v6, :cond_13a

    .line 4934
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v13

    const/4 v4, 0x0

    .line 4935
    invoke-virtual {v1, v2, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCCModeEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 4936
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setCCMode() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " and current MDM state:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4937
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUCMKeyguardEnabled()Z

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_4d

    const-string v0, "UCM Keyguard is enabled, so cannot set CC mode"

    .line 4938
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_4d
    const/4 v6, -0x1

    .line 4942
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 4944
    iget-object v0, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->getInstance(Landroid/content/Context;)Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 4947
    :try_start_5a
    invoke-virtual {v0, v3}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->enableCCMode(Z)I

    move-result v6

    goto :goto_6a

    :catchall_5f
    move-exception v0

    goto/16 :goto_136

    :catch_62
    move-exception v0

    goto :goto_6e

    :cond_64
    const-string/jumbo v0, "setCCMode() : MdfPolicy is not available."

    .line 4949
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_6a} :catch_62
    .catchall {:try_start_5a .. :try_end_6a} :catchall_5f

    .line 4954
    :goto_6a
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_75

    :goto_6e
    :try_start_6e
    const-string/jumbo v9, "setCCMode(): failed to set CCMode with exception"

    .line 4952
    invoke-static {v5, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_74
    .catchall {:try_start_6e .. :try_end_74} :catchall_5f

    goto :goto_6a

    .line 4957
    :goto_75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setCCMode() result : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v6, :cond_d7

    .line 4959
    iget-object v0, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v7, "RESTRICTION"

    const-string/jumbo v8, "setCCMode"

    invoke-virtual {v0, v6, v7, v8, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 4963
    iget-object v14, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/32 v16, 0x40000000

    const/16 v18, 0x0

    const/16 v19, 0x0

    iget v6, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 4967
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    const-string/jumbo v15, "setCCMode"

    .line 4963
    invoke-virtual/range {v14 .. v21}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    if-nez v0, :cond_d5

    .line 4970
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setCCMode() : failed to update enterprise db. enable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", state="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCCModeEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d5
    move v4, v0

    goto :goto_ec

    .line 4973
    :cond_d7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setCCMode() : failed. MdfPolicy has failed to enforce CCMode. result = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4980
    :goto_ec
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getCCModeState(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f6

    const/4 v1, 0x4

    if-ne v0, v1, :cond_130

    .line 4982
    :cond_f6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    const/4 v7, 0x5

    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 4985
    :try_start_fd
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    const-string v11, "RestrictionPolicy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Admin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " has requested to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_11c

    const-string v1, "enable "

    goto :goto_11e

    :cond_11c
    const-string v1, "disable "

    .line 4986
    :goto_11e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "CCMode."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 4984
    invoke-static/range {v7 .. v13}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_12d
    .catchall {:try_start_fd .. :try_end_12d} :catchall_131

    .line 4988
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_130
    return v4

    :catchall_131
    move-exception v0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4989
    throw v0

    .line 4954
    :goto_136
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4955
    throw v0

    .line 4928
    :cond_13a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCCModeOnlyForCallerSystem() caller uid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " caller pid : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Process.mypid() : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4930
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4928
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4931
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is not a system process.."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCamera(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p2

    const-string v2, "com.sec.android.app.camera"

    const-string v3, "RestrictionPolicy"

    .line 695
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceHwPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    .line 696
    invoke-static {v4}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v13

    .line 697
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    const/4 v12, 0x0

    .line 699
    :try_start_15
    iget-object v5, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_17} :catch_ff
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_17} :catch_f0
    .catchall {:try_start_15 .. :try_end_17} :catchall_ee

    :try_start_17
    iget v6, v4, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v7, "RESTRICTION"

    const-string v8, "cameraEnabled"

    invoke-virtual {v5, v6, v7, v8, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v16

    .line 702
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setCamera : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget-object v5, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-string v6, "cameraEnabled"

    const-wide v7, 0x1000000000L

    const/4 v9, 0x1

    move v10, v13

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->updateCameraDisabledAdmin(Ljava/lang/String;JZI)V

    .line 709
    iget-object v5, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-string v6, "cameraEnabled"

    const-wide v7, 0x1000000000L

    const/4 v9, 0x1

    iget v10, v4, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 713
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_58} :catch_e7
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_58} :catch_f0
    .catchall {:try_start_17 .. :try_end_58} :catchall_ee

    move v10, v13

    move-object/from16 v18, v3

    move v3, v12

    move-object/from16 v12, v17

    .line 709
    :try_start_5e
    invoke-virtual/range {v5 .. v12}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    if-eqz v16, :cond_8e

    if-nez v1, :cond_8e

    .line 716
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5, v2, v13}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 717
    invoke-static {v4}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainers(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_8e

    .line 719
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_76
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 720
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-interface {v7, v2, v6}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    goto :goto_76

    :cond_8e
    if-eqz v16, :cond_e1

    .line 727
    invoke-virtual {v0, v4, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCameraEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    invoke-virtual {v0, v3, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setCameraAllowedSystemUI(IZ)V

    const/4 v5, 0x5

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 729
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    const-string v9, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Admin "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " has "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_b9

    const-string v1, "allowed"

    goto :goto_bb

    :cond_b9
    const-string v1, "disallowed"

    .line 730
    :goto_bb
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " camera."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move v11, v13

    .line 728
    invoke-static/range {v5 .. v11}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 731
    iget-object v1, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v2, "content://com.sec.knox.provider/RestrictionPolicy1/isCameraEnabled"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 733
    iget-object v0, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy/isCameraEnabled"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_e1
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_e1} :catch_e5
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_e1} :catch_f3
    .catchall {:try_start_5e .. :try_end_e1} :catchall_ee

    .line 743
    :cond_e1
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v16

    :catch_e5
    move-exception v0

    goto :goto_eb

    :catch_e7
    move-exception v0

    move-object/from16 v18, v3

    move v3, v12

    :goto_eb
    move-object/from16 v1, v18

    goto :goto_102

    :catchall_ee
    move-exception v0

    goto :goto_11c

    :catch_f0
    move-object/from16 v18, v3

    move v3, v12

    :catch_f3
    :try_start_f3
    const-string/jumbo v0, "is EDMStorageProvider running?"

    move-object/from16 v1, v18

    .line 741
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fb
    .catchall {:try_start_f3 .. :try_end_fb} :catchall_ee

    .line 743
    :goto_fb
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_11b

    :catch_ff
    move-exception v0

    move-object v1, v3

    move v3, v12

    .line 739
    :goto_102
    :try_start_102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail getting ActivityManager "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11a
    .catchall {:try_start_102 .. :try_end_11a} :catchall_ee

    goto :goto_fb

    :goto_11b
    return v3

    .line 743
    :goto_11c
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 744
    throw v0
.end method

.method public final setCameraAllowedSystemUI(IZ)V
    .registers 5

    .line 6058
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6060
    :try_start_4
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object p0

    .line 6061
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setCameraAllowedAsUser(IZ)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_13
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    .line 6065
    :goto_d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1d

    :catchall_11
    move-exception p0

    goto :goto_1e

    :catch_13
    move-exception p0

    :try_start_14
    const-string p1, "RestrictionPolicy"

    const-string/jumbo p2, "setCameraAllowedSystemUI() failed. "

    .line 6063
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_11

    goto :goto_d

    :goto_1d
    return-void

    .line 6065
    :goto_1e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6066
    throw p0
.end method

.method public setCellularData(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 24

    move-object/from16 v1, p0

    move/from16 v2, p2

    const-string v3, "cellularDataEnabled"

    const-string v4, "RESTRICTION"

    .line 1599
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v5

    .line 1609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setCellularData() : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "RestrictionPolicy"

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    const/4 v0, 0x1

    .line 1616
    :try_start_28
    iget-object v10, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v11, v5, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v10, v11, v4, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v10
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_30} :catch_31

    goto :goto_49

    .line 1617
    :catch_31
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setCellularData() : fail to get admin policy value = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v5, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v0

    .line 1619
    :goto_49
    iget-object v11, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v12, v5, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v11, v12, v4, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    and-int/2addr v11, v0

    const/4 v12, 0x0

    if-nez v2, :cond_80

    .line 1623
    :try_start_55
    iget-object v11, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v13, "phone"

    .line 1624
    invoke-virtual {v11, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    if-eqz v11, :cond_73

    .line 1626
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v13

    if-eqz v13, :cond_6c

    .line 1627
    invoke-virtual {v11, v12}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    goto :goto_81

    :cond_6c
    const-string/jumbo v11, "setCellularData() : mobile data has already disabled"

    .line 1630
    invoke-static {v7, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_81

    :cond_73
    const-string/jumbo v0, "setCellularData() : Failed to get Telephony Manager"

    .line 1635
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_79} :catch_7a

    goto :goto_7e

    :catch_7a
    move-exception v0

    .line 1641
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7e
    move v0, v12

    goto :goto_81

    :cond_80
    move v0, v11

    :goto_81
    if-nez v0, :cond_8d

    .line 1645
    iget-object v11, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v13, v5, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v11, v13, v4, v3, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    and-int/2addr v0, v3

    goto :goto_a7

    .line 1649
    :cond_8d
    iget-object v13, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide v15, 0x400000000000L

    const/16 v17, 0x1

    const/16 v18, 0x0

    iget v3, v5, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1653
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    const-string v14, "cellularDataEnabled"

    .line 1649
    invoke-virtual/range {v13 .. v20}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    :goto_a7
    if-eqz v0, :cond_ea

    const/4 v3, 0x0

    .line 1656
    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCellularDataAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    invoke-virtual {v1, v12, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setCellularDataAllowedSystemUI(IZ)V

    const/4 v13, 0x5

    const/4 v14, 0x1

    const/4 v15, 0x1

    .line 1658
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Admin "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v5, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " has "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_d1

    const-string v3, "enabled"

    goto :goto_d3

    :cond_d1
    const-string v3, "disabled"

    .line 1659
    :goto_d3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cellular data."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    iget v1, v5, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1660
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v19

    const-string v17, "RestrictionPolicy"

    .line 1657
    invoke-static/range {v13 .. v19}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1662
    :cond_ea
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0
.end method

.method public final setCellularDataAllowedSystemUI(IZ)V
    .registers 5

    .line 6034
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6036
    :try_start_4
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object p0

    .line 6037
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setCellularDataAllowedAsUser(IZ)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_13
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    .line 6041
    :goto_d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1d

    :catchall_11
    move-exception p0

    goto :goto_1e

    :catch_13
    move-exception p0

    :try_start_14
    const-string p1, "RestrictionPolicy"

    const-string/jumbo p2, "setCellularDataAllowedSystemUI() failed. "

    .line 6039
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_11

    goto :goto_d

    :goto_1d
    return-void

    .line 6041
    :goto_1e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6042
    throw p0
.end method

.method public setClipboardEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 12

    .line 1876
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1877
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "clipboardEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 1880
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1884
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v2, "clipboardEnabled"

    const-wide/16 v3, 0x200

    const/4 v5, 0x1

    .line 1880
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 1885
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string p1, "content://com.sec.knox.provider/RestrictionPolicy1/isClipboardAllowed"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1887
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setClipboardEnabled : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", ret = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RestrictionPolicy"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final setFaceRecognitionEvenCameraBlockedAllowedSystemUI(IZ)V
    .registers 5

    .line 6070
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6072
    :try_start_4
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object p0

    .line 6073
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setFaceRecognitionEvenCameraBlockedAllowedAsUser(IZ)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_13
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    .line 6077
    :goto_d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1d

    :catchall_11
    move-exception p0

    goto :goto_1e

    :catch_13
    move-exception p0

    :try_start_14
    const-string p1, "RestrictionPolicy"

    const-string/jumbo p2, "setFaceRecognitionEvenCameraBlockedAllowedSystemUI() failed. "

    .line 6075
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_11

    goto :goto_d

    :goto_1d
    return-void

    .line 6077
    :goto_1e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6078
    throw p0
.end method

.method public setHeadphoneState(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 13

    const-string v0, "RestrictionPolicy"

    .line 4716
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v1, 0x0

    .line 4719
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isHeadphoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    .line 4723
    :try_start_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setHeadphoneState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " old state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " WiredHeadsetOn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_36} :catch_8d

    const/16 v3, 0x8

    const/4 v4, 0x4

    const-string v5, ""

    const-string/jumbo v6, "h2w"

    if-eqz p2, :cond_56

    .line 4726
    :try_start_40
    iget-object v7, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v7

    if-eqz v7, :cond_68

    if-nez v2, :cond_68

    const/4 v2, 0x1

    .line 4728
    iget-object v7, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7, v4, v2, v5, v6}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    .line 4729
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v3, v2, v5, v6}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_68

    .line 4733
    :cond_56
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    if-eqz v2, :cond_68

    .line 4735
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v4, v1, v5, v6}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    .line 4736
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v3, v1, v5, v6}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    .line 4741
    :cond_68
    :goto_68
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string/jumbo v5, "setHeadphoneState"

    invoke-virtual {v2, v3, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 4744
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-string/jumbo v3, "setHeadphoneState"

    const-wide/32 v4, 0x10000000

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 4748
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 4744
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_8c} :catch_8d

    goto :goto_92

    :catch_8d
    const-string p0, "RestrictionPolicy.setHeadphoneState() exception : "

    .line 4750
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_92
    return v1
.end method

.method public setHomeKeyState(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 13

    .line 2304
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2305
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    const-string p0, "RestrictionPolicy"

    const-string/jumbo p1, "setHomeKeyState() : Failed. Caller is not owner"

    .line 2308
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2312
    :cond_14
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v3, "RESTRICTION"

    const-string/jumbo v4, "homeKeyEnabled"

    invoke-virtual {v0, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 2315
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/high16 v4, 0x10000000000000L

    const/4 v6, 0x1

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2319
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string/jumbo v3, "homeKeyEnabled"

    .line 2315
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 2321
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isHomeKeyEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p1

    if-ne p2, p1, :cond_45

    .line 2322
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setHomeKeyVisibilityOnNavi(Z)V

    .line 2324
    :cond_45
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateKeyCodeHomeState()V

    return v0
.end method

.method public final setHomeKeyVisibilityOnNavi(Z)V
    .registers 6

    const-string v0, "RestrictionPolicy"

    .line 2334
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2336
    :try_start_6
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v3, :cond_10

    .line 2337
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 2340
    :cond_10
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v3, :cond_2b

    if-nez p1, :cond_1e

    const/high16 p1, 0x200000

    .line 2342
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mToken:Landroid/os/IBinder;

    invoke-interface {v3, p1, p0, v0}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    goto :goto_2b

    :cond_1e
    const/4 p1, 0x0

    .line 2344
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mToken:Landroid/os/IBinder;

    invoke-interface {v3, p1, p0, v0}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_24} :catch_25

    goto :goto_2b

    :catch_25
    const-string/jumbo p0, "setHomeAndRecentKey was failed"

    .line 2348
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2350
    :cond_2b
    :goto_2b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public setIrisCameraState(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 12

    .line 830
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceHwPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 832
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    .line 834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIrisCameraState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RestrictionPolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "iriscameraEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    .line 839
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 843
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string/jumbo v1, "iriscameraEnabled"

    const-wide/high16 v2, 0x400000000000000L

    const/4 v4, 0x1

    .line 839
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    return v8
.end method

.method public setKnoxDelegationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 13

    const-string v0, "RestrictionPolicy"

    .line 6584
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v6

    if-nez v6, :cond_52

    .line 6586
    :try_start_8
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 6587
    invoke-static {v1}, Lcom/android/server/enterprise/utils/KpuHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/utils/KpuHelper;->isCallerValidKpu(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 6588
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v3, "RESTRICTION"

    const-string/jumbo v4, "knox_delegation"

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    .line 6591
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setKnoxDelegationEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6593
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-string/jumbo v2, "knox_delegation"

    const-wide/high16 v3, -0x8000000000000000L

    const/4 v5, 0x0

    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 6597
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 6593
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_4b} :catch_4c

    return v9

    :catch_4c
    const-string/jumbo p0, "is EDMStorageProvider running?"

    .line 6602
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    const/4 p0, 0x0

    return p0
.end method

.method public setLockScreenState(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 15

    .line 4240
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 4241
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4244
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 p0, 0x0

    return p0

    .line 4248
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setLockScreenState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RestrictionPolicy"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4250
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v3, "RESTRICTION"

    const-string/jumbo v4, "lockScreenEnabled"

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    .line 4253
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/32 v3, 0x800000

    const/4 v5, 0x1

    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 4257
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string/jumbo v2, "lockScreenEnabled"

    move v6, v0

    .line 4253
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    if-eqz v9, :cond_8e

    .line 4260
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    const/4 v1, 0x5

    const/4 v2, 0x1

    .line 4263
    :try_start_58
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-string v5, "RestrictionPolicy"

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Admin "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has changed lock screen state to "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_77

    const-string p1, "enabled"

    goto :goto_79

    :cond_77
    const-string p1, "disabled"

    .line 4265
    :goto_79
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move v3, p2

    move v7, v0

    .line 4262
    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_85
    .catchall {:try_start_58 .. :try_end_85} :catchall_89

    .line 4267
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_8e

    :catchall_89
    move-exception p0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4268
    throw p0

    :cond_8e
    :goto_8e
    return v9
.end method

.method public final setLockScreenViewProperty(IZ)Z
    .registers 6

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_42

    .line 4081
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "kg_multiple_lockscreen"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p1

    .line 4084
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "kg_enable_camera_widget"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    and-int v2, p1, v0

    if-nez p2, :cond_70

    .line 4088
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    .line 4090
    :try_start_28
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.KNOX_FACE_WIDGET_OFF_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.settings"

    .line 4091
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4092
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_39
    .catchall {:try_start_28 .. :try_end_39} :catchall_3d

    .line 4094
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_70

    :catchall_3d
    move-exception p0

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4095
    throw p0

    :cond_42
    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_70

    .line 4098
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "lock_screen_shortcut"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p1

    .line 4101
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "set_shortcuts_mode"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    and-int/2addr p1, v0

    if-nez p2, :cond_6f

    .line 4104
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p2, "lockscreen_show_shortcut"

    invoke-static {p0, p2, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_6f
    move v2, p1

    :cond_70
    :goto_70
    return v2
.end method

.method public setMediator(Lcom/android/server/enterprise/common/KeyCodeMediator;)V
    .registers 3

    .line 2987
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mKeyCodeMediator:Lcom/android/server/enterprise/common/KeyCodeMediator;

    if-nez v0, :cond_9

    .line 2988
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mKeyCodeMediator:Lcom/android/server/enterprise/common/KeyCodeMediator;

    .line 2989
    invoke-interface {p1, p0}, Lcom/android/server/enterprise/common/KeyCodeMediator;->registerCallback(Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;)V

    :cond_9
    return-void
.end method

.method public setMicrophoneState(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 20

    move-object/from16 v1, p0

    move/from16 v2, p2

    .line 873
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceHwPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v3

    .line 874
    invoke-static {v3}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v11

    const/4 v12, 0x0

    .line 875
    invoke-virtual {v1, v3, v12}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    const-string v13, "RestrictionPolicy"

    if-eqz v0, :cond_f9

    if-nez v2, :cond_f9

    .line 877
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 880
    iget-object v0, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v6, "wake_up_lock_screen"

    invoke-static {v0, v6, v12, v11}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 884
    iget-object v0, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v6, "voice_input_control"

    invoke-static {v0, v6, v12, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 890
    :try_start_33
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    move-result-object v0

    invoke-interface {v0, v11}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v0
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3b} :catch_ec

    const-string v6, "com.sec.android.app.voicenote.Controller"

    const-string v7, "com.sec.android.app.voicenote.rec_save"

    const-string v8, "com.sec.android.app.voicerecorder.rec_save"

    const-string v9, "com.samsung.media.save_fmrecording_only"

    if-eqz v0, :cond_74

    .line 891
    :try_start_45
    iget-object v0, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v9, Landroid/os/UserHandle;

    invoke-direct {v9, v11}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v10, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 892
    iget-object v0, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v11}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v9, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 893
    iget-object v0, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v11}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v8, v7, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_f6

    .line 896
    :cond_74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 897
    iget-object v0, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->getAllUsers(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 898
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_83
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    const-string v14, "TAG"

    .line 899
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IF = FALSE(isValidKnoxId) i:"

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " enable:"

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v14, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    iget-object v12, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v15, Landroid/os/UserHandle;

    move-object/from16 v16, v0

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v15, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v12, v14, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 901
    iget-object v0, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v14, Landroid/os/UserHandle;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-direct {v14, v15}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v12, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 902
    iget-object v0, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v14, Landroid/os/UserHandle;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {v14, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v12, v14, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_e8} :catch_ec

    move-object/from16 v0, v16

    const/4 v12, 0x0

    goto :goto_83

    :catch_ec
    move-exception v0

    const-string/jumbo v6, "setMicrophoneState Broadcast error "

    .line 906
    invoke-static {v13, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 910
    :cond_f6
    :goto_f6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 913
    :cond_f9
    iget-object v0, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v4, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v5, "RESTRICTION"

    const-string/jumbo v6, "microphoneEnabled"

    invoke-virtual {v0, v4, v5, v6, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_164

    const/4 v4, 0x0

    .line 917
    invoke-virtual {v1, v3, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v5

    .line 918
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/data/system/enterprise.conf"

    .line 918
    invoke-static {v6, v4, v5}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 921
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 924
    :try_start_12a
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "RestrictionPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Admin "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " has "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_149

    const-string v10, "allowed"

    goto :goto_14b

    :cond_149
    const-string v10, "disallowed"

    .line 925
    :goto_14b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " microphone."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move v10, v11

    .line 923
    invoke-static/range {v4 .. v10}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_15b
    .catchall {:try_start_12a .. :try_end_15b} :catchall_15f

    .line 927
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_164

    :catchall_15f
    move-exception v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 928
    throw v0

    .line 931
    :cond_164
    :goto_164
    iget-object v4, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/16 v6, 0x4

    const/4 v8, 0x1

    iget v5, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 935
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const-string/jumbo v5, "microphoneEnabled"

    move v9, v11

    move-object v11, v12

    .line 931
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    if-eqz v0, :cond_193

    const/4 v4, 0x0

    .line 937
    invoke-virtual {v1, v3, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v3

    if-nez v3, :cond_18c

    .line 940
    iget-object v1, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "g_knox_microphone_allowed=false"

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_193

    .line 943
    :cond_18c
    iget-object v1, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "g_knox_microphone_allowed=true"

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 946
    :cond_193
    :goto_193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMicrophoneState : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setMockLocation(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 15

    .line 1477
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndLocationPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1479
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 1480
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    const-string v0, "RestrictionPolicy"

    const/4 v1, 0x1

    if-nez p2, :cond_5e

    .line 1483
    :try_start_13
    new-instance v2, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;-><init>(Landroid/content/Context;)V

    .line 1484
    invoke-virtual {v2}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->resetMockLocationApps()Z

    move-result v2

    and-int/2addr v1, v2

    .line 1486
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 1487
    invoke-static {v2}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;

    move-result-object v2

    if-eqz v2, :cond_5e

    .line 1488
    invoke-virtual {v2}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->isSettingPolicyApplied()Z

    move-result v2
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_2b} :catch_58

    if-nez v2, :cond_5e

    .line 1490
    :try_start_2d
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    const-string v3, "com.android.settings"

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_3c} :catch_3d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_3c} :catch_58

    goto :goto_5e

    :catch_3d
    move-exception v2

    .line 1492
    :try_start_3e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "killSettings: RemoteException ex -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_57} :catch_58

    goto :goto_5e

    :catch_58
    move-exception v1

    const/4 v2, 0x0

    .line 1498
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5f

    :cond_5e
    :goto_5e
    move v2, v1

    :goto_5f
    if-eqz v2, :cond_89

    .line 1501
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string/jumbo v5, "mockLocationEnabled"

    invoke-virtual {v1, v3, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    and-int v11, v2, v1

    .line 1504
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide v3, 0x80000000000L

    const/4 v5, 0x1

    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1508
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string/jumbo v2, "mockLocationEnabled"

    .line 1504
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    move v2, v11

    .line 1510
    :cond_89
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setMockLocationState : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2
.end method

.method public setNonTrustedAppInstallBlock(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 12

    .line 3968
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceCertificatePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 3969
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    .line 3971
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "blockNonTrustedApp"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    .line 3974
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 3978
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v1, "blockNonTrustedApp"

    const-wide/32 v2, 0x400000

    const/4 v4, 0x0

    .line 3974
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    return v8
.end method

.method public final setPowerOffUserRestriction(Z)V
    .registers 8

    .line 3131
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3133
    :try_start_4
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mUserManager:Landroid/os/UserManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_c

    move v4, v2

    goto :goto_d

    :cond_c
    move v4, v3

    :goto_d
    invoke-virtual {p0, v4}, Landroid/os/UserManager;->setMaintenanceModeDisallowedSetting(Z)V

    const-string p0, "RestrictionPolicy"

    .line 3134
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMaintenanceModeDisallowedSetting - value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_20

    goto :goto_21

    :cond_20
    move v2, v3

    :goto_21
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_2f

    .line 3136
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3137
    throw p0
.end method

.method public setSafeModeProperty(Z)Z
    .registers 9

    const-string/jumbo v0, "safe_boot_disallowed"

    const-string v1, "RestrictionPolicy"

    .line 4030
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4032
    :try_start_b
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v0, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz p1, :cond_19

    if-nez v6, :cond_1d

    :cond_19
    if-nez p1, :cond_2b

    if-eq v6, v4, :cond_2b

    .line 4034
    :cond_1d
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz p1, :cond_26

    move v4, v5

    :cond_26
    invoke-static {p0, v0, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v4
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2a} :catch_45
    .catchall {:try_start_b .. :try_end_2a} :catchall_43

    goto :goto_4d

    .line 4037
    :cond_2b
    :try_start_2b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setSafeModeProperty() : already applied. = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_40} :catch_41
    .catchall {:try_start_2b .. :try_end_40} :catchall_43

    goto :goto_4d

    :catch_41
    move-exception p0

    goto :goto_47

    :catchall_43
    move-exception p0

    goto :goto_68

    :catch_45
    move-exception p0

    move v4, v5

    :goto_47
    :try_start_47
    const-string/jumbo v0, "setSafeModeProperty() failed."

    .line 4040
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4d
    .catchall {:try_start_47 .. :try_end_4d} :catchall_43

    .line 4042
    :goto_4d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v4, :cond_67

    .line 4045
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setSafeModeProperty() failed, allow = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67
    return v4

    .line 4042
    :goto_68
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4043
    throw p0
.end method

.method public setScreenCapture(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 23

    move-object/from16 v0, p0

    move/from16 v1, p2

    const-string/jumbo v2, "screenCaptureEnabled"

    .line 1268
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v3

    .line 1269
    iget v4, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 1272
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isKnoxId(I)Z

    move-result v5

    const-string v6, " callingUid="

    const-string v7, "RestrictionPolicy"

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_93

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isLegacyClId(I)Z

    move-result v5

    if-eqz v5, :cond_2c

    goto :goto_93

    .line 1304
    :cond_2c
    :try_start_2c
    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result v2

    .line 1305
    iget-object v5, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getComponentNameForUid(I)Landroid/content/ComponentName;

    move-result-object v2

    .line 1306
    iget-object v5, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v10, "device_policy"

    invoke-virtual {v5, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    if-eqz v5, :cond_77

    if-nez v1, :cond_48

    move v10, v8

    goto :goto_49

    :cond_48
    move v10, v9

    .line 1308
    :goto_49
    invoke-virtual {v5, v2, v10}, Landroid/app/admin/DevicePolicyManager;->setScreenCaptureDisabled(Landroid/content/ComponentName;Z)V

    .line 1309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setScreenCapture: enable="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_69} :catch_7a

    .line 1312
    :try_start_69
    invoke-virtual {v0, v4, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(IZ)Z

    move-result v1

    if-nez v1, :cond_70

    move v9, v8

    .line 1311
    :cond_70
    invoke-virtual {v0, v4, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateScreenCaptureDisabledInWindowManager(IZ)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_73} :catch_75

    goto/16 :goto_11c

    :catch_75
    move-exception v0

    goto :goto_7c

    :cond_77
    move v8, v9

    goto/16 :goto_11c

    :catch_7a
    move-exception v0

    move v8, v9

    .line 1315
    :goto_7c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setScreenCapture failed : result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11c

    .line 1274
    :cond_93
    :goto_93
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1276
    :try_start_97
    iget-object v5, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v12, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v13, "RESTRICTION"

    invoke-virtual {v5, v12, v13, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v5
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_a1} :catch_112

    .line 1278
    :try_start_a1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "setScreenCapture : enable="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    iget-object v12, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-string/jumbo v13, "screenCaptureEnabled"

    const-wide v14, 0x10000000000L

    const/16 v16, 0x1

    iget v6, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1284
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v17

    iget v6, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    .line 1280
    invoke-virtual/range {v12 .. v19}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    if-eqz v5, :cond_102

    .line 1286
    iget v1, v3, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    if-nez v1, :cond_102

    .line 1287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1288
    invoke-virtual {v0, v3, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v3

    if-eqz v3, :cond_f5

    move v3, v8

    goto :goto_f6

    :cond_f5
    move v3, v9

    :goto_f6
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/data/system/enterprise.conf"

    .line 1287
    invoke-static {v2, v1, v3}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_102
    if-eqz v5, :cond_10f

    .line 1293
    invoke-virtual {v0, v4, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(IZ)Z

    move-result v1

    if-nez v1, :cond_10b

    goto :goto_10c

    :cond_10b
    move v8, v9

    .line 1292
    :goto_10c
    invoke-virtual {v0, v4, v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateScreenCaptureDisabledInWindowManager(IZ)V
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_10f} :catch_111

    :cond_10f
    move v8, v5

    goto :goto_119

    :catch_111
    move v9, v5

    :catch_112
    const-string/jumbo v0, "setScreenCapture error"

    .line 1296
    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    .line 1299
    :goto_119
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_11c
    return v8
.end method

.method public setSdCardState(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 1791
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndHwPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v2

    .line 1792
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getSDCardState()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_10

    return v4

    .line 1795
    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setSdCardState : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "RestrictionPolicy"

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1801
    :try_start_2b
    iget-object v3, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v8, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v9, "RESTRICTION"

    const-string/jumbo v10, "sdCardEnabled"

    invoke-virtual {v3, v8, v9, v10, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    const/4 v8, 0x1

    and-int/2addr v3, v8

    .line 1804
    iget-object v9, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-string/jumbo v10, "sdCardEnabled"

    const-wide v11, 0x800000000000L

    const/4 v13, 0x1

    const/4 v14, 0x0

    iget v15, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1808
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .line 1804
    invoke-virtual/range {v9 .. v16}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    if-nez v1, :cond_5e

    const-string v9, "SdCard unmount : "

    .line 1815
    invoke-static {v5, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->unmountSdCard(Z)Z

    goto :goto_61

    .line 1819
    :cond_5e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mountSdCard()Z
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_61} :catch_62

    :goto_61
    move v4, v3

    :catch_62
    if-eqz v4, :cond_9d

    const/4 v8, 0x5

    const/4 v9, 0x1

    const/4 v10, 0x1

    .line 1828
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Admin "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " has "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_84

    const-string v1, "enabled"

    goto :goto_86

    :cond_84
    const-string v1, "disabled"

    .line 1829
    :goto_86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " access to external SDCard."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iget v0, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1830
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    const-string v12, "RestrictionPolicy"

    .line 1827
    invoke-static/range {v8 .. v14}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1832
    :cond_9d
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4
.end method

.method public final setSettingsChangeSystemUI(IZ)V
    .registers 5

    .line 5999
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6001
    :try_start_4
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object p0

    .line 6002
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setSettingsChangeAllowedAsUser(IZ)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_13
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    .line 6006
    :goto_d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1d

    :catchall_11
    move-exception p0

    goto :goto_1e

    :catch_13
    move-exception p0

    :try_start_14
    const-string p1, "RestrictionPolicy"

    const-string/jumbo p2, "setSettingsChangeSystemUI() failed. "

    .line 6004
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_11

    goto :goto_d

    :goto_1d
    return-void

    .line 6006
    :goto_1e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6007
    throw p0
.end method

.method public final setStatusBarExpansionSystemUI(IZ)V
    .registers 9

    .line 6010
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 6011
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setStatusBarExpansionSystemUI() package(UID) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RestrictionPolicy"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6012
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 6014
    :try_start_3d
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object p0

    .line 6015
    aget-object v0, v0, v2

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setStatusBarExpansionAllowedAsUser(IZLjava/lang/String;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_48} :catch_4e
    .catchall {:try_start_3d .. :try_end_48} :catchall_4c

    .line 6019
    :goto_48
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_56

    :catchall_4c
    move-exception p0

    goto :goto_57

    :catch_4e
    move-exception p0

    :try_start_4f
    const-string/jumbo p1, "setStatusBarExpansionSystemUI() failed. "

    .line 6017
    invoke-static {v3, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_55
    .catchall {:try_start_4f .. :try_end_55} :catchall_4c

    goto :goto_48

    :goto_56
    return-void

    .line 6019
    :goto_57
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6020
    throw p0
.end method

.method public setTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 6

    .line 1036
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setUsbTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 1037
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setWifiTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v1

    .line 1038
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setBluetoothTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0

    .line 1039
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTethering : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RestrictionPolicy"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2b

    if-eqz v1, :cond_2b

    if-eqz p0, :cond_2b

    const/4 p0, 0x1

    goto :goto_2c

    :cond_2b
    const/4 p0, 0x0

    :goto_2c
    return p0
.end method

.method public setUsbDebuggingEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 14

    const-string v0, "0"

    .line 1404
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1406
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    if-nez p2, :cond_25

    .line 1409
    :try_start_c
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "adb_enabled"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1411
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "adb_wifi_enabled"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_22} :catch_23

    goto :goto_25

    :catch_23
    const/4 v0, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    const/4 v0, 0x1

    :goto_26
    if-eqz v0, :cond_4f

    .line 1419
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v5, "RESTRICTION"

    const-string/jumbo v6, "usbDebuggingEnabled"

    invoke-virtual {v3, v4, v5, v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    and-int/2addr v0, v3

    .line 1422
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide v5, 0x20000000000L

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1426
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const-string/jumbo v4, "usbDebuggingEnabled"

    .line 1422
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    :cond_4f
    if-eqz v0, :cond_8a

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 1430
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Admin "

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " has "

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_71

    const-string v7, "enabled"

    goto :goto_73

    :cond_71
    const-string v7, "disabled"

    .line 1431
    :goto_73
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " USB debugging."

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1432
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    const-string v7, "RestrictionPolicy"

    .line 1429
    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1434
    :cond_8a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setUSBDebugging : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RestrictionPolicy"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0
.end method

.method public setUsbExceptionList(Lcom/samsung/android/knox/ContextInfo;I)Z
    .registers 8

    .line 6202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUsbExceptionList. exception mask : 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RestrictionPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6204
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 6206
    :try_start_1f
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "usb"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 6207
    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->isSupportDexRestrict()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_3b

    const-string/jumbo p0, "isSupportDexRestrict is false"

    .line 6208
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_1f .. :try_end_37} :catchall_79

    .line 6212
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_3b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6215
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 6216
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 6219
    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->OFF:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    invoke-virtual {v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->getValue()I

    move-result v0

    if-le p2, v0, :cond_52

    const-string p0, "Exception mask is over max value. Max : 131071(USBInterface.OFF)"

    .line 6220
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 6225
    :cond_52
    :try_start_52
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateUsbInterfaceExceptionMaskInDb(II)Z

    move-result p1

    .line 6226
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Usb Exception mask input DB : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6228
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getUsbExceptionList()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setUsbExceptionListOnDriver(I)I
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_71} :catch_72

    return p1

    :catch_72
    move-exception p0

    const-string p1, "UsbInterface Exception mask insert fail"

    .line 6231
    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4

    :catchall_79
    move-exception p0

    .line 6212
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6213
    throw p0
.end method

.method public final setUsbExceptionListOnDriver(I)I
    .registers 9

    .line 6253
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6255
    :try_start_4
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "usb"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbManager;
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_a1

    const/4 v3, -0x1

    const-string v4, "RestrictionPolicy"

    if-nez v2, :cond_1d

    :try_start_14
    const-string p0, "UsbManager is null"

    .line 6257
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_a1

    .line 6284
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    .line 6260
    :cond_1d
    :try_start_1d
    invoke-virtual {v2}, Landroid/hardware/usb/UsbManager;->isSupportDexRestrict()Z

    move-result v5

    if-nez v5, :cond_2d

    const-string/jumbo p0, "isSupportDexRestrict is false"

    .line 6261
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_1d .. :try_end_29} :catchall_a1

    .line 6284
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_2d
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 6264
    :try_start_2f
    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbHostStorageAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v5

    if-eqz v5, :cond_97

    const/4 v5, 0x1

    if-eq p1, v3, :cond_72

    .line 6266
    sget-object v3, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->OFF:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    invoke-virtual {v3}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->getValue()I

    move-result v3

    if-ne p1, v3, :cond_41

    goto :goto_72

    .line 6269
    :cond_41
    sget-object v3, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->ABL:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    invoke-virtual {v3}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->getValue()I

    move-result v3

    if-ne p1, v3, :cond_54

    .line 6270
    sget-object p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->ABL:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    .line 6271
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6270
    invoke-virtual {v2, v5, p0}, Landroid/hardware/usb/UsbManager;->restrictUsbHostInterface(ZLjava/lang/String;)I

    move-result p0

    goto :goto_7c

    .line 6273
    :cond_54
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getRestrictionList(I)Ljava/lang/String;

    move-result-object p0

    .line 6274
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set UsbInterface Exception : "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6275
    invoke-virtual {v2, v5, p0}, Landroid/hardware/usb/UsbManager;->restrictUsbHostInterface(ZLjava/lang/String;)I

    move-result p0

    goto :goto_7c

    .line 6267
    :cond_72
    :goto_72
    sget-object p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->OFF:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    .line 6268
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6267
    invoke-virtual {v2, v6, p0}, Landroid/hardware/usb/UsbManager;->restrictUsbHostInterface(ZLjava/lang/String;)I

    move-result p0

    .line 6277
    :goto_7c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Usb Exception mask input USB Driver : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_89

    move v6, v5

    :cond_89
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_93
    .catchall {:try_start_2f .. :try_end_93} :catchall_a1

    .line 6284
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :cond_97
    :try_start_97
    const-string/jumbo p0, "isUsbHostStorageAllowed is false. pass set UsbInterface Exception"

    .line 6280
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catchall {:try_start_97 .. :try_end_9d} :catchall_a1

    .line 6284
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_a1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6285
    throw p0
.end method

.method public setUsbKiesAvailability(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 3

    .line 1961
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    const/4 p0, 0x0

    return p0
.end method

.method public setUsbMassStorage(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 3

    .line 1461
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    const/4 p0, 0x0

    return p0
.end method

.method public setUsbMediaPlayerAvailability(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 14

    .line 1978
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1980
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1981
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string/jumbo v5, "usbMediaPlayerEnabled"

    invoke-virtual {v2, v3, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    and-int/lit8 v2, v2, 0x1

    .line 1984
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1988
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const-string/jumbo v4, "usbMediaPlayerEnabled"

    const-wide/high16 v5, 0x2000000000000L

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1984
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    const-string v3, "RestrictionPolicy"

    if-eqz v2, :cond_6d

    if-nez p2, :cond_6d

    .line 1994
    :try_start_33
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.android.knox.intent.action.MTP_DISABLED_INTERNAL"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x20000000

    .line 1995
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v6, "com.samsung.android.mtp"

    .line 1996
    invoke-virtual {v4, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1997
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1999
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2000
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v5, "mtp"

    const/4 v6, 0x0

    .line 2001
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v5, "ptp"

    .line 2002
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2003
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_67} :catch_68

    goto :goto_6d

    :catch_68
    const-string p0, "Error in RestrictionPolicy after setting MTP policy"

    .line 2006
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    :cond_6d
    :goto_6d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setUSBMediaPlayerAvailability: "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_bd

    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 2013
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Admin "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " has "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_a4

    const-string p2, "enabled"

    goto :goto_a6

    :cond_a4
    const-string p2, "disabled"

    .line 2014
    :goto_a6
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " USB Media Player (MTP)."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2015
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    const-string v8, "RestrictionPolicy"

    .line 2012
    invoke-static/range {v4 .. v10}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 2017
    :cond_bd
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2
.end method

.method public setUsbTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 14

    .line 1062
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndTetheringPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1073
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    if-nez p2, :cond_30

    .line 1076
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "usb"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbManager;

    .line 1077
    invoke-virtual {v2}, Landroid/hardware/usb/UsbManager;->getCurrentFunctions()J

    move-result-wide v2

    const-wide/16 v4, 0x20

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_30

    .line 1079
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-class v3, Landroid/net/TetheringManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/TetheringManager;

    const/4 v3, 0x1

    .line 1080
    invoke-virtual {v2, v3}, Landroid/net/TetheringManager;->stopTethering(I)V

    .line 1083
    :cond_30
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string/jumbo v5, "usbTetheringEnabled"

    invoke-virtual {v2, v3, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 1086
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide v5, 0x2000000000L

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1090
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const-string/jumbo v4, "usbTetheringEnabled"

    .line 1086
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 1092
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setUsbTethering : "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "RestrictionPolicy"

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_a8

    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 1095
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Admin "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " has "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_8f

    const-string p2, "enabled"

    goto :goto_91

    :cond_8f
    const-string p2, "disabled"

    .line 1096
    :goto_91
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " USB Tethering setting."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1097
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    const-string v8, "RestrictionPolicy"

    .line 1094
    invoke-static/range {v4 .. v10}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1099
    :cond_a8
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2
.end method

.method public setUseSecureKeypad(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 12

    .line 3914
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 3916
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUseSecureKeypad : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RestrictionPolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUseSecureKeypad containerID : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3920
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    move-result-object v0

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-interface {v0, v2}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isSamsungWorkspace(I)Z

    move-result v0

    if-nez v0, :cond_46

    const-string/jumbo p0, "setUseSecureKeypad fails. PO not supported."

    .line 3921
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 3925
    :cond_46
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "useSecureKeypad"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 3929
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v6

    .line 3930
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/32 v3, 0x200000

    const/4 v5, 0x0

    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 3934
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string/jumbo v2, "useSecureKeypad"

    .line 3930
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    return v0
.end method

.method public final setWifiDirectUserRestriction(Z)V
    .registers 6

    .line 3286
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3288
    :try_start_4
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v2, "no_wifi_direct"

    invoke-virtual {p0, v2, p1}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;Z)V

    const-string p0, "RestrictionPolicy"

    .line 3289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setWifiDirectUserRestriction - value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_27

    .line 3291
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_27
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3292
    throw p0
.end method

.method public setWifiTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 13

    .line 1128
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndTetheringPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setWifiTethering - caller uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RestrictionPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v3, "RESTRICTION"

    const-string/jumbo v4, "wifiTetheringEnabled"

    invoke-virtual {v0, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string/jumbo p0, "setWifiTethering - fail to store value to database"

    .line 1146
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1150
    :cond_3b
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide v4, 0x4000000000L

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1154
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string/jumbo v3, "wifiTetheringEnabled"

    .line 1150
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 1156
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 1159
    :try_start_5b
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "RestrictionPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " has "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_7a

    const-string p2, "enabled"

    goto :goto_7c

    :cond_7a
    const-string p2, "disabled"

    .line 1160
    :goto_7c
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Wifi Tethering setting."

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1161
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 1158
    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 1162
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWifiTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setWifiTetheringAllowedSystemUI(IZ)V
    :try_end_9a
    .catchall {:try_start_5b .. :try_end_9a} :catchall_a7

    .line 1164
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1167
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWifiTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p1

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setWifiTetheringUserRestriction(Z)V

    return p2

    :catchall_a7
    move-exception p0

    .line 1164
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1165
    throw p0
.end method

.method public final setWifiTetheringAllowedSystemUI(IZ)V
    .registers 5

    .line 6046
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6048
    :try_start_4
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object p0

    .line 6049
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setWifiTetheringAllowedAsUser(IZ)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_13
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    .line 6053
    :goto_d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1d

    :catchall_11
    move-exception p0

    goto :goto_1e

    :catch_13
    move-exception p0

    :try_start_14
    const-string p1, "RestrictionPolicy"

    const-string/jumbo p2, "setWifiTetheringAllowedSystemUI() failed. "

    .line 6051
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_11

    goto :goto_d

    :goto_1d
    return-void

    .line 6053
    :goto_1e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6054
    throw p0
.end method

.method public final setWifiTetheringUserRestriction(Z)V
    .registers 6

    .line 1173
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1175
    :try_start_4
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v2, "no_wifi_tethering"

    invoke-virtual {p0, v2, p1}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;Z)V

    const-string p0, "RestrictionPolicy"

    .line 1176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setWifiTetheringUserRestriction - value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_27

    .line 1178
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_27
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1179
    throw p0
.end method

.method public showRestrictionToast(Ljava/lang/String;)V
    .registers 2

    .line 5147
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(Ljava/lang/String;)V

    return-void
.end method

.method public final syncUsbExceptionList(I)I
    .registers 7

    const-string v0, "RestrictionPolicy"

    const-string/jumbo v1, "syncUsbExceptionList."

    .line 6298
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_13

    const-string/jumbo p0, "syncUsbExceptionList. -1 -> return"

    .line 6300
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 6307
    :cond_13
    :try_start_13
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "sys/class/usb_notify/usb_control/whitelist_for_mdm"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6308
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 6309
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getUsbDriverExceptionList()I

    move-result v1
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_25} :catch_73

    .line 6318
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UsbInterface Exception mask USB Driver = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "None"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "( 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6319
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6318
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v1, :cond_67

    .line 6322
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UsbExceptionList already applied : 0x"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 6326
    :cond_67
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setUsbExceptionListOnDriver(I)I

    move-result p0

    return p0

    :cond_6c
    :try_start_6c
    const-string/jumbo p0, "usbDriverFile.exists : false"

    .line 6311
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_72} :catch_73

    return v2

    :catch_73
    const-string/jumbo p0, "usbDriverFile read fail"

    .line 6315
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public systemReady()V
    .registers 6

    .line 2864
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->load(I)V

    .line 2867
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_31

    .line 2869
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 2870
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_31

    .line 2871
    array-length v1, v0

    const/4 v3, 0x0

    :goto_1f
    if-ge v3, v1, :cond_31

    aget-object v4, v0, v3

    if-eqz v4, :cond_2e

    .line 2872
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 2873
    iput-boolean v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mIsUsbMassStorageAvailable:Z

    goto :goto_31

    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 2881
    :cond_31
    :goto_31
    new-instance v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$LocalService;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy$LocalService;-><init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V

    .line 2882
    const-class p0, Lcom/samsung/android/knox/localservice/RestrictionPolicyInternal;

    invoke-static {p0, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    const-string p0, "RestrictionPolicy"

    const-string/jumbo v0, "systemReady()"

    .line 2884
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public systemReady(I)V
    .registers 4

    .line 6402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "systemReady() : mCurrentPhase = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RestrictionPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x226

    if-eq p1, v0, :cond_1c

    goto :goto_36

    .line 6409
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getUsbExceptionList()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_29

    .line 6410
    sget-object p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->OFF:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    invoke-virtual {p1}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->getValue()I

    move-result p1

    .line 6411
    :cond_29
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getUsbDriverExceptionList()I

    move-result v0

    if-eq p1, v0, :cond_36

    .line 6412
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getUsbExceptionList()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setUsbExceptionListOnDriver(I)I

    :cond_36
    :goto_36
    return-void
.end method

.method public final turnOffAirPlaneMode()V
    .registers 4

    .line 4546
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4548
    :try_start_4
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    .line 4549
    invoke-virtual {p0, v2}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_15
    .catchall {:try_start_4 .. :try_end_12} :catchall_13

    goto :goto_1d

    :catchall_13
    move-exception p0

    goto :goto_21

    :catch_15
    :try_start_15
    const-string p0, "RestrictionPolicy"

    const-string/jumbo v2, "turnOffAirPlaneMode() failed. "

    .line 4551
    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_13

    .line 4553
    :goto_1d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4554
    throw p0
.end method

.method public final unmountSdCard(Z)Z
    .registers 4

    .line 2631
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getMountService()Landroid/os/storage/IStorageManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 2633
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getExternalSdCardPath()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 2636
    :try_start_d
    invoke-interface {v0, p0, p1, v1}, Landroid/os/storage/IStorageManager;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_12

    const/4 v1, 0x1

    goto :goto_16

    :catch_12
    move-exception p0

    .line 2642
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_16
    :goto_16
    return v1
.end method

.method public final updateKeyCodeHomeState()V
    .registers 2

    .line 2354
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mKeyCodeMediator:Lcom/android/server/enterprise/common/KeyCodeMediator;

    if-nez p0, :cond_d

    const-string p0, "RestrictionPolicy"

    const-string/jumbo v0, "mKeyCodeMediator must not be null! This will cause problems on hardware key restriction."

    .line 2355
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_d
    const/4 v0, 0x3

    .line 2357
    invoke-interface {p0, v0}, Lcom/android/server/enterprise/common/KeyCodeMediator;->update(I)Z

    :goto_11
    return-void
.end method

.method public final updateNonMarketAppOnUserManager()V
    .registers 9

    .line 1948
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    const-string v2, "RestrictionPolicy"

    .line 1950
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UserManager.DISALLOW_NON_MARKET_APP_BY_KNOX will be set as "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNonMarketAppAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_1b

    move v5, v6

    goto :goto_1c

    :cond_1b
    move v5, v7

    :goto_1c
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v3, "no_non_market_app_by_knox"

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNonMarketAppAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0

    if-nez p0, :cond_32

    goto :goto_33

    :cond_32
    move v6, v7

    :goto_33
    sget-object p0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v6, p0}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V
    :try_end_38
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_38} :catch_3e
    .catchall {:try_start_4 .. :try_end_38} :catchall_3c

    .line 1955
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_3c
    move-exception p0

    goto :goto_45

    :catch_3e
    move-exception p0

    .line 1953
    :try_start_3f
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_45
    .catchall {:try_start_3f .. :try_end_45} :catchall_3c

    .line 1955
    :goto_45
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1956
    throw p0
.end method

.method public updateRestrictionCacheForWpcod()V
    .registers 21

    move-object/from16 v0, p0

    const-string v1, "RestrictionPolicy"

    const-string/jumbo v2, "updateRestrictionCacheForWpcod() called.."

    .line 6618
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6620
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v2, v3, :cond_9b

    .line 6625
    :try_start_14
    iget-object v4, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-string v5, "backupEnabled"

    const-wide v6, 0x100000000000L

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 6628
    iget-object v12, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-string v13, "clipboardEnabled"

    const-wide/16 v14, 0x200

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v12 .. v19}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 6631
    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-string v3, "factoryresetallowed"

    const-wide/high16 v4, 0x8000000000000L

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 6634
    iget-object v10, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-string v11, "allowClipboardShare"

    const-wide/32 v12, 0x20000

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v10 .. v17}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 6637
    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-string v3, "allowGoogleAccountsAutoSync"

    const-wide/32 v4, 0x2000000

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->update(Ljava/lang/String;JZILjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 6641
    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v3, "content://com.sec.knox.provider/RestrictionPolicy1/isClipboardAllowed"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 6643
    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v3, "content://com.sec.knox.provider/RestrictionPolicy1/isClipboardShareAllowed"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    const/4 v2, 0x1

    const-string v3, "/efs/MDM/FactoryReset"

    .line 6645
    invoke-virtual {v0, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->manageEFSFile(ZLjava/lang/String;)Z
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_7c} :catch_7d

    goto :goto_9a

    :catch_7d
    move-exception v0

    .line 6647
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6648
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRestrictionCacheForWpcod() error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9a
    return-void

    .line 6621
    :cond_9b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by system user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final updateScreenCaptureDisabledInWindowManager(IZ)V
    .registers 5

    .line 1333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateScreenCaptureDisabledInWindowManager() userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", disabled = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RestrictionPolicy"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string p1, "content://com.sec.knox.provider/RestrictionPolicy3/isScreenCaptureEnabled"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public final updateSystemUIMonitor(I)V
    .registers 4

    const/4 v0, 0x0

    .line 5990
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowedAsUser(ZI)Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setSettingsChangeSystemUI(IZ)V

    .line 5991
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isStatusBarExpansionAllowedAsUser(ZI)Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setStatusBarExpansionSystemUI(IZ)V

    .line 5992
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAirplaneModeAllowed(Z)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setAirplaneModeAllowedSystemUI(IZ)V

    const/4 v0, 0x0

    .line 5993
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCellularDataAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setCellularDataAllowedSystemUI(IZ)V

    .line 5994
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWifiTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setWifiTetheringAllowedSystemUI(IZ)V

    .line 5995
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCameraEnabledAsUser(I)Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setCameraAllowedSystemUI(IZ)V

    .line 5996
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFaceRecognitionAllowedEvenCameraBlocked(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setFaceRecognitionEvenCameraBlockedAllowedSystemUI(IZ)V

    return-void
.end method

.method public final updateUSBMode()V
    .registers 5

    const/4 v0, 0x0

    .line 2065
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbDebuggingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 2066
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_20

    .line 2068
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_20
    return-void
.end method

.method public final updateUsbInterfaceExceptionMaskInDb(II)Z
    .registers 9

    .line 6237
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6238
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "adminUid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6239
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "RESTRICTION"

    invoke-virtual {v1, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    .line 6240
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 6241
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v5, "UsbExceptionMask"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-lez v1, :cond_2d

    .line 6244
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result p0

    return p0

    .line 6247
    :cond_2d
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v4, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6248
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result p0

    return p0
.end method

.method public final updateUsbStorageStatebyIntent(Z)Z
    .registers 10

    const-string v0, "RestrictionPolicy"

    .line 3843
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 3845
    :try_start_8
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.samsung.android.knox.intent.action.UPDATE_ALLOW_USB_HOST_STORAGE_STATE_INTERNAL"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "reason"

    if-eqz p1, :cond_16

    move v7, v3

    goto :goto_17

    :cond_16
    move v7, v4

    .line 3846
    :goto_17
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3847
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1f} :catch_26
    .catchall {:try_start_8 .. :try_end_1f} :catchall_24

    .line 3852
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, v4

    goto :goto_30

    :catchall_24
    move-exception p0

    goto :goto_4e

    :catch_26
    move-exception p0

    :try_start_27
    const-string/jumbo v4, "updateUsbStorageStatebyIntent() fas failed."

    .line 3849
    invoke-static {v0, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_24

    .line 3852
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3854
    :goto_30
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateUsbStorageStatebyIntent() allow = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", ret = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 3852
    :goto_4e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3853
    throw p0
.end method
