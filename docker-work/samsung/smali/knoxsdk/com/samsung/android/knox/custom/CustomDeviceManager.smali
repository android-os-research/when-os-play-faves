.class public final Lcom/samsung/android/knox/custom/CustomDeviceManager;
.super Ljava/lang/Object;
.source "CustomDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;
    }
.end annotation


# static fields
.field public static final greylist ACCESSIBILITY_ALL:I = 0x1f

.field public static final greylist ACCESSIBILITY_ANSWER_CALL_ON_HOME:I = 0x1

.field public static final greylist ACCESSIBILITY_ANSWER_CALL_ON_VOICE:I = 0x2

.field public static final greylist ACCESSIBILITY_END_CALL_ON_POWER:I = 0x4

.field public static final greylist ACCESSIBILITY_NONE:I = 0x0

.field public static final greylist ACCESSIBILITY_NOTIFICATION_REMINDER:I = 0x8

.field public static final greylist ACCESSIBILITY_SINGLE_TAP_MODE:I = 0x10

.field public static final greylist ACTION_HARD_KEY_PRESS:Ljava/lang/String; = "com.samsung.android.knox.intent.action.HARD_KEY_PRESS"

.field public static final greylist ACTION_HARD_KEY_REPORT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.HARD_KEY_REPORT"

.field public static final greylist ACTION_NO_USER_ACTIVITY:Ljava/lang/String; = "com.samsung.android.knox.intent.action.NO_USER_ACTIVITY"

.field public static final greylist ACTION_USER_ACTIVITY:Ljava/lang/String; = "com.samsung.android.knox.intent.action.USER_ACTIVITY"

.field public static final greylist ADD:I = 0x5

.field public static final greylist ALARM:I = 0x4

.field public static final greylist ALLOW:I = 0x9

.field public static final greylist ALPHABETIC_GRID:I = 0x1

.field public static final greylist ANIMATION_MODE_SHUTDOWN:I = 0x1

.field public static final greylist ANIMATION_MODE_STARTUP:I = 0x0

.field public static final greylist ANSWER_MODE_DEFAULT:I = 0x0

.field public static final greylist ANSWER_MODE_SPEAKER:I = 0x1

.field public static final greylist BACKUP:I = 0x1

.field public static final greylist BLOCKED_STATE_KEY_DOWN:Ljava/lang/String; = "blockedStateOnKeyedDown"

.field public static final greylist BLOCKED_STATE_KEY_UP:Ljava/lang/String; = "blockedStateOnKeyedUp"

.field public static final greylist BOLD_ITALIC_TEXT_STYLE:I = 0x3

.field public static final greylist BOLD_TEXT_STYLE:I = 0x1

.field public static final greylist BOTTOM_LEFT:I = 0x0

.field public static final greylist BOTTOM_RIGHT:I = 0x1

.field public static final greylist CALL_SCREEN_ALL:I = 0xff

.field public static final greylist CALL_SCREEN_ENDCALL_CALL_BUTTONS:I = 0x80

.field public static final greylist CALL_SCREEN_ENDCALL_CONTACTS:I = 0x40

.field public static final greylist CALL_SCREEN_INCALL_ADD_CALL:I = 0x4

.field public static final greylist CALL_SCREEN_INCALL_BLUETOOTH:I = 0x20

.field public static final greylist CALL_SCREEN_INCALL_EXTRA_VOLUME:I = 0x2

.field public static final greylist CALL_SCREEN_INCALL_MENU:I = 0x1

.field public static final greylist CALL_SCREEN_INCALL_MUTE:I = 0x10

.field public static final greylist CALL_SCREEN_INCALL_SPEAKER:I = 0x8

.field public static final greylist CALL_SCREEN_NONE:I = 0x0

.field public static final greylist CLASS_STRING:I = 0xde

.field public static final greylist CLEAR:I = 0x7

.field public static final greylist CUSTOM_GRID:I = 0x0

.field public static final greylist DEFAULT:I = 0x4

.field public static final greylist DEFAULT_USER_ACTIVITY_TIMEOUT:I = 0x0

.field public static final greylist DESTINATION_ADDRESS:I = 0x14c

.field public static final greylist DISABLE:I = 0x0

.field public static final greylist DISALLOW:I = 0x8

.field public static final greylist ENABLE:I = 0x1

.field public static final greylist ERROR_ALREADY_EXISTS:I = -0x37

.field public static final greylist ERROR_BUSY:I = -0x5

.field public static final greylist ERROR_DEX_MODE:I = -0x8

.field public static final greylist ERROR_FAIL:I = -0x1

.field public static final greylist ERROR_INVALID_ADDRESS:I = -0x24

.field public static final greylist ERROR_INVALID_CALLBACK:I = -0x34

.field public static final greylist ERROR_INVALID_CURRENT:I = -0x35

.field public static final greylist ERROR_INVALID_DEVICE:I = -0x2f

.field public static final greylist ERROR_INVALID_EMERGENCY_NUMBER:I = -0x31

.field public static final greylist ERROR_INVALID_INPUT_TYPE:I = -0x30

.field public static final greylist ERROR_INVALID_LENGTH:I = -0x33

.field public static final greylist ERROR_INVALID_LOCALE:I = -0x2c

.field public static final greylist ERROR_INVALID_MEDIA:I = -0x39

.field public static final greylist ERROR_INVALID_MODE_TYPE:I = -0x2b

.field public static final greylist ERROR_INVALID_PACKAGE:I = -0x21

.field public static final greylist ERROR_INVALID_PASSCODE:I = -0x20

.field public static final greylist ERROR_INVALID_PERCENT_VALUE:I = -0x2a

.field public static final greylist ERROR_INVALID_PERMISSION:I = -0x25

.field public static final greylist ERROR_INVALID_RING_TONE_TYPE:I = -0x22

.field public static final greylist ERROR_INVALID_ROTATION_TYPE:I = -0x27

.field public static final greylist ERROR_INVALID_SOUND_TYPE:I = -0x26

.field public static final greylist ERROR_INVALID_STRING:I = -0x28

.field public static final greylist ERROR_INVALID_STRING_TYPE:I = -0x29

.field public static final greylist ERROR_INVALID_TIMEOUT:I = -0x2d

.field public static final greylist ERROR_INVALID_UID:I = -0x2e

.field public static final greylist ERROR_INVALID_VALUE:I = -0x32

.field public static final greylist ERROR_NOT_FOUND:I = -0x36

.field public static final greylist ERROR_NOT_SUPPORTED:I = -0x6

.field public static final greylist ERROR_PERMISSION_DENIED:I = -0x4

.field public static final greylist ERROR_POLICY_RESTRICTED:I = -0x7

.field public static final greylist ERROR_PRO_KIOSK_ACTIVE:I = -0x3

.field public static final greylist ERROR_PRO_KIOSK_NOT_ACTIVE:I = -0x2

.field public static final greylist ERROR_RING_TONE_NOT_FOUND:I = -0x23

.field public static final greylist ERROR_SIM_NOT_READY:I = -0x38

.field public static final greylist ERROR_UNKNOWN:I = -0x7d0

.field public static final greylist ETHERNET_DHCP:I = 0x0

.field public static final greylist ETHERNET_STATIC_IP:I = 0x1

.field public static final greylist EXTRA_KEY_CODE:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.KEY_CODE"

.field public static final greylist EXTRA_REPORT_TYPE:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.KEY_REPORT_TYPE"

.field public static final greylist EXTRA_REPORT_TYPE_NEW:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.KEY_REPORT_TYPE_NEW"

.field public static final greylist EXTRA_REPORT_TYPE_NEW_LONG_UP:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.EXTRA_REPORT_TYPE_NEW_LONG_UP"

.field public static final greylist FLAG_LOCK_DEX:I = 0xa

.field public static final greylist FLAG_SYSTEM_DEX:I = 0x9

.field public static final greylist FOLDER_COLOUR_1:I = 0x1

.field public static final greylist FOLDER_COLOUR_2:I = 0x2

.field public static final greylist FOLDER_COLOUR_3:I = 0x3

.field public static final greylist FOLDER_COLOUR_4:I = 0x4

.field public static final greylist FOLDER_COLOUR_5:I = 0x5

.field public static final greylist GESTURE_AIR_COMMAND:I = 0x0

.field public static final greylist GESTURE_AIR_VIEW:I = 0x1

.field public static final greylist HDMI_AUTO_ENTER_DEFAULT:I = 0x9

.field public static final greylist HDMI_AUTO_ENTER_ON:I = 0x1

.field public static final greylist HDMI_AUTO_ENTER_RESET:I = 0x2

.field public static final greylist HDMI_AUTO_ENTER_RESTORE:I = 0x0

.field public static final greylist HIDE:I = 0x3

.field public static final greylist HOME_SCREEN_AND_APPS:I = 0x1

.field public static final greylist HOME_SCREEN_ONLY:I = 0x0

.field public static final greylist IMMEDIATELY:I = 0x2

.field public static final greylist INTENT_STATE_API_ENABLED:Ljava/lang/String; = "getHardKeyIntentState"

.field public static final greylist ITALIC_TEXT_STYLE:I = 0x2

.field public static final greylist KERNEL_LOG:I = 0x2

.field public static final greylist KEYBOARD_MODE_NORMAL:I = 0x0

.field public static final greylist KEYBOARD_MODE_PREDICTION_OFF:I = 0x1

.field public static final greylist KEYBOARD_MODE_SETTINGS_OFF:I = 0x2

.field public static final greylist KEY_ACTION_DOUBLE:I = 0x8

.field public static final greylist KEY_ACTION_DOWN:I = 0x1

.field public static final greylist KEY_ACTION_DOWN_UP:I = 0x3

.field public static final greylist KEY_ACTION_LONG:I = 0x4

.field public static final greylist KEY_ACTION_UP:I = 0x2

.field public static final greylist KNOX_CUSTOM_MANAGER_SERVICE:Ljava/lang/String; = "knoxcustom"

.field public static final greylist LOCK_SCREEN_ADDITIONAL_INFO:I = 0x80

.field public static final greylist LOCK_SCREEN_ALL:I = 0x3ff

.field public static final greylist LOCK_SCREEN_BATTERY_INFO:I = 0x2

.field public static final greylist LOCK_SCREEN_CARRIER_INFO:I = 0x4

.field public static final greylist LOCK_SCREEN_CLOCK:I = 0x1

.field public static final greylist LOCK_SCREEN_DATE:I = 0x10

.field public static final greylist LOCK_SCREEN_EMERGENCY_CALL:I = 0x8

.field public static final greylist LOCK_SCREEN_HELP_TEXT:I = 0x100

.field public static final greylist LOCK_SCREEN_NONE:I = 0x0

.field public static final greylist LOCK_SCREEN_NOTIFICATIONS:I = 0x200

.field public static final greylist LOCK_SCREEN_OVERRIDE_NONE:I = 0x2

.field public static final greylist LOCK_SCREEN_OVERRIDE_NORMAL:I = 0x0

.field public static final greylist LOCK_SCREEN_OVERRIDE_SWIPE:I = 0x1

.field public static final greylist LOCK_SCREEN_OWNER_INFO:I = 0x20

.field public static final greylist LOCK_SCREEN_SHORTCUT:I = 0x40

.field public static final greylist LOGCAT_LOG:I = 0x1

.field public static final greylist MAX_HOME_SCREEN_NUM:I = 0x7

.field public static final greylist MAX_QUICK_EDIT_ITEMS_PHONE:I = 0xa

.field public static final greylist MAX_QUICK_EDIT_ITEMS_TABLET:I = 0xe

.field public static final greylist MEDIA_PLAYBACK:I = 0x3

.field public static final greylist MOTION:I = 0x1

.field public static final greylist MULTI_WINDOW_FIXED_STATE:I = 0x1b9

.field public static final greylist MULTI_WINDOW_PERCENTAGE:I = 0x1ba

.field public static final greylist NETWORK_TYPE_GSM_ONLY:I = 0x1

.field public static final greylist NETWORK_TYPE_LTE_GSM_WCDMA:I = 0x9

.field public static final greylist NETWORK_TYPE_LTE_ONLY:I = 0xb

.field public static final greylist NETWORK_TYPE_WCDMA_ONLY:I = 0x2

.field public static final greylist NETWORK_TYPE_WCDMA_PREF:I = 0x0

.field public static final greylist NORMAL:I = 0x0

.field public static final greylist NOTIFICATIONS:I = 0x5

.field public static final greylist NOTIFICATIONS_ALL:I = 0x1f

.field public static final greylist NOTIFICATIONS_BATTERY_FULL:I = 0x2

.field public static final greylist NOTIFICATIONS_BATTERY_LOW:I = 0x1

.field public static final greylist NOTIFICATIONS_NITZ_SET_TIME:I = 0x10

.field public static final greylist NOTIFICATIONS_NONE:I = 0x0

.field public static final greylist NOTIFICATIONS_SAFE_VOLUME:I = 0x4

.field public static final greylist NOTIFICATIONS_STATUS_BAR:I = 0x8

.field public static final greylist OFF:I = 0x0

.field public static final greylist ON:I = 0x1

.field public static final greylist PACKAGE_STRING:I = 0xdd

.field public static final greylist PALM_MOTION:I = 0x2

.field public static final greylist POWER_DIALOG_ACCESSIBILITY:I = 0x1

.field public static final greylist POWER_DIALOG_AIRPLANEMODE:I = 0x20

.field public static final greylist POWER_DIALOG_ALL:I = 0x3ff

.field public static final greylist POWER_DIALOG_BUGREPORT:I = 0x100

.field public static final greylist POWER_DIALOG_DATAMODETOGGLE:I = 0x10

.field public static final greylist POWER_DIALOG_EMERGENCY:I = 0x80

.field public static final greylist POWER_DIALOG_NONE:I = 0x0

.field public static final greylist POWER_DIALOG_POWEROFF:I = 0x4

.field public static final greylist POWER_DIALOG_RESTART:I = 0x40

.field public static final greylist POWER_DIALOG_SILENTMODE:I = 0x200

.field public static final greylist POWER_DIALOG_SLEEP:I = 0x8

.field public static final greylist POWER_DIALOG_TALKBACK:I = 0x2

.field public static final greylist POWER_SAVING_OFF:I = 0x0

.field public static final greylist POWER_SAVING_ON:I = 0x1

.field public static final greylist POWER_SAVING_ULTRA:I = 0x2

.field public static final greylist POWER_SAVING_ULTRA_OFF:I = 0x3

.field public static final greylist PRO_KIOSK_OFF_STRING:I = 0x71

.field public static final greylist PRO_KIOSK_ON_STRING:I = 0x70

.field public static final greylist PRO_KIOSK_OPTION_STRING:I = 0x6f

.field public static final greylist PRO_KIOSK_SETTINGS_ALL:I = 0x7

.field public static final greylist PRO_KIOSK_SETTINGS_BLUETOOTH:I = 0x2

.field public static final greylist PRO_KIOSK_SETTINGS_LOCATION:I = 0x4

.field public static final greylist PRO_KIOSK_SETTINGS_NONE:I = 0x0

.field public static final greylist PRO_KIOSK_SETTINGS_WIFI:I = 0x1

.field public static final greylist QUICK_PANEL_AIRPLANE_MODE:I = 0x8

.field public static final greylist QUICK_PANEL_ALL:I = 0xffff

.field public static final greylist QUICK_PANEL_ALL_SHARE_CAST:I = 0xf

.field public static final greylist QUICK_PANEL_ALWAYS_ON_DISPLAY:I = 0x16

.field public static final greylist QUICK_PANEL_AUTO_ROTATE:I = 0x4

.field public static final greylist QUICK_PANEL_BATTERY_MODE:I = 0x17

.field public static final greylist QUICK_PANEL_BLUETOOTH:I = 0x5

.field public static final greylist QUICK_PANEL_BLUE_LIGHT_FILTER:I = 0x15

.field public static final greylist QUICK_PANEL_BUTTON_ALL:I = 0x7

.field public static final greylist QUICK_PANEL_BUTTON_BRIGHTNESS:I = 0x4

.field public static final greylist QUICK_PANEL_BUTTON_NONE:I = 0x0

.field public static final greylist QUICK_PANEL_BUTTON_QUICK_CONNECT:I = 0x2

.field public static final greylist QUICK_PANEL_BUTTON_S_FINDER:I = 0x1

.field public static final greylist QUICK_PANEL_BUTTON_USERS:I = 0x80

.field public static final greylist QUICK_PANEL_DAILY_BOARD:I = 0x21

.field public static final greylist QUICK_PANEL_DEVICE_VISIBILITY:I = 0x14

.field public static final greylist QUICK_PANEL_DEX_MODE:I = 0x18

.field public static final greylist QUICK_PANEL_DOLBY:I = 0x19

.field public static final greylist QUICK_PANEL_DORMANT_MODE:I = 0x9

.field public static final greylist QUICK_PANEL_LOCATION:I = 0x2

.field public static final greylist QUICK_PANEL_MOBILE_DATA:I = 0x6

.field public static final greylist QUICK_PANEL_MULTI_WINDOW:I = 0x12

.field public static final greylist QUICK_PANEL_NFC:I = 0x10

.field public static final greylist QUICK_PANEL_NONE:I = 0x0

.field public static final greylist QUICK_PANEL_PERSONAL_MODE:I = 0xe

.field public static final greylist QUICK_PANEL_POWER_SAVING:I = 0x7

.field public static final greylist QUICK_PANEL_SECURE_FOLDER:I = 0x20

.field public static final greylist QUICK_PANEL_SILENT_MODE:I = 0x3

.field public static final greylist QUICK_PANEL_SMART_STAY:I = 0xd

.field public static final greylist QUICK_PANEL_SYNC:I = 0x11

.field public static final greylist QUICK_PANEL_S_FINDER:I = 0x13

.field public static final greylist QUICK_PANEL_TORCH_LIGHT:I = 0xa

.field public static final greylist QUICK_PANEL_ULTRA_POWER_SAVING:I = 0xb

.field public static final greylist QUICK_PANEL_WIFI:I = 0x1

.field public static final greylist QUICK_PANEL_WIFI_HOTSPOT:I = 0xc

.field public static final greylist RECENT_LONGPRESS_GLOBAL:I = 0x2

.field public static final greylist RECENT_LONGPRESS_HOME:I = 0x1

.field public static final greylist RECENT_LONGPRESS_OFF:I = 0x0

.field public static final greylist REMOVE:I = 0x6

.field public static final greylist REPORT_STATE_API_ENABLED:Ljava/lang/String; = "getHardKeyReportState"

.field public static final greylist REPORT_STATE_KEY_DOWN:Ljava/lang/String; = "reportStateOnKeyedDown"

.field public static final greylist REPORT_STATE_KEY_UP:Ljava/lang/String; = "reportStateOnKeyedUp"

.field public static final greylist RESTORE:I = 0x2

.field public static final greylist RINGER:I = 0x2

.field public static final greylist ROTATION_0:I = 0x0

.field public static final greylist ROTATION_180:I = 0x2

.field public static final greylist ROTATION_270:I = 0x3

.field public static final greylist ROTATION_90:I = 0x1

.field public static final greylist ROTATION_CURRENT:I = -0x1

.field public static final greylist SCREEN_NUMBER_STRING:Ljava/lang/String; = "CDM_SCREEN_NUMBER"

.field public static final greylist SENSOR_ACCELEROMETER:I = 0x2

.field public static final greylist SENSOR_ALL:I = 0x7f

.field public static final greylist SENSOR_GYROSCOPE:I = 0x1

.field public static final greylist SENSOR_LIGHT:I = 0x4

.field public static final greylist SENSOR_MAGNETIC:I = 0x20

.field public static final greylist SENSOR_NONE:I = 0x0

.field public static final greylist SENSOR_ORIENTATION:I = 0x8

.field public static final greylist SENSOR_PRESSURE:I = 0x40

.field public static final greylist SENSOR_PROXIMITY:I = 0x10

.field public static final greylist SETTINGS_ALL:I = 0x1fff

.field public static final greylist SETTINGS_ALL_PREVIOUS:I = 0x7ff

.field public static final greylist SETTINGS_APPLICATIONS:I = 0x200

.field public static final greylist SETTINGS_BACKUP:I = 0x800

.field public static final greylist SETTINGS_BACKUP_RESET:I = 0x40

.field public static final greylist SETTINGS_BLUETOOTH:I = 0x2

.field public static final greylist SETTINGS_DEVELOPER:I = 0x100

.field public static final greylist SETTINGS_FLIGHT_MODE:I = 0x4

.field public static final greylist SETTINGS_LANGUAGE:I = 0x20

.field public static final greylist SETTINGS_LOCATION:I = 0x400

.field public static final greylist SETTINGS_LOCK_SCREEN:I = 0x10

.field public static final greylist SETTINGS_MULTI_WINDOW:I = 0x8

.field public static final greylist SETTINGS_RESET:I = 0x1000

.field public static final greylist SETTINGS_USERS:I = 0x80

.field public static final greylist SETTINGS_WIFI:I = 0x1

.field public static final greylist SHORTCUT_APP_TYPE:I = 0x1

.field public static final greylist SHORTCUT_FILE_TYPE:I = 0x2

.field public static final greylist SHORTCUT_FOLDER_TYPE:I = 0x3

.field public static final greylist SHOW:I = 0x2

.field public static final greylist SOURCE_ADDRESS:I = 0x14b

.field public static final greylist SUCCESS:I = 0x0

.field public static final greylist SYSTEM_SOUNDS:I = 0x1

.field public static final greylist SYSTEM_SOUNDS_ALL:I = 0x3f

.field public static final greylist SYSTEM_SOUNDS_DTMF_DIALING:I = 0x1

.field public static final greylist SYSTEM_SOUNDS_HAPTIC_FEEDBACK:I = 0x8

.field public static final greylist SYSTEM_SOUNDS_LOCKSCREEN:I = 0x4

.field public static final greylist SYSTEM_SOUNDS_PEN_DETACH:I = 0x20

.field public static final greylist SYSTEM_SOUNDS_SIP_KEY_FEEDBACK:I = 0x10

.field public static final greylist SYSTEM_SOUNDS_SOUND_EFFECTS:I = 0x2

.field public static final greylist TAG:Ljava/lang/String; = "CustomDeviceManager"

.field public static final greylist TYPE_GRID:I = 0x2

.field public static final greylist TYPE_NOTIFICATION:I = 0x3

.field public static final greylist TYPE_NOTIFICATION_SECOND:I = 0x4

.field public static final greylist TYPE_RINGTONE:I = 0x1

.field public static final greylist TYPE_RINGTONE_SECOND:I = 0x2

.field public static final greylist USB_CONNECTION_TYPE_CHARGING:I = 0x4

.field public static final greylist USB_CONNECTION_TYPE_DEFAULT:I = 0x0

.field public static final greylist USB_CONNECTION_TYPE_MIDI:I = 0x3

.field public static final greylist USB_CONNECTION_TYPE_MTP:I = 0x1

.field public static final greylist USB_CONNECTION_TYPE_PTP:I = 0x2

.field public static final greylist USB_CONNECTION_TYPE_TETHERING:I = 0x5

.field public static final greylist USB_DETACHED:I = 0x1

.field public static final greylist USE_AUTO:I = -0x1

.field public static final greylist USE_DEFAULT:I = 0x0

.field public static final greylist VIBRATION_CALL:I = 0x0

.field public static final greylist VIBRATION_MAX_INTENSITY:I = 0x5

.field public static final greylist VIBRATION_NOTIFICATION:I = 0x1

.field public static final greylist VIBRATION_SYSTEM:I = 0x2

.field public static final greylist VOICE_CALL:I = 0x0

.field public static final greylist VOLUME_CONTROL_STREAM_DEFAULT:I = 0x0

.field public static final greylist VOLUME_CONTROL_STREAM_MUSIC:I = 0x3

.field public static final greylist VOLUME_CONTROL_STREAM_NOTIFICATION:I = 0x4

.field public static final greylist VOLUME_CONTROL_STREAM_RING:I = 0x2

.field public static final greylist VOLUME_CONTROL_STREAM_SYSTEM:I = 0x1

.field public static final greylist WIDGET_APP_TYPE:I = 0x5

.field public static final greylist WIDGET_SURFACE_TYPE:I = 0x7

.field public static final greylist WIFI_FREQUENCY_BAND_2GHZ:I = 0x2

.field public static final greylist WIFI_FREQUENCY_BAND_5GHZ:I = 0x1

.field public static final greylist WIFI_FREQUENCY_BAND_AUTO:I

.field public static greylist sContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public static greylist sCustomDeviceManager:Lcom/samsung/android/knox/custom/CustomDeviceManager;


# instance fields
.field public greylist mContentResolver:Landroid/content/ContentResolver;

.field public greylist mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/samsung/android/knox/custom/CustomDeviceManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 5
    .line 6
    return-void
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

.method public static declared-synchronized greylist getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;
    .registers 5

    const-class v0, Lcom/samsung/android/knox/custom/CustomDeviceManager;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager;->sCustomDeviceManager:Lcom/samsung/android/knox/custom/CustomDeviceManager;

    if-nez v1, :cond_e

    .line 2
    new-instance v1, Lcom/samsung/android/knox/custom/CustomDeviceManager;

    invoke-direct {v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;-><init>()V

    sput-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager;->sCustomDeviceManager:Lcom/samsung/android/knox/custom/CustomDeviceManager;

    .line 3
    :cond_e
    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    if-nez v1, :cond_33

    .line 4
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 5
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    sput-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    goto :goto_33

    .line 6
    :cond_26
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 7
    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(IZI)V

    .line 8
    sput-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 9
    :cond_33
    :goto_33
    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager;->sCustomDeviceManager:Lcom/samsung/android/knox/custom/CustomDeviceManager;
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_37

    monitor-exit v0

    return-object v1

    :catchall_37
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized greylist getInstance(Landroid/content/Context;I)Lcom/samsung/android/knox/custom/CustomDeviceManager;
    .registers 5

    const-class v0, Lcom/samsung/android/knox/custom/CustomDeviceManager;

    monitor-enter v0

    .line 10
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4d

    const-string v1, "com.samsung.android.knox.kpecore"

    .line 11
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4d

    .line 12
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager;->sCustomDeviceManager:Lcom/samsung/android/knox/custom/CustomDeviceManager;

    if-nez p0, :cond_1c

    .line 13
    new-instance p0, Lcom/samsung/android/knox/custom/CustomDeviceManager;

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/CustomDeviceManager;-><init>()V

    sput-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager;->sCustomDeviceManager:Lcom/samsung/android/knox/custom/CustomDeviceManager;

    .line 14
    :cond_1c
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    if-eqz p0, :cond_24

    iget p0, p0, Lcom/samsung/android/knox/ContextInfo;->mDALessCallerUid:I

    if-eq p1, p0, :cond_49

    .line 15
    :cond_24
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3d

    .line 16
    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(IZI)V

    sput-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    goto :goto_49

    .line 17
    :cond_3d
    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(IZI)V

    sput-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 18
    :cond_49
    :goto_49
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager;->sCustomDeviceManager:Lcom/samsung/android/knox/custom/CustomDeviceManager;
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_55

    monitor-exit v0

    return-object p0

    .line 19
    :cond_4d
    :try_start_4d
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Can only be called by com.samsung.android.knox.kpecore"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_55
    .catchall {:try_start_4d .. :try_end_55} :catchall_55

    :catchall_55
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final greylist checkEnterprisePermission(Ljava/lang/String;)Z
    .registers 3

    .line 0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 1
    .line 2
    .line 3
    move-result-object v0

    .line 4
    if-eqz v0, :cond_15

    .line 5
    .line 6
    :try_start_6
    iget-object p0, p0, Lcom/samsung/android/knox/custom/CustomDeviceManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 7
    .line 8
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->checkEnterprisePermission(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result p0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    .line 12
    return p0

    .line 13
    :catch_d
    move-exception p0

    .line 14
    const-string p1, "CustomDeviceManager"

    .line 15
    .line 16
    const-string v0, "Failed talking with KnoxCustomManager service"

    .line 17
    .line 18
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    .line 20
    .line 21
    :cond_15
    const/4 p0, 0x0

    .line 22
    return p0
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

.method public final greylist earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z
    .registers 2

    .line 0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getSdkVersion()Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    .line 1
    .line 2
    .line 3
    move-result-object p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-ge p0, p1, :cond_10

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    goto :goto_11

    .line 16
    :cond_10
    const/4 p0, 0x0

    .line 17
    :goto_11
    return p0
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

.method public final greylist getContentResolver()Landroid/content/ContentResolver;
    .registers 6

    .line 0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/CustomDeviceManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 1
    .line 2
    if-nez v0, :cond_35

    .line 3
    .line 4
    :try_start_4
    const-string v0, "android.app.ActivityThread"

    .line 5
    .line 6
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "currentActivityThread"

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    new-array v3, v2, [Ljava/lang/Class;

    .line 14
    .line 15
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-virtual {v1, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v3, "getSystemContext"

    .line 25
    .line 26
    new-array v4, v2, [Ljava/lang/Class;

    .line 27
    .line 28
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_35

    .line 33
    .line 34
    new-array v2, v2, [Ljava/lang/Object;

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroid/content/Context;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/samsung/android/knox/custom/CustomDeviceManager;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_30} :catch_31

    .line 47
    .line 48
    goto :goto_35

    .line 49
    :catch_31
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    :cond_35
    :goto_35
    iget-object p0, p0, Lcom/samsung/android/knox/custom/CustomDeviceManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 54
    .line 55
    return-object p0
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

.method public final greylist getDexManager()Lcom/samsung/android/knox/dex/DexManager;
    .registers 1

    .line 0
    invoke-static {}, Lcom/samsung/android/knox/dex/DexManager;->getInstance()Lcom/samsung/android/knox/dex/DexManager;

    .line 1
    .line 2
    .line 3
    move-result-object p0

    .line 4
    return-object p0
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

.method public final greylist getProKioskManager()Lcom/samsung/android/knox/custom/ProKioskManager;
    .registers 2

    .line 0
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 1
    .line 2
    const-string v0, "getProKioskManager"

    .line 3
    .line 4
    invoke-static {p0, v0}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
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

.method public final greylist getSdkVersion()Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;
    .registers 3

    .line 0
    const-string p0, "28"

    .line 1
    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    const-string v0, "36"

    .line 7
    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-ltz p0, :cond_14

    .line 13
    .line 14
    const/4 v1, 0x4

    .line 15
    if-gt p0, v1, :cond_14

    .line 16
    .line 17
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_14
    const/4 v1, 0x5

    .line 21
    if-lt p0, v1, :cond_1d

    .line 22
    .line 23
    const/4 v1, 0x6

    .line 24
    if-gt p0, v1, :cond_1d

    .line 25
    .line 26
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_4:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_1d
    const/4 v1, 0x7

    .line 30
    if-lt p0, v1, :cond_27

    .line 31
    .line 32
    const/16 v1, 0x9

    .line 33
    .line 34
    if-gt p0, v1, :cond_27

    .line 35
    .line 36
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_5:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_27
    const/16 v1, 0xa

    .line 40
    .line 41
    if-lt p0, v1, :cond_32

    .line 42
    .line 43
    const/16 v1, 0xb

    .line 44
    .line 45
    if-gt p0, v1, :cond_32

    .line 46
    .line 47
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_6:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    .line 48
    .line 49
    return-object p0

    .line 50
    :cond_32
    const/16 v1, 0xc

    .line 51
    .line 52
    if-ne p0, v1, :cond_39

    .line 53
    .line 54
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_7:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    .line 55
    .line 56
    return-object p0

    .line 57
    :cond_39
    const/16 v1, 0xd

    .line 58
    .line 59
    if-ne p0, v1, :cond_40

    .line 60
    .line 61
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_7_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    .line 62
    .line 63
    return-object p0

    .line 64
    :cond_40
    const/16 v1, 0xe

    .line 65
    .line 66
    if-ne p0, v1, :cond_47

    .line 67
    .line 68
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_8:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    .line 69
    .line 70
    return-object p0

    .line 71
    :cond_47
    const/16 v1, 0xf

    .line 72
    .line 73
    if-ne p0, v1, :cond_4e

    .line 74
    .line 75
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_9:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    .line 76
    .line 77
    return-object p0

    .line 78
    :cond_4e
    const/16 p0, 0x18

    .line 79
    .line 80
    if-ne v0, p0, :cond_55

    .line 81
    .line 82
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_0:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    .line 83
    .line 84
    return-object p0

    .line 85
    :cond_55
    const/16 p0, 0x19

    .line 86
    .line 87
    if-ne v0, p0, :cond_5c

    .line 88
    .line 89
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    .line 90
    .line 91
    return-object p0

    .line 92
    :cond_5c
    const/16 p0, 0x1a

    .line 93
    .line 94
    if-ne v0, p0, :cond_63

    .line 95
    .line 96
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_2:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    .line 97
    .line 98
    return-object p0

    .line 99
    :cond_63
    const/16 p0, 0x1b

    .line 100
    .line 101
    if-ne v0, p0, :cond_6a

    .line 102
    .line 103
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_2_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    .line 104
    .line 105
    return-object p0

    .line 106
    :cond_6a
    const/16 p0, 0x1c

    .line 107
    .line 108
    if-ne v0, p0, :cond_71

    .line 109
    .line 110
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_3:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    .line 111
    .line 112
    return-object p0

    .line 113
    :cond_71
    const/16 p0, 0x1d

    .line 114
    .line 115
    if-ne v0, p0, :cond_78

    .line 116
    .line 117
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_4:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    .line 118
    .line 119
    return-object p0

    .line 120
    :cond_78
    const/16 p0, 0x1e

    .line 121
    .line 122
    if-ne v0, p0, :cond_7f

    .line 123
    .line 124
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_4_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    .line 125
    .line 126
    return-object p0

    .line 127
    :cond_7f
    const/16 p0, 0x1f

    .line 128
    .line 129
    if-ne v0, p0, :cond_86

    .line 130
    .line 131
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_5:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    .line 132
    .line 133
    return-object p0

    .line 134
    :cond_86
    const/16 p0, 0x20

    .line 135
    .line 136
    if-ne v0, p0, :cond_8d

    .line 137
    .line 138
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_6:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    .line 139
    .line 140
    return-object p0

    .line 141
    :cond_8d
    const/16 p0, 0x21

    .line 142
    .line 143
    if-ne v0, p0, :cond_94

    .line 144
    .line 145
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_7:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    .line 146
    .line 147
    return-object p0

    .line 148
    :cond_94
    const/16 p0, 0x22

    .line 149
    .line 150
    if-ne v0, p0, :cond_9b

    .line 151
    .line 152
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_7_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    .line 153
    .line 154
    return-object p0

    .line 155
    :cond_9b
    const/16 p0, 0x23

    .line 156
    .line 157
    if-ne v0, p0, :cond_a2

    .line 158
    .line 159
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_8:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    .line 160
    .line 161
    return-object p0

    .line 162
    :cond_a2
    const/16 p0, 0x24

    .line 163
    .line 164
    if-lt v0, p0, :cond_a9

    .line 165
    .line 166
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_9:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    .line 167
    .line 168
    return-object p0

    .line 169
    :cond_a9
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    .line 170
    .line 171
    return-object p0
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

.method public final greylist getSerialNumber()Ljava/lang/String;
    .registers 1

    const-string p0, "00000000000"

    return-object p0
.end method

.method public final greylist getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/CustomDeviceManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 1
    .line 2
    if-nez v0, :cond_10

    .line 3
    .line 4
    const-string v0, "knoxcustom"

    .line 5
    .line 6
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/samsung/android/knox/custom/CustomDeviceManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 15
    .line 16
    :cond_10
    iget-object p0, p0, Lcom/samsung/android/knox/custom/CustomDeviceManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 17
    .line 18
    return-object p0
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

.method public final greylist getSettingsManager()Lcom/samsung/android/knox/custom/SettingsManager;
    .registers 1

    .line 0
    invoke-static {}, Lcom/samsung/android/knox/custom/SettingsManager;->getInstance()Lcom/samsung/android/knox/custom/SettingsManager;

    .line 1
    .line 2
    .line 3
    move-result-object p0

    .line 4
    return-object p0
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

.method public final greylist getSystemManager()Lcom/samsung/android/knox/custom/SystemManager;
    .registers 1

    .line 0
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 1
    .line 2
    iget p0, p0, Lcom/samsung/android/knox/ContextInfo;->mDALessCallerUid:I

    .line 3
    .line 4
    if-lez p0, :cond_b

    .line 5
    .line 6
    invoke-static {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getInstance(I)Lcom/samsung/android/knox/custom/SystemManager;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :cond_b
    invoke-static {}, Lcom/samsung/android/knox/custom/SystemManager;->getInstance()Lcom/samsung/android/knox/custom/SystemManager;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
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

.method public final greylist laterSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z
    .registers 2

    .line 0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getSdkVersion()Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    .line 1
    .line 2
    .line 3
    move-result-object p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-le p0, p1, :cond_10

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    goto :goto_11

    .line 16
    :cond_10
    const/4 p0, 0x0

    .line 17
    :goto_11
    return p0
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
