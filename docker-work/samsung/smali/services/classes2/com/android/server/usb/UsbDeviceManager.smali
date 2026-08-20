.class public Lcom/android/server/usb/UsbDeviceManager;
.super Ljava/lang/Object;
.source "UsbDeviceManager.java"

# interfaces
.implements Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;,
        Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;,
        Lcom/android/server/usb/UsbDeviceManager$UsbHandler;,
        Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;
    }
.end annotation


# static fields
.field public static final ACCESSORY_HANDSHAKE_TIMEOUT:I = 0x2710

.field public static final ACCESSORY_REQUEST_TIMEOUT:I = 0x2710

.field public static final ACCESSORY_START_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/misc/usb_accessory"

.field public static final ACTION_USB_OTG_CONNECTION:Ljava/lang/String; = "com.samsung.UsbOtgCableConnection"

.field public static final ADB_NOTIFICATION_CHANNEL_ID_TV:Ljava/lang/String; = "usbdevicemanager.adb.tv"

.field public static final ANYWAY_JIG_PATH:Ljava/lang/String; = "/sys/class/sec/rid_adc/rid_adc"

.field public static final AUDIO_MODE_SOURCE:I = 0x1

.field public static final AUDIO_SOURCE_PCM_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/f_audio_source/pcm"

.field public static final BOOT_MODE_PROPERTY:Ljava/lang/String; = "ro.bootmode"

.field public static final DEBUG:Z = true

.field public static final DEVICE_STATE_UPDATE_DELAY:I = 0x3e8

.field public static final DEVICE_STATE_UPDATE_DELAY_EXT:I = 0xbb8

.field public static final DUMPSYS_LOG_BUFFER:I = 0xc8

.field public static final EXTRA_CONNECTION_STATE:Ljava/lang/String; = "Connect"

.field public static final FUNCTIONS_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/functions"

.field public static final HOST_STATE_UPDATE_DELAY:I = 0x3e8

.field public static final MIDI_ALSA_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/f_midi/alsa"

.field public static final MSG_ACCESSORY_HANDSHAKE_TIMEOUT:I = 0x14

.field public static final MSG_ACCESSORY_MODE_ENTER_TIMEOUT:I = 0x8

.field public static final MSG_BOOT_COMPLETED:I = 0x4

.field public static final MSG_ENABLE_ADB:I = 0x1

.field public static final MSG_FUNCTION_SWITCH_TIMEOUT:I = 0x11

.field public static final MSG_GADGET_HAL_REGISTERED:I = 0x12

.field public static final MSG_GET_CURRENT_USB_FUNCTIONS:I = 0x10

.field public static final MSG_INCREASE_SENDSTRING_COUNT:I = 0x15

.field public static final MSG_LOCALE_CHANGED:I = 0xb

.field public static final MSG_RESET_USB_GADGET:I = 0x13

.field public static final MSG_SET_CHARGING_FUNCTIONS:I = 0xe

.field public static final MSG_SET_CURRENT_FUNCTIONS:I = 0x2

.field public static final MSG_SET_FUNCTIONS_TIMEOUT:I = 0xf

.field public static final MSG_SET_SCREEN_UNLOCKED_FUNCTIONS:I = 0xc

.field public static final MSG_SYSTEM_READY:I = 0x3

.field public static final MSG_UPDATE_CHARGING_STATE:I = 0x9

.field public static final MSG_UPDATE_HAL_VERSION:I = 0x17

.field public static final MSG_UPDATE_HOST_STATE:I = 0xa

.field public static final MSG_UPDATE_PORT_STATE:I = 0x7

.field public static final MSG_UPDATE_SCREEN_LOCK:I = 0xd

.field public static final MSG_UPDATE_STATE:I = 0x0

.field public static final MSG_UPDATE_USB_SPEED:I = 0x16

.field public static final MSG_UPDATE_USER_RESTRICTIONS:I = 0x6

.field public static final MSG_USB_NOTI_UPDATE:I = 0x65

.field public static final MSG_USER_SWITCHED:I = 0x5

.field public static final NORMAL_BOOT:Ljava/lang/String; = "normal"

.field public static final RESTRICTION3_URI:Ljava/lang/String; = "content://com.sec.knox.provider/RestrictionPolicy3"

.field public static final RESTRICTIONPOLICY_USBDEBUGGING_METHOD:Ljava/lang/String; = "isUsbDebuggingEnabled"

.field public static final RNDIS_ETH_ADDR_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/f_rndis/ethaddr"

.field public static final STATE_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/state"

.field public static final TAG:Ljava/lang/String; = "UsbDeviceManager"

.field public static final UNLOCKED_CONFIG_PREF:Ljava/lang/String; = "usb-screen-unlocked-config-%d"

.field public static final USB_CONFIGURED_PROPERTY:Ljava/lang/String; = "sys.usb.configured"

.field public static final USB_PERSISTENT_CONFIG_PROPERTY:Ljava/lang/String; = "persist.sys.usb.config"

.field public static final USB_PERSISTENT_QCOM_CONFIG_PROPERTY:Ljava/lang/String; = "persist.sys.usb.q_config"

.field public static final USB_PREFS_XML:Ljava/lang/String; = "UsbDeviceManagerPrefs.xml"

.field public static final USB_STATE_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/android_usb/android0"

.field public static final USB_TYPEC_PORT_PATH:Ljava/lang/String; = "/sys/class/typec"

.field public static mDexObserver:Landroid/util/sysfwutil/DexObserver;

.field public static mEnableUsbHiddenMenu:Z

.field public static mSetNextUsbModeToDefault:Z

.field public static mSupportDualRole:Z

.field public static sDenyInterfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static sEventLogger:Lcom/android/server/usb/UsbDeviceLogger;

.field public static usbConfiguredState:Ljava/lang/String;

.field public static usbDisableSettingVal:Ljava/lang/String;


# instance fields
.field public mAccessoryStrings:[Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public mControlFds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/io/FileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field public mCurrentSettings:Lcom/android/server/usb/UsbProfileGroupSettingsManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mDexListener:Landroid/util/sysfwutil/DexConnectionListener;

.field public mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

.field public final mHasUsbAccessory:Z

.field public final mHostConnectionReceiver:Landroid/content/BroadcastReceiver;

.field public final mLock:Ljava/lang/Object;

.field public final mUEventObserver:Landroid/os/UEventObserver;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mresetAccessoryHandshakeTimeoutHandler(Lcom/android/server/usb/UsbDeviceManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager;->resetAccessoryHandshakeTimeoutHandler()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartAccessoryMode(Lcom/android/server/usb/UsbDeviceManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager;->startAccessoryMode()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mvalidateRestrictionPolicy(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager;->validateRestrictionPolicy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmDexObserver()Landroid/util/sysfwutil/DexObserver;
    .registers 1

    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->mDexObserver:Landroid/util/sysfwutil/DexObserver;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmEnableUsbHiddenMenu()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/usb/UsbDeviceManager;->mEnableUsbHiddenMenu:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmSetNextUsbModeToDefault()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/usb/UsbDeviceManager;->mSetNextUsbModeToDefault:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmSupportDualRole()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/usb/UsbDeviceManager;->mSupportDualRole:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsDenyInterfaces()Ljava/util/Set;
    .registers 1

    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsEventLogger()Lcom/android/server/usb/UsbDeviceLogger;
    .registers 1

    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sEventLogger:Lcom/android/server/usb/UsbDeviceLogger;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetusbDisableSettingVal()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->usbDisableSettingVal:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfputmEnableUsbHiddenMenu(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/server/usb/UsbDeviceManager;->mEnableUsbHiddenMenu:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfputmSetNextUsbModeToDefault(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/server/usb/UsbDeviceManager;->mSetNextUsbModeToDefault:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfputusbConfiguredState(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/android/server/usb/UsbDeviceManager;->usbConfiguredState:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$smgetDefaultUsbValue()J
    .registers 2

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->getDefaultUsbValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smgetPersistProp(Z)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/usb/UsbDeviceManager;->getPersistProp(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smgetUsbSecurityCheckNodeValue()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->getUsbSecurityCheckNodeValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smisMassTestEnabled()Z
    .registers 1

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->isMassTestEnabled()Z

    move-result v0

    return v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 247
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const/4 v1, 0x1

    .line 248
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 249
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 250
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 251
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 252
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 253
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 254
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 255
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 256
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 257
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 258
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const/16 v1, 0xe0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 273
    sput-boolean v0, Lcom/android/server/usb/UsbDeviceManager;->mSupportDualRole:Z

    .line 274
    sput-boolean v0, Lcom/android/server/usb/UsbDeviceManager;->mSetNextUsbModeToDefault:Z

    const-string v1, "OFF"

    .line 275
    sput-object v1, Lcom/android/server/usb/UsbDeviceManager;->usbDisableSettingVal:Ljava/lang/String;

    const-string v1, "none"

    .line 276
    sput-object v1, Lcom/android/server/usb/UsbDeviceManager;->usbConfiguredState:Ljava/lang/String;

    .line 308
    sput-boolean v0, Lcom/android/server/usb/UsbDeviceManager;->mEnableUsbHiddenMenu:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbSettingsManager;Lcom/android/server/usb/UsbPermissionManager;Landroid/util/sysfwutil/DexObserver;)V
    .registers 13

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mLock:Ljava/lang/Object;

    .line 279
    new-instance v0, Lcom/android/server/usb/UsbDeviceManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbDeviceManager$1;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDexListener:Landroid/util/sysfwutil/DexConnectionListener;

    .line 290
    new-instance v0, Lcom/android/server/usb/UsbDeviceManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbDeviceManager$2;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHostConnectionReceiver:Landroid/content/BroadcastReceiver;

    .line 389
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    .line 390
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 391
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.usb.accessory"

    .line 392
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHasUsbAccessory:Z

    .line 393
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->initRndisAddress()V

    const/4 v1, 0x1

    .line 397
    :try_start_30
    invoke-static {v1}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->getService(Z)Landroid/hardware/usb/gadget/V1_0/IUsbGadget;
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_33} :catch_3e
    .catch Ljava/util/NoSuchElementException; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_47

    :catch_34
    move-exception v0

    move-object v2, v0

    .line 402
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v3, "USB GADGET HAL not present in the device"

    invoke-static {v0, v3, v2}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_48

    :catch_3e
    move-exception v0

    move-object v1, v0

    .line 399
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "USB GADGET HAL present but exception thrown"

    invoke-static {v0, v2, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_47
    const/4 v1, 0x0

    .line 405
    :goto_48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mControlFds:Ljava/util/HashMap;

    const-string v0, "mtp"

    .line 406
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbDeviceManager;->nativeOpenControl(Ljava/lang/String;)Ljava/io/FileDescriptor;

    move-result-object v0

    if-nez v0, :cond_5e

    .line 408
    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to open control for mtp"

    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_5e
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mControlFds:Ljava/util/HashMap;

    const-wide/16 v3, 0x4

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "ptp"

    .line 411
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbDeviceManager;->nativeOpenControl(Ljava/lang/String;)Ljava/io/FileDescriptor;

    move-result-object v0

    if-nez v0, :cond_79

    .line 413
    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to open control for ptp"

    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_79
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mControlFds:Ljava/util/HashMap;

    const-wide/16 v3, 0x10

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_9c

    .line 421
    new-instance v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    move-object v1, v0

    move-object v4, p0

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbPermissionManager;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    goto :goto_b1

    .line 427
    :cond_9c
    new-instance v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    move-object v1, v0

    move-object v4, p0

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbPermissionManager;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .line 431
    :goto_b1
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->nativeIsStartRequested()Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 432
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v1, "accessory attached at boot"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager;->startAccessoryMode()V

    .line 436
    :cond_c1
    new-instance v0, Lcom/android/server/usb/UsbDeviceManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbDeviceManager$3;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    .line 447
    new-instance v1, Lcom/android/server/usb/UsbDeviceManager$4;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbDeviceManager$4;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    .line 456
    new-instance v2, Lcom/android/server/usb/UsbDeviceManager$5;

    invoke-direct {v2, p0}, Lcom/android/server/usb/UsbDeviceManager$5;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    .line 470
    new-instance v3, Lcom/android/server/usb/UsbDeviceManager$6;

    invoke-direct {v3, p0}, Lcom/android/server/usb/UsbDeviceManager$6;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    .line 477
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.hardware.usb.action.USB_PORT_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 479
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 482
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    .line 484
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 485
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 487
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 491
    new-instance v0, Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;-><init>(Lcom/android/server/usb/UsbDeviceManager;Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver-IA;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/android_usb/android0"

    .line 492
    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    const-string v1, "DEVPATH=/devices/virtual/misc/usb_accessory"

    .line 493
    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 495
    new-instance v0, Lcom/android/server/usb/UsbDeviceLogger;

    const/16 v1, 0xc8

    const-string v2, "UsbDeviceManager activity"

    invoke-direct {v0, v1, v2}, Lcom/android/server/usb/UsbDeviceLogger;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/usb/UsbDeviceManager;->sEventLogger:Lcom/android/server/usb/UsbDeviceLogger;

    if-eqz p5, :cond_130

    .line 498
    sput-object p5, Lcom/android/server/usb/UsbDeviceManager;->mDexObserver:Landroid/util/sysfwutil/DexObserver;

    .line 499
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDexListener:Landroid/util/sysfwutil/DexConnectionListener;

    invoke-virtual {p5, v0}, Landroid/util/sysfwutil/DexObserver;->addListener(Landroid/util/sysfwutil/DexConnectionListener;)V

    .line 502
    :cond_130
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mHostConnectionReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.UsbOtgCableConnection"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 505
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/typec"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/usb/UsbDeviceManager;->mSupportDualRole:Z

    return-void
.end method

.method public static getDefaultUsbValue()J
    .registers 3

    .line 2848
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->getKnoxCustomUsbConnectionType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 2850
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v1, "getDefaultUsbValue :: knoxUsb returns MTP"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x4

    return-wide v0

    :cond_11
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1e

    .line 2853
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v1, "getDefaultUsbValue :: knoxUsb returns PTP"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x10

    return-wide v0

    :cond_1e
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2b

    .line 2856
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v1, "getDefaultUsbValue :: knoxUsb returns MIDI"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x8

    return-wide v0

    :cond_2b
    const/4 v1, 0x4

    if-ne v0, v1, :cond_39

    .line 2859
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v1, "getDefaultUsbValue :: knoxUsb returns CHARGING"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v0, 0x40000

    return-wide v0

    :cond_39
    const/4 v1, 0x5

    if-ne v0, v1, :cond_46

    .line 2862
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v1, "getDefaultUsbValue :: knoxUsb returns TETHERING"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x20

    return-wide v0

    :cond_46
    const/4 v0, 0x0

    .line 2868
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->getPersistProp(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "none"

    .line 2869
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "persist.sys.usb.q_config"

    .line 2876
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 2877
    invoke-static {v1}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 2881
    :cond_5f
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-nez v0, :cond_6b

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->isMassTestEnabled()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 2882
    :cond_6b
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v1, "Prevent temporary usb disconnection for Factory Binary or JIG connection"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "mtp,adb"

    .line 2886
    :cond_74
    invoke-static {v1}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getKnoxCustomUsbConnectionType()I
    .registers 2

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "knoxcustom"

    .line 3005
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 3007
    invoke-interface {v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbConnectionTypeInternal()I

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_11} :catch_12

    goto :goto_16

    :catch_12
    move-exception v1

    .line 3010
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_16
    :goto_16
    return v0
.end method

.method public static getPersistProp(Z)Ljava/lang/String;
    .registers 4

    .line 2837
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->isHiddenMenuActivated()Z

    move-result p0

    if-eqz p0, :cond_a

    const-string/jumbo p0, "persist.sys.usb.q_config"

    goto :goto_d

    :cond_a
    const-string/jumbo p0, "persist.sys.usb.config"

    .line 2841
    :goto_d
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPersistProp: return="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static getUsbSecurityCheckNodeValue()Ljava/lang/String;
    .registers 9

    const-string v0, "/sys/class/sec/ccic/usbpd_ids"

    const-string v1, "IOException(iex): "

    const-string v2, "null"

    const/4 v3, 0x0

    .line 2970
    :try_start_7
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2972
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 2973
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_17} :catch_de
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_17} :catch_aa
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_17} :catch_75
    .catchall {:try_start_7 .. :try_end_17} :catchall_71

    .line 2974
    :try_start_17
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_1c} :catch_3a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1c} :catch_34
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_1c} :catch_2f
    .catchall {:try_start_17 .. :try_end_1c} :catchall_2b

    .line 2975
    :try_start_1c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_20} :catch_28
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_20} :catch_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_20} :catch_22
    .catchall {:try_start_1c .. :try_end_20} :catchall_114

    move-object v3, v4

    goto :goto_48

    :catch_22
    move-exception v3

    goto/16 :goto_79

    :catch_25
    move-exception v3

    goto/16 :goto_ae

    :catch_28
    move-exception v3

    goto/16 :goto_e2

    :catchall_2b
    move-exception v2

    move-object v0, v3

    goto/16 :goto_115

    :catch_2f
    move-exception v0

    move-object v8, v3

    move-object v3, v0

    move-object v0, v8

    goto :goto_79

    :catch_34
    move-exception v0

    move-object v8, v3

    move-object v3, v0

    move-object v0, v8

    goto/16 :goto_ae

    :catch_3a
    move-exception v0

    move-object v8, v3

    move-object v3, v0

    move-object v0, v8

    goto/16 :goto_e2

    .line 2977
    :cond_40
    :try_start_40
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v4, "USB Check File does not exist"

    invoke-static {v0, v4}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/io/FileNotFoundException; {:try_start_40 .. :try_end_47} :catch_de
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_47} :catch_aa
    .catch Ljava/lang/IllegalArgumentException; {:try_start_40 .. :try_end_47} :catch_75
    .catchall {:try_start_40 .. :try_end_47} :catchall_71

    move-object v0, v3

    :goto_48
    if-eqz v3, :cond_50

    .line 2988
    :try_start_4a
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    goto :goto_50

    :catch_4e
    move-exception v0

    goto :goto_57

    :cond_50
    :goto_50
    if-eqz v0, :cond_113

    .line 2990
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_55} :catch_4e

    goto/16 :goto_113

    .line 2992
    :goto_57
    sget-object v3, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5e
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_113

    :catchall_71
    move-exception v2

    move-object v0, v3

    goto/16 :goto_116

    :catch_75
    move-exception v0

    move-object v4, v3

    move-object v3, v0

    move-object v0, v4

    .line 2984
    :goto_79
    :try_start_79
    sget-object v5, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IllegalArgumentException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_93
    .catchall {:try_start_79 .. :try_end_93} :catchall_114

    if-eqz v4, :cond_9b

    .line 2988
    :try_start_95
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    goto :goto_9b

    :catch_99
    move-exception v0

    goto :goto_a2

    :cond_9b
    :goto_9b
    if-eqz v0, :cond_113

    .line 2990
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_a0} :catch_99

    goto/16 :goto_113

    .line 2992
    :goto_a2
    sget-object v3, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5e

    :catch_aa
    move-exception v0

    move-object v4, v3

    move-object v3, v0

    move-object v0, v4

    .line 2982
    :goto_ae
    :try_start_ae
    sget-object v5, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c8
    .catchall {:try_start_ae .. :try_end_c8} :catchall_114

    if-eqz v4, :cond_d0

    .line 2988
    :try_start_ca
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    goto :goto_d0

    :catch_ce
    move-exception v0

    goto :goto_d6

    :cond_d0
    :goto_d0
    if-eqz v0, :cond_113

    .line 2990
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_d5} :catch_ce

    goto :goto_113

    .line 2992
    :goto_d6
    sget-object v3, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5e

    :catch_de
    move-exception v0

    move-object v4, v3

    move-object v3, v0

    move-object v0, v4

    .line 2980
    :goto_e2
    :try_start_e2
    sget-object v5, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File not Found exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fc
    .catchall {:try_start_e2 .. :try_end_fc} :catchall_114

    if-eqz v4, :cond_104

    .line 2988
    :try_start_fe
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    goto :goto_104

    :catch_102
    move-exception v0

    goto :goto_10a

    :cond_104
    :goto_104
    if-eqz v0, :cond_113

    .line 2990
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_109
    .catch Ljava/io/IOException; {:try_start_fe .. :try_end_109} :catch_102

    goto :goto_113

    .line 2992
    :goto_10a
    sget-object v3, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_5e

    :cond_113
    :goto_113
    return-object v2

    :catchall_114
    move-exception v2

    :goto_115
    move-object v3, v4

    :goto_116
    if-eqz v3, :cond_11e

    .line 2988
    :try_start_118
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    goto :goto_11e

    :catch_11c
    move-exception v0

    goto :goto_124

    :cond_11e
    :goto_11e
    if-eqz v0, :cond_13c

    .line 2990
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_123
    .catch Ljava/io/IOException; {:try_start_118 .. :try_end_123} :catch_11c

    goto :goto_13c

    .line 2992
    :goto_124
    sget-object v3, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2994
    :cond_13c
    :goto_13c
    throw v2
.end method

.method public static initRndisAddress()V
    .registers 10

    const/4 v0, 0x6

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v1, v2

    const-string/jumbo v4, "ro.serialno"

    const-string v5, "1234567890ABCDEF"

    .line 609
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 610
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    move v6, v2

    :goto_15
    const/4 v7, 0x1

    if-ge v6, v5, :cond_27

    .line 613
    rem-int/lit8 v8, v6, 0x5

    add-int/2addr v8, v7

    aget v7, v1, v8

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    xor-int/2addr v7, v9

    aput v7, v1, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    .line 615
    :cond_27
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    aget v5, v1, v2

    .line 616
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v2

    aget v2, v1, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v7

    aget v2, v1, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    const/4 v2, 0x3

    aget v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x4

    aget v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x5

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "%02X:%02X:%02X:%02X:%02X:%02X"

    .line 615
    invoke-static {v4, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :try_start_64
    const-string v1, "/sys/class/android_usb/android0/f_rndis/ethaddr"

    .line 618
    invoke-static {v1, v0}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_69} :catch_6a

    goto :goto_71

    .line 620
    :catch_6a
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v1, "failed to write to /sys/class/android_usb/android0/f_rndis/ethaddr"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_71
    return-void
.end method

.method public static isHiddenMenuActivated()Z
    .registers 2

    const-string/jumbo v0, "persist.sys.usb.q_config"

    const-string v1, "none"

    .line 2891
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2893
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isMassTestEnabled()Z
    .registers 5

    const/4 v0, 0x0

    .line 2922
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/sec/rid_adc/rid_adc"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2923
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_57

    const/4 v2, 0x0

    .line 2924
    invoke-static {v1, v0, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2925
    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isMassTestEnabled: state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "255K"

    .line 2926
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    const-string v2, "302K"

    .line 2927
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    const-string v2, "523K"

    .line 2928
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    const-string v2, "619K"

    .line 2929
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4b} :catch_4f

    if-eqz v1, :cond_57

    :cond_4d
    const/4 v0, 0x1

    return v0

    :catch_4f
    move-exception v1

    .line 2934
    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v3, "Could\'t read /sys/class/sec/rid_adc/rid_adc"

    invoke-static {v2, v3, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_57
    return v0
.end method

.method private native nativeGetAccessoryStrings()[Ljava/lang/String;
.end method

.method private native nativeGetAudioMode()I
.end method

.method private native nativeIsStartRequested()Z
.end method

.method private native nativeOpenAccessory()Landroid/os/ParcelFileDescriptor;
.end method

.method private native nativeOpenControl(Ljava/lang/String;)Ljava/io/FileDescriptor;
.end method


# virtual methods
.method public bootCompleted()V
    .registers 3

    .line 530
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v1, "boot completed"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 7

    .line 2756
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide p2

    .line 2758
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    if-eqz p0, :cond_1c

    const-wide v0, 0x10b00000001L

    const-string p4, "handler"

    .line 2759
    invoke-virtual {p0, p1, p4, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 2760
    sget-object p0, Lcom/android/server/usb/UsbDeviceManager;->sEventLogger:Lcom/android/server/usb/UsbDeviceLogger;

    const-wide v0, 0x10900000011L

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/usb/UsbDeviceLogger;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;J)V

    .line 2763
    :cond_1c
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void
.end method

.method public final findForegroundPackage()Ljava/lang/String;
    .registers 6

    .line 2897
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const v0, 0x7fffffff

    .line 2898
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_65

    .line 2900
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_65

    :cond_1a
    const-string/jumbo v0, "ro.build.type"

    .line 2904
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 2906
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2907
    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "task.topActivity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    :cond_57
    const/4 v0, 0x0

    .line 2911
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_65
    :goto_65
    const-string p0, ""

    return-object p0
.end method

.method public getAccessoryStrings()[Ljava/lang/String;
    .registers 2

    .line 516
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 517
    :try_start_3
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 518
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getControlFd(J)Landroid/os/ParcelFileDescriptor;
    .registers 6

    .line 2656
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mControlFds:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/FileDescriptor;

    const/4 v0, 0x0

    if-nez p0, :cond_10

    return-object v0

    .line 2661
    :cond_10
    :try_start_10
    invoke-static {p0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_14} :catch_15

    return-object p0

    .line 2663
    :catch_15
    sget-object p0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not dup fd for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;
    .registers 1

    .line 2615
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentFunctions()J
    .registers 3

    .line 2641
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getEnabledFunctions()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentSettings()Lcom/android/server/usb/UsbProfileGroupSettingsManager;
    .registers 2

    .line 510
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 511
    :try_start_3
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mCurrentSettings:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 512
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getCurrentUsbSpeed()I
    .registers 1

    .line 2645
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getUsbSpeed()I

    move-result p0

    return p0
.end method

.method public getGadgetHalVersion()I
    .registers 1

    .line 2649
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getGadgetHalVersion()I

    move-result p0

    return p0
.end method

.method public getScreenUnlockedFunctions()J
    .registers 3

    .line 2669
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getScreenUnlockedFunctions()J

    move-result-wide v0

    return-wide v0
.end method

.method public final hasDeviceRestriction(Ljava/lang/String;)Z
    .registers 5

    const-string v0, "adb"

    .line 2816
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v2, "isUsbDebuggingEnabled"

    .line 2817
    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/server/usb/UsbDeviceManager;->hasSecRestriction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 2819
    :cond_12
    sget-object p0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string p1, "Undefine restriction policy!"

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final hasSecRestriction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 12

    .line 2781
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 p2, 0x0

    .line 2784
    :try_start_5
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_13} :catch_5c
    .catchall {:try_start_5 .. :try_end_13} :catchall_5a

    if-eqz p0, :cond_4e

    .line 2786
    :try_start_15
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2787
    invoke-interface {p0, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p0, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string p4, "false"

    .line 2788
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_48

    .line 2789
    sget-object p2, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Function "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " is restricted"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2790
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    const/4 p0, 0x1

    return p0

    .line 2794
    :cond_48
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_4b} :catch_4c
    .catchall {:try_start_15 .. :try_end_4b} :catchall_83

    goto :goto_4f

    :catch_4c
    move-exception p2

    goto :goto_60

    :cond_4e
    move-object p2, p0

    :goto_4f
    if-eqz p2, :cond_81

    .line 2805
    :try_start_51
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_54} :catch_55

    goto :goto_81

    :catch_55
    move-exception p0

    .line 2809
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_81

    :catchall_5a
    move-exception p1

    goto :goto_85

    :catch_5c
    move-exception p0

    move-object v6, p2

    move-object p2, p0

    move-object p0, v6

    .line 2801
    :goto_60
    :try_start_60
    sget-object p3, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "policy : "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", return exception"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7c
    .catchall {:try_start_60 .. :try_end_7c} :catchall_83

    if-eqz p0, :cond_81

    .line 2805
    :try_start_7e
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_81} :catch_55

    :cond_81
    :goto_81
    const/4 p0, 0x0

    return p0

    :catchall_83
    move-exception p1

    move-object p2, p0

    :goto_85
    if-eqz p2, :cond_8f

    :try_start_87
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8a} :catch_8b

    goto :goto_8f

    :catch_8b
    move-exception p0

    .line 2809
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2811
    :cond_8f
    :goto_8f
    throw p1
.end method

.method public final onAdbEnabled(Z)V
    .registers 3

    .line 2749
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(IZ)V

    return-void
.end method

.method public onAwakeStateChanged(Z)V
    .registers 2

    return-void
.end method

.method public onKeyguardStateChanged(Z)V
    .registers 7

    .line 349
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 350
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/KeyguardManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 351
    invoke-virtual {v1, v0}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v1

    .line 353
    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onKeyguardStateChanged: isShowing:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " secure:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    if-eqz p1, :cond_41

    if-eqz v1, :cond_41

    const/4 p1, 0x1

    goto :goto_42

    :cond_41
    const/4 p1, 0x0

    :goto_42
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(IZ)V

    return-void
.end method

.method public onUnlockUser(I)V
    .registers 2

    const/4 p1, 0x0

    .line 367
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager;->onKeyguardStateChanged(Z)V

    return-void
.end method

.method public openAccessory(Landroid/hardware/usb/UsbAccessory;Lcom/android/server/usb/UsbUserPermissionManager;II)Landroid/os/ParcelFileDescriptor;
    .registers 7

    .line 2626
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 2630
    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbAccessory;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2636
    invoke-virtual {p2, p1, p3, p4}, Lcom/android/server/usb/UsbUserPermissionManager;->checkPermission(Landroid/hardware/usb/UsbAccessory;II)V

    .line 2637
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->nativeOpenAccessory()Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    .line 2631
    :cond_16
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not match current accessory "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2634
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2628
    :cond_34
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "no accessory attached"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final resetAccessoryHandshakeTimeoutHandler()V
    .registers 5

    .line 553
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentFunctions()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1f

    .line 556
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 557
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1f
    return-void
.end method

.method public resetUsbGadget()V
    .registers 3

    .line 2742
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "reset Usb Gadget"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2745
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/16 v0, 0x13

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public rmSetNextUsbModeToDefault()V
    .registers 2

    .line 2956
    sget-object p0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "rmSetNextUsbModeToDefault"

    invoke-static {p0, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 2957
    sput-boolean p0, Lcom/android/server/usb/UsbDeviceManager;->mSetNextUsbModeToDefault:Z

    return-void
.end method

.method public setCurrentFunctions(J)V
    .registers 11

    .line 2679
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCurrentFunctions("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2682
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager;->findForegroundPackage()Ljava/lang/String;

    move-result-object v1

    .line 2683
    sget-boolean v2, Lcom/android/server/usb/UsbDeviceManager;->mEnableUsbHiddenMenu:Z

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x4

    if-nez v2, :cond_3c

    const-string v2, "com.sec.usbsettings"

    .line 2684
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    const-string v2, "com.sec.hiddenmenu"

    .line 2685
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6b

    :cond_3c
    and-long v1, p1, v5

    cmp-long v1, v1, v3

    const-string/jumbo v2, "persist.sys.usb.q_config"

    if-eqz v1, :cond_50

    const-string v1, "none"

    .line 2687
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Disable USB Hidden Menu"

    .line 2689
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    .line 2691
    :cond_50
    invoke-static {p1, p2}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v1

    .line 2692
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2694
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Enable USB Hidden Menu: functions="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6b
    :goto_6b
    cmp-long v0, p1, v3

    if-nez v0, :cond_77

    .line 2699
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    const/16 v1, 0x4fb

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_ba

    :cond_77
    cmp-long v0, p1, v5

    if-nez v0, :cond_83

    .line 2701
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    const/16 v1, 0x4fc

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_ba

    :cond_83
    const-wide/16 v0, 0x10

    cmp-long v0, p1, v0

    if-nez v0, :cond_91

    .line 2703
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    const/16 v1, 0x4fd

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_ba

    :cond_91
    const-wide/16 v0, 0x8

    cmp-long v0, p1, v0

    if-nez v0, :cond_9f

    .line 2705
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    const/16 v1, 0x4ff

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_ba

    :cond_9f
    const-wide/16 v0, 0x20

    cmp-long v0, p1, v0

    if-nez v0, :cond_ad

    .line 2707
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    const/16 v1, 0x4fe

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_ba

    :cond_ad
    const-wide/16 v0, 0x2

    cmp-long v0, p1, v0

    if-nez v0, :cond_ba

    .line 2709
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    const/16 v1, 0x500

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 2711
    :cond_ba
    :goto_ba
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v0, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public setCurrentUser(ILcom/android/server/usb/UsbProfileGroupSettingsManager;)V
    .registers 5

    .line 535
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 536
    :try_start_3
    iput-object p2, p0, Lcom/android/server/usb/UsbDeviceManager;->mCurrentSettings:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    .line 537
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 p2, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, p2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 538
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public setNextUsbModeToDefault()V
    .registers 2

    .line 2951
    sget-object p0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setNextUsbModeToDefault"

    invoke-static {p0, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    .line 2952
    sput-boolean p0, Lcom/android/server/usb/UsbDeviceManager;->mSetNextUsbModeToDefault:Z

    return-void
.end method

.method public setScreenUnlockedFunctions(J)V
    .registers 6

    .line 2721
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setScreenUnlockedFunctions("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2722
    invoke-static {p1, p2}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2721
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 2725
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->getPersistProp(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "none"

    .line 2726
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "adb"

    .line 2728
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_40

    const-string/jumbo p0, "setScreenUnlockedFunctions keep the current state"

    .line 2730
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2734
    :cond_40
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/16 v0, 0xc

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public setUsbDisableVariable(Ljava/lang/String;)V
    .registers 2

    .line 2941
    sput-object p1, Lcom/android/server/usb/UsbDeviceManager;->usbDisableSettingVal:Ljava/lang/String;

    return-void
.end method

.method public setUsbHiddenMenuState(Z)V
    .registers 2

    .line 2916
    sput-boolean p1, Lcom/android/server/usb/UsbDeviceManager;->mEnableUsbHiddenMenu:Z

    return-void
.end method

.method public final startAccessoryMode()V
    .registers 7

    .line 563
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startAccessoryMode()"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mHasUsbAccessory:Z

    if-nez v1, :cond_d

    return-void

    .line 566
    :cond_d
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->nativeGetAccessoryStrings()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    .line 567
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->nativeGetAudioMode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1d

    move v1, v3

    goto :goto_1e

    :cond_1d
    move v1, v2

    .line 569
    :goto_1e
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    if-eqz v4, :cond_2b

    aget-object v5, v4, v2

    if-eqz v5, :cond_2b

    aget-object v5, v4, v3

    if-eqz v5, :cond_2b

    goto :goto_2c

    :cond_2b
    move v3, v2

    :goto_2c
    if-eqz v4, :cond_77

    .line 574
    :goto_2e
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    array-length v0, v0

    if-ge v2, v0, :cond_58

    .line 575
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAccessoryStrings["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 577
    :cond_58
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableAudio="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " enableAccessory="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7c

    :cond_77
    const-string v2, "mAccessoryStrings is null"

    .line 579
    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7c
    const-wide/16 v4, 0x0

    if-eqz v3, :cond_83

    const-wide/16 v2, 0x2

    goto :goto_84

    :cond_83
    move-wide v2, v4

    :goto_84
    if-eqz v1, :cond_89

    const-wide/16 v0, 0x40

    or-long/2addr v2, v0

    :cond_89
    cmp-long v0, v2, v4

    if-eqz v0, :cond_a8

    .line 591
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v4, 0x2710

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 593
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 595
    invoke-virtual {p0, v2, v3}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(J)V

    :cond_a8
    return-void
.end method

.method public systemReady()V
    .registers 3

    .line 522
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "systemReady"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerScreenObserver(Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;)V

    .line 526
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public updateUsbNotificationRefresh()V
    .registers 3

    .line 2945
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/16 v0, 0x65

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(IZ)V

    return-void
.end method

.method public updateUserRestrictions()V
    .registers 2

    .line 542
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final validateRestrictionPolicy(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "adb"

    .line 2824
    invoke-static {p1, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2825
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager;->hasDeviceRestriction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12

    .line 2826
    invoke-static {p1, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->-$$Nest$smremoveFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_12
    return-object p1
.end method
