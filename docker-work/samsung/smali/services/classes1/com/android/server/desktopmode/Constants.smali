.class public Lcom/android/server/desktopmode/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ACTION_ADD_PACKAGE_PREVENT_START_BLACKLIST_CHANGED:Ljava/lang/String; = "com.samsung.android.knox.intent.action.ADD_PACKAGE_PREVENT_START_BLACKLIST_CHANGED_INTERNAL"

.field public static final ACTION_DEMO_RESET_STARTED:Ljava/lang/String; = "com.samsung.sea.rm.DEMO_RESET_STARTED"

.field public static final ACTION_PEN_INSERT:Ljava/lang/String; = "com.samsung.pen.INSERT"

.field public static final ACTION_SECURED_APP_LAUNCHED:Ljava/lang/String; = "com.samsung.android.desktopmode.action.SECURED_APP_LAUNCHED"

.field public static final ACTION_WALLPAPER_ENGINE_SHOWN:Ljava/lang/String; = "com.samsung.android.intent.action.WALLPAPER_ENGINE_SHOWN"

.field public static final ANDROID_INTERNAL_PKGNAME:Ljava/lang/String; = "com.android.internal.app"

.field public static final BLE_ADVERTISER_SERVICE_CLASS:Ljava/lang/String; = "com.sec.android.desktopmode.uiservice.ble.BleAdvertiserService"

.field public static final CCIC_DOCK_STATE_PATH:Ljava/lang/String; = "/sys/class/sec/ccic/usbpd_type"

.field public static final CCIC_DOCK_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/sec/ccic"

.field public static final CCIC_DOCK_USBPD_IDS_PATH:Ljava/lang/String; = "/sys/class/sec/ccic/usbpd_ids"

.field public static final DEFAULT_VALUE:I = -0x1

.field public static final DEX_DEFAULT_SCREEN_OFF_TIMEOUT:I = 0x927c0

.field public static final DEX_FOR_PC_PACKAGE:Ljava/lang/String; = "com.sec.android.app.dexonpc"

.field public static final DISPLAYPORT_FILE_PATH:Ljava/lang/String; = "/sys/class/dp_sec/dex"

.field public static final DISPLAYPORT_STATE_DISCONNECTED:I = 0x0

.field public static final DP_VERSION_FILE_PATH:Ljava/lang/String; = "/sys/class/dp_sec/dex_ver"

.field public static final EXTRA_BT_DEVICE_DEEP_SLEEP:I = 0x13

.field public static final EXTRA_NOTIFICATION_ACTION_CLICK_DISPLAY_ID:Ljava/lang/String; = "ACTION_CLICK_DISPLAYID"

.field public static final EXTRA_NOTIFICATION_CLICK_DISPLAY_ID:Ljava/lang/String; = "CLICK_DISPLAYID"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.desktopmode.extra.PACKAGE_NAME"

.field public static final EXTRA_TASK_ID:Ljava/lang/String; = "com.samsung.android.desktopmode.extra.TASK_ID"

.field public static final KCC_PACKAGE:Ljava/lang/String; = "com.sec.knox.kccagent"

.field public static final KIDS_MODE_PKGNAME:Ljava/lang/String; = "com.sec.android.app.kidshome"

.field public static final LAUNCHER_PACKAGE:Ljava/lang/String; = "com.sec.android.app.desktoplauncher"

.field public static final LOW_BATTERY_WARNING_THRESHOLD:I = 0x1e

.field public static final LOW_CHARGER_POWER_WARNING_THRESHOLD:I = 0xf

.field public static final LOW_MEMORY_WARNING_THRESHOLD:J = 0x19000000L

.field public static final MONITOR_INFO_PATH:Ljava/lang/String; = "/sys/class/dp_sec/monitor_info"

.field public static final PD_VERSION_FILE_PATH:Ljava/lang/String; = "/sys/class/sec/ccic/acc_device_version"

.field public static final PSM_RESTRICTED_DEVICE_PERFORMANCE:Ljava/lang/String; = "restricted_device_performance"

.field public static final SAMSUNG_CONTACTS_PKGNAME:Ljava/lang/String; = "com.samsung.android.contacts"

.field public static final SPEN_ENABLED_SLEEP:I = 0x0

.field public static final SPEN_ENABLED_WAKEUP:I = 0x1

.field public static final UI_SERVICE_CLASS:Ljava/lang/String; = "com.sec.android.desktopmode.uiservice.DesktopModeUiService"

.field public static final UI_SERVICE_CONNECTION_COMPONENT:Ljava/lang/String; = "com.sec.android.desktopmode.uiservice.activity.connectivity.ConnectivityActivity"

.field public static final UI_SERVICE_PACKAGE:Ljava/lang/String; = "com.sec.android.desktopmode.uiservice"

.field public static final UI_SERVICE_TILESERVICE_COMPONENT:Ljava/lang/String; = "com.sec.android.desktopmode.uiservice.DesktopModeTile"

.field public static final UI_SERVICE_TILESERVICE_COMPONENT_FOR_DESKTOP_DISPLAY:Ljava/lang/String; = "com.sec.android.desktopmode.uiservice.DesktopDisplayDesktopModeTile"

.field public static final UI_SERVICE_TOUCHPAD_COMPONENT:Ljava/lang/String; = "com.sec.android.desktopmode.uiservice.activity.touchpad.TouchpadActivity"

.field public static final USB_HOST_DEVICE_UEVENT:Ljava/lang/String; = "DEVTYPE=usb_interface"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
