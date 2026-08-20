.class public Lcom/android/server/input/InputManagerService;
.super Landroid/hardware/input/IInputManager$Stub;
.source "InputManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/input/InputManagerService$InputMethodManagerCallbacks;,
        Lcom/android/server/input/InputManagerService$DesktopModeServiceCallbacks;,
        Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;,
        Lcom/android/server/input/InputManagerService$LocalService;,
        Lcom/android/server/input/InputManagerService$VibratorToken;,
        Lcom/android/server/input/InputManagerService$PointerIconChangedListenerRecord;,
        Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;,
        Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;,
        Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;,
        Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;,
        Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;,
        Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;,
        Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;,
        Lcom/android/server/input/InputManagerService$InputMonitorHost;,
        Lcom/android/server/input/InputManagerService$InputFilterHost;,
        Lcom/android/server/input/InputManagerService$InputManagerHandler;,
        Lcom/android/server/input/InputManagerService$SecAccessoryManagerCallbacks;,
        Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;,
        Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;,
        Lcom/android/server/input/InputManagerService$PointerDisplayIdChangedArgs;,
        Lcom/android/server/input/InputManagerService$LightSession;,
        Lcom/android/server/input/InputManagerService$VibrationInfo;,
        Lcom/android/server/input/InputManagerService$WirelessKeyboardShareChangedListenerRecord;,
        Lcom/android/server/input/InputManagerService$Injector;,
        Lcom/android/server/input/InputManagerService$KeyCountRunnable;
    }
.end annotation


# static fields
.field public static final ACTION_KIDSHOME_DEFAULT_HOME_CHANGE:Ljava/lang/String; = "com.sec.android.app.kidshome.action.DEFAULT_HOME_CHANGE"

.field public static final ACTION_ML_STATE:Ljava/lang/String; = "com.samsung.android.mirrorlink.ML_STATE"

.field public static final ACTION_POGO_KEYBOARD_CHANGED:Ljava/lang/String; = "com.samsung.android.input.POGO_KEYBOARD_CHANGED"

.field public static final ACTION_SARDEVICE_CP:Ljava/lang/String; = "com.sec.intent.action.SARDEVICE_CP"

.field public static final ACTION_SET_INWATER_TOUCH:Ljava/lang/String; = "com.samsung.android.intent.action.SET_INWATER_TOUCH"

.field public static final BACK_BUTTON_BEHAVIOR:Ljava/lang/String; = "mouse_additional_1_option"

.field public static final BACK_BUTTON_DEFAULT:I = 0x7

.field public static final BLOCK_DEVICE_INTERNAL_TKEY:I = 0x2

.field public static final BLOCK_DEVICE_INTERNAL_TSP:I = 0x1

.field public static final BLOCK_DEVICE_NONE:I = 0x0

.field public static final BTN_MOUSE:I = 0x110

.field public static final COVER_TEST_MODE:Ljava/lang/String; = "cover_test_mode"

.field public static final DEBUG:Z = false

.field public static final DEEP_PRESS_ENABLED:Ljava/lang/String; = "deep_press_enabled"

.field public static final DEFAULT_ADDITIONAL_DISPLAY_INPUT_PROPERTIES:Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;

.field public static final DEFAULT_VIBRATION_MAGNITUDE:I = 0xc0

.field public static final DEX_SETTINGS_URI:Landroid/net/Uri;

.field public static final DISPLAY_TYPE_DOP:I = 0x7d1

.field public static final DISPLAY_TYPE_DUAL:I = 0x66

.field public static final DISPLAY_TYPE_NONE:I = 0x0

.field public static final DISPLAY_TYPE_STANDALONE:I = 0x65

.field public static final ENHANCE_POINTER_PRECISION:Ljava/lang/String; = "enhance_pointer_precision"

.field public static final EXCLUDED_DEVICES_PATH:Ljava/lang/String; = "etc/excluded-input-devices.xml"

.field public static final FLOW_MOBILE_BELOW_MONITOR:I = 0x2

.field public static final FLOW_MOBILE_TO_MONITOR:I = 0x0

.field public static final FLOW_MONITOR_TO_MOBILE:I = 0x1

.field public static final FOLDING_ANGLE_FULLY_CLOSED:I = 0x0

.field public static final FOLDING_ANGLE_FULLY_OPEN:I = 0x2

.field public static final FOLDING_ANGLE_HALF_CLOSED:I = 0x1

.field public static final FORWARD_BUTTON_BEHAVIOR:Ljava/lang/String; = "mouse_additional_2_option"

.field public static final FORWARD_BUTTON_DEFAULT:I = 0x4

.field public static final GAME_TOOLS_DEVICE_ACTION:Ljava/lang/String; = "DEVICE_ACTION"

.field public static final GAME_TOOLS_DEVICE_PID:Ljava/lang/String; = "DEVICE_PID"

.field public static final GAME_TOOLS_DEVICE_VID:Ljava/lang/String; = "DEVICE_VID"

.field public static final GAME_TOOLS_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.game.gametools"

.field public static final INJECTION_TIMEOUT_MILLIS:I = 0x7530

.field public static final INTENT_ACTION_GAMEPAD_INTENTSERVICE:Ljava/lang/String; = "com.samsung.android.game.gametools.GAMEPAD_INTENTSERVICE"

.field public static final IS_TABLET_DEVICE:Z

.field public static final KEY_STATE_DOWN:I = 0x1

.field public static final KEY_STATE_UNKNOWN:I = -0x1

.field public static final KEY_STATE_UP:I = 0x0

.field public static final KEY_STATE_VIRTUAL:I = 0x2

.field public static final LOCAL_TABLET:I = 0x1

.field public static final META_BLOCK_DEVICE_EVENT:I = 0x1

.field public static final META_STARTED_SHUTDOWN:I = 0x8

.field public static final MOUSE_SCROLLING_SPEED:Ljava/lang/String; = "mouse_scrolling_speed"

.field public static final MSG_DELIVER_INPUT_DEVICES_CHANGED:I = 0x1

.field public static final MSG_DELIVER_LID_STATE_CHANGED:I = 0x67

.field public static final MSG_DELIVER_TABLET_MODE_CHANGED:I = 0x6

.field public static final MSG_INPUT_METHOD_SUBTYPE_CHANGED:I = 0x65

.field public static final MSG_MULTI_FINGER_GESTURE:I = 0x69

.field public static final MSG_POINTERICON_CHANGED:I = 0x68

.field public static final MSG_POINTER_DISPLAY_ID_CHANGED:I = 0x7

.field public static final MSG_REGISGER_UNREGISTER_FOLDINGANGLE_SENSOR:I = 0x6b

.field public static final MSG_RELOAD_DEVICE_ALIASES:I = 0x5

.field public static final MSG_RELOAD_KEYBOARD_LAYOUTS:I = 0x3

.field public static final MSG_SWITCH_KEYBOARD_LAYOUT:I = 0x2

.field public static final MSG_UPDATE_DEFAULT_KEYBOARD_LAYOUTS:I = 0x66

.field public static final MSG_UPDATE_KEYBOARD_LAYOUTS:I = 0x4

.field public static final MSG_WAKE_UP:I = 0x6a

.field public static final PACKAGE_BLOCKLIST_FOR_UNTRUSTED_TOUCHES_TOAST:[Ljava/lang/String;

.field public static final PERMISSION_KIDSHOME_DEFAULT_HOME_CHANGE:Ljava/lang/String; = "com.samsung.kidshome.broadcast.DEFAULT_HOME_CHANGE_PERMISSION"

.field public static final PERMISSION_LID_STATE:Ljava/lang/String; = "com.samsung.android.permission.LID_STATE"

.field public static final PERMISSION_SEM_SET_DEVICE_BLOCK:Ljava/lang/String; = "com.samsung.android.permission.SEM_SET_DEVICE_BLOCK"

.field public static final PERMISSION_TMS_SERVICE:Ljava/lang/String; = "com.samsung.android.permission.TMS_SERVICE_PERMISSION"

.field public static final PORT_ASSOCIATIONS_PATH:Ljava/lang/String; = "etc/input-port-associations.xml"

.field public static final REMOTE_DEVICE:I = 0x2

.field public static final SECONDARY_BUTTON_BEHAVIOR:Ljava/lang/String; = "mouse_secondary_button_option"

.field public static final SECONDARY_BUTTON_DEFAULT:I = 0x1

.field public static SEP_FULL:Z = false

.field public static final SETTINGS_FOUR_FINGER_TAP_BEHAVIOR:Ljava/lang/String; = "touchpad_gestures_four_finger_tap"

.field public static final SETTINGS_KEY_FLOW_POINTER_TO_PHONE_SCREEN:Ljava/lang/String; = "flow_pointer_is_on_dex"

.field public static final SETTINGS_KEY_POINTER_FLOW_DIRECTION:Ljava/lang/String; = "flow_pointer_from_where_dex"

.field public static final SETTINGS_KEY_SPEN_MODE:Ljava/lang/String; = "spen_mode"

.field public static final SETTINGS_THREE_FINGER_TAP_BEHAVIOR:Ljava/lang/String; = "touchpad_gestures_three_finger_tap"

.field public static final SETTING_SOURCE_CONNECT_DEXONPC:I = 0x3

.field public static final SETTING_SOURCE_CONNECT_DEX_ON_PC:Ljava/lang/String; = "dexonpc_connection_state"

.field public static final SW_CAMERA_LENS_COVER:I = 0x9

.field public static final SW_CAMERA_LENS_COVER_BIT:I = 0x200

.field public static final SW_COVER_ATTACH:I = 0x1b

.field public static final SW_COVER_ATTACH_BIT:I = 0x8000000

.field public static final SW_FLIP:I = 0x15

.field public static final SW_FLIP_BIT:I = 0x200000

.field public static final SW_GLOVE:I = 0x16

.field public static final SW_GLOVE_BIT:I = 0x400000

.field public static final SW_HEADPHONE_INSERT:I = 0x2

.field public static final SW_HEADPHONE_INSERT_BIT:I = 0x4

.field public static final SW_JACK_BITS:I = 0xd4

.field public static final SW_JACK_PHYSICAL_INSERT:I = 0x7

.field public static final SW_JACK_PHYSICAL_INSERT_BIT:I = 0x80

.field public static final SW_KEYBOARD_COVER_BACKFOLD:I = 0x1f

.field public static final SW_KEYBOARD_COVER_BACKFOLD_BIT:I = -0x80000000

.field public static final SW_KEYPAD_SLIDE:I = 0xa

.field public static final SW_KEYPAD_SLIDE_BIT:I = 0x400

.field public static final SW_LID:I = 0x0

.field public static final SW_LID_BIT:I = 0x1

.field public static final SW_LINEOUT_INSERT:I = 0x6

.field public static final SW_LINEOUT_INSERT_BIT:I = 0x40

.field public static final SW_MICROPHONE_INSERT:I = 0x4

.field public static final SW_MICROPHONE_INSERT_BIT:I = 0x10

.field public static final SW_MUTE_DEVICE:I = 0xe

.field public static final SW_MUTE_DEVICE_BIT:I = 0x4000

.field public static final SW_PEN_INSERT:I = 0x13

.field public static final SW_PEN_INSERT_BIT:I = 0x80000

.field public static final SW_TABLET_MODE:I = 0x1

.field public static final SW_TABLET_MODE_BIT:I = 0x2

.field public static final SYSFS_LCD_AOT:Ljava/lang/String; = "/sys/class/lcd/panel/aot"

.field public static final SYSFS_TOUCHKEY_EARJACK:Ljava/lang/String; = "/sys/class/sec/sec_touchkey/touchkey_earjack"

.field public static final SYSFS_TOUCHKEY_GRIPSENSING_ENABLE:Ljava/lang/String; = "/sys/class/sec/sec_touchkey/grip_sensing_enable"

.field public static final SYSFS_TOUCHKEY_SAR_ENABLE:Ljava/lang/String; = "/sys/class/sec/sec_touchkey/sar_enable"

.field public static final SYSFS_TSP_CMD:Ljava/lang/String; = "/sys/class/sec/tsp/cmd"

.field public static final SYSFS_TSP_CMD_RESULT:Ljava/lang/String; = "/sys/class/sec/tsp/cmd_result"

.field public static final SYSFS_TSP_PRESSURE_ENABLE:Ljava/lang/String; = "/sys/class/sec/tsp/pressure_enable"

.field public static final SYSFS_TSP_SUPPORT_FEATURE:Ljava/lang/String; = "/sys/class/sec/tsp/support_feature"

.field public static final TAG:Ljava/lang/String; = "InputManager"

.field public static final TERTIARY_BUTTON_BEHAVIOR:Ljava/lang/String; = "mouse_middle_button_option"

.field public static final TERTIARY_BUTTON_DEFAULT:I = 0x3

.field public static final TSP_FEATURES_SUPPORT_AOT:I = 0x1

.field public static final UNTRUSTED_TOUCHES_TOAST:Z = false

.field public static final mHighHysteresis:[F

.field public static final mLowHysteresis:[F

.field public static final mMultiFingerGestureEnable:Z


# instance fields
.field public final CLICK_BEHAVIOR_APPS:I

.field public final CLICK_BEHAVIOR_BACK:I

.field public final CLICK_BEHAVIOR_HOME:I

.field public final CLICK_BEHAVIOR_NONE:I

.field public final CLICK_BEHAVIOR_OPEN_QUICK_SETTINGS:I

.field public final CLICK_BEHAVIOR_RECENT:I

.field public final CLICK_BEHAVIOR_VIEW_NOTIFICATION:I

.field public mAcknowledgedPointerDisplayId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAdditionalDisplayInputPropertiesLock"
        }
    .end annotation
.end field

.field public mAddingPogoKeyboardIntentPending:Z

.field public final mAdditionalDisplayInputProperties:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAdditionalDisplayInputPropertiesLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;",
            ">;"
        }
    .end annotation
.end field

.field public final mAdditionalDisplayInputPropertiesLock:Ljava/lang/Object;

.field public final mAssociationsLock:Ljava/lang/Object;

.field public mAvailableInputMethods:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mBackKeyDownAdjusted:Z

.field public mBlockDeviceMode:I

.field public mBlockTkeyCallerList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mBlockTspCallerList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public final mContext:Landroid/content/Context;

.field public mControlWakeKey:Lcom/android/server/input/ControlWakeKey;

.field public mCurLocale:Ljava/util/Locale;

.field public final mCurrentDisplayProperties:Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAdditionalDisplayInputPropertiesLock"
        }
    .end annotation
.end field

.field public mCurrentFourTapBehavior:I

.field public mCurrentImeHandle:Lcom/android/server/input/InputMethodSubtypeHandle;

.field public mCurrentImeSubtype:Landroid/view/inputmethod/InputMethodSubtype;

.field public mCurrentMissingKeyboardLayoutDevice:Landroid/view/InputDevice;

.field public mCurrentThreeTapBehavior:I

.field public final mDataStore:Lcom/android/server/input/PersistentDataStore;

.field public mDefaultPointerIcon:Landroid/view/PointerIcon;

.field public mDefaultPointerIconChanged:Z

.field public mDesktopModeServiceCallbacks:Lcom/android/server/input/InputManagerService$DesktopModeServiceCallbacks;

.field public final mDeviceBlockReceiver:Landroid/content/BroadcastReceiver;

.field public mDexImeWindowVisibleInDefaultDisplay:Z

.field public mDexmode:Z

.field public mDisplayIdForPointerIcon:I

.field public final mDoubleTouchGestureEnableFile:Ljava/io/File;

.field public mDssController:Lcom/android/server/DssController;

.field public final mFoldingAngleListener:Landroid/hardware/SensorEventListener;

.field public mFoldingAngleRegistered:Z

.field public mFoldingAngleSensor:Landroid/hardware/Sensor;

.field public mFoldingState:I

.field public mForcedDefaultPointerIcon:Landroid/view/PointerIcon;

.field public mForcedDefaultPointerIconChanged:Z

.field public final mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

.field public mIcon:Landroid/view/PointerIcon;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAdditionalDisplayInputPropertiesLock"
        }
    .end annotation
.end field

.field public mIconType:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAdditionalDisplayInputPropertiesLock"
        }
    .end annotation
.end field

.field public mInputDevices:[Landroid/view/InputDevice;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInputDevicesLock"
        }
    .end annotation
.end field

.field public final mInputDevicesChangedListeners:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInputDevicesLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mInputDevicesChangedPending:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInputDevicesLock"
        }
    .end annotation
.end field

.field public final mInputDevicesLock:Ljava/lang/Object;

.field public mInputFilter:Landroid/view/IInputFilter;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInputFilterLock"
        }
    .end annotation
.end field

.field public mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInputFilterLock"
        }
    .end annotation
.end field

.field public final mInputFilterLock:Ljava/lang/Object;

.field public mInputKeyCounter:Lcom/android/server/input/InputKeyCounter;

.field public mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field public mInputMethodManagerCallbacks:Lcom/android/server/input/InputManagerService$InputMethodManagerCallbacks;

.field public final mInputMonitors:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInputMonitors"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/input/GestureMonitorSpyWindow;",
            ">;"
        }
    .end annotation
.end field

.field public final mInputWirelessKeyboardMouseShareLock:Ljava/lang/Object;

.field public mIsKidsMode:Z

.field public final mIsVibrating:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mVibratorLock"
        }
    .end annotation
.end field

.field public mKeyboardLayoutNotificationShown:Z

.field public final mKeyboardLayouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/input/KeyboardLayout;",
            ">;"
        }
    .end annotation
.end field

.field public final mKidsModeReceiver:Landroid/content/BroadcastReceiver;

.field public mLastLidEventTime:J

.field public mLatestKeyboardLayoutDevice:Landroid/view/InputDevice;

.field public final mLidStateChangedListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mLidStateLock:Ljava/lang/Object;

.field public final mLidSwitchCallbacks:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLidSwitchLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/input/InputManagerInternal$LidSwitchCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final mLidSwitchLock:Ljava/lang/Object;

.field public final mLightLock:Ljava/lang/Object;

.field public final mLightSessions:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLightLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/input/InputManagerService$LightSession;",
            ">;"
        }
    .end annotation
.end field

.field public final mMirrorLinkReceiver:Landroid/content/BroadcastReceiver;

.field public mMissingKeyboardLayoutDevice:Landroid/view/InputDevice;

.field public mMissingKeyboardLayoutNotificationPending:Z

.field public final mMultiFingerGestureListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mMultiFingerGestureLock:Ljava/lang/Object;

.field public final mNative:Lcom/android/server/input/NativeInputManagerService;

.field public mNextVibratorTokenValue:I

.field public final mNotiSwitchLock:Ljava/lang/Object;

.field public mNotificationManager:Landroid/app/NotificationManager;

.field public mOverriddenPointerDisplayId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAdditionalDisplayInputPropertiesLock"
        }
    .end annotation
.end field

.field public mPogoKeyboardConnected:Z

.field public mPointerIcon:Landroid/view/PointerIcon;

.field public final mPointerIconChangedListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/input/InputManagerService$PointerIconChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mPointerIconDisplayContext:Landroid/content/Context;

.field public final mPointerIconLock:Ljava/lang/Object;

.field public mPointerIconType:I

.field public mRequestedPointerDisplayId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAdditionalDisplayInputPropertiesLock"
        }
    .end annotation
.end field

.field public final mRuntimeAssociations:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAssociationLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mSecAccessoryManagerCallbacks:Lcom/android/server/input/InputManagerService$SecAccessoryManagerCallbacks;

.field public final mSensorAccuracyListenersToNotify:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mSensorEventListeners:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSensorEventLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mSensorEventListenersToNotify:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mSensorEventLock:Ljava/lang/Object;

.field public mSensorManager:Landroid/hardware/SensorManager;

.field public final mStaticAssociations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

.field public mSystemReady:Z

.field public final mTabletModeChangedListeners:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mTabletModeLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mTabletModeLock:Ljava/lang/Object;

.field public final mTempFullKeyboards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/InputDevice;",
            ">;"
        }
    .end annotation
.end field

.field public final mTempGamePads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/InputDevice;",
            ">;"
        }
    .end annotation
.end field

.field public final mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mTempLidStateChangedListenersToNotify:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mTempMultiFingerGestureListenersToNotify:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mTempPointerIconChangedListenersToNotify:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/input/InputManagerService$PointerIconChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mTempTabletModeChangedListenersToNotify:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mTempWirelessKeyboardShareChangedListenersToNotify:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/input/InputManagerService$WirelessKeyboardShareChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mToastDialog:Lcom/android/server/input/ToastDialog;

.field public mToolTypeForDefaultPointerIcon:I

.field public mToolTypeForForcedDefaultPointerIcon:I

.field public mUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

.field public final mUniqueIdAssociations:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAssociationLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mUseDevInputEventForAudioJack:Z

.field public final mVibratorLock:Ljava/lang/Object;

.field public final mVibratorStateListeners:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mVibratorLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/os/IVibratorStateListener;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mVibratorTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/input/InputManagerService$VibratorToken;",
            ">;"
        }
    .end annotation
.end field

.field public mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

.field public mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

.field public mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

.field public final mWirelessKeyboardShareChangedListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/input/InputManagerService$WirelessKeyboardShareChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mWirelessKeyboardShareLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$1mXaHjyvY6CqextHMBs-0Pafi_E(ZLcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/input/InputManagerService;->lambda$setPointerIconVisible$6(ZLcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2HJwF7hXz7bJDJx_IBa7Z0E5AZE(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->lambda$flatten$11(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$A_LLKWdUMgSQygJid30YKdX4FBg([Ljava/lang/String;Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->lambda$getKeyboardLayoutOverlay$12([Ljava/lang/String;Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NtwfM_rBuvGqDrdChiBS4lvAbRc(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->lambda$dumpAssociations$7(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OAKLGc9HL41_z_-H4Nii8EG0u-g(Lcom/android/server/input/InputManagerService;Landroid/view/SurfaceControl;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->lambda$configureSpyWindowGestureMonitorSurfaces$13(Landroid/view/SurfaceControl;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$QkG30iw0I7duv4crl8WnJfg-epI(FLcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/input/InputManagerService;->lambda$setPointerAcceleration$5(FLcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Yto295RJsbR5BgTXil0hVbkcyBc([Landroid/hardware/input/KeyboardLayout;Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->lambda$getKeyboardLayout$4([Landroid/hardware/input/KeyboardLayout;Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZQrlgG0pA6GPzUR-zOrYur-LkMU(Lcom/android/server/input/InputManagerService;Landroid/view/InputChannel;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->lambda$createSpyWindowGestureMonitor$0(Landroid/view/InputChannel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k9vDLVJC5CK3_tXTihoRxh_HRk0(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->lambda$dumpAssociations$9(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qmYJVmojrvSr2DCYCfyPLU3x0Jw(Lcom/android/server/input/InputManagerService;Ljava/util/HashSet;Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/input/InputManagerService;->lambda$updateKeyboardLayouts$2(Ljava/util/HashSet;Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t6oD8eQoRqvxiRrig9TxJEQMfQ0(Ljava/util/ArrayList;Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->lambda$getKeyboardLayouts$3(Ljava/util/ArrayList;Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xUzdur_pg7SYRcJ2FT7qV7IXgEQ(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->lambda$dumpAssociations$8(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y9OoOzcheSEYNhs-qAMovZqtmsI(Landroid/view/InputDevice;Ljava/util/Locale;Ljava/util/List;Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/server/input/InputManagerService;->lambda$getDefaultKeyboardLayout$1(Landroid/view/InputDevice;Ljava/util/Locale;Ljava/util/List;Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/input/InputManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurLocale(Lcom/android/server/input/InputManagerService;)Ljava/util/Locale;
    .registers 1

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mCurLocale:Ljava/util/Locale;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentMissingKeyboardLayoutDevice(Lcom/android/server/input/InputManagerService;)Landroid/view/InputDevice;
    .registers 1

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mCurrentMissingKeyboardLayoutDevice:Landroid/view/InputDevice;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDoubleTouchGestureEnableFile(Lcom/android/server/input/InputManagerService;)Ljava/io/File;
    .registers 1

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mDoubleTouchGestureEnableFile:Ljava/io/File;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFoldingAngleListener(Lcom/android/server/input/InputManagerService;)Landroid/hardware/SensorEventListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mFoldingAngleListener:Landroid/hardware/SensorEventListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFoldingAngleRegistered(Lcom/android/server/input/InputManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/input/InputManagerService;->mFoldingAngleRegistered:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFoldingAngleSensor(Lcom/android/server/input/InputManagerService;)Landroid/hardware/Sensor;
    .registers 1

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mFoldingAngleSensor:Landroid/hardware/Sensor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFoldingState(Lcom/android/server/input/InputManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/input/InputManagerService;->mFoldingState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/InputManagerService$InputManagerHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInputKeyCounter(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/InputKeyCounter;
    .registers 1

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mInputKeyCounter:Lcom/android/server/input/InputKeyCounter;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsKidsMode(Lcom/android/server/input/InputManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/input/InputManagerService;->mIsKidsMode:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmKeyboardLayoutNotificationShown(Lcom/android/server/input/InputManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLightLock(Lcom/android/server/input/InputManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mLightLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLightSessions(Lcom/android/server/input/InputManagerService;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mLightSessions:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNative(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/NativeInputManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSensorManager(Lcom/android/server/input/InputManagerService;)Landroid/hardware/SensorManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowManagerCallbacks(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;
    .registers 1

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmCurLocale(Lcom/android/server/input/InputManagerService;Ljava/util/Locale;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mCurLocale:Ljava/util/Locale;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmFoldingAngleRegistered(Lcom/android/server/input/InputManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/input/InputManagerService;->mFoldingAngleRegistered:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmFoldingState(Lcom/android/server/input/InputManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/input/InputManagerService;->mFoldingState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsKidsMode(Lcom/android/server/input/InputManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/input/InputManagerService;->mIsKidsMode:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckCallingPermission(Lcom/android/server/input/InputManagerService;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mdeliverInputDevicesChanged(Lcom/android/server/input/InputManagerService;[Landroid/view/InputDevice;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->deliverInputDevicesChanged([Landroid/view/InputDevice;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdeliverLidStateChanged(Lcom/android/server/input/InputManagerService;JZ)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->deliverLidStateChanged(JZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdeliverMultiFingerGesture(Lcom/android/server/input/InputManagerService;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->deliverMultiFingerGesture(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdeliverPointerIconChanged(Lcom/android/server/input/InputManagerService;ILandroid/view/PointerIcon;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->deliverPointerIconChanged(ILandroid/view/PointerIcon;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdeliverTabletModeChanged(Lcom/android/server/input/InputManagerService;JZ)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->deliverTabletModeChanged(JZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetVirtualMousePointerDisplayId(Lcom/android/server/input/InputManagerService;)I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->getVirtualMousePointerDisplayId()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhandlePointerDisplayIdChanged(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$PointerDisplayIdChangedArgs;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->handlePointerDisplayIdChanged(Lcom/android/server/input/InputManagerService$PointerDisplayIdChangedArgs;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleSwitchInputMethodSubtype(Lcom/android/server/input/InputManagerService;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->handleSwitchInputMethodSubtype(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleSwitchKeyboardLayout(Lcom/android/server/input/InputManagerService;Landroid/hardware/input/InputDeviceIdentifier;Lcom/android/server/input/InputMethodSubtypeHandle;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->handleSwitchKeyboardLayout(Landroid/hardware/input/InputDeviceIdentifier;Lcom/android/server/input/InputMethodSubtypeHandle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleUpdateDefaultKeyboardLayouts(Lcom/android/server/input/InputManagerService;Landroid/hardware/input/InputDeviceIdentifier;Ljava/util/HashMap;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->handleUpdateDefaultKeyboardLayouts(Landroid/hardware/input/InputDeviceIdentifier;Ljava/util/HashMap;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhideMissingKeyboardLayoutNotification(Lcom/android/server/input/InputManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->hideMissingKeyboardLayoutNotification()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monInputDevicesChangedListenerDied(Lcom/android/server/input/InputManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->onInputDevicesChangedListenerDied(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monLidStateChangedListenerDied(Lcom/android/server/input/InputManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->onLidStateChangedListenerDied(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monMultiFingerGestureListenerDied(Lcom/android/server/input/InputManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->onMultiFingerGestureListenerDied(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monPointerIconChangedListenerDied(Lcom/android/server/input/InputManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->onPointerIconChangedListenerDied(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monSensorEventListenerDied(Lcom/android/server/input/InputManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->onSensorEventListenerDied(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monTabletModeChangedListenerDied(Lcom/android/server/input/InputManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->onTabletModeChangedListenerDied(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monWirelessKeyboardShareChangedListenerDied(Lcom/android/server/input/InputManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->onWirelessKeyboardShareChangedListenerDied(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreloadDeviceAliases(Lcom/android/server/input/InputManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->reloadDeviceAliases()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreloadKeyboardLayouts(Lcom/android/server/input/InputManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveSpyWindowGestureMonitor(Lcom/android/server/input/InputManagerService;Landroid/os/IBinder;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->removeSpyWindowGestureMonitor(Landroid/os/IBinder;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDisplayEligibilityForPointerCapture(Lcom/android/server/input/InputManagerService;IZ)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->setDisplayEligibilityForPointerCapture(IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDisplayViewportsInternal(Lcom/android/server/input/InputManagerService;Ljava/util/List;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->setDisplayViewportsInternal(Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetPointerAcceleration(Lcom/android/server/input/InputManagerService;FI)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->setPointerAcceleration(FI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetPointerIconVisible(Lcom/android/server/input/InputManagerService;ZI)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->setPointerIconVisible(ZI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetVirtualMousePointerDisplayIdBlocking(Lcom/android/server/input/InputManagerService;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->setVirtualMousePointerDisplayIdBlocking(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mshowMissingKeyboardLayoutNotification(Lcom/android/server/input/InputManagerService;Landroid/view/InputDevice;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->showMissingKeyboardLayoutNotification(Landroid/view/InputDevice;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateAccessibilityLargePointerFromSettings(Lcom/android/server/input/InputManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateAccessibilityLargePointerFromSettings()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateBlockUntrustedTouchesModeFromSettings(Lcom/android/server/input/InputManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateBlockUntrustedTouchesModeFromSettings()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateDeepPressStatusFromSettings(Lcom/android/server/input/InputManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->updateDeepPressStatusFromSettings(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateKeyboardLayouts(Lcom/android/server/input/InputManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateKeyboardLayouts()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateMaximumObscuringOpacityForTouchFromSettings(Lcom/android/server/input/InputManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateMaximumObscuringOpacityForTouchFromSettings()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdatePointerIconCustomFromSettings(Lcom/android/server/input/InputManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updatePointerIconCustomFromSettings()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdatePointerSpeedFromSettings(Lcom/android/server/input/InputManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updatePointerSpeedFromSettings()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateShowTouchesFromSettings(Lcom/android/server/input/InputManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateShowTouchesFromSettings()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwakeUp(Lcom/android/server/input/InputManagerService;JILjava/lang/String;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/input/InputManagerService;->wakeUp(JILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetSEP_FULL()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/input/InputManagerService;->SEP_FULL:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmHighHysteresis()[F
    .registers 1

    sget-object v0, Lcom/android/server/input/InputManagerService;->mHighHysteresis:[F

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmLowHysteresis()[F
    .registers 1

    sget-object v0, Lcom/android/server/input/InputManagerService;->mLowHysteresis:[F

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 267
    new-instance v0, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;

    invoke-direct {v0}, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;-><init>()V

    sput-object v0, Lcom/android/server/input/InputManagerService;->DEFAULT_ADDITIONAL_DISPLAY_INPUT_PROPERTIES:Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;

    const-string v0, "com.snapchat.android"

    .line 275
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/input/InputManagerService;->PACKAGE_BLOCKLIST_FOR_UNTRUSTED_TOUCHES_TOAST:[Ljava/lang/String;

    const-string/jumbo v0, "ro.build.characteristics"

    const-string/jumbo v1, "phone"

    .line 497
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/input/InputManagerService;->IS_TABLET_DEVICE:Z

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 522
    fill-array-data v1, :array_46

    sput-object v1, Lcom/android/server/input/InputManagerService;->mHighHysteresis:[F

    new-array v0, v0, [F

    .line 523
    fill-array-data v0, :array_50

    sput-object v0, Lcom/android/server/input/InputManagerService;->mLowHysteresis:[F

    .line 705
    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v1, 0x1ae14

    if-lt v0, v1, :cond_3a

    const/4 v0, 0x1

    goto :goto_3b

    :cond_3a
    const/4 v0, 0x0

    :goto_3b
    sput-boolean v0, Lcom/android/server/input/InputManagerService;->mMultiFingerGestureEnable:Z

    const-string v0, "content://com.sec.android.desktopmode.uiservice.SettingsProvider/settings"

    .line 719
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/input/InputManagerService;->DEX_SETTINGS_URI:Landroid/net/Uri;

    return-void

    :array_46
    .array-data 4
        0x41f00000    # 30.0f
        0x43200000    # 160.0f
        0x43b40000    # 360.0f
    .end array-data

    :array_50
    .array-data 4
        0x0
        0x41a00000    # 20.0f
        0x43160000    # 150.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 780
    new-instance v0, Lcom/android/server/input/InputManagerService$Injector;

    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/server/input/InputManagerService$Injector;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;-><init>(Lcom/android/server/input/InputManagerService$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/input/InputManagerService$Injector;)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 784
    invoke-direct {p0}, Landroid/hardware/input/IInputManager$Stub;-><init>()V

    .line 311
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mLidStateLock:Ljava/lang/Object;

    .line 313
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mLidStateChangedListeners:Landroid/util/SparseArray;

    .line 315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempLidStateChangedListenersToNotify:Ljava/util/List;

    .line 320
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mMultiFingerGestureLock:Ljava/lang/Object;

    .line 322
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mMultiFingerGestureListeners:Landroid/util/SparseArray;

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempMultiFingerGestureListenersToNotify:Ljava/util/List;

    .line 329
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardShareLock:Ljava/lang/Object;

    .line 331
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardShareChangedListeners:Landroid/util/SparseArray;

    .line 333
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempWirelessKeyboardShareChangedListenersToNotify:Ljava/util/List;

    .line 337
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    .line 339
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    .line 342
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    .line 345
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mSensorEventLock:Ljava/lang/Object;

    .line 347
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    .line 350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListenersToNotify:Ljava/util/List;

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mSensorAccuracyListenersToNotify:Ljava/util/List;

    .line 356
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconLock:Ljava/lang/Object;

    .line 358
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconChangedListeners:Landroid/util/SparseArray;

    .line 360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempPointerIconChangedListenersToNotify:Ljava/util/List;

    .line 367
    new-instance v0, Lcom/android/server/input/PersistentDataStore;

    invoke-direct {v0}, Lcom/android/server/input/PersistentDataStore;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 370
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    const/4 v0, 0x0

    new-array v1, v0, [Landroid/view/InputDevice;

    .line 373
    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    .line 375
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    .line 378
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    .line 380
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 387
    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 388
    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mCurrentImeSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 389
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mAvailableInputMethods:Ljava/util/HashMap;

    .line 390
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayouts:Ljava/util/ArrayList;

    .line 394
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    .line 395
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/Map;

    .line 399
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mVibratorStateListeners:Landroid/util/SparseArray;

    .line 403
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mIsVibrating:Landroid/util/SparseBooleanArray;

    .line 405
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mLightLock:Ljava/lang/Object;

    .line 409
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mLightSessions:Landroid/util/ArrayMap;

    .line 417
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchLock:Ljava/lang/Object;

    .line 418
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchCallbacks:Ljava/util/List;

    .line 422
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    .line 431
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    .line 432
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mRuntimeAssociations:Ljava/util/Map;

    .line 434
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mUniqueIdAssociations:Ljava/util/Map;

    .line 441
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputPropertiesLock:Ljava/lang/Object;

    const/4 v2, -0x1

    .line 444
    iput v2, p0, Lcom/android/server/input/InputManagerService;->mOverriddenPointerDisplayId:I

    .line 449
    iput v2, p0, Lcom/android/server/input/InputManagerService;->mAcknowledgedPointerDisplayId:I

    .line 454
    iput v2, p0, Lcom/android/server/input/InputManagerService;->mRequestedPointerDisplayId:I

    .line 456
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputProperties:Landroid/util/SparseArray;

    .line 461
    new-instance v2, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;

    invoke-direct {v2}, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;-><init>()V

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mCurrentDisplayProperties:Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;

    const/4 v2, 0x1

    .line 464
    iput v2, p0, Lcom/android/server/input/InputManagerService;->mIconType:I

    .line 471
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    .line 479
    new-instance v3, Lcom/android/server/input/InputKeyCounter;

    invoke-direct {v3}, Lcom/android/server/input/InputKeyCounter;-><init>()V

    iput-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputKeyCounter:Lcom/android/server/input/InputKeyCounter;

    .line 493
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputWirelessKeyboardMouseShareLock:Ljava/lang/Object;

    const/4 v3, 0x2

    .line 526
    iput v3, p0, Lcom/android/server/input/InputManagerService;->mFoldingState:I

    .line 527
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mFoldingAngleRegistered:Z

    .line 613
    iput v0, p0, Lcom/android/server/input/InputManagerService;->mBlockDeviceMode:I

    .line 614
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iput-object v4, p0, Lcom/android/server/input/InputManagerService;->mBlockTspCallerList:Ljava/util/Vector;

    .line 615
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iput-object v4, p0, Lcom/android/server/input/InputManagerService;->mBlockTkeyCallerList:Ljava/util/Vector;

    .line 619
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mPogoKeyboardConnected:Z

    .line 620
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mAddingPogoKeyboardIntentPending:Z

    .line 661
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mDefaultPointerIconChanged:Z

    .line 662
    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mDefaultPointerIcon:Landroid/view/PointerIcon;

    .line 663
    iput v0, p0, Lcom/android/server/input/InputManagerService;->mToolTypeForDefaultPointerIcon:I

    .line 664
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mForcedDefaultPointerIconChanged:Z

    .line 665
    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mForcedDefaultPointerIcon:Landroid/view/PointerIcon;

    .line 666
    iput v0, p0, Lcom/android/server/input/InputManagerService;->mToolTypeForForcedDefaultPointerIcon:I

    .line 671
    iput v0, p0, Lcom/android/server/input/InputManagerService;->CLICK_BEHAVIOR_NONE:I

    .line 672
    iput v2, p0, Lcom/android/server/input/InputManagerService;->CLICK_BEHAVIOR_APPS:I

    .line 673
    iput v3, p0, Lcom/android/server/input/InputManagerService;->CLICK_BEHAVIOR_HOME:I

    const/4 v3, 0x3

    .line 674
    iput v3, p0, Lcom/android/server/input/InputManagerService;->CLICK_BEHAVIOR_RECENT:I

    const/4 v3, 0x4

    .line 675
    iput v3, p0, Lcom/android/server/input/InputManagerService;->CLICK_BEHAVIOR_BACK:I

    const/4 v4, 0x5

    .line 676
    iput v4, p0, Lcom/android/server/input/InputManagerService;->CLICK_BEHAVIOR_VIEW_NOTIFICATION:I

    const/4 v4, 0x6

    .line 677
    iput v4, p0, Lcom/android/server/input/InputManagerService;->CLICK_BEHAVIOR_OPEN_QUICK_SETTINGS:I

    .line 679
    iput v3, p0, Lcom/android/server/input/InputManagerService;->mCurrentThreeTapBehavior:I

    .line 680
    iput v0, p0, Lcom/android/server/input/InputManagerService;->mCurrentFourTapBehavior:I

    .line 684
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mIsKidsMode:Z

    .line 688
    iput v0, p0, Lcom/android/server/input/InputManagerService;->mDisplayIdForPointerIcon:I

    const-wide/16 v3, -0x1

    .line 692
    iput-wide v3, p0, Lcom/android/server/input/InputManagerService;->mLastLidEventTime:J

    .line 711
    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mCurrentMissingKeyboardLayoutDevice:Landroid/view/InputDevice;

    .line 715
    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mLatestKeyboardLayoutDevice:Landroid/view/InputDevice;

    .line 716
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mDexmode:Z

    .line 717
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/input/InputManagerService;->mNotiSwitchLock:Ljava/lang/Object;

    .line 775
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mBackKeyDownAdjusted:Z

    .line 776
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mDexImeWindowVisibleInDefaultDisplay:Z

    .line 1731
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempGamePads:Ljava/util/ArrayList;

    .line 6049
    new-instance v0, Lcom/android/server/input/InputManagerService$18;

    invoke-direct {v0, p0}, Lcom/android/server/input/InputManagerService$18;-><init>(Lcom/android/server/input/InputManagerService;)V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mFoldingAngleListener:Landroid/hardware/SensorEventListener;

    .line 6198
    new-instance v0, Lcom/android/server/input/InputManagerService$19;

    invoke-direct {v0, p0}, Lcom/android/server/input/InputManagerService$19;-><init>(Lcom/android/server/input/InputManagerService;)V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 6249
    new-instance v3, Lcom/android/server/input/InputManagerService$20;

    invoke-direct {v3, p0}, Lcom/android/server/input/InputManagerService$20;-><init>(Lcom/android/server/input/InputManagerService;)V

    iput-object v3, p0, Lcom/android/server/input/InputManagerService;->mMirrorLinkReceiver:Landroid/content/BroadcastReceiver;

    .line 6273
    new-instance v4, Lcom/android/server/input/InputManagerService$21;

    invoke-direct {v4, p0}, Lcom/android/server/input/InputManagerService$21;-><init>(Lcom/android/server/input/InputManagerService;)V

    iput-object v4, p0, Lcom/android/server/input/InputManagerService;->mKidsModeReceiver:Landroid/content/BroadcastReceiver;

    .line 6810
    new-instance v5, Lcom/android/server/input/InputManagerService$37;

    invoke-direct {v5, p0}, Lcom/android/server/input/InputManagerService$37;-><init>(Lcom/android/server/input/InputManagerService;)V

    iput-object v5, p0, Lcom/android/server/input/InputManagerService;->mDeviceBlockReceiver:Landroid/content/BroadcastReceiver;

    .line 787
    invoke-static {}, Lcom/android/server/input/InputManagerService;->loadStaticInputPortAssociations()Ljava/util/Map;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/input/InputManagerService;->mStaticAssociations:Ljava/util/Map;

    .line 789
    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService$Injector;->getContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 790
    new-instance v7, Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService$Injector;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lcom/android/server/input/InputManagerService$InputManagerHandler;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    .line 791
    invoke-virtual {p1, p0}, Lcom/android/server/input/InputManagerService$Injector;->getNativeService(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/NativeInputManagerService;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 793
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.samsung.feature.samsung_experience_mobile_lite"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    xor-int/2addr v2, v8

    sput-boolean v2, Lcom/android/server/input/InputManagerService;->SEP_FULL:Z

    .line 798
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v8, 0x11101f1

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/input/InputManagerService;->mUseDevInputEventForAudioJack:Z

    .line 799
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Initializing input manager, mUseDevInputEventForAudioJack="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v8, "InputManager"

    invoke-static {v8, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v8, 0x1040340

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 804
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_229

    move-object v8, v1

    goto :goto_22e

    .line 805
    :cond_229
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_22e
    iput-object v8, p0, Lcom/android/server/input/InputManagerService;->mDoubleTouchGestureEnableFile:Ljava/io/File;

    .line 807
    new-instance v2, Lcom/android/server/input/InputManagerService$LocalService;

    invoke-direct {v2, p0, v1}, Lcom/android/server/input/InputManagerService$LocalService;-><init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$LocalService-IA;)V

    invoke-virtual {p1, v2}, Lcom/android/server/input/InputManagerService$Injector;->registerLocalService(Landroid/hardware/input/InputManagerInternal;)V

    .line 810
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->DSS_ENABLED:Z

    if-eqz p1, :cond_242

    .line 811
    invoke-static {}, Lcom/android/server/DssController;->getService()Lcom/android/server/DssController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mDssController:Lcom/android/server/DssController;

    .line 816
    :cond_242
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    .line 818
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 819
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mCurLocale:Ljava/util/Locale;

    .line 821
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->IFW_KEY_COUNTER:Z

    if-nez v2, :cond_25d

    goto :goto_262

    :cond_25d
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    .line 822
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 824
    :goto_262
    invoke-virtual {v6, v0, p1, v1, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 826
    sget-boolean p1, Lcom/android/server/input/InputManagerService;->SEP_FULL:Z

    if-eqz p1, :cond_275

    .line 827
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "com.samsung.android.mirrorlink.ML_STATE"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.permission.TMS_SERVICE_PERMISSION"

    .line 828
    invoke-virtual {v6, v3, p1, v0, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 833
    :cond_275
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.samsung.android.intent.action.SET_INWATER_TOUCH"

    .line 834
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.permission.SEM_SET_DEVICE_BLOCK"

    .line 835
    invoke-virtual {v6, v5, p1, v0, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 841
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "com.sec.android.app.kidshome.action.DEFAULT_HOME_CHANGE"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "com.samsung.kidshome.broadcast.DEFAULT_HOME_CHANGE_PERMISSION"

    .line 842
    invoke-virtual {v6, v4, p1, v0, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 847
    new-instance p1, Lcom/android/server/input/ToastDialog;

    invoke-direct {p1, v6}, Lcom/android/server/input/ToastDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mToastDialog:Lcom/android/server/input/ToastDialog;

    .line 851
    new-instance p1, Lcom/android/server/input/ControlWakeKey;

    invoke-direct {p1, v6}, Lcom/android/server/input/ControlWakeKey;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mControlWakeKey:Lcom/android/server/input/ControlWakeKey;

    .line 854
    sget-boolean p1, Lcom/android/server/input/InputManagerService;->IS_TABLET_DEVICE:Z

    if-eqz p1, :cond_2ab

    .line 855
    new-instance p1, Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mToastDialog:Lcom/android/server/input/ToastDialog;

    invoke-direct {p1, v6, p0, v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;Lcom/android/server/input/ToastDialog;)V

    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

    :cond_2ab
    return-void
.end method

.method public static containsInputDeviceWithDescriptor([Landroid/view/InputDevice;Ljava/lang/String;)Z
    .registers 6

    .line 2669
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_16

    .line 2671
    aget-object v3, p0, v2

    .line 2672
    invoke-virtual {v3}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_16
    return v1
.end method

.method public static flatten(Ljava/util/Map;)[Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 4828
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4829
    new-instance v1, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    .line 4833
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static getExcludedDeviceNames()[Ljava/lang/String;
    .registers 9

    .line 4802
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/io/File;

    .line 4806
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 4807
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    move v3, v4

    :goto_17
    if-ge v3, v1, :cond_5f

    .line 4809
    aget-object v5, v2, v3

    .line 4810
    new-instance v6, Ljava/io/File;

    const-string v7, "etc/excluded-input-devices.xml"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4811
    :try_start_22
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_27
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_27} :catch_5c
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_27} :catch_3c

    .line 4812
    :try_start_27
    invoke-static {v5}, Lcom/android/server/input/ConfigurationProcessor;->processExcludedDeviceNames(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_32

    .line 4813
    :try_start_2e
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_31
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_31} :catch_5c
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_3c

    goto :goto_5c

    :catchall_32
    move-exception v7

    .line 4811
    :try_start_33
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    goto :goto_3b

    :catchall_37
    move-exception v5

    :try_start_38
    invoke-virtual {v7, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3b
    throw v7
    :try_end_3c
    .catch Ljava/io/FileNotFoundException; {:try_start_38 .. :try_end_3c} :catch_5c
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3c} :catch_3c

    :catch_3c
    move-exception v5

    .line 4816
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not parse \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "InputManager"

    invoke-static {v7, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_5c
    :goto_5c
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_5f
    new-array v1, v4, [Ljava/lang/String;

    .line 4819
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getLocalesFromLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;
    .registers 3

    .line 2886
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2887
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object p0

    return-object p0

    :cond_b
    const/16 v0, 0x7c

    const/16 v1, 0x2c

    .line 2889
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object p0

    return-object p0
.end method

.method public static isCompatibleLocale(Ljava/util/Locale;Ljava/util/Locale;)Z
    .registers 4

    .line 1969
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return v1

    .line 1973
    :cond_10
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 1974
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 1975
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_33

    return v1

    :cond_33
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$configureSpyWindowGestureMonitorSurfaces$13(Landroid/view/SurfaceControl;I)V
    .registers 6

    .line 7151
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    monitor-enter v0

    .line 7152
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_38

    if-eqz p1, :cond_38

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_38

    .line 7156
    :cond_14
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 7157
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_23
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/GestureMonitorSpyWindow;

    .line 7158
    invoke-virtual {v2, v1, p2, p1}, Lcom/android/server/input/GestureMonitorSpyWindow;->configureSurface(Landroid/view/SurfaceControl$Transaction;ILandroid/view/SurfaceControl;)V

    goto :goto_23

    .line 7160
    :cond_33
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 7161
    monitor-exit v0

    return-void

    .line 7153
    :cond_38
    :goto_38
    monitor-exit v0

    return-void

    :catchall_3a
    move-exception p0

    .line 7161
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method private synthetic lambda$createSpyWindowGestureMonitor$0(Landroid/view/InputChannel;)V
    .registers 2

    .line 1343
    invoke-virtual {p1}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->removeSpyWindowGestureMonitor(Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic lambda$dumpAssociations$7(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 5

    .line 4220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  port: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4221
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "  display: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$dumpAssociations$8(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 5

    .line 4229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  port: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4230
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "  display: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$dumpAssociations$9(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 4236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  port: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4237
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "  uniqueId: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$flatten$11(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 4830
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4831
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic lambda$getDefaultKeyboardLayout$1(Landroid/view/InputDevice;Ljava/util/Locale;Ljava/util/List;Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .registers 7

    .line 1916
    invoke-virtual {p5}, Landroid/hardware/input/KeyboardLayout;->getVendorId()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/InputDevice;->getVendorId()I

    move-result p4

    if-ne p3, p4, :cond_31

    .line 1917
    invoke-virtual {p5}, Landroid/hardware/input/KeyboardLayout;->getProductId()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/InputDevice;->getProductId()I

    move-result p0

    if-eq p3, p0, :cond_15

    goto :goto_31

    .line 1920
    :cond_15
    invoke-virtual {p5}, Landroid/hardware/input/KeyboardLayout;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    .line 1921
    invoke-virtual {p0}, Landroid/os/LocaleList;->size()I

    move-result p3

    const/4 p4, 0x0

    :goto_1e
    if-ge p4, p3, :cond_31

    .line 1923
    invoke-virtual {p0, p4}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/input/InputManagerService;->isCompatibleLocale(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1924
    invoke-interface {p2, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_2e
    add-int/lit8 p4, p4, 0x1

    goto :goto_1e

    :cond_31
    :goto_31
    return-void
.end method

.method public static synthetic lambda$getKeyboardLayout$4([Landroid/hardware/input/KeyboardLayout;Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .registers 4

    const/4 p1, 0x0

    .line 2742
    aput-object p3, p0, p1

    return-void
.end method

.method public static synthetic lambda$getKeyboardLayoutOverlay$12([Ljava/lang/String;Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .registers 5

    .line 5004
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    .line 5005
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_25
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_9} :catch_25

    const/4 p1, 0x0

    .line 5006
    :try_start_a
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p0, p1

    const/4 p1, 0x1

    .line 5007
    invoke-static {v0}, Llibcore/io/Streams;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p0, p1
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_1b

    .line 5008
    :try_start_17
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_25
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_17 .. :try_end_1a} :catch_25

    goto :goto_25

    :catchall_1b
    move-exception p0

    .line 5004
    :try_start_1c
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_24

    :catchall_20
    move-exception p1

    :try_start_21
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_24
    throw p0
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_25} :catch_25
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_21 .. :try_end_25} :catch_25

    :catch_25
    :goto_25
    return-void
.end method

.method public static synthetic lambda$getKeyboardLayouts$3(Ljava/util/ArrayList;Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .registers 4

    .line 2682
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$notifyUntrustedTouch$10(Ljava/lang/String;)V
    .registers 4

    .line 4618
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Touch obscured by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " will be blocked. Check go/untrusted-touches"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 4621
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static synthetic lambda$setPointerAcceleration$5(FLcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;)V
    .registers 2

    .line 3270
    iput p0, p1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerAcceleration:F

    return-void
.end method

.method public static synthetic lambda$setPointerIconVisible$6(ZLcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;)V
    .registers 2

    .line 3275
    iput-boolean p0, p1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerIconVisible:Z

    return-void
.end method

.method private synthetic lambda$updateKeyboardLayouts$2(Ljava/util/HashSet;Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .registers 5

    .line 2648
    invoke-virtual {p4}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2651
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static loadStaticInputPortAssociations()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4841
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v0

    .line 4842
    new-instance v1, Ljava/io/File;

    const-string v2, "etc/input-port-associations.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4844
    :try_start_b
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_10} :catch_42
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_22

    .line 4845
    :try_start_10
    invoke-static {v0}, Lcom/android/server/input/ConfigurationProcessor;->processInputPortAssociations(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_18

    .line 4846
    :try_start_14
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_17} :catch_42
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_22

    return-object v2

    :catchall_18
    move-exception v2

    .line 4844
    :try_start_19
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    goto :goto_21

    :catchall_1d
    move-exception v0

    :try_start_1e
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_21
    throw v2
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_22} :catch_42
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_22} :catch_22

    :catch_22
    move-exception v0

    .line 4849
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4852
    :catch_42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addDeviceWirelessKeyboardShare(I)Z
    .registers 4

    .line 2485
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputWirelessKeyboardMouseShareLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2486
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    if-eqz v1, :cond_10

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

    if-eqz p0, :cond_10

    .line 2487
    invoke-virtual {p0, p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->addDevice(I)Z

    move-result p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x1

    .line 2489
    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1a

    const-string p1, "InputManager"

    const-string v0, "addDeviceWirelessKeyboardShare"

    .line 2490
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :catchall_1a
    move-exception p0

    .line 2489
    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .registers 7

    const-string v0, "android.permission.SET_KEYBOARD_LAYOUT"

    const-string v1, "addKeyboardLayoutForInputDevice()"

    .line 2978
    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    const-string/jumbo v0, "keyboardLayoutDescriptor must not be null"

    .line 2982
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2985
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 2986
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 2988
    :try_start_17
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_33

    .line 2989
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    .line 2990
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2992
    :cond_33
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1, v0, p2}, Lcom/android/server/input/PersistentDataStore;->addKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4d

    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 2994
    invoke-virtual {p1, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2993
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4d

    .line 2995
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_4d
    .catchall {:try_start_17 .. :try_end_4d} :catchall_54

    .line 2998
    :cond_4d
    :try_start_4d
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 3000
    monitor-exit v1

    return-void

    :catchall_54
    move-exception p1

    .line 2998
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 2999
    throw p1

    :catchall_5b
    move-exception p0

    .line 3000
    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_4d .. :try_end_5d} :catchall_5b

    throw p0

    .line 2980
    :cond_5e
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires SET_KEYBOARD_LAYOUT permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addPortAssociation(Ljava/lang/String;I)V
    .registers 5

    const-string v0, "android.permission.ASSOCIATE_INPUT_DEVICE_TO_DISPLAY"

    const-string v1, "addPortAssociation()"

    .line 3857
    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 3864
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3865
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3866
    :try_start_10
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mRuntimeAssociations:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3867
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_20

    .line 3868
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->notifyPortAssociationsChanged()V

    return-void

    :catchall_20
    move-exception p0

    .line 3867
    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw p0

    .line 3860
    :cond_23
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires ASSOCIATE_INPUT_DEVICE_TO_DISPLAY permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addUniqueIdAssociation(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "android.permission.ASSOCIATE_INPUT_DEVICE_TO_DISPLAY"

    const-string v1, "addNameAssociation()"

    .line 3894
    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3901
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3902
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3903
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3904
    :try_start_13
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mUniqueIdAssociations:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3905
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_1f

    .line 3906
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->changeUniqueIdAssociation()V

    return-void

    :catchall_1f
    move-exception p0

    .line 3905
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p0

    .line 3897
    :cond_22
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires ASSOCIATE_INPUT_DEVICE_TO_DISPLAY permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final applyAdditionalDisplayInputProperties()V
    .registers 4

    .line 5892
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputPropertiesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5893
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputProperties:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/input/InputManagerService;->mRequestedPointerDisplayId:I

    .line 5894
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;

    if-nez v1, :cond_11

    .line 5895
    sget-object v1, Lcom/android/server/input/InputManagerService;->DEFAULT_ADDITIONAL_DISPLAY_INPUT_PROPERTIES:Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;

    .line 5896
    :cond_11
    invoke-virtual {p0, v1}, Lcom/android/server/input/InputManagerService;->applyAdditionalDisplayInputPropertiesLocked(Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;)V

    .line 5897
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public final applyAdditionalDisplayInputPropertiesLocked(Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAdditionalDisplayInputPropertiesLock"
        }
    .end annotation

    .line 5904
    iget-boolean v0, p1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerIconVisible:Z

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mCurrentDisplayProperties:Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;

    iget-boolean v2, v1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerIconVisible:Z

    if-eq v0, v2, :cond_2c

    .line 5905
    iput-boolean v0, v1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerIconVisible:Z

    .line 5906
    iget-boolean v0, p1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerIconVisible:Z

    if-eqz v0, :cond_26

    .line 5907
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mIconType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_20

    .line 5908
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mIcon:Landroid/view/PointerIcon;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5909
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mIcon:Landroid/view/PointerIcon;

    invoke-interface {v0, v1}, Lcom/android/server/input/NativeInputManagerService;->setCustomPointerIcon(Landroid/view/PointerIcon;)V

    goto :goto_2c

    .line 5911
    :cond_20
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v1, v0}, Lcom/android/server/input/NativeInputManagerService;->setPointerIconType(I)V

    goto :goto_2c

    .line 5914
    :cond_26
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/input/NativeInputManagerService;->setPointerIconType(I)V

    .line 5918
    :cond_2c
    :goto_2c
    iget v0, p1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerAcceleration:F

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mCurrentDisplayProperties:Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;

    iget v2, v1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerAcceleration:F

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_3f

    .line 5919
    iput v0, v1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerAcceleration:F

    .line 5920
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    iget p1, p1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerAcceleration:F

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setPointerAcceleration(F)V

    :cond_3f
    return-void
.end method

.method public canDispatchToDisplay(II)Z
    .registers 3

    .line 4886
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->canDispatchToDisplay(II)Z

    move-result p0

    return p0
.end method

.method public cancelCurrentTouch()V
    .registers 3

    const-string v0, "android.permission.MONITOR_INPUT"

    const-string v1, "cancelCurrentTouch()"

    .line 4154
    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4159
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->cancelCurrentTouch()V

    return-void

    .line 4156
    :cond_10
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Requires MONITOR_INPUT permission"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public cancelVibrate(ILandroid/os/IBinder;)V
    .registers 5

    .line 3677
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3678
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/input/InputManagerService$VibratorToken;

    if-eqz p2, :cond_17

    .line 3679
    iget v1, p2, Lcom/android/server/input/InputManagerService$VibratorToken;->mDeviceId:I

    if-eq v1, p1, :cond_12

    goto :goto_17

    .line 3682
    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_19

    .line 3684
    invoke-virtual {p0, p2}, Lcom/android/server/input/InputManagerService;->cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V

    return-void

    .line 3680
    :cond_17
    :goto_17
    :try_start_17
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p0

    .line 3682
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public final cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V
    .registers 4

    .line 3696
    monitor-enter p1

    .line 3697
    :try_start_1
    iget-boolean v0, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    if-eqz v0, :cond_11

    .line 3698
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    iget v0, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mDeviceId:I

    iget v1, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mTokenValue:I

    invoke-interface {p0, v0, v1}, Lcom/android/server/input/NativeInputManagerService;->cancelVibrate(II)V

    const/4 p0, 0x0

    .line 3699
    iput-boolean p0, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    .line 3701
    :cond_11
    monitor-exit p1

    return-void

    :catchall_13
    move-exception p0

    monitor-exit p1
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public changeDeviceWirelessKeyboardShare(Ljava/lang/String;I)V
    .registers 7

    .line 2467
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputWirelessKeyboardMouseShareLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2468
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

    if-eqz v1, :cond_23

    .line 2469
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_3e

    .line 2471
    :try_start_f
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->changeHIDDevice(Ljava/lang/String;I)V

    .line 2472
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    const/4 p2, 0x0

    invoke-interface {p0, p2}, Lcom/android/server/input/NativeInputManagerService;->enableWirelessKeyboardShare(Z)V
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_1e

    .line 2474
    :try_start_1a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_23

    :catchall_1e
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2475
    throw p0

    .line 2477
    :cond_23
    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_3e

    const-string p0, "InputManager"

    .line 2478
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "changeDeviceWirelessKeyboardShare : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_33

    const/4 p1, 0x0

    :cond_33
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_3e
    move-exception p0

    .line 2477
    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw p0
.end method

.method public final checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    .line 4273
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final checkCallingPermission(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 9

    .line 4279
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_c

    return v2

    .line 4283
    :cond_c
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    return v2

    :cond_15
    if-eqz p3, :cond_48

    .line 4288
    const-class p3, Landroid/app/ActivityManagerInternal;

    .line 4289
    invoke-static {p3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/ActivityManagerInternal;

    const-string v0, "ActivityManagerInternal should not be null."

    .line 4290
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4291
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/app/ActivityManagerInternal;->getInstrumentationSourceUid(I)I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_48

    .line 4296
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 4298
    :try_start_33
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, v0, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_43

    if-nez p0, :cond_3f

    .line 4303
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_3f
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_48

    :catchall_43
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4304
    throw p0

    .line 4308
    :cond_48
    :goto_48
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Permission Denial: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " from pid="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4309
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", uid="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4310
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " requires "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InputManager"

    .line 4312
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public checkInputFeature()I
    .registers 5

    const-string p0, "/sys/class/sec/tsp/support_feature"

    const/4 v0, 0x0

    .line 2580
    invoke-static {p0, v0}, Lcom/android/server/input/InputUtils;->sysfsReadInt(Ljava/lang/String;I)I

    move-result p0

    .line 2581
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkInputFeature : features = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "0x%X"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public closeLightSession(ILandroid/os/IBinder;)V
    .registers 8

    .line 4134
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4135
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mLightLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4136
    :try_start_6
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mLightSessions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/InputManagerService$LightSession;

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    const/4 v3, 0x1

    goto :goto_14

    :cond_13
    move v3, v2

    :goto_14
    const-string/jumbo v4, "not registered"

    .line 4137
    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 4139
    invoke-static {v1}, Lcom/android/server/input/InputManagerService$LightSession;->-$$Nest$fgetmLightStates(Lcom/android/server/input/InputManagerService$LightSession;)[Landroid/hardware/lights/LightState;

    move-result-object v3

    new-instance v4, Landroid/hardware/lights/LightState;

    invoke-direct {v4, v2}, Landroid/hardware/lights/LightState;-><init>(I)V

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4140
    invoke-static {v1}, Lcom/android/server/input/InputManagerService$LightSession;->-$$Nest$fgetmLightIds(Lcom/android/server/input/InputManagerService$LightSession;)[I

    move-result-object v3

    invoke-static {v1}, Lcom/android/server/input/InputManagerService$LightSession;->-$$Nest$fgetmLightStates(Lcom/android/server/input/InputManagerService$LightSession;)[Landroid/hardware/lights/LightState;

    move-result-object v1

    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/input/InputManagerService;->setLightStatesInternal(I[I[Landroid/hardware/lights/LightState;)V

    .line 4142
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mLightSessions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4145
    iget-object p2, p0, Lcom/android/server/input/InputManagerService;->mLightSessions:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_51

    .line 4146
    iget-object p2, p0, Lcom/android/server/input/InputManagerService;->mLightSessions:Landroid/util/ArrayMap;

    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/input/InputManagerService$LightSession;

    .line 4147
    invoke-static {p2}, Lcom/android/server/input/InputManagerService$LightSession;->-$$Nest$fgetmLightIds(Lcom/android/server/input/InputManagerService$LightSession;)[I

    move-result-object v1

    invoke-static {p2}, Lcom/android/server/input/InputManagerService$LightSession;->-$$Nest$fgetmLightStates(Lcom/android/server/input/InputManagerService$LightSession;)[Landroid/hardware/lights/LightState;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/input/InputManagerService;->setLightStatesInternal(I[I[Landroid/hardware/lights/LightState;)V

    .line 4149
    :cond_51
    monitor-exit v0

    return-void

    :catchall_53
    move-exception p0

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_6 .. :try_end_55} :catchall_53

    throw p0
.end method

.method public configureSpyWindowGestureMonitorSurfaces(ILandroid/view/SurfaceControl;)V
    .registers 5

    .line 7150
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    new-instance v1, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/input/InputManagerService;Landroid/view/SurfaceControl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public connectByBtDevice(Landroid/bluetooth/BluetoothDevice;)V
    .registers 4

    .line 2519
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputWirelessKeyboardMouseShareLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2520
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    if-eqz v1, :cond_15

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

    if-eqz p0, :cond_15

    .line 2521
    invoke-virtual {p0, p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->connectByBtDevice(Landroid/bluetooth/BluetoothDevice;)V

    const-string p0, "InputManager"

    const-string p1, "connectByBtDevice"

    .line 2522
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2524
    :cond_15
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public createInputChannel(Ljava/lang/String;)Landroid/view/InputChannel;
    .registers 3

    .line 1431
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    const v0, 0xffff

    invoke-interface {p0, p1, v0}, Lcom/android/server/input/NativeInputManagerService;->createInputChannel(Ljava/lang/String;I)Landroid/view/InputChannel;

    move-result-object p0

    return-object p0
.end method

.method public createInputChannel(Ljava/lang/String;I)Landroid/view/InputChannel;
    .registers 3

    .line 1437
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->createInputChannel(Ljava/lang/String;I)Landroid/view/InputChannel;

    move-result-object p0

    return-object p0
.end method

.method public final createSpyWindowGestureMonitor(Landroid/os/IBinder;Ljava/lang/String;IIII)Landroid/view/InputChannel;
    .registers 20

    move-object v0, p0

    move-object v2, p2

    move/from16 v3, p3

    .line 1334
    iget-object v1, v0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v1, p2, v3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->createSurfaceForGestureMonitor(Ljava/lang/String;I)Landroid/view/SurfaceControl;

    move-result-object v6

    if-eqz v6, :cond_61

    move/from16 v1, p6

    .line 1340
    invoke-virtual {p0, p2, v1}, Lcom/android/server/input/InputManagerService;->createInputChannel(Ljava/lang/String;I)Landroid/view/InputChannel;

    move-result-object v8

    .line 1343
    :try_start_12
    new-instance v1, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v8}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/input/InputManagerService;Landroid/view/InputChannel;)V

    const/4 v4, 0x0

    move-object v5, p1

    invoke-interface {p1, v1, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1c} :catch_44

    .line 1348
    iget-object v9, v0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    monitor-enter v9

    .line 1349
    :try_start_1f
    iget-object v10, v0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    invoke-virtual {v8}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v11

    new-instance v12, Lcom/android/server/input/GestureMonitorSpyWindow;

    move-object v0, v12

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/input/GestureMonitorSpyWindow;-><init>(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/view/SurfaceControl;Landroid/view/InputChannel;)V

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1352
    monitor-exit v9
    :try_end_38
    .catchall {:try_start_1f .. :try_end_38} :catchall_41

    .line 1354
    new-instance v0, Landroid/view/InputChannel;

    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    .line 1355
    invoke-virtual {v8, v0}, Landroid/view/InputChannel;->copyTo(Landroid/view/InputChannel;)V

    return-object v0

    :catchall_41
    move-exception v0

    .line 1352
    :try_start_42
    monitor-exit v9
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v0

    :catch_44
    const-string v0, "InputManager"

    .line 1345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Client died before \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' could be created."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 1337
    :cond_61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create gesture monitor surface on display: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final deliverInputDevicesChanged([Landroid/view/InputDevice;)V
    .registers 15

    .line 1750
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1751
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1756
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempGamePads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1761
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1762
    :try_start_12
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    if-nez v1, :cond_18

    .line 1763
    monitor-exit v0

    return-void

    :cond_18
    const/4 v1, 0x0

    .line 1765
    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    .line 1767
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    move v3, v1

    :goto_22
    if-ge v3, v2, :cond_34

    .line 1769
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    .line 1770
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;

    .line 1769
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 1773
    :cond_34
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    array-length v3, v3

    mul-int/lit8 v4, v3, 0x2

    .line 1774
    new-array v4, v4, [I

    move v5, v1

    move v6, v5

    move v7, v6

    :goto_3e
    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ge v5, v3, :cond_af

    .line 1776
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    aget-object v10, v10, v5

    mul-int/lit8 v11, v5, 0x2

    .line 1777
    invoke-virtual {v10}, Landroid/view/InputDevice;->getId()I

    move-result v12

    aput v12, v4, v11

    add-int/lit8 v11, v11, 0x1

    .line 1778
    invoke-virtual {v10}, Landroid/view/InputDevice;->getGeneration()I

    move-result v12

    aput v12, v4, v11

    .line 1780
    invoke-virtual {v10}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v11

    if-nez v11, :cond_81

    invoke-virtual {v10}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v11

    if-eqz v11, :cond_81

    .line 1782
    invoke-virtual {v10}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v11

    .line 1781
    invoke-static {p1, v11}, Lcom/android/server/input/InputManagerService;->containsInputDeviceWithDescriptor([Landroid/view/InputDevice;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_7c

    .line 1783
    iget-object v11, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    add-int/lit8 v12, v7, 0x1

    invoke-virtual {v11, v7, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1786
    invoke-virtual {v10}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v7

    invoke-virtual {p0, v7, v8}, Lcom/android/server/input/InputManagerService;->sendMsgUpdateDefaultKeyboardLayouts(Landroid/hardware/input/InputDeviceIdentifier;Ljava/util/HashMap;)V

    move v7, v12

    goto :goto_81

    .line 1790
    :cond_7c
    iget-object v8, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1794
    :cond_81
    :goto_81
    invoke-virtual {v10}, Landroid/view/InputDevice;->getVendorId()I

    move-result v8

    .line 1795
    invoke-virtual {v10}, Landroid/view/InputDevice;->getProductId()I

    move-result v11

    invoke-virtual {v10}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v12

    .line 1794
    invoke-static {v8, v11, v12}, Lcom/android/server/input/InputUtils;->isPogoKeyboard(IILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_94

    move v6, v9

    .line 1800
    :cond_94
    invoke-virtual {v10}, Landroid/view/InputDevice;->getSources()I

    move-result v8

    const/16 v9, 0x401

    and-int/2addr v8, v9

    if-ne v8, v9, :cond_ac

    .line 1803
    invoke-virtual {v10}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v8

    .line 1802
    invoke-static {p1, v8}, Lcom/android/server/input/InputManagerService;->containsInputDeviceWithDescriptor([Landroid/view/InputDevice;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_ac

    .line 1804
    iget-object v8, p0, Lcom/android/server/input/InputManagerService;->mTempGamePads:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ac
    add-int/lit8 v5, v5, 0x1

    goto :goto_3e

    .line 1809
    :cond_af
    monitor-exit v0
    :try_end_b0
    .catchall {:try_start_12 .. :try_end_b0} :catchall_17a

    move p1, v1

    :goto_b1
    if-ge p1, v2, :cond_c1

    .line 1813
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;->notifyInputDevicesChanged([I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_b1

    .line 1816
    :cond_c1
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1819
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1820
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_d2
    if-ge v2, v0, :cond_fd

    .line 1825
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InputDevice;

    .line 1828
    invoke-virtual {v3}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/input/InputManagerService;->switchKeyboardLayoutIfNotSetAsCurrentSubtype(Landroid/hardware/input/InputDeviceIdentifier;)V

    .line 1832
    invoke-virtual {v3}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/input/InputManagerService;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_f5

    .line 1836
    invoke-virtual {v3}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/input/InputManagerService;->getAndSetDefaultKeyboardLayout(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v4

    :cond_f5
    if-nez v4, :cond_fa

    .line 1847
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_fa
    add-int/lit8 v2, v2, 0x1

    goto :goto_d2

    .line 1854
    :cond_fd
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_123

    .line 1855
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11b

    .line 1856
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v9, :cond_111

    .line 1860
    invoke-virtual {p0, v8}, Lcom/android/server/input/InputManagerService;->showMissingKeyboardLayoutNotification(Landroid/view/InputDevice;)V

    goto :goto_13c

    .line 1862
    :cond_111
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/InputDevice;

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->showMissingKeyboardLayoutNotification(Landroid/view/InputDevice;)V

    goto :goto_13c

    .line 1864
    :cond_11b
    iget-boolean p1, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    if-eqz p1, :cond_13c

    .line 1865
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->hideMissingKeyboardLayoutNotification()V

    goto :goto_13c

    .line 1870
    :cond_123
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13c

    .line 1871
    iput-boolean v9, p0, Lcom/android/server/input/InputManagerService;->mMissingKeyboardLayoutNotificationPending:Z

    .line 1872
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v9, :cond_134

    .line 1873
    iput-object v8, p0, Lcom/android/server/input/InputManagerService;->mMissingKeyboardLayoutDevice:Landroid/view/InputDevice;

    goto :goto_13c

    .line 1875
    :cond_134
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/InputDevice;

    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mMissingKeyboardLayoutDevice:Landroid/view/InputDevice;

    .line 1880
    :cond_13c
    :goto_13c
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1883
    iget-boolean p1, p0, Lcom/android/server/input/InputManagerService;->mPogoKeyboardConnected:Z

    if-eq v6, p1, :cond_156

    .line 1884
    iput-boolean v6, p0, Lcom/android/server/input/InputManagerService;->mPogoKeyboardConnected:Z

    .line 1885
    iget-boolean p1, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    if-eqz p1, :cond_154

    .line 1886
    invoke-virtual {p0, v6}, Lcom/android/server/input/InputManagerService;->wakeUpWhenPogoConnected(Z)V

    .line 1887
    iget-boolean p1, p0, Lcom/android/server/input/InputManagerService;->mPogoKeyboardConnected:Z

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->sendPogoKeyboardStatus(Z)V

    goto :goto_156

    .line 1889
    :cond_154
    iput-boolean v9, p0, Lcom/android/server/input/InputManagerService;->mAddingPogoKeyboardIntentPending:Z

    .line 1894
    :cond_156
    :goto_156
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mTempGamePads:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_15c
    if-ge v1, p1, :cond_174

    .line 1897
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempGamePads:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InputDevice;

    .line 1898
    invoke-virtual {v0}, Landroid/view/InputDevice;->getVendorId()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/InputDevice;->getProductId()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/android/server/input/InputManagerService;->startGameToolsService(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_15c

    .line 1900
    :cond_174
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mTempGamePads:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void

    :catchall_17a
    move-exception p0

    .line 1809
    :try_start_17b
    monitor-exit v0
    :try_end_17c
    .catchall {:try_start_17b .. :try_end_17c} :catchall_17a

    throw p0
.end method

.method public final deliverLidStateChanged(JZ)V
    .registers 10

    .line 2059
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempLidStateChangedListenersToNotify:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2061
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mLidStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2062
    :try_start_8
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mLidStateChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    if-ge v3, v1, :cond_22

    .line 2064
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mTempLidStateChangedListenersToNotify:Ljava/util/List;

    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mLidStateChangedListeners:Landroid/util/SparseArray;

    .line 2065
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;

    .line 2064
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 2067
    :cond_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_34

    :goto_23
    if-ge v2, v1, :cond_33

    .line 2069
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempLidStateChangedListenersToNotify:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;->notifyLidStateChanged(JZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_33
    return-void

    :catchall_34
    move-exception p0

    .line 2067
    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw p0
.end method

.method public final deliverMultiFingerGesture(II)V
    .registers 9

    .line 2231
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempMultiFingerGestureListenersToNotify:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2233
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mMultiFingerGestureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2234
    :try_start_8
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mMultiFingerGestureListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    if-ge v3, v1, :cond_22

    .line 2236
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mTempMultiFingerGestureListenersToNotify:Ljava/util/List;

    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mMultiFingerGestureListeners:Landroid/util/SparseArray;

    .line 2237
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;

    .line 2236
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 2239
    :cond_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_34

    :goto_23
    if-ge v2, v1, :cond_33

    .line 2241
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempMultiFingerGestureListenersToNotify:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;->notifyMultiFingerGesture(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_33
    return-void

    :catchall_34
    move-exception p0

    .line 2239
    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw p0
.end method

.method public final deliverPointerIconChanged(ILandroid/view/PointerIcon;)V
    .registers 9

    .line 2170
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempPointerIconChangedListenersToNotify:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2172
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2173
    :try_start_8
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mPointerIconChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    if-ge v3, v1, :cond_22

    .line 2175
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mTempPointerIconChangedListenersToNotify:Ljava/util/List;

    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mPointerIconChangedListeners:Landroid/util/SparseArray;

    .line 2176
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/input/InputManagerService$PointerIconChangedListenerRecord;

    .line 2175
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 2178
    :cond_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_34

    :goto_23
    if-ge v2, v1, :cond_33

    .line 2180
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempPointerIconChangedListenersToNotify:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerService$PointerIconChangedListenerRecord;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/input/InputManagerService$PointerIconChangedListenerRecord;->notifyPointerIconChanged(ILandroid/view/PointerIcon;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_33
    return-void

    :catchall_34
    move-exception p0

    .line 2178
    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw p0
.end method

.method public final deliverTabletModeChanged(JZ)V
    .registers 10

    .line 2123
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2125
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2126
    :try_start_8
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    if-ge v3, v1, :cond_22

    .line 2128
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    .line 2129
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;

    .line 2128
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 2131
    :cond_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_34

    :goto_23
    if-ge v2, v1, :cond_33

    .line 2133
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;->notifyTabletModeChanged(JZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_33
    return-void

    :catchall_34
    move-exception p0

    .line 2131
    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw p0
.end method

.method public deliverWirelessKeyboardShareChanged(ILjava/lang/String;Z)V
    .registers 9

    .line 2385
    iget-object p3, p0, Lcom/android/server/input/InputManagerService;->mTempWirelessKeyboardShareChangedListenersToNotify:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 2387
    iget-object p3, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardShareLock:Ljava/lang/Object;

    monitor-enter p3

    .line 2388
    :try_start_8
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardShareChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_10
    if-ge v2, v0, :cond_22

    .line 2390
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mTempWirelessKeyboardShareChangedListenersToNotify:Ljava/util/List;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardShareChangedListeners:Landroid/util/SparseArray;

    .line 2391
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/input/InputManagerService$WirelessKeyboardShareChangedListenerRecord;

    .line 2390
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 2393
    :cond_22
    monitor-exit p3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_38

    :goto_23
    if-ge v1, v0, :cond_37

    .line 2395
    iget-object p3, p0, Lcom/android/server/input/InputManagerService;->mTempWirelessKeyboardShareChangedListenersToNotify:Ljava/util/List;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/input/InputManagerService$WirelessKeyboardShareChangedListenerRecord;

    .line 2396
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p3, v2, v3, p1, p2}, Lcom/android/server/input/InputManagerService$WirelessKeyboardShareChangedListenerRecord;->notifyWirelessKeyboardShareChanged(JILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_37
    return-void

    :catchall_38
    move-exception p0

    .line 2393
    :try_start_39
    monitor-exit p3
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw p0
.end method

.method public disableInputDevice(I)V
    .registers 4

    const-string v0, "android.permission.DISABLE_INPUT_DEVICE"

    const-string v1, "disableInputDevice()"

    .line 1659
    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1663
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->disableInputDevice(I)V

    return-void

    .line 1661
    :cond_10
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires DISABLE_INPUT_DEVICE permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public disableSensor(II)V
    .registers 4

    .line 4005
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4006
    :try_start_3
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->disableSensor(II)V

    .line 4007
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final dispatchUnhandledKey(Landroid/os/IBinder;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .registers 4

    .line 4775
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->dispatchUnhandledKey(Landroid/os/IBinder;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 4164
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string p3, "InputManager"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    :cond_b
    const-string p1, "INPUT MANAGER (dumpsys input)\n"

    .line 4166
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4167
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p1}, Lcom/android/server/input/NativeInputManagerService;->dump()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 4169
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1b
    const-string p1, "Input Manager Service (Java) State:"

    .line 4172
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  "

    .line 4173
    invoke-virtual {p0, p2, p1}, Lcom/android/server/input/InputManagerService;->dumpAssociations(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string p1, "  "

    .line 4174
    invoke-virtual {p0, p2, p1}, Lcom/android/server/input/InputManagerService;->dumpSpyWindowGestureMonitors(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string p1, "  "

    .line 4175
    invoke-virtual {p0, p2, p1}, Lcom/android/server/input/InputManagerService;->dumpDisplayInputPropertiesValues(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string p1, "  Keyboard Layouts:"

    .line 4179
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4180
    new-instance p1, Lcom/android/server/input/InputManagerService$15;

    invoke-direct {p1, p0, p2}, Lcom/android/server/input/InputManagerService$15;-><init>(Lcom/android/server/input/InputManagerService;Ljava/io/PrintWriter;)V

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 4187
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4188
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter p1

    .line 4189
    :try_start_42
    iget-object p3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    const-string v0, "  "

    invoke-virtual {p3, p2, v0}, Lcom/android/server/input/PersistentDataStore;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4190
    monitor-exit p1
    :try_end_4a
    .catchall {:try_start_42 .. :try_end_4a} :catchall_101

    .line 4191
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4192
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  Current IME Handle: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/input/InputManagerService;->mCurrentImeHandle:Lcom/android/server/input/InputMethodSubtypeHandle;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4193
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mAvailableInputMethods: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/input/InputManagerService;->mAvailableInputMethods:Ljava/util/HashMap;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4197
    monitor-enter p0

    .line 4198
    :try_start_7a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mBlockDeviceMode="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/input/InputManagerService;->mBlockDeviceMode:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4199
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mBlockTspCallerList:Ljava/util/Vector;

    if-eqz p1, :cond_c6

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-lez p1, :cond_c6

    const-string p1, "      TSP blocked by:"

    .line 4200
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4201
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mBlockTspCallerList:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_c6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 4202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "          "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a5

    .line 4205
    :cond_c6
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mBlockTkeyCallerList:Ljava/util/Vector;

    if-eqz p1, :cond_fc

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-lez p1, :cond_fc

    const-string p1, "      TKEY blocked by:"

    .line 4206
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4207
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mBlockTkeyCallerList:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_db
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_fc

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 4208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "          "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_db

    .line 4211
    :cond_fc
    monitor-exit p0

    return-void

    :catchall_fe
    move-exception p1

    monitor-exit p0
    :try_end_100
    .catchall {:try_start_7a .. :try_end_100} :catchall_fe

    throw p1

    :catchall_101
    move-exception p0

    .line 4190
    :try_start_102
    monitor-exit p1
    :try_end_103
    .catchall {:try_start_102 .. :try_end_103} :catchall_101

    throw p0
.end method

.method public final dumpAssociations(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    .line 4217
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mStaticAssociations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 4218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Static Associations:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4219
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mStaticAssociations:Ljava/util/Map;

    new-instance v1, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda9;

    invoke-direct {v1, p1, p2}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda9;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 4225
    :cond_26
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4226
    :try_start_29
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mRuntimeAssociations:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4f

    .line 4227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Runtime Associations:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4228
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mRuntimeAssociations:Ljava/util/Map;

    new-instance v2, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda10;

    invoke-direct {v2, p1, p2}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda10;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 4233
    :cond_4f
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mUniqueIdAssociations:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_75

    .line 4234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Unique Id Associations:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4235
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mUniqueIdAssociations:Ljava/util/Map;

    new-instance v1, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda11;

    invoke-direct {v1, p1, p2}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda11;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 4240
    :cond_75
    monitor-exit v0

    return-void

    :catchall_77
    move-exception p0

    monitor-exit v0
    :try_end_79
    .catchall {:try_start_29 .. :try_end_79} :catchall_77

    throw p0
.end method

.method public final dumpDisplayInputPropertiesValues(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8

    .line 4255
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputPropertiesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4256
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputProperties:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_83

    .line 4257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mAdditionalDisplayInputProperties:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 4258
    :goto_21
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputProperties:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_83

    .line 4259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  displayId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputProperties:Landroid/util/SparseArray;

    .line 4260
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4259
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4261
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputProperties:Landroid/util/SparseArray;

    .line 4262
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;

    .line 4263
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  pointerAcceleration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerAcceleration:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4264
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  pointerIconVisible: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v2, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerIconVisible:Z

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 4267
    :cond_83
    iget v1, p0, Lcom/android/server/input/InputManagerService;->mOverriddenPointerDisplayId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_a2

    .line 4268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "mOverriddenPointerDisplayId: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/input/InputManagerService;->mOverriddenPointerDisplayId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4270
    :cond_a2
    monitor-exit v0

    return-void

    :catchall_a4
    move-exception p0

    monitor-exit v0
    :try_end_a6
    .catchall {:try_start_3 .. :try_end_a6} :catchall_a4

    throw p0
.end method

.method public final dumpSpyWindowGestureMonitors(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8

    .line 4244
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    monitor-enter v0

    .line 4245
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    monitor-exit v0

    return-void

    .line 4246
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Gesture Monitors (implemented as spy windows):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 4248
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/GestureMonitorSpyWindow;

    .line 4249
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v2}, Lcom/android/server/input/GestureMonitorSpyWindow;->dump()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, v4

    goto :goto_2c

    .line 4251
    :cond_60
    monitor-exit v0

    return-void

    :catchall_62
    move-exception p0

    monitor-exit v0
    :try_end_64
    .catchall {:try_start_3 .. :try_end_64} :catchall_62

    throw p0
.end method

.method public enableInputDevice(I)V
    .registers 4

    const-string v0, "android.permission.DISABLE_INPUT_DEVICE"

    const-string v1, "enableInputDevice()"

    .line 1649
    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1653
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->enableInputDevice(I)V

    return-void

    .line 1651
    :cond_10
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires DISABLE_INPUT_DEVICE permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public enableSensor(IIII)Z
    .registers 6

    .line 3997
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3998
    :try_start_3
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/input/NativeInputManagerService;->enableSensor(IIII)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 4000
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final filterInputEvent(Landroid/view/InputEvent;I)Z
    .registers 4

    .line 4690
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4691
    :try_start_3
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_13

    if-eqz p0, :cond_d

    .line 4693
    :try_start_7
    invoke-interface {p0, p1, p2}, Landroid/view/IInputFilter;->filterInputEvent(Landroid/view/InputEvent;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_13

    :catch_a
    const/4 p0, 0x0

    .line 4697
    :try_start_b
    monitor-exit v0

    return p0

    .line 4699
    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_13

    .line 4700
    invoke-virtual {p1}, Landroid/view/InputEvent;->recycle()V

    const/4 p0, 0x1

    return p0

    :catchall_13
    move-exception p0

    .line 4699
    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public flushSensor(II)Z
    .registers 6

    .line 3984
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSensorEventLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3985
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 3986
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;

    if-eqz v1, :cond_19

    .line 3988
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->flushSensor(II)Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_19
    const/4 p0, 0x0

    .line 3990
    monitor-exit v0

    return p0

    :catchall_1c
    move-exception p0

    .line 3991
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public forceFadeIcon(I)V
    .registers 2

    .line 7132
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->forceFadeIcon(I)V

    return-void
.end method

.method public final getAOTOnOffFromSettings(I)I
    .registers 5

    .line 6609
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "double_tab_to_wake_up"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_2b

    :catch_f
    move-exception p0

    .line 6612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception getAOTOnOffFromSettings \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputManager"

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2b
    return p1
.end method

.method public final getAndSetDefaultKeyboardLayout(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;
    .registers 6

    .line 7053
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mCurrentImeHandle:Lcom/android/server/input/InputMethodSubtypeHandle;

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    if-eqz p1, :cond_32

    .line 7054
    invoke-virtual {v0}, Lcom/android/server/input/InputMethodSubtypeHandle;->getSubtypeId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 7055
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mCurrentImeHandle:Lcom/android/server/input/InputMethodSubtypeHandle;

    invoke-virtual {v2}, Lcom/android/server/input/InputMethodSubtypeHandle;->getInputMethodId()Ljava/lang/String;

    move-result-object v2

    .line 7056
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mAvailableInputMethods:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    invoke-static {v0, v2}, Lcom/android/server/input/KeyboardLayoutUtils;->isSubtypeInEnabledList(Ljava/lang/String;Ljava/util/HashSet;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 7057
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mCurrentImeSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/server/input/KeyboardLayoutUtils;->getDefaultKeyboardLayoutForSubtype(Landroid/view/inputmethod/InputMethodSubtype;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    :cond_2b
    if-eqz v1, :cond_32

    .line 7061
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mCurrentImeHandle:Lcom/android/server/input/InputMethodSubtypeHandle;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/input/InputManagerService;->setKeyboardLayoutForInputDeviceInner(Landroid/hardware/input/InputDeviceIdentifier;Lcom/android/server/input/InputMethodSubtypeHandle;Ljava/lang/String;)V

    :cond_32
    return-object v1
.end method

.method public getBatteryCapacity(I)I
    .registers 2

    .line 3800
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->getBatteryCapacity(I)I

    move-result p0

    return p0
.end method

.method public getBatteryStatus(I)I
    .registers 2

    .line 3794
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->getBatteryStatus(I)I

    move-result p0

    return p0
.end method

.method public final getContextForDisplay(I)Landroid/content/Context;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_5

    return-object v0

    .line 4969
    :cond_5
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    if-ne v1, p1, :cond_14

    .line 4970
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    return-object p0

    .line 4973
    :cond_14
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/display/DisplayManager;

    .line 4974
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 4973
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Landroid/hardware/display/DisplayManager;

    .line 4975
    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    if-nez p1, :cond_2b

    return-object v0

    .line 4980
    :cond_2b
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public final getContextForPointerIcon(I)Landroid/content/Context;
    .registers 3

    .line 4949
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconDisplayContext:Landroid/content/Context;

    if-eqz v0, :cond_11

    .line 4950
    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_11

    .line 4951
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconDisplayContext:Landroid/content/Context;

    return-object p0

    .line 4955
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getContextForDisplay(I)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mPointerIconDisplayContext:Landroid/content/Context;

    if-nez p1, :cond_20

    const/4 p1, 0x0

    .line 4959
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getContextForDisplay(I)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mPointerIconDisplayContext:Landroid/content/Context;

    .line 4961
    :cond_20
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconDisplayContext:Landroid/content/Context;

    return-object p0
.end method

.method public final getCoverTestModeSetting(I)I
    .registers 4

    .line 4351
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "cover_test_mode"

    const/4 v1, -0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1
    :try_end_d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_d} :catch_d

    :catch_d
    return p1
.end method

.method public getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;
    .registers 6

    .line 2909
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 2910
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 2913
    :try_start_7
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_23

    .line 2914
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 2916
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2922
    :cond_23
    monitor-exit v1

    return-object v2

    :catchall_25
    move-exception p0

    .line 2923
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public final getDefaultKeyboardLayout(Landroid/view/InputDevice;)Ljava/lang/String;
    .registers 12

    .line 1906
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1909
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    return-object v2

    .line 1912
    :cond_18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1913
    new-instance v3, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v3, p1, v0, v1}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda4;-><init>(Landroid/view/InputDevice;Ljava/util/Locale;Ljava/util/List;)V

    invoke-virtual {p0, v3}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 1930
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2c

    return-object v2

    .line 1935
    :cond_2c
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1937
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x0

    move v2, p1

    :goto_35
    if-ge v2, p0, :cond_73

    .line 1939
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/KeyboardLayout;

    .line 1940
    invoke-virtual {v3}, Landroid/hardware/input/KeyboardLayout;->getLocales()Landroid/os/LocaleList;

    move-result-object v4

    .line 1941
    invoke-virtual {v4}, Landroid/os/LocaleList;->size()I

    move-result v5

    move v6, p1

    :goto_46
    if-ge v6, v5, :cond_70

    .line 1943
    invoke-virtual {v4, v6}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v7

    .line 1944
    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6d

    .line 1945
    invoke-virtual {v7}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 1946
    invoke-virtual {v3}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6d
    add-int/lit8 v6, v6, 0x1

    goto :goto_46

    :cond_70
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :cond_73
    move v2, p1

    :goto_74
    if-ge v2, p0, :cond_a4

    .line 1952
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/KeyboardLayout;

    .line 1953
    invoke-virtual {v3}, Landroid/hardware/input/KeyboardLayout;->getLocales()Landroid/os/LocaleList;

    move-result-object v4

    .line 1954
    invoke-virtual {v4}, Landroid/os/LocaleList;->size()I

    move-result v5

    move v6, p1

    :goto_85
    if-ge v6, v5, :cond_a1

    .line 1956
    invoke-virtual {v4, v6}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v7

    .line 1957
    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9e

    .line 1958
    invoke-virtual {v3}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9e
    add-int/lit8 v6, v6, 0x1

    goto :goto_85

    :cond_a1
    add-int/lit8 v2, v2, 0x1

    goto :goto_74

    .line 1964
    :cond_a4
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/KeyboardLayout;

    invoke-virtual {p0}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultPointerIcon()Landroid/view/PointerIcon;
    .registers 1

    .line 6133
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mDefaultPointerIcon:Landroid/view/PointerIcon;

    return-object p0
.end method

.method public final getDeviceAlias(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 5022
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDisplayIdForPointerIcon()I
    .registers 1

    .line 6166
    iget p0, p0, Lcom/android/server/input/InputManagerService;->mDisplayIdForPointerIcon:I

    return p0
.end method

.method public final getDoubleTapTimeout()I
    .registers 1

    .line 4916
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result p0

    return p0
.end method

.method public getEnabledKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;
    .registers 6

    .line 2964
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 2965
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 2966
    :try_start_7
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->getKeyboardLayouts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 2967
    array-length v3, v2

    if-nez v3, :cond_26

    .line 2968
    :cond_12
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 2969
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/input/PersistentDataStore;->getKeyboardLayouts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2971
    :cond_26
    monitor-exit v1

    return-object v2

    :catchall_28
    move-exception p0

    .line 2972
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public final getFlowPointerDirectionSettings(I)I
    .registers 2

    return p1
.end method

.method public final getFlowPointerSettings(Z)Z
    .registers 2

    return p1
.end method

.method public getGlobalMetaState(I)I
    .registers 2

    .line 4330
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->getGlobalMetaState(I)I

    move-result p0

    return p0
.end method

.method public final getHoverTapSlop()I
    .registers 1

    .line 4910
    invoke-static {}, Landroid/view/ViewConfiguration;->getHoverTapSlop()I

    move-result p0

    return p0
.end method

.method public final getHoverTapTimeout()I
    .registers 1

    .line 4904
    invoke-static {}, Landroid/view/ViewConfiguration;->getHoverTapTimeout()I

    move-result p0

    return p0
.end method

.method public getInboundQueueLength()I
    .registers 3

    .line 5851
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_f

    .line 5852
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->getInboundQueueLength()I

    move-result p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public getInputDevice(I)Landroid/view/InputDevice;
    .registers 7

    .line 1630
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1631
    :try_start_3
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_16

    aget-object v3, p0, v2

    .line 1632
    invoke-virtual {v3}, Landroid/view/InputDevice;->getId()I

    move-result v4

    if-ne v4, p1, :cond_13

    .line 1633
    monitor-exit v0

    return-object v3

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1636
    :cond_16
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public getInputDeviceIds()[I
    .registers 6

    .line 1672
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1673
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    array-length v1, v1

    .line 1674
    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v1, :cond_18

    .line 1676
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/view/InputDevice;->getId()I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1678
    :cond_18
    monitor-exit v0

    return-object v2

    :catchall_1a
    move-exception p0

    .line 1679
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public getInputDevices()[Landroid/view/InputDevice;
    .registers 2

    .line 1687
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1688
    :try_start_3
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 1689
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final getInputPortAssociations()[Ljava/lang/String;
    .registers 3

    .line 4858
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mStaticAssociations:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 4861
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4862
    :try_start_a
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mRuntimeAssociations:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 4863
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_15

    .line 4865
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->flatten(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_15
    move-exception p0

    .line 4863
    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public final getInputUniqueIdAssociations()[Ljava/lang/String;
    .registers 3

    .line 4872
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4873
    :try_start_3
    new-instance v1, Ljava/util/HashMap;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mUniqueIdAssociations:Ljava/util/Map;

    invoke-direct {v1, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 4874
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_10

    .line 4876
    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->flatten(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_10
    move-exception p0

    .line 4874
    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public getKeyCodeForKeyLocation(II)I
    .registers 4

    if-lez p2, :cond_10

    .line 1289
    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v0

    if-le p2, v0, :cond_9

    goto :goto_10

    .line 1292
    :cond_9
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->getKeyCodeForKeyLocation(II)I

    move-result p0

    return p0

    :cond_10
    :goto_10
    const/4 p0, 0x0

    return p0
.end method

.method public getKeyCodeState(III)I
    .registers 4

    .line 1214
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/input/NativeInputManagerService;->getKeyCodeState(III)I

    move-result p0

    return p0
.end method

.method public final getKeyRepeatDelay()I
    .registers 1

    .line 4898
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result p0

    return p0
.end method

.method public final getKeyRepeatTimeout()I
    .registers 1

    .line 4892
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result p0

    return p0
.end method

.method public getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;
    .registers 5

    const-string/jumbo v0, "keyboardLayoutDescriptor must not be null"

    .line 2737
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/hardware/input/KeyboardLayout;

    .line 2741
    new-instance v1, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda7;-><init>([Landroid/hardware/input/KeyboardLayout;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    const/4 p0, 0x0

    aget-object v1, v0, p0

    if-nez v1, :cond_31

    .line 2744
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not get keyboard layout with descriptor \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "InputManager"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    aget-object p0, v0, p0

    return-object p0
.end method

.method public getKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/hardware/input/KeyboardLayout;
    .registers 6

    .line 6842
    new-instance v0, Lcom/android/server/input/InputMethodSubtypeHandle;

    invoke-direct {v0, p2, p3}, Lcom/android/server/input/InputMethodSubtypeHandle;-><init>(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 6843
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object p1

    .line 6845
    iget-object p2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter p2

    .line 6846
    :try_start_c
    iget-object p3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p3, p1, v0}, Lcom/android/server/input/PersistentDataStore;->getKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputMethodSubtypeHandle;)Ljava/lang/String;

    move-result-object p1

    .line 6847
    monitor-exit p2
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_45

    if-nez p1, :cond_17

    const/4 p0, 0x0

    return-object p0

    :cond_17
    const/4 p2, 0x1

    new-array p2, p2, [Landroid/hardware/input/KeyboardLayout;

    .line 6854
    new-instance p3, Lcom/android/server/input/InputManagerService$38;

    invoke-direct {p3, p0, p2}, Lcom/android/server/input/InputManagerService$38;-><init>(Lcom/android/server/input/InputManagerService;[Landroid/hardware/input/KeyboardLayout;)V

    invoke-virtual {p0, p1, p3}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    const/4 p0, 0x0

    aget-object p3, p2, p0

    if-nez p3, :cond_42

    const-string p3, "InputManager"

    .line 6862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not get keyboard layout with descriptor \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    aget-object p0, p2, p0

    return-object p0

    :catchall_45
    move-exception p0

    .line 6847
    :try_start_46
    monitor-exit p2
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw p0
.end method

.method public final getKeyboardLayoutOverlay(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;
    .registers 6

    .line 4986
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 4990
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    return-object v1

    .line 4997
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Overlay KLD="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", dev="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4998
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "InputManager"

    .line 4997
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    .line 5002
    new-instance v3, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda12;

    invoke-direct {v3, p1}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda12;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, v0, v3}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    const/4 p0, 0x0

    aget-object p0, p1, p0

    if-nez p0, :cond_59

    .line 5012
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Could not get keyboard layout with descriptor \'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_59
    return-object p1
.end method

.method public getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;
    .registers 3

    .line 2681
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2682
    new-instance v1, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda3;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 2683
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/hardware/input/KeyboardLayout;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/hardware/input/KeyboardLayout;

    return-object p0
.end method

.method public getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Landroid/hardware/input/KeyboardLayout;
    .registers 11

    .line 2690
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getEnabledKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;

    move-result-object v2

    .line 2691
    new-instance v6, Ljava/util/ArrayList;

    array-length v0, v2

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2693
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2694
    new-instance v8, Lcom/android/server/input/InputManagerService$6;

    move-object v0, v8

    move-object v1, p0

    move-object v3, v6

    move-object v4, p1

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/input/InputManagerService$6;-><init>(Lcom/android/server/input/InputManagerService;[Ljava/lang/String;Ljava/util/ArrayList;Landroid/hardware/input/InputDeviceIdentifier;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v8}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 2725
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 2726
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int v0, p0, p1

    .line 2727
    new-array v0, v0, [Landroid/hardware/input/KeyboardLayout;

    .line 2728
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_2c
    if-ge v1, p1, :cond_3b

    add-int v2, p0, v1

    .line 2730
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/KeyboardLayout;

    aput-object v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_3b
    return-object v0
.end method

.method public getLastLidEventTimeNanos()J
    .registers 3

    .line 5957
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mLastLidEventTime:J

    return-wide v0
.end method

.method public final getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;
    .registers 3

    const-string/jumbo p0, "identifier must not be null"

    .line 2897
    invoke-static {p1, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2898
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object p0

    const-string v0, "descriptor must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2900
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getVendorId()I

    move-result p0

    if-nez p0, :cond_20

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getProductId()I

    move-result p0

    if-nez p0, :cond_20

    .line 2901
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2903
    :cond_20
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "vendor:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getVendorId()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",product:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getProductId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLidState()I
    .registers 4

    const/4 v0, -0x1

    const/16 v1, -0x100

    const/4 v2, 0x0

    .line 2020
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result p0

    return p0
.end method

.method public getLightState(II)Landroid/hardware/lights/LightState;
    .registers 5

    .line 4105
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mLightLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4106
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v1, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->getLightColor(II)I

    move-result v1

    .line 4107
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->getLightPlayerId(II)I

    move-result p0

    .line 4109
    new-instance p1, Landroid/hardware/lights/LightState;

    invoke-direct {p1, v1, p0}, Landroid/hardware/lights/LightState;-><init>(II)V

    monitor-exit v0

    return-object p1

    :catchall_16
    move-exception p0

    .line 4110
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public getLights(I)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/lights/Light;",
            ">;"
        }
    .end annotation

    .line 4045
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->getLights(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getLongPressTimeout()I
    .registers 1

    .line 4922
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p0

    return p0
.end method

.method public final getMultiFingerGestureBehavior(Ljava/lang/String;I)I
    .registers 3

    return p2
.end method

.method public final getParentSurfaceForPointers(I)J
    .registers 2

    .line 4940
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {p0, p1}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->getParentSurfaceForPointers(I)Landroid/view/SurfaceControl;

    move-result-object p0

    if-nez p0, :cond_b

    const-wide/16 p0, 0x0

    return-wide p0

    .line 4944
    :cond_b
    iget-wide p0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    return-wide p0
.end method

.method public final getPenHoveringSetting(Z)Z
    .registers 5

    .line 6323
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "pen_hovering"

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_15

    const/4 p1, 0x1

    if-ne p0, p1, :cond_13

    goto :goto_31

    :cond_13
    move p1, v2

    goto :goto_31

    :catch_15
    move-exception p0

    .line 6326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception getPenHoveringSetting \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputManager"

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_31
    return p1
.end method

.method public final getPointerIcon(I)Landroid/view/PointerIcon;
    .registers 2

    .line 4934
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getContextForPointerIcon(I)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/PointerIcon;->getDefaultIcon(Landroid/content/Context;)Landroid/view/PointerIcon;

    move-result-object p0

    return-object p0
.end method

.method public final getPointerLayer()I
    .registers 1

    .line 4928
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {p0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->getPointerLayer()I

    move-result p0

    return p0
.end method

.method public final getPointerSpeedSetting()I
    .registers 3

    .line 3292
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "pointer_speed"

    const/4 v1, -0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_e
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_10

    :catch_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public final getPrimaryMouseButtonLocation()I
    .registers 3

    .line 6622
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "primary_mouse_button_option"

    const/4 v1, -0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_e
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_17

    :catch_f
    const-string p0, "InputManager"

    const-string v0, "SettingNotFoundException : primary mouse button"

    .line 6625
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public final getReverseSwipeSetting()I
    .registers 4

    const/4 v0, 0x0

    .line 4393
    :try_start_1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v1, "touchpad_scrolling_direction"

    const/4 v2, -0x2

    invoke-static {p0, v1, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_10

    goto :goto_2c

    :catch_10
    move-exception p0

    .line 4396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception getReverseSwipeSetting \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputManager"

    invoke-static {v2, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2c
    return v0
.end method

.method public getScanCodeState(III)I
    .registers 4

    .line 1227
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/input/NativeInputManagerService;->getScanCodeState(III)I

    move-result p0

    return p0
.end method

.method public getSensorList(I)[Landroid/hardware/input/InputSensorInfo;
    .registers 2

    .line 3927
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->getSensorList(I)[Landroid/hardware/input/InputSensorInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getSetPenModeOnDex(I)I
    .registers 2

    return p1
.end method

.method public final getShowHoveringSetting(Z)Z
    .registers 5

    .line 6313
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "pen_hovering_pointer"

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_15

    const/4 p1, 0x1

    if-ne p0, p1, :cond_13

    goto :goto_31

    :cond_13
    move p1, v2

    goto :goto_31

    :catch_15
    move-exception p0

    .line 6316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception getShowHoveringSetting \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputManager"

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_31
    return p1
.end method

.method public final getShowTouchesSetting(I)I
    .registers 4

    .line 3439
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "show_touches"

    const/4 v1, -0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1
    :try_end_e
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_e} :catch_e

    :catch_e
    return p1
.end method

.method public getSwitchState(III)I
    .registers 4

    .line 1253
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/input/NativeInputManagerService;->getSwitchState(III)I

    move-result p0

    return p0
.end method

.method public final getTapToClickSetting()I
    .registers 4

    const/4 v0, 0x1

    .line 4364
    :try_start_1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v1, "tap_to_click_enabled"

    const/4 v2, -0x2

    invoke-static {p0, v1, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_10

    goto :goto_2c

    :catch_10
    move-exception p0

    .line 4367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception getTapToClickSetting \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputManager"

    invoke-static {v2, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2c
    return v0
.end method

.method public getToolTypeForDefaultPointerIcon()I
    .registers 1

    .line 6143
    iget p0, p0, Lcom/android/server/input/InputManagerService;->mToolTypeForDefaultPointerIcon:I

    return p0
.end method

.method public getTouchCalibrationForInputDevice(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;
    .registers 4

    const-string/jumbo v0, "inputDeviceDescriptor must not be null"

    .line 1984
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1986
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v0

    .line 1987
    :try_start_9
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/PersistentDataStore;->getTouchCalibration(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    .line 1988
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public getVibratorIds(I)[I
    .registers 2

    .line 3624
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->getVibratorIds(I)[I

    move-result-object p0

    return-object p0
.end method

.method public final getVibratorToken(ILandroid/os/IBinder;)Lcom/android/server/input/InputManagerService$VibratorToken;
    .registers 7

    .line 3593
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3594
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/InputManagerService$VibratorToken;

    if-nez v1, :cond_29

    .line 3596
    new-instance v1, Lcom/android/server/input/InputManagerService$VibratorToken;

    iget v2, p0, Lcom/android/server/input/InputManagerService;->mNextVibratorTokenValue:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/server/input/InputManagerService;->mNextVibratorTokenValue:I

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/server/input/InputManagerService$VibratorToken;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/os/IBinder;I)V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_2b

    const/4 p1, 0x0

    .line 3598
    :try_start_19
    invoke-interface {p2, v1, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1c} :catch_22
    .catchall {:try_start_19 .. :try_end_1c} :catchall_2b

    .line 3603
    :try_start_1c
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/Map;

    invoke-interface {p0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    :catch_22
    move-exception p0

    .line 3601
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 3605
    :cond_29
    :goto_29
    monitor-exit v0

    return-object v1

    :catchall_2b
    move-exception p0

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_1c .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public final getVirtualKeyQuietTimeMillis()I
    .registers 2

    .line 4795
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e0138

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method public final getVirtualMousePointerDisplayId()I
    .registers 2

    .line 3511
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputPropertiesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3512
    :try_start_3
    iget p0, p0, Lcom/android/server/input/InputManagerService;->mOverriddenPointerDisplayId:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 3513
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final handlePointerDisplayIdChanged(Lcom/android/server/input/InputManagerService$PointerDisplayIdChangedArgs;)V
    .registers 4

    .line 3463
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputPropertiesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3464
    :try_start_3
    iget v1, p1, Lcom/android/server/input/InputManagerService$PointerDisplayIdChangedArgs;->mPointerDisplayId:I

    iput v1, p0, Lcom/android/server/input/InputManagerService;->mAcknowledgedPointerDisplayId:I

    .line 3466
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputPropertiesLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 3467
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_19

    .line 3468
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    iget v0, p1, Lcom/android/server/input/InputManagerService$PointerDisplayIdChangedArgs;->mPointerDisplayId:I

    iget v1, p1, Lcom/android/server/input/InputManagerService$PointerDisplayIdChangedArgs;->mXPosition:F

    iget p1, p1, Lcom/android/server/input/InputManagerService$PointerDisplayIdChangedArgs;->mYPosition:F

    invoke-interface {p0, v0, v1, p1}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyPointerDisplayIdChanged(IFF)V

    return-void

    :catchall_19
    move-exception p0

    .line 3467
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public final handleSwitchInputMethodSubtype(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 6

    const-string p1, "InputManager"

    if-nez p2, :cond_a

    const-string p0, "No InputMethod is running, ignoring change"

    .line 3076
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    if-eqz p3, :cond_1f

    .line 3079
    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "keyboard"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string p0, "InputMethodSubtype changed to non-keyboard subtype, ignoring change"

    .line 3080
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3083
    :cond_1f
    new-instance v0, Lcom/android/server/input/InputMethodSubtypeHandle;

    invoke-direct {v0, p2, p3}, Lcom/android/server/input/InputMethodSubtypeHandle;-><init>(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 3084
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to switch keyboard layout for subtype: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3086
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mCurrentImeHandle:Lcom/android/server/input/InputMethodSubtypeHandle;

    invoke-virtual {v0, p1}, Lcom/android/server/input/InputMethodSubtypeHandle;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_48

    .line 3087
    iput-object p3, p0, Lcom/android/server/input/InputManagerService;->mCurrentImeSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 3088
    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mCurrentImeHandle:Lcom/android/server/input/InputMethodSubtypeHandle;

    const/4 p1, 0x0

    .line 3089
    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/InputManagerService;->handleSwitchKeyboardLayout(Landroid/hardware/input/InputDeviceIdentifier;Lcom/android/server/input/InputMethodSubtypeHandle;)V

    :cond_48
    return-void
.end method

.method public final handleSwitchKeyboardLayout(II)V
    .registers 5

    .line 3123
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object p1

    if-eqz p1, :cond_55

    .line 3128
    invoke-virtual {p1}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object p1

    .line 3129
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v0

    .line 3131
    :try_start_11
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/input/PersistentDataStore;->switchKeyboardLayout(Ljava/lang/String;I)Z

    move-result p2

    .line 3132
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1, p1}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_4b

    .line 3135
    :try_start_1d
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 3137
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_52

    if-eqz p2, :cond_55

    .line 3140
    iget-object p2, p0, Lcom/android/server/input/InputManagerService;->mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    if-eqz p2, :cond_2f

    .line 3141
    invoke-virtual {p2}, Landroid/widget/Toast;->cancel()V

    const/4 p2, 0x0

    .line 3142
    iput-object p2, p0, Lcom/android/server/input/InputManagerService;->mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    :cond_2f
    if-eqz p1, :cond_47

    .line 3145
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object p1

    if-eqz p1, :cond_47

    .line 3147
    iget-object p2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 3148
    invoke-virtual {p1}, Landroid/hardware/input/KeyboardLayout;->getLabel()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 3147
    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    .line 3149
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 3153
    :cond_47
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V

    goto :goto_55

    :catchall_4b
    move-exception p1

    .line 3135
    :try_start_4c
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 3136
    throw p1

    :catchall_52
    move-exception p0

    .line 3137
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_4c .. :try_end_54} :catchall_52

    throw p0

    :cond_55
    :goto_55
    return-void
.end method

.method public final handleSwitchKeyboardLayout(Landroid/hardware/input/InputDeviceIdentifier;Lcom/android/server/input/InputMethodSubtypeHandle;)V
    .registers 10

    .line 3096
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3097
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_47

    aget-object v4, v1, v3

    if-eqz p1, :cond_17

    .line 3098
    invoke-virtual {v4}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/hardware/input/InputDeviceIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 3099
    :cond_17
    invoke-virtual {v4}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v5

    if-nez v5, :cond_1e

    goto :goto_3a

    .line 3102
    :cond_1e
    invoke-virtual {v4}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v4

    .line 3104
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v5
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_49

    .line 3106
    :try_start_29
    iget-object v6, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v6, v4, p2}, Lcom/android/server/input/PersistentDataStore;->switchKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputMethodSubtypeHandle;)Z

    move-result v4
    :try_end_2f
    .catchall {:try_start_29 .. :try_end_2f} :catchall_3d

    .line 3110
    :try_start_2f
    iget-object v6, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v6}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 3112
    monitor-exit v5
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_44

    if-eqz v4, :cond_3a

    .line 3114
    :try_start_37
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_49

    :cond_3a
    :goto_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :catchall_3d
    move-exception p1

    .line 3110
    :try_start_3e
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 3111
    throw p1

    :catchall_44
    move-exception p0

    .line 3112
    monitor-exit v5
    :try_end_46
    .catchall {:try_start_3e .. :try_end_46} :catchall_44

    :try_start_46
    throw p0

    .line 3117
    :cond_47
    monitor-exit v0

    return-void

    :catchall_49
    move-exception p0

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_46 .. :try_end_4b} :catchall_49

    throw p0
.end method

.method public final handleUpdateDefaultKeyboardLayouts(Landroid/hardware/input/InputDeviceIdentifier;Ljava/util/HashMap;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/input/InputDeviceIdentifier;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 7000
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, "InputManager"

    const-string v1, "Handle UPDATE_DEFAULT_KEYBOARD_LAYOUTS"

    .line 7004
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_10

    .line 7006
    iget-object p2, p0, Lcom/android/server/input/InputManagerService;->mAvailableInputMethods:Ljava/util/HashMap;

    .line 7008
    :cond_10
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 7009
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 7010
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Handle handleUpdateDefaultKeyboardLayouts "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7011
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 7012
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mAvailableInputMethods:Ljava/util/HashMap;

    invoke-static {v3, v4}, Lcom/android/server/input/KeyboardLayoutUtils;->getEnabledSubtypeIdsOf(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/HashSet;

    move-result-object v4

    .line 7015
    invoke-static {v2, v4}, Lcom/android/server/input/KeyboardLayoutUtils;->isSubtypeListChanged(Ljava/util/HashSet;Ljava/util/HashSet;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 7017
    invoke-virtual {p0, v3, v2}, Lcom/android/server/input/InputManagerService;->updateDefaultKeyboardLayoutsForAll(Ljava/lang/String;Ljava/util/HashSet;)V

    goto :goto_18

    :cond_54
    if-eqz p1, :cond_18

    .line 7019
    invoke-static {v3}, Lcom/android/server/input/KeyboardLayoutUtils;->getPackageNameFromCmpName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7020
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 7021
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v4

    .line 7020
    invoke-static {v3, v4}, Lcom/android/server/input/KeyboardLayoutUtils;->getInputMethodInfoOf(Ljava/lang/String;Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v3

    .line 7022
    invoke-virtual {p0, p1, v3, v2}, Lcom/android/server/input/InputManagerService;->updateDefaultKeyboardLayouts(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Ljava/util/HashSet;)V

    goto :goto_18

    .line 7027
    :cond_68
    iput-object p2, p0, Lcom/android/server/input/InputManagerService;->mAvailableInputMethods:Ljava/util/HashMap;

    return-void
.end method

.method public hasKeys(II[I[Z)Z
    .registers 7

    const-string/jumbo v0, "keyCodes must not be null"

    .line 1270
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "keyExists must not be null"

    .line 1271
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1272
    array-length v0, p4

    array-length v1, p3

    if-lt v0, v1, :cond_17

    .line 1276
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/input/NativeInputManagerService;->hasKeys(II[I[Z)Z

    move-result p0

    return p0

    .line 1273
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "keyExists must be at least as large as keyCodes"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final hideMissingKeyboardLayoutNotification()V
    .registers 5

    .line 2625
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    .line 2626
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    .line 2627
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x13

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 2632
    iput-object v3, p0, Lcom/android/server/input/InputManagerService;->mCurrentMissingKeyboardLayoutDevice:Landroid/view/InputDevice;

    :cond_13
    return-void
.end method

.method public final initTspCmdForSpay()V
    .registers 3

    .line 7093
    sget-boolean v0, Lcom/android/server/input/InputManagerService;->SEP_FULL:Z

    if-eqz v0, :cond_21

    const-string/jumbo v0, "persist.service.tspcmd.spay"

    .line 7094
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 7095
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->isSpayFullAppInstalled()Z

    move-result v0

    .line 7096
    sget-object v1, Landroid/hardware/input/InputManager$SemTspCommandType;->SPAY:Landroid/hardware/input/InputManager$SemTspCommandType;

    invoke-virtual {v1}, Landroid/hardware/input/InputManager$SemTspCommandType;->getvalue()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/input/InputManagerService;->setEnableTSP(IZ)Z

    :cond_21
    return-void
.end method

.method public injectInputEvent(Landroid/view/InputEvent;I)Z
    .registers 4

    const/4 v0, -0x1

    .line 1518
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/input/InputManagerService;->injectInputEventToTarget(Landroid/view/InputEvent;II)Z

    move-result p0

    return p0
.end method

.method public injectInputEventToTarget(Landroid/view/InputEvent;II)Z
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    const-string v13, "android.permission.INJECT_EVENTS"

    const-string/jumbo v1, "injectInputEvent()"

    const/4 v14, 0x1

    .line 1523
    invoke-virtual {v0, v13, v1, v14}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_10a

    const-string v1, "event must not be null"

    .line 1531
    invoke-static {v10, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz v11, :cond_2a

    const/4 v1, 0x2

    if-eq v11, v1, :cond_2a

    if-ne v11, v14, :cond_21

    goto :goto_2a

    .line 1535
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "mode is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1538
    :cond_2a
    :goto_2a
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    .line 1542
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1545
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    const/4 v9, -0x1

    const/16 v18, 0x0

    if-eq v12, v9, :cond_3e

    move/from16 v19, v14

    goto :goto_40

    :cond_3e
    move/from16 v19, v18

    .line 1550
    :goto_40
    :try_start_40
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->DSS_ENABLED:Z

    if-eqz v1, :cond_5b

    .line 1551
    iget-object v1, v0, Lcom/android/server/input/InputManagerService;->mDssController:Lcom/android/server/DssController;

    invoke-virtual {v1, v15}, Lcom/android/server/DssController;->getScalingFactor(I)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_5b

    .line 1553
    instance-of v3, v10, Landroid/view/MotionEvent;

    if-eqz v3, :cond_5b

    .line 1554
    move-object v3, v10

    check-cast v3, Landroid/view/MotionEvent;

    div-float/2addr v2, v1

    .line 1555
    invoke-virtual {v3, v2}, Landroid/view/MotionEvent;->scale(F)V

    .line 1574
    :cond_5b
    iget-object v1, v0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    const/16 v8, 0x7530

    const/high16 v20, 0x8000000

    move-object/from16 v2, p1

    move/from16 v3, v19

    move/from16 v4, p3

    move/from16 v5, p2

    move v6, v15

    move/from16 v9, v20

    invoke-interface/range {v1 .. v9}, Lcom/android/server/input/NativeInputManagerService;->injectInputEvent(Landroid/view/InputEvent;ZIIIIII)I

    move-result v1
    :try_end_70
    .catchall {:try_start_40 .. :try_end_70} :catchall_105

    .line 1582
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v1, :cond_104

    const-string v2, "InputManager"

    if-eq v1, v14, :cond_ae

    const/4 v0, 0x3

    const-string v3, "Input event injection from pid "

    if-eq v1, v0, :cond_96

    .line 1612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " failed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v18

    .line 1608
    :cond_96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " timed out."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v18

    :cond_ae
    if-eqz v19, :cond_fc

    const-string/jumbo v1, "injectInputEvent-target-mismatch-fallback"

    .line 1597
    invoke-virtual {v0, v13, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d8

    .line 1599
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Targeted input event was not directed at a window owned by uid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ". Falling back to injecting into all windows."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    .line 1601
    invoke-virtual {v0, v10, v11, v1}, Lcom/android/server/input/InputManagerService;->injectInputEventToTarget(Landroid/view/InputEvent;II)Z

    move-result v0

    return v0

    .line 1603
    :cond_d8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Targeted input event injection from pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " was not directed at a window owned by uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1589
    :cond_fc
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Injection should not result in TARGET_MISMATCH when it is not targeted into to a specific uid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_104
    return v14

    :catchall_105
    move-exception v0

    .line 1582
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1583
    throw v0

    .line 1525
    :cond_10a
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Injecting input events requires the caller (or the source of the instrumentation, if any) to have the INJECT_EVENTS permission."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J
    .registers 4

    .line 4769
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public final interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .registers 7

    .line 4708
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 4709
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/16 v2, 0x433

    if-eq v0, v2, :cond_10

    const/16 v3, 0x434

    if-ne v0, v3, :cond_2e

    :cond_10
    if-nez v1, :cond_2e

    .line 4714
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-ne v0, v2, :cond_22

    const v2, 0x1040e27

    .line 4716
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_29

    :cond_22
    const v2, 0x1040e26

    .line 4717
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4719
    :goto_29
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mToastDialog:Lcom/android/server/input/ToastDialog;

    invoke-virtual {v3, v2}, Lcom/android/server/input/ToastDialog;->showTouchpadOnOff(Ljava/lang/String;)V

    :cond_2e
    const/16 v2, 0x44c

    if-eq v0, v2, :cond_36

    const/16 v3, 0x44d

    if-ne v0, v3, :cond_54

    :cond_36
    if-nez v1, :cond_54

    .line 4727
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-ne v0, v2, :cond_48

    const v2, 0x1040571

    .line 4729
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4f

    :cond_48
    const v2, 0x1040572

    .line 4730
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4732
    :goto_4f
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mToastDialog:Lcom/android/server/input/ToastDialog;

    invoke-virtual {v3, v2}, Lcom/android/server/input/ToastDialog;->showFnLockUnlock(Ljava/lang/String;)V

    .line 4736
    :cond_54
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->IFW_KEY_COUNTER:Z

    if-eqz v2, :cond_ad

    const/16 v2, 0x18

    if-eq v0, v2, :cond_72

    const/16 v2, 0x19

    if-eq v0, v2, :cond_72

    const/16 v2, 0x1a

    if-eq v0, v2, :cond_72

    const/16 v2, 0x43a

    if-eq v0, v2, :cond_72

    const/16 v2, 0xbb

    if-eq v0, v2, :cond_72

    const/4 v2, 0x4

    if-eq v0, v2, :cond_72

    const/4 v2, 0x3

    if-ne v0, v2, :cond_ad

    :cond_72
    if-nez v1, :cond_ad

    .line 4745
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    if-eqz v1, :cond_ad

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputDevice;->isExternal()Z

    move-result v1

    if-nez v1, :cond_ad

    .line 4746
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v1

    if-eqz v1, :cond_ad

    .line 4747
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_ad

    .line 4748
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputKeyCounter:Lcom/android/server/input/InputKeyCounter;

    invoke-virtual {v1, v0}, Lcom/android/server/input/InputKeyCounter;->increaseCount(I)V

    .line 4749
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputKeyCounter:Lcom/android/server/input/InputKeyCounter;

    invoke-virtual {v0}, Lcom/android/server/input/InputKeyCounter;->getAllKeyCount()J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-lez v0, :cond_ad

    .line 4750
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    new-instance v1, Lcom/android/server/input/InputManagerService$KeyCountRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/input/InputManagerService$KeyCountRunnable;-><init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$KeyCountRunnable-IA;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4755
    :cond_ad
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {p0, p1, p2}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result p0

    return p0
.end method

.method public final interceptKeyBeforeQuickAccess(IFF)Z
    .registers 4

    .line 7072
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptKeyBeforeQuickAccess(IFF)Z

    move-result p0

    return p0
.end method

.method public final interceptMotionBeforeQueueingNonInteractive(IJI)I
    .registers 5

    .line 4762
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptMotionBeforeQueueingNonInteractive(IJI)I

    move-result p0

    return p0
.end method

.method public isDefaultPointerIconChanged()Z
    .registers 1

    .line 6138
    iget-boolean p0, p0, Lcom/android/server/input/InputManagerService;->mDefaultPointerIconChanged:Z

    return p0
.end method

.method public isInTabletMode()I
    .registers 4

    const-string v0, "android.permission.TABLET_MODE"

    const-string/jumbo v1, "isInTabletMode()"

    .line 2077
    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, -0x1

    const/16 v1, -0x100

    const/4 v2, 0x1

    .line 2081
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result p0

    return p0

    .line 2079
    :cond_14
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Requires TABLET_MODE permission"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isInputDeviceEnabled(I)Z
    .registers 2

    .line 1643
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->isInputDeviceEnabled(I)Z

    move-result p0

    return p0
.end method

.method public isMicMuted()I
    .registers 4

    const/4 v0, -0x1

    const/16 v1, -0x100

    const/16 v2, 0xe

    .line 2086
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result p0

    return p0
.end method

.method public isSpayFullAppInstalled()Z
    .registers 4

    const/4 v0, 0x0

    .line 7104
    :try_start_1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.samsung.android.spay"

    const/16 v2, 0x80

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 7107
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.samsung.android.spay.is_stub"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_19} :catch_1c

    xor-int/lit8 p0, p0, 0x1

    move v0, p0

    :catch_1c
    :cond_1c
    return v0
.end method

.method public isUidTouched(I)Z
    .registers 2

    .line 5964
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->isUidTouched(I)Z

    move-result p0

    return p0
.end method

.method public isVibrating(I)Z
    .registers 2

    .line 3630
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->isVibrating(I)Z

    move-result p0

    return p0
.end method

.method public monitor()V
    .registers 3

    .line 4319
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_26

    .line 4320
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_23

    .line 4321
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_20

    .line 4322
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    monitor-enter v1

    :try_start_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_1d

    .line 4323
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputPropertiesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_1a

    .line 4324
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->monitor()V

    return-void

    :catchall_1a
    move-exception p0

    .line 4323
    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p0

    :catchall_1d
    move-exception p0

    .line 4322
    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p0

    :catchall_20
    move-exception p0

    .line 4321
    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw p0

    :catchall_23
    move-exception p0

    .line 4320
    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p0

    :catchall_26
    move-exception p0

    .line 4319
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public monitorGestureInput(Landroid/os/IBinder;Ljava/lang/String;II)Landroid/view/InputMonitor;
    .registers 14

    const-string v0, "android.permission.MONITOR_INPUT"

    const-string/jumbo v1, "monitorGestureInput()"

    .line 1398
    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5d

    const-string/jumbo v0, "name must not be null."

    .line 1402
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "token must not be null."

    .line 1403
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-ltz p3, :cond_55

    .line 1408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Gesture Monitor] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1409
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 1410
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1412
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-object v2, p0

    move-object v3, p1

    move v5, p3

    move v8, p4

    .line 1415
    :try_start_3a
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/input/InputManagerService;->createSpyWindowGestureMonitor(Landroid/os/IBinder;Ljava/lang/String;IIII)Landroid/view/InputChannel;

    move-result-object p1

    .line 1417
    new-instance p2, Landroid/view/InputMonitor;

    new-instance p3, Lcom/android/server/input/InputManagerService$InputMonitorHost;

    invoke-virtual {p1}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object p4

    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputManagerService$InputMonitorHost;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/IBinder;)V

    invoke-direct {p2, p1, p3}, Landroid/view/InputMonitor;-><init>(Landroid/view/InputChannel;Landroid/view/IInputMonitorHost;)V
    :try_end_4c
    .catchall {:try_start_3a .. :try_end_4c} :catchall_50

    .line 1419
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p2

    :catchall_50
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1420
    throw p0

    .line 1406
    :cond_55
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "displayId must >= 0."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1400
    :cond_5d
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires MONITOR_INPUT permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public monitorInput(Ljava/lang/String;I)Landroid/view/InputChannel;
    .registers 4

    const v0, 0xffff

    .line 1316
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/input/InputManagerService;->monitorInput(Ljava/lang/String;II)Landroid/view/InputChannel;

    move-result-object p0

    return-object p0
.end method

.method public monitorInput(Ljava/lang/String;II)Landroid/view/InputChannel;
    .registers 5

    const-string/jumbo v0, "inputChannelName not be null"

    .line 1321
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-ltz p2, :cond_13

    .line 1327
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-interface {p0, p2, p1, v0, p3}, Lcom/android/server/input/NativeInputManagerService;->createInputMonitor(ILjava/lang/String;II)Landroid/view/InputChannel;

    move-result-object p0

    return-object p0

    .line 1324
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "displayId must >= 0."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public monitorInputForBinder(Ljava/lang/String;II)Landroid/view/InputChannel;
    .registers 8

    .line 1372
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1373
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_2e

    .line 1374
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MONITOR_INPUT"

    .line 1375
    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_17

    goto :goto_2e

    .line 1377
    :cond_17
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "can only call from system. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1379
    :cond_2e
    :goto_2e
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->monitorInput(Ljava/lang/String;II)Landroid/view/InputChannel;

    move-result-object p0

    return-object p0
.end method

.method public final notifyConfigurationChanged(J)V
    .registers 3

    .line 4424
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {p0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyConfigurationChanged()V

    return-void
.end method

.method public final notifyDisplayIdChangedByUser(I)V
    .registers 4

    .line 5985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyDisplayIdChangedByUser: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5987
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mDisplayIdForPointerIcon:I

    if-eq v0, p1, :cond_1d

    .line 5988
    iput p1, p0, Lcom/android/server/input/InputManagerService;->mDisplayIdForPointerIcon:I

    :cond_1d
    return-void
.end method

.method public final notifyDropWindow(Landroid/os/IBinder;FF)V
    .registers 4

    .line 4586
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyDropWindow(Landroid/os/IBinder;FF)V

    return-void
.end method

.method public final notifyFocusChanged(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 3

    .line 4580
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {p0, p1, p2}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyFocusChanged(Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-void
.end method

.method public final notifyInputChannelBroken(Landroid/os/IBinder;)V
    .registers 4

    .line 4569
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    monitor-enter v0

    .line 4570
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 4571
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->removeSpyWindowGestureMonitor(Landroid/os/IBinder;)V

    .line 4573
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_15

    .line 4574
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {p0, p1}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyInputChannelBroken(Landroid/os/IBinder;)V

    return-void

    :catchall_15
    move-exception p0

    .line 4573
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public final notifyInputDevicesChanged([Landroid/view/InputDevice;)V
    .registers 6

    .line 4430
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4431
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    if-nez v1, :cond_15

    const/4 v1, 0x1

    .line 4432
    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    .line 4433
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    invoke-virtual {v2, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4434
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 4437
    :cond_15
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    .line 4438
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public final notifyMultiFingerGesture(II)I
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_6

    .line 2327
    iget v1, p0, Lcom/android/server/input/InputManagerService;->mCurrentThreeTapBehavior:I

    goto :goto_d

    :cond_6
    const/4 v1, 0x1

    if-ne p1, v1, :cond_c

    .line 2329
    iget v1, p0, Lcom/android/server/input/InputManagerService;->mCurrentFourTapBehavior:I

    goto :goto_d

    :cond_c
    move v1, v0

    .line 2331
    :goto_d
    sget-boolean v2, Lcom/android/server/input/InputManagerService;->mMultiFingerGestureEnable:Z

    const-string v3, " "

    const-string v4, "InputManager"

    if-eqz v2, :cond_31

    .line 2332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyMultiFingerGesture: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 2335
    :cond_31
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not support multi finger gesture "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 2338
    :goto_4e
    invoke-virtual {p0, v1, p2}, Lcom/android/server/input/InputManagerService;->sendMultiFingerGesture(II)V

    const/4 p0, 0x4

    if-ne v1, p0, :cond_55

    move v0, p0

    :cond_55
    return v0
.end method

.method public final notifyNoFocusedWindowAnr(Landroid/view/InputApplicationHandle;)V
    .registers 2

    .line 4627
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {p0, p1}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyNoFocusedWindowAnr(Landroid/view/InputApplicationHandle;)V

    return-void
.end method

.method public final notifySensorAccuracy(III)V
    .registers 10

    .line 4672
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSensorAccuracyListenersToNotify:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4674
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSensorEventLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4675
    :try_start_8
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    if-ge v3, v1, :cond_22

    .line 4677
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mSensorAccuracyListenersToNotify:Ljava/util/List;

    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 4679
    :cond_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_39

    :goto_23
    if-ge v2, v1, :cond_33

    .line 4681
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSensorAccuracyListenersToNotify:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->notifySensorAccuracy(III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 4684
    :cond_33
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mSensorAccuracyListenersToNotify:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void

    :catchall_39
    move-exception p0

    .line 4679
    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public final notifySensorEvent(IIIJ[F)V
    .registers 18

    move-object v0, p0

    .line 4653
    iget-object v1, v0, Lcom/android/server/input/InputManagerService;->mSensorEventListenersToNotify:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 4655
    iget-object v1, v0, Lcom/android/server/input/InputManagerService;->mSensorEventLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4656
    :try_start_9
    iget-object v2, v0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_11
    if-ge v4, v2, :cond_23

    .line 4658
    iget-object v5, v0, Lcom/android/server/input/InputManagerService;->mSensorEventListenersToNotify:Ljava/util/List;

    iget-object v6, v0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    .line 4659
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;

    .line 4658
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 4661
    :cond_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_9 .. :try_end_24} :catchall_41

    :goto_24
    if-ge v3, v2, :cond_3b

    .line 4663
    iget-object v1, v0, Lcom/android/server/input/InputManagerService;->mSensorEventListenersToNotify:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;

    move v5, p1

    move v6, p2

    move v7, p3

    move-wide v8, p4

    move-object/from16 v10, p6

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->notifySensorEvent(IIIJ[F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 4666
    :cond_3b
    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mSensorEventListenersToNotify:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    :catchall_41
    move-exception v0

    .line 4661
    :try_start_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v0
.end method

.method public final notifySwitch(JII)V
    .registers 15

    const-string v0, "InputManager"

    .line 4445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifySwitch: values="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4446
    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4445
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v0, p4, 0x1

    const/16 v1, 0x20

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_81

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_37

    move v6, v5

    goto :goto_38

    :cond_37
    move v6, v4

    .line 4451
    :goto_38
    iget-object v7, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchLock:Ljava/lang/Object;

    monitor-enter v7

    .line 4452
    :try_start_3b
    iget-boolean v8, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    if-eqz v8, :cond_56

    move v8, v4

    .line 4453
    :goto_40
    iget-object v9, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchCallbacks:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_56

    .line 4454
    iget-object v9, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchCallbacks:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/input/InputManagerInternal$LidSwitchCallback;

    .line 4455
    invoke-interface {v9, p1, p2, v6}, Landroid/hardware/input/InputManagerInternal$LidSwitchCallback;->notifyLidSwitchChanged(JZ)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_40

    .line 4458
    :cond_56
    monitor-exit v7
    :try_end_57
    .catchall {:try_start_3b .. :try_end_57} :catchall_7e

    .line 4461
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v6

    and-long v7, p1, v2

    long-to-int v7, v7

    .line 4462
    iput v7, v6, Lcom/android/internal/os/SomeArgs;->argi1:I

    shr-long v7, p1, v1

    long-to-int v7, v7

    .line 4463
    iput v7, v6, Lcom/android/internal/os/SomeArgs;->argi2:I

    if-nez v0, :cond_69

    move v0, v5

    goto :goto_6a

    :cond_69
    move v0, v4

    .line 4464
    :goto_6a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v6, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 4465
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/16 v7, 0x67

    invoke-virtual {v0, v7, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4466
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4468
    iput-wide p1, p0, Lcom/android/server/input/InputManagerService;->mLastLidEventTime:J

    goto :goto_81

    :catchall_7e
    move-exception p0

    .line 4458
    :try_start_7f
    monitor-exit v7
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    throw p0

    :cond_81
    :goto_81
    and-int/lit16 v0, p4, 0x200

    if-eqz v0, :cond_95

    and-int/lit16 v0, p3, 0x200

    if-eqz v0, :cond_8b

    move v0, v5

    goto :goto_8c

    :cond_8b
    move v0, v4

    .line 4482
    :goto_8c
    iget-object v6, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v6, p1, p2, v0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyCameraLensCoverSwitchChanged(JZ)V

    const/4 v6, 0x2

    .line 4484
    invoke-virtual {p0, v6, v0}, Lcom/android/server/input/InputManagerService;->setSensorPrivacy(IZ)V

    .line 4487
    :cond_95
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mUseDevInputEventForAudioJack:Z

    if-eqz v0, :cond_a2

    and-int/lit16 v0, p4, 0xd4

    if-eqz v0, :cond_a2

    .line 4488
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;->notifyWiredAccessoryChanged(JII)V

    :cond_a2
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_ca

    .line 4493
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    and-long/2addr v2, p1

    long-to-int v2, v2

    .line 4494
    iput v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    shr-long v1, p1, v1

    long-to-int v1, v1

    .line 4495
    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_b9

    move v1, v5

    goto :goto_ba

    :cond_b9
    move v1, v4

    .line 4496
    :goto_ba
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 4497
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4498
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_ca
    const/high16 v0, 0x80000

    and-int v1, p4, v0

    if-eqz v1, :cond_db

    and-int/2addr v0, p3

    if-nez v0, :cond_d5

    move v0, v5

    goto :goto_d6

    :cond_d5
    move v0, v4

    .line 4505
    :goto_d6
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v1, p1, p2, v0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyPenSwitchChanged(JZ)V

    :cond_db
    and-int/lit16 v0, p4, 0x4000

    if-eqz v0, :cond_f6

    and-int/lit16 v0, p3, 0x4000

    if-eqz v0, :cond_e5

    move v0, v5

    goto :goto_e6

    :cond_e5
    move v0, v4

    .line 4512
    :goto_e6
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 4513
    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setMicrophoneMuteFromSwitch(Z)V

    .line 4515
    invoke-virtual {p0, v5, v0}, Lcom/android/server/input/InputManagerService;->setSensorPrivacy(IZ)V

    :cond_f6
    const/high16 v0, 0x200000

    and-int v1, p4, v0

    if-eqz v1, :cond_11c

    and-int/2addr v0, p3

    if-nez v0, :cond_101

    move v0, v5

    goto :goto_102

    :cond_101
    move v0, v4

    .line 4522
    :goto_102
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    if-nez v1, :cond_110

    .line 4523
    const-class v1, Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    .line 4525
    :cond_110
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    invoke-virtual {v1, p1, p2, v0}, Lcom/samsung/android/sepunion/SemUnionManagerLocal;->notifyCoverSwitchStateChanged(JZ)V

    .line 4527
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mSecAccessoryManagerCallbacks:Lcom/android/server/input/InputManagerService$SecAccessoryManagerCallbacks;

    if-eqz v1, :cond_11c

    .line 4528
    invoke-interface {v1, p1, p2, v0}, Lcom/android/server/input/InputManagerService$SecAccessoryManagerCallbacks;->notifyCoverSwitchStateChanged(JZ)V

    :cond_11c
    const/high16 v0, 0x8000000

    and-int v1, p4, v0

    if-eqz v1, :cond_137

    and-int/2addr v0, p3

    if-eqz v0, :cond_127

    move v0, v5

    goto :goto_128

    :cond_127
    move v0, v4

    .line 4533
    :goto_128
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mSecAccessoryManagerCallbacks:Lcom/android/server/input/InputManagerService$SecAccessoryManagerCallbacks;

    if-eqz v1, :cond_130

    .line 4534
    invoke-interface {v1, p1, p2, v0}, Lcom/android/server/input/InputManagerService$SecAccessoryManagerCallbacks;->notifyUnverifiedCoverAttachChanged(JZ)V

    goto :goto_137

    :cond_130
    const-string v0, "InputManager"

    const-string v1, "UnVerifiedCoverAttachCallbacks is not registered"

    .line 4537
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_137
    :goto_137
    const/high16 v0, -0x80000000

    and-int/2addr p4, v0

    if-eqz p4, :cond_145

    and-int/2addr p3, v0

    if-eqz p3, :cond_140

    move v4, v5

    .line 4552
    :cond_140
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mInputMethodManagerCallbacks:Lcom/android/server/input/InputManagerService$InputMethodManagerCallbacks;

    invoke-interface {p0, p1, p2, v4}, Lcom/android/server/input/InputManagerService$InputMethodManagerCallbacks;->notifyKeyboardCoverBackfolded(JZ)V

    :cond_145
    return-void
.end method

.method public final notifyUntrustedTouch(Ljava/lang/String;)V
    .registers 6

    .line 4596
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    .line 4597
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 4599
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_16} :catch_16

    .line 4604
    :catch_16
    :cond_16
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040efd

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 4607
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mToastDialog:Lcom/android/server/input/ToastDialog;

    invoke-virtual {p0, p1}, Lcom/android/server/input/ToastDialog;->showUntrustedTouch(Ljava/lang/String;)V

    return-void
.end method

.method public final notifyVibratorState(IZ)V
    .registers 5

    .line 3710
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3711
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mIsVibrating:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3712
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->notifyVibratorStateListenersLocked(I)V

    .line 3713
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final notifyVibratorStateListenerLocked(ILandroid/os/IVibratorStateListener;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mVibratorLock"
        }
    .end annotation

    .line 3739
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mIsVibrating:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    invoke-interface {p2, p0}, Landroid/os/IVibratorStateListener;->onVibrating(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception p0

    const-string p1, "InputManager"

    const-string p2, "Vibrator state listener failed to call"

    .line 3741
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    return-void
.end method

.method public final notifyVibratorStateListenersLocked(I)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mVibratorLock"
        }
    .end annotation

    .line 3718
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorStateListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 3724
    :cond_9
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorStateListeners:Landroid/util/SparseArray;

    .line 3725
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 3726
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_29

    .line 3729
    :try_start_18
    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/os/IVibratorStateListener;

    invoke-virtual {p0, p1, v3}, Lcom/android/server/input/InputManagerService;->notifyVibratorStateListenerLocked(ILandroid/os/IVibratorStateListener;)V
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_24

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :catchall_24
    move-exception p0

    .line 3732
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 3733
    throw p0

    .line 3732
    :cond_29
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final notifyWindowResponsive(Landroid/os/IBinder;IZ)V
    .registers 4

    .line 4641
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    if-eqz p3, :cond_9

    .line 4642
    invoke-static {p2}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object p2

    goto :goto_d

    :cond_9
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object p2

    .line 4641
    :goto_d
    invoke-interface {p0, p1, p2}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyWindowResponsive(Landroid/os/IBinder;Ljava/util/OptionalInt;)V

    return-void
.end method

.method public final notifyWindowUnresponsive(Landroid/os/IBinder;IZLjava/lang/String;)V
    .registers 5

    .line 4634
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    if-eqz p3, :cond_9

    .line 4635
    invoke-static {p2}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object p2

    goto :goto_d

    :cond_9
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object p2

    .line 4634
    :goto_d
    invoke-interface {p0, p1, p2, p4}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyWindowUnresponsive(Landroid/os/IBinder;Ljava/util/OptionalInt;Ljava/lang/String;)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 3

    .line 3168
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconDisplayContext:Landroid/content/Context;

    if-eqz v0, :cond_11

    .line 3169
    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_11

    const/4 v0, 0x0

    .line 3170
    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconDisplayContext:Landroid/content/Context;

    .line 3173
    :cond_11
    new-instance v0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/InputManagerService;->updateAdditionalDisplayInputProperties(ILjava/util/function/Consumer;)V

    .line 3175
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->displayRemoved(I)V

    return-void
.end method

.method public final onInputDevicesChangedListenerDied(I)V
    .registers 3

    .line 1718
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1719
    :try_start_3
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1720
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final onLidStateChangedListenerDied(I)V
    .registers 3

    .line 2052
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mLidStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2053
    :try_start_3
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mLidStateChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2054
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final onMultiFingerGestureListenerDied(I)V
    .registers 3

    .line 2225
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mMultiFingerGestureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2226
    :try_start_3
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mMultiFingerGestureListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2227
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public onPointerDisplayIdChanged(IFF)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5044
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    new-instance v0, Lcom/android/server/input/InputManagerService$PointerDisplayIdChangedArgs;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$PointerDisplayIdChangedArgs;-><init>(IFF)V

    const/4 p1, 0x7

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 5046
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final onPointerDownOutsideFocus(Landroid/os/IBinder;)V
    .registers 2

    .line 4781
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {p0, p1}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->onPointerDownOutsideFocus(Landroid/os/IBinder;)V

    return-void
.end method

.method public final onPointerDownUpCancelOutsideFocus(Landroid/os/IBinder;III)V
    .registers 5

    .line 4788
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->onPointerDownUpCancelOutsideFocus(Landroid/os/IBinder;III)V

    return-void
.end method

.method public final onPointerIconChangedListenerDied(I)V
    .registers 3

    .line 2164
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2165
    :try_start_3
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2166
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final onSensorEventListenerDied(I)V
    .registers 3

    .line 5558
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSensorEventLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5559
    :try_start_3
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 5560
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 5861
    new-instance v0, Lcom/android/server/input/InputShellCommand;

    invoke-direct {v0}, Lcom/android/server/input/InputShellCommand;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public final onTabletModeChangedListenerDied(I)V
    .registers 3

    .line 2116
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2117
    :try_start_3
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2118
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public onVibratorTokenDied(Lcom/android/server/input/InputManagerService$VibratorToken;)V
    .registers 5

    .line 3688
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3689
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/Map;

    iget-object v2, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3690
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_f

    .line 3692
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V

    return-void

    :catchall_f
    move-exception p0

    .line 3690
    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public final onWirelessKeyboardShareChangedListenerDied(I)V
    .registers 3

    .line 2378
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardShareLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2379
    :try_start_3
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardShareChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2380
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public openLightSession(ILjava/lang/String;Landroid/os/IBinder;)V
    .registers 8

    .line 4115
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4116
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mLightLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4117
    :try_start_6
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mLightSessions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    move v1, v2

    :goto_12
    const-string v3, "already registered"

    invoke-static {v1, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 4118
    new-instance v1, Lcom/android/server/input/InputManagerService$LightSession;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$LightSession;-><init>(Lcom/android/server/input/InputManagerService;ILjava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_2b

    .line 4120
    :try_start_1c
    invoke-interface {p3, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1f} :catch_20
    .catchall {:try_start_1c .. :try_end_1f} :catchall_2b

    goto :goto_24

    :catch_20
    move-exception p1

    .line 4123
    :try_start_21
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 4125
    :goto_24
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mLightSessions:Landroid/util/ArrayMap;

    invoke-virtual {p0, p3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4129
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception p0

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_21 .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public final registerAOTOnOffSettingObserver()V
    .registers 5

    .line 6597
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "double_tab_to_wake_up"

    .line 6598
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$29;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$29;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 p0, 0x0

    const/4 v3, -0x1

    .line 6597
    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public final registerAccessibilityLargePointerSettingObserver()V
    .registers 5

    .line 3324
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_large_pointer_icon"

    .line 3325
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$9;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$9;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 p0, 0x1

    const/4 v3, -0x1

    .line 3324
    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public final registerBackButtonBehaviorSettingObserver()V
    .registers 5

    .line 6740
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mouse_additional_1_option"

    .line 6741
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$35;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$35;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 p0, 0x1

    const/4 v3, -0x1

    .line 6740
    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public final registerBlockUntrustedTouchesModeSettingObserver()V
    .registers 5

    .line 3398
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "block_untrusted_touches"

    .line 3399
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$13;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$13;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 p0, 0x1

    const/4 v3, -0x1

    .line 3398
    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public final registerCoverTestModeSettingObserver()V
    .registers 5

    .line 7118
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cover_test_mode"

    .line 7119
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$40;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$40;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 p0, 0x1

    const/4 v3, -0x1

    .line 7118
    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public final registerDesktopModeStateChangedListener()V
    .registers 1

    return-void
.end method

.method public final registerEnabledInputMethodsSettingObserver()V
    .registers 5

    .line 6915
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_input_methods"

    .line 6916
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$39;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$39;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 p0, 0x1

    const/4 v3, -0x1

    .line 6915
    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public final registerFlowPointerDirectionSettingObserver()V
    .registers 1

    return-void
.end method

.method public final registerFlowPointerSettingObserver()V
    .registers 1

    return-void
.end method

.method public final registerForwardButtonBehaviorSettingObserver()V
    .registers 5

    .line 6756
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mouse_additional_2_option"

    .line 6757
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$36;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$36;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 p0, 0x1

    const/4 v3, -0x1

    .line 6756
    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V
    .registers 6

    const-string/jumbo v0, "listener must not be null"

    .line 1694
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1696
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1697
    :try_start_9
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1698
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_30

    .line 1703
    new-instance v2, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/IInputDevicesChangedListener;)V
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_38

    .line 1706
    :try_start_1a
    invoke-interface {p1}, Landroid/hardware/input/IInputDevicesChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v3, 0x0

    .line 1707
    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_22} :catch_29
    .catchall {:try_start_1a .. :try_end_22} :catchall_38

    .line 1713
    :try_start_22
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1714
    monitor-exit v0

    return-void

    :catch_29
    move-exception p0

    .line 1710
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 1699
    :cond_30
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "The calling process has already registered an InputDevicesChangedListener."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_38
    move-exception p0

    .line 1714
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_22 .. :try_end_3a} :catchall_38

    throw p0
.end method

.method public registerLidStateChangedListener(Landroid/hardware/input/ISemLidStateChangedListener;)V
    .registers 6

    const-string v0, "com.samsung.android.permission.LID_STATE"

    const-string/jumbo v1, "registerLidStateChangedListener()"

    .line 2025
    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    if-eqz p1, :cond_42

    .line 2033
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mLidStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2034
    :try_start_10
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 2035
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mLidStateChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_37

    .line 2039
    new-instance v2, Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/ISemLidStateChangedListener;)V
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_3f

    .line 2042
    :try_start_21
    invoke-interface {p1}, Landroid/hardware/input/ISemLidStateChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v3, 0x0

    .line 2043
    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_29} :catch_30
    .catchall {:try_start_21 .. :try_end_29} :catchall_3f

    .line 2047
    :try_start_29
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mLidStateChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2048
    monitor-exit v0

    return-void

    :catch_30
    move-exception p0

    .line 2045
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 2036
    :cond_37
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The calling process has already registered a LidStateChangedListener."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_3f
    move-exception p0

    .line 2048
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_29 .. :try_end_41} :catchall_3f

    throw p0

    .line 2030
    :cond_42
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "listener must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2027
    :cond_4b
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires LID_STATE permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerLidSwitchCallbackInternal(Landroid/hardware/input/InputManagerInternal$LidSwitchCallback;)V
    .registers 6

    .line 874
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchLock:Ljava/lang/Object;

    monitor-enter v0

    .line 875
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 880
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    if-eqz v1, :cond_1c

    const/4 v1, -0x1

    const/16 v2, -0x100

    const/4 v3, 0x0

    .line 881
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result p0

    if-nez p0, :cond_17

    const/4 v3, 0x1

    :cond_17
    const-wide/16 v1, 0x0

    .line 883
    invoke-interface {p1, v1, v2, v3}, Landroid/hardware/input/InputManagerInternal$LidSwitchCallback;->notifyLidSwitchChanged(JZ)V

    .line 885
    :cond_1c
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public final registerLongPressTimeoutObserver()V
    .registers 5

    .line 3387
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "long_press_timeout"

    .line 3388
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$12;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$12;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 p0, 0x1

    const/4 v3, -0x1

    .line 3387
    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public final registerMaximumObscuringOpacityForTouchSettingObserver()V
    .registers 5

    .line 3415
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "maximum_obscuring_opacity_for_touch"

    .line 3416
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$14;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$14;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 p0, 0x1

    const/4 v3, -0x1

    .line 3415
    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public registerMultiFingerGestureListener(Landroid/hardware/input/IMultiFingerGestureListener;)V
    .registers 6

    if-eqz p1, :cond_37

    .line 2206
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mMultiFingerGestureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2207
    :try_start_5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 2208
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mMultiFingerGestureListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2c

    .line 2212
    new-instance v2, Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/IMultiFingerGestureListener;)V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_34

    .line 2215
    :try_start_16
    invoke-interface {p1}, Landroid/hardware/input/IMultiFingerGestureListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v3, 0x0

    .line 2216
    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1e} :catch_25
    .catchall {:try_start_16 .. :try_end_1e} :catchall_34

    .line 2220
    :try_start_1e
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mMultiFingerGestureListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2221
    monitor-exit v0

    return-void

    :catch_25
    move-exception p0

    .line 2218
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 2209
    :cond_2c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The calling process has already registered a MultiFingerGestureListener."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_34
    move-exception p0

    .line 2221
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_1e .. :try_end_36} :catchall_34

    throw p0

    .line 2203
    :cond_37
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "listener must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final registerMultiFingerTapBehavior(I)V
    .registers 2

    return-void
.end method

.method public final registerPenHoveringSettingObserver()V
    .registers 5

    .line 6301
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "pen_hovering"

    .line 6302
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$23;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$23;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 p0, 0x1

    const/4 v3, -0x1

    .line 6301
    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public registerPointerIconChangedListener(Landroid/hardware/input/IPointerIconChangedListener;)V
    .registers 6

    if-eqz p1, :cond_37

    .line 2145
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2146
    :try_start_5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 2147
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mPointerIconChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2c

    .line 2151
    new-instance v2, Lcom/android/server/input/InputManagerService$PointerIconChangedListenerRecord;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/input/InputManagerService$PointerIconChangedListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/IPointerIconChangedListener;)V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_34

    .line 2154
    :try_start_16
    invoke-interface {p1}, Landroid/hardware/input/IPointerIconChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v3, 0x0

    .line 2155
    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1e} :catch_25
    .catchall {:try_start_16 .. :try_end_1e} :catchall_34

    .line 2159
    :try_start_1e
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2160
    monitor-exit v0

    return-void

    :catch_25
    move-exception p0

    .line 2157
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 2148
    :cond_2c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The calling process has already registered a PointerIconChangedListener."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_34
    move-exception p0

    .line 2160
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_1e .. :try_end_36} :catchall_34

    throw p0

    .line 2142
    :cond_37
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "listener must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final registerPointerIconCustomSettingObserver()V
    .registers 7

    .line 3336
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mouse_pointer_size_step"

    .line 3337
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$10;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$10;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 3336
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 3345
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mouse_pointer_color"

    .line 3346
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$11;

    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v5}, Lcom/android/server/input/InputManagerService$11;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 3345
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public final registerPointerSpeedSettingObserver()V
    .registers 5

    .line 3279
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "pointer_speed"

    .line 3280
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$7;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$7;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 p0, 0x1

    const/4 v3, -0x1

    .line 3279
    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public final registerPrimaryMouseButtonSettingObserver()V
    .registers 5

    .line 6642
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "primary_mouse_button_option"

    .line 6643
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$30;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$30;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 p0, 0x1

    const/4 v3, -0x1

    .line 6642
    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public final registerReverseSwipeSettingObserver()V
    .registers 5

    .line 4409
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "touchpad_scrolling_direction"

    .line 4410
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$17;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$17;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 p0, 0x1

    const/4 v3, -0x1

    .line 4409
    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public final registerScrollSpeedSettingObserver()V
    .registers 5

    .line 6673
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mouse_scrolling_speed"

    .line 6674
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$31;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$31;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 p0, 0x1

    const/4 v3, -0x1

    .line 6673
    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public final registerSecondaryButtonBehaviorSettingObserver()V
    .registers 5

    .line 6708
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mouse_secondary_button_option"

    .line 6709
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$33;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$33;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 p0, 0x1

    const/4 v3, -0x1

    .line 6708
    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public registerSensorListener(Landroid/hardware/input/IInputSensorEventListener;)Z
    .registers 6

    const-string/jumbo v0, "listener must not be null"

    .line 3936
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3938
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSensorEventLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3939
    :try_start_9
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 3940
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_33

    const-string p0, "InputManager"

    .line 3941
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The calling process "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " has already registered an InputSensorEventListener."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3943
    monitor-exit v0

    return v3

    .line 3946
    :cond_33
    new-instance v2, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/IInputSensorEventListener;)V
    :try_end_38
    .catchall {:try_start_9 .. :try_end_38} :catchall_4e

    .line 3949
    :try_start_38
    invoke-interface {p1}, Landroid/hardware/input/IInputSensorEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 3950
    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3f} :catch_47
    .catchall {:try_start_38 .. :try_end_3f} :catchall_4e

    .line 3956
    :try_start_3f
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3957
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catch_47
    move-exception p0

    .line 3953
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catchall_4e
    move-exception p0

    .line 3957
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_3f .. :try_end_50} :catchall_4e

    throw p0
.end method

.method public final registerSetPenModeOnDexObserver()V
    .registers 1

    return-void
.end method

.method public final registerShowHoveringPointerSettingObserver()V
    .registers 5

    .line 6291
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "pen_hovering_pointer"

    .line 6292
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$22;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$22;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 p0, 0x1

    const/4 v3, -0x1

    .line 6291
    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public final registerShowTouchesSettingObserver()V
    .registers 5

    .line 3305
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "show_touches"

    .line 3306
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$8;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$8;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 p0, 0x1

    const/4 v3, -0x1

    .line 3305
    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public registerTabletModeChangedListener(Landroid/hardware/input/ITabletModeChangedListener;)V
    .registers 6

    const-string v0, "android.permission.TABLET_MODE"

    const-string/jumbo v1, "registerTabletModeChangedListener()"

    .line 2091
    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    const-string v0, "event must not be null"

    .line 2095
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2097
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2098
    :try_start_13
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 2099
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3a

    .line 2103
    new-instance v2, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/ITabletModeChangedListener;)V
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_42

    .line 2106
    :try_start_24
    invoke-interface {p1}, Landroid/hardware/input/ITabletModeChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v3, 0x0

    .line 2107
    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2c} :catch_33
    .catchall {:try_start_24 .. :try_end_2c} :catchall_42

    .line 2111
    :try_start_2c
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2112
    monitor-exit v0

    return-void

    :catch_33
    move-exception p0

    .line 2109
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 2100
    :cond_3a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The calling process has already registered a TabletModeChangedListener."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_42
    move-exception p0

    .line 2112
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_2c .. :try_end_44} :catchall_42

    throw p0

    .line 2093
    :cond_45
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires TABLET_MODE_LISTENER permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final registerTalkBackSettingObserver()V
    .registers 5

    .line 6584
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_accessibility_services"

    .line 6585
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$28;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$28;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 p0, 0x1

    const/4 v3, -0x1

    .line 6584
    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public final registerTapToClickSettingObserver()V
    .registers 5

    .line 4380
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tap_to_click_enabled"

    .line 4381
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$16;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$16;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 p0, 0x1

    const/4 v3, -0x1

    .line 4380
    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public final registerTertiaryButtonBehaviorSettingObserver()V
    .registers 5

    .line 6724
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mouse_middle_button_option"

    .line 6725
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$34;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$34;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 p0, 0x1

    const/4 v3, -0x1

    .line 6724
    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public final registerUseMouseAccelerationSettingObserver()V
    .registers 5

    .line 6692
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enhance_pointer_precision"

    .line 6693
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$32;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$32;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 p0, 0x1

    const/4 v3, -0x1

    .line 6692
    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public registerVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z
    .registers 7

    const-string/jumbo v0, "listener must not be null"

    .line 3747
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3750
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3751
    :try_start_9
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorStateListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 3752
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 3753
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mVibratorStateListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_24

    .line 3755
    :cond_1c
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorStateListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    .line 3758
    :goto_24
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_58

    .line 3760
    :try_start_28
    invoke-virtual {v1, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v1

    if-nez v1, :cond_4a

    const-string p0, "InputManager"

    .line 3761
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not register vibrator state listener "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_28 .. :try_end_44} :catchall_53

    const/4 p0, 0x0

    .line 3768
    :try_start_45
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_58

    return p0

    .line 3765
    :cond_4a
    :try_start_4a
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->notifyVibratorStateListenerLocked(ILandroid/os/IVibratorStateListener;)V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_53

    const/4 p0, 0x1

    .line 3768
    :try_start_4e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    return p0

    :catchall_53
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3769
    throw p0

    :catchall_58
    move-exception p0

    .line 3770
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_4e .. :try_end_5a} :catchall_58

    throw p0
.end method

.method public registerWirelessKeyboardShareChangedListener(Landroid/hardware/input/IWirelessKeyboardShareChangedListener;)V
    .registers 6

    .line 2348
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2349
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v1

    if-nez v1, :cond_52

    if-eqz p1, :cond_49

    .line 2359
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardShareLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2360
    :try_start_17
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 2361
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardShareChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3e

    .line 2365
    new-instance v2, Lcom/android/server/input/InputManagerService$WirelessKeyboardShareChangedListenerRecord;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/input/InputManagerService$WirelessKeyboardShareChangedListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/IWirelessKeyboardShareChangedListener;)V
    :try_end_28
    .catchall {:try_start_17 .. :try_end_28} :catchall_46

    .line 2368
    :try_start_28
    invoke-interface {p1}, Landroid/hardware/input/IWirelessKeyboardShareChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v3, 0x0

    .line 2369
    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_30} :catch_37
    .catchall {:try_start_28 .. :try_end_30} :catchall_46

    .line 2373
    :try_start_30
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardShareChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2374
    monitor-exit v0

    return-void

    :catch_37
    move-exception p0

    .line 2371
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 2362
    :cond_3e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The calling process has already registered a WirelessKeyboardShareChangedListener."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_46
    move-exception p0

    .line 2374
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_30 .. :try_end_48} :catchall_46

    throw p0

    .line 2356
    :cond_49
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "listener must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2351
    :cond_52
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "only system signature can use registerWirelessKeyboardShareChangedListener(), but UID("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") has not system signature"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final reloadDeviceAliases()V
    .registers 1

    .line 1178
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->reloadDeviceAliases()V

    return-void
.end method

.method public final reloadKeyboardLayouts()V
    .registers 1

    .line 1171
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->reloadKeyboardLayouts()V

    return-void
.end method

.method public removeDeviceWirelessKeyboardShare(Ljava/lang/String;I)V
    .registers 7

    .line 2450
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputWirelessKeyboardMouseShareLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2451
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

    if-eqz v1, :cond_23

    .line 2452
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_3f

    .line 2454
    :try_start_f
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->removeHIDDevice(Ljava/lang/String;I)V

    .line 2455
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    const/4 p2, 0x0

    invoke-interface {p0, p2}, Lcom/android/server/input/NativeInputManagerService;->enableWirelessKeyboardShare(Z)V
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_1e

    .line 2457
    :try_start_1a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_23

    :catchall_1e
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2458
    throw p0

    .line 2460
    :cond_23
    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_3f

    const-string p0, "InputManager"

    .line 2461
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "removeDeviceWirelessKeyboardShare : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_34

    const/4 p1, 0x0

    :cond_34
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_3f
    move-exception p0

    .line 2460
    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw p0
.end method

.method public removeInputChannel(Landroid/os/IBinder;)V
    .registers 3

    const-string v0, "connectionToken must not be null"

    .line 1446
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1447
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->removeInputChannel(Landroid/os/IBinder;)V

    return-void
.end method

.method public removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .registers 8

    const-string v0, "android.permission.SET_KEYBOARD_LAYOUT"

    const-string/jumbo v1, "removeKeyboardLayoutForInputDevice()"

    .line 3006
    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_79

    const-string/jumbo v0, "keyboardLayoutDescriptor must not be null"

    .line 3010
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3013
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 3014
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    :try_start_18
    const-string v2, "InputManager"

    .line 3017
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeKeyboardLayoutForInputDevice key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mCurrentImeHandle:Lcom/android/server/input/InputMethodSubtypeHandle;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", kld="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_18 .. :try_end_41} :catchall_76

    .line 3020
    :try_start_41
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mCurrentImeHandle:Lcom/android/server/input/InputMethodSubtypeHandle;

    invoke-virtual {v2, v0, v3, p2}, Lcom/android/server/input/PersistentDataStore;->removeKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputMethodSubtypeHandle;Ljava/lang/String;)Z

    move-result v2

    .line 3022
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    .line 3024
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mCurrentImeHandle:Lcom/android/server/input/InputMethodSubtypeHandle;

    invoke-virtual {v0, p1, v3, p2}, Lcom/android/server/input/PersistentDataStore;->removeKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputMethodSubtypeHandle;Ljava/lang/String;)Z

    move-result p1

    or-int/2addr v2, p1

    :cond_60
    if-eqz v2, :cond_68

    .line 3028
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_68
    .catchall {:try_start_41 .. :try_end_68} :catchall_6f

    .line 3031
    :cond_68
    :try_start_68
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 3033
    monitor-exit v1

    return-void

    :catchall_6f
    move-exception p1

    .line 3031
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 3032
    throw p1

    :catchall_76
    move-exception p0

    .line 3054
    monitor-exit v1
    :try_end_78
    .catchall {:try_start_68 .. :try_end_78} :catchall_76

    throw p0

    .line 3008
    :cond_79
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires SET_KEYBOARD_LAYOUT permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removePortAssociation(Ljava/lang/String;)V
    .registers 4

    const-string v0, "android.permission.ASSOCIATE_INPUT_DEVICE_TO_DISPLAY"

    const-string v1, "clearPortAssociations()"

    .line 3878
    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 3885
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3886
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3887
    :try_start_10
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mRuntimeAssociations:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3888
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_1c

    .line 3889
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->notifyPortAssociationsChanged()V

    return-void

    :catchall_1c
    move-exception p0

    .line 3888
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p0

    .line 3881
    :cond_1f
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires ASSOCIATE_INPUT_DEVICE_TO_DISPLAY permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final removeSpyWindowGestureMonitor(Landroid/os/IBinder;)V
    .registers 4

    .line 1361
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    monitor-enter v0

    .line 1362
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/GestureMonitorSpyWindow;

    .line 1363
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_16

    .line 1364
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->removeInputChannel(Landroid/os/IBinder;)V

    if-nez v1, :cond_12

    return-void

    .line 1366
    :cond_12
    invoke-virtual {v1}, Lcom/android/server/input/GestureMonitorSpyWindow;->remove()V

    return-void

    :catchall_16
    move-exception p0

    .line 1363
    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public removeUniqueIdAssociation(Ljava/lang/String;)V
    .registers 4

    const-string v0, "android.permission.ASSOCIATE_INPUT_DEVICE_TO_DISPLAY"

    const-string/jumbo v1, "removeUniqueIdAssociation()"

    .line 3911
    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3918
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3919
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3920
    :try_start_11
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mUniqueIdAssociations:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3921
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_1d

    .line 3922
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->changeUniqueIdAssociation()V

    return-void

    :catchall_1d
    move-exception p0

    .line 3921
    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p0

    .line 3914
    :cond_20
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires ASSOCIATE_INPUT_DEVICE_TO_DISPLAY permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public requestPointerCapture(Landroid/os/IBinder;Z)V
    .registers 4

    const-string v0, "event must not be null"

    .line 3180
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3182
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->requestPointerCapture(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public semGetMotionIdleTimeMillis(Z)J
    .registers 2

    .line 5950
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->getMotionIdleTimeMillis(Z)J

    move-result-wide p0

    return-wide p0
.end method

.method public final sendAOTOnOffcmd(Z)V
    .registers 4

    const-string p0, "/sys/class/lcd/panel/aot"

    const-string v0, "Send AOT On/Off"

    .line 5839
    invoke-static {p0, v0}, Lcom/android/server/input/InputUtils;->sysfsExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    if-eqz p1, :cond_f

    const-string p1, "aot_enable,1"

    goto :goto_11

    :cond_f
    const-string p1, "aot_enable,0"

    .line 5841
    :goto_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Write sysfs : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5842
    invoke-static {p0, p1}, Lcom/android/server/input/InputUtils;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2a
    return-void
.end method

.method public final sendKeyboardWirelessKeyboardShare(II)I
    .registers 4

    .line 2543
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputWirelessKeyboardMouseShareLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2544
    :try_start_3
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

    if-eqz p0, :cond_a

    .line 2545
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->notifyKeyboardAciton(II)V

    .line 2548
    :cond_a
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final sendMsgUpdateDefaultKeyboardLayouts(Landroid/hardware/input/InputDeviceIdentifier;Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/input/InputDeviceIdentifier;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 6943
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 6944
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 6945
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 6946
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/16 p1, 0x66

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final sendMultiFingerGesture(II)V
    .registers 4

    .line 2247
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/16 v0, 0x69

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final sendPogoKeyboardStatus(Z)V
    .registers 4

    .line 6184
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.input.POGO_KEYBOARD_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "status"

    .line 6185
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x1000000

    .line 6186
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6187
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 6190
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

    if-eqz p0, :cond_1e

    .line 6191
    invoke-virtual {p0, p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->setPogoConnected(Z)V

    :cond_1e
    return-void
.end method

.method public final sendPointerIconChanged(ILandroid/view/PointerIcon;)V
    .registers 5

    .line 2186
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconType:I

    if-ne v0, p1, :cond_8

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mPointerIcon:Landroid/view/PointerIcon;

    if-eq v0, p2, :cond_18

    .line 2187
    :cond_8
    iput p1, p0, Lcom/android/server/input/InputManagerService;->mPointerIconType:I

    .line 2188
    iput-object p2, p0, Lcom/android/server/input/InputManagerService;->mPointerIcon:Landroid/view/PointerIcon;

    .line 2193
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/16 v0, 0x68

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_18
    return-void
.end method

.method public final sendSwitchWirelessKeyboardShare(I)I
    .registers 9

    .line 2555
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputWirelessKeyboardMouseShareLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2557
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

    const/4 v2, 0x1

    if-eqz v1, :cond_1a

    if-ne p1, v2, :cond_c

    move p1, v2

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    .line 2558
    :goto_d
    invoke-virtual {v1, p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->switchRemoteDeviceByKey(Z)Z

    move-result p1

    const-string v1, "InputManager"

    const-string/jumbo v3, "switch device by key"

    .line 2560
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :cond_1a
    move p1, v2

    :goto_1b
    if-ne p1, v2, :cond_43

    .line 2563
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 2564
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    const-wide/16 v5, -0x1

    and-long/2addr v5, v3

    long-to-int v5, v5

    .line 2565
    iput v5, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    const/16 v5, 0x20

    shr-long/2addr v3, v5

    long-to-int v3, v3

    .line 2566
    iput v3, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    const/4 v3, 0x6

    .line 2567
    iput v3, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    const-string v3, "android.policy:WirelessKeyboardShare"

    .line 2568
    iput-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2569
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/16 v3, 0x6a

    invoke-virtual {p0, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_43
    if-ne p1, v2, :cond_46

    goto :goto_47

    :cond_46
    const/4 v2, 0x2

    .line 2571
    :goto_47
    monitor-exit v0

    return v2

    :catchall_49
    move-exception p0

    .line 2572
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_49

    throw p0
.end method

.method public final sendTouchPadGestureWirelessKeyboardShare(IFFI)I
    .registers 6

    .line 2531
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputWirelessKeyboardMouseShareLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2532
    :try_start_3
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

    if-eqz p0, :cond_a

    .line 2533
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/input/WirelessKeyboardMouseShare;->notifyMouseAciton(IFFI)V

    .line 2536
    :cond_a
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public declared-synchronized setBlockDeviceMode(ZIZLjava/lang/String;)V
    .registers 9

    monitor-enter p0

    if-eqz p4, :cond_b0

    :try_start_3
    const-string v0, ""

    .line 6770
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto/16 :goto_b0

    :cond_d
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_2e

    if-eqz p1, :cond_21

    .line 6777
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mBlockTspCallerList:Ljava/util/Vector;

    invoke-virtual {v0, p4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 6778
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mBlockTspCallerList:Ljava/util/Vector;

    invoke-virtual {v0, p4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 6781
    :cond_21
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mBlockTspCallerList:Ljava/util/Vector;

    invoke-virtual {v0, p4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 6782
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mBlockTspCallerList:Ljava/util/Vector;

    invoke-virtual {v0, p4}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    :cond_2e
    :goto_2e
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_4f

    if-eqz p1, :cond_42

    .line 6788
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mBlockTkeyCallerList:Ljava/util/Vector;

    invoke-virtual {v0, p4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 6789
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mBlockTkeyCallerList:Ljava/util/Vector;

    invoke-virtual {v0, p4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    .line 6792
    :cond_42
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mBlockTkeyCallerList:Ljava/util/Vector;

    invoke-virtual {v0, p4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 6793
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mBlockTkeyCallerList:Ljava/util/Vector;

    invoke-virtual {v0, p4}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    :cond_4f
    :goto_4f
    const/4 v0, 0x0

    .line 6798
    iput v0, p0, Lcom/android/server/input/InputManagerService;->mBlockDeviceMode:I

    .line 6799
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mBlockTspCallerList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_60

    .line 6800
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mBlockDeviceMode:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/input/InputManagerService;->mBlockDeviceMode:I

    .line 6802
    :cond_60
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mBlockTkeyCallerList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_6e

    .line 6803
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mBlockDeviceMode:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/input/InputManagerService;->mBlockDeviceMode:I

    :cond_6e
    const-string v0, "InputManager"

    .line 6805
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sBDM(): isSet="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " deviceType="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " isForce="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " caller="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " blockMode="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/input/InputManagerService;->mBlockDeviceMode:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6807
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    iget p2, p0, Lcom/android/server/input/InputManagerService;->mBlockDeviceMode:I

    invoke-interface {p1, v1, p2}, Lcom/android/server/input/NativeInputManagerService;->setInputMetaData(II)V
    :try_end_ae
    .catchall {:try_start_3 .. :try_end_ae} :catchall_ba

    .line 6808
    monitor-exit p0

    return-void

    :cond_b0
    :goto_b0
    :try_start_b0
    const-string p1, "InputManager"

    const-string/jumbo p2, "sBDM(): caller must be specified!"

    .line 6771
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b8
    .catchall {:try_start_b0 .. :try_end_b8} :catchall_ba

    .line 6772
    monitor-exit p0

    return-void

    :catchall_ba
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setCoverVerify(I)V
    .registers 4

    .line 4338
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_24

    .line 4339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCoverVerify = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4340
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setCoverVerify(I)V

    :cond_24
    return-void
.end method

.method public setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .registers 7

    const-string v0, "android.permission.SET_KEYBOARD_LAYOUT"

    const-string/jumbo v1, "setCurrentKeyboardLayoutForInputDevice()"

    .line 2929
    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    const-string/jumbo v0, "keyboardLayoutDescriptor must not be null"

    .line 2934
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2937
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object p1

    .line 2938
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v0

    :try_start_18
    const-string v1, "InputManager"

    .line 2942
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCurrentKeyboardLayoutForInputDevice: key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mCurrentImeHandle:Lcom/android/server/input/InputMethodSubtypeHandle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", kld="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2944
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mCurrentImeHandle:Lcom/android/server/input/InputMethodSubtypeHandle;

    invoke-virtual {v1, p1, v2, p2}, Lcom/android/server/input/PersistentDataStore;->setCurrentKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputMethodSubtypeHandle;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_51

    .line 2946
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_51
    .catchall {:try_start_18 .. :try_end_51} :catchall_58

    .line 2957
    :cond_51
    :try_start_51
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 2959
    monitor-exit v0

    return-void

    :catchall_58
    move-exception p1

    .line 2957
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 2958
    throw p1

    :catchall_5f
    move-exception p0

    .line 2959
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_51 .. :try_end_61} :catchall_5f

    throw p0

    .line 2931
    :cond_62
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires SET_KEYBOARD_LAYOUT permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCustomHoverIcon(Landroid/view/PointerIcon;)V
    .registers 6

    .line 3839
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3840
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputPropertiesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3841
    :try_start_6
    iget v1, p0, Lcom/android/server/input/InputManagerService;->mOverriddenPointerDisplayId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_c

    goto :goto_12

    .line 3842
    :cond_c
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v1}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->getPointerDisplayId()I

    move-result v1

    .line 3843
    :goto_12
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v3, p1, v1}, Lcom/android/server/input/NativeInputManagerService;->setHoverIcon(Landroid/view/PointerIcon;I)V

    .line 3844
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_1c

    .line 3845
    invoke-virtual {p0, v2, p1}, Lcom/android/server/input/InputManagerService;->sendPointerIconChanged(ILandroid/view/PointerIcon;)V

    return-void

    :catchall_1c
    move-exception p0

    .line 3844
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public setCustomPointerIcon(Landroid/view/PointerIcon;)V
    .registers 5

    .line 3823
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3824
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputPropertiesLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    .line 3825
    :try_start_7
    iput v1, p0, Lcom/android/server/input/InputManagerService;->mIconType:I

    .line 3826
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mIcon:Landroid/view/PointerIcon;

    .line 3828
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mCurrentDisplayProperties:Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;

    iget-boolean v2, v2, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerIconVisible:Z

    if-nez v2, :cond_13

    monitor-exit v0

    return-void

    .line 3830
    :cond_13
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v2, p1}, Lcom/android/server/input/NativeInputManagerService;->setCustomPointerIcon(Landroid/view/PointerIcon;)V

    .line 3831
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_1d

    .line 3832
    invoke-virtual {p0, v1, p1}, Lcom/android/server/input/InputManagerService;->sendPointerIconChanged(ILandroid/view/PointerIcon;)V

    return-void

    :catchall_1d
    move-exception p0

    .line 3831
    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public setDefaultPointerIcon(ILandroid/view/PointerIcon;Z)V
    .registers 4

    if-eqz p3, :cond_6

    .line 6091
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->setForcedDefaultPointerIconInternal(ILandroid/view/PointerIcon;)V

    goto :goto_9

    .line 6093
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->setDefaultPointerIconInternal(ILandroid/view/PointerIcon;)V

    :goto_9
    return-void
.end method

.method public final setDefaultPointerIconInternal(ILandroid/view/PointerIcon;)V
    .registers 4

    const/4 v0, 0x1

    if-eqz p2, :cond_a

    .line 6099
    iput-object p2, p0, Lcom/android/server/input/InputManagerService;->mDefaultPointerIcon:Landroid/view/PointerIcon;

    .line 6100
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mDefaultPointerIconChanged:Z

    .line 6101
    iput p1, p0, Lcom/android/server/input/InputManagerService;->mToolTypeForDefaultPointerIcon:I

    goto :goto_21

    .line 6102
    :cond_a
    iget-boolean p1, p0, Lcom/android/server/input/InputManagerService;->mForcedDefaultPointerIconChanged:Z

    if-eqz p1, :cond_19

    .line 6103
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mForcedDefaultPointerIcon:Landroid/view/PointerIcon;

    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mDefaultPointerIcon:Landroid/view/PointerIcon;

    .line 6104
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mDefaultPointerIconChanged:Z

    .line 6105
    iget p1, p0, Lcom/android/server/input/InputManagerService;->mToolTypeForForcedDefaultPointerIcon:I

    iput p1, p0, Lcom/android/server/input/InputManagerService;->mToolTypeForDefaultPointerIcon:I

    goto :goto_21

    :cond_19
    const/4 p1, 0x0

    .line 6107
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mDefaultPointerIcon:Landroid/view/PointerIcon;

    const/4 p1, 0x0

    .line 6108
    iput-boolean p1, p0, Lcom/android/server/input/InputManagerService;->mDefaultPointerIconChanged:Z

    .line 6109
    iput p1, p0, Lcom/android/server/input/InputManagerService;->mToolTypeForDefaultPointerIcon:I

    :goto_21
    return-void
.end method

.method public setDesktopModeServiceCallbacks(Lcom/android/server/input/InputManagerService$DesktopModeServiceCallbacks;)V
    .registers 2

    .line 6078
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mDesktopModeServiceCallbacks:Lcom/android/server/input/InputManagerService$DesktopModeServiceCallbacks;

    return-void
.end method

.method public setDexImePolicy(Z)V
    .registers 2

    return-void
.end method

.method public final setDisplayDpi()V
    .registers 4

    .line 6573
    sget-boolean v0, Lcom/android/server/input/InputManagerService;->SEP_FULL:Z

    if-eqz v0, :cond_24

    .line 6574
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 6575
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 6576
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 6577
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-interface {p0, v1, v0}, Lcom/android/server/input/NativeInputManagerService;->setDisplayDpi(FF)V

    :cond_24
    return-void
.end method

.method public final setDisplayEligibilityForPointerCapture(IZ)V
    .registers 3

    .line 3517
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->setDisplayEligibilityForPointerCapture(IZ)V

    return-void
.end method

.method public setDisplayIdForPointerIcon(I)V
    .registers 3

    .line 6154
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mDisplayIdForPointerIcon:I

    if-eq v0, p1, :cond_9

    .line 6155
    invoke-static {}, Landroid/view/PointerIcon;->clearSystemIcons()V

    .line 6156
    iput p1, p0, Lcom/android/server/input/InputManagerService;->mDisplayIdForPointerIcon:I

    :cond_9
    return-void
.end method

.method public final setDisplayViewportsInternal(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/display/DisplayViewport;",
            ">;)V"
        }
    .end annotation

    .line 1184
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->setDisplayDpi()V

    .line 1188
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/hardware/display/DisplayViewport;

    .line 1189
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_f
    if-ltz v1, :cond_1c

    .line 1190
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayViewport;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 1192
    :cond_1c
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p1, v0}, Lcom/android/server/input/NativeInputManagerService;->setDisplayViewports([Landroid/hardware/display/DisplayViewport;)V

    .line 1196
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {p1}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->getPointerDisplayId()I

    move-result p1

    .line 1197
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputPropertiesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1198
    :try_start_2a
    iget v1, p0, Lcom/android/server/input/InputManagerService;->mOverriddenPointerDisplayId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_32

    .line 1199
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->updatePointerDisplayIdLocked(I)Z

    .line 1201
    :cond_32
    monitor-exit v0

    return-void

    :catchall_34
    move-exception p0

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_2a .. :try_end_36} :catchall_34

    throw p0
.end method

.method public setEnableTSP(IZ)Z
    .registers 6

    .line 6014
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 6015
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v1

    if-nez v1, :cond_70

    .line 6021
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string v0, "SemInputDeviceManagerService"

    .line 6022
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 6024
    sget-object v0, Landroid/hardware/input/InputManager$SemTspCommandType;->SPAY:Landroid/hardware/input/InputManager$SemTspCommandType;

    invoke-virtual {v0}, Landroid/hardware/input/InputManager$SemTspCommandType;->getvalue()I

    move-result v0

    if-ne p1, v0, :cond_36

    .line 6026
    invoke-virtual {p0, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setSpayEnable(I)I

    if-eqz p2, :cond_2d

    const-string/jumbo p0, "true"

    goto :goto_2f

    :cond_2d
    const-string p0, "false"

    :goto_2f
    const-string/jumbo p1, "persist.service.tspcmd.spay"

    .line 6028
    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4d

    .line 6029
    :cond_36
    sget-object v0, Landroid/hardware/input/InputManager$SemTspCommandType;->STYLUS:Landroid/hardware/input/InputManager$SemTspCommandType;

    invoke-virtual {v0}, Landroid/hardware/input/InputManager$SemTspCommandType;->getvalue()I

    move-result v0

    if-ne p1, v0, :cond_42

    .line 6030
    invoke-virtual {p0, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setStylusEnable(I)I

    goto :goto_4d

    .line 6031
    :cond_42
    sget-object v0, Landroid/hardware/input/InputManager$SemTspCommandType;->BRUSH:Landroid/hardware/input/InputManager$SemTspCommandType;

    invoke-virtual {v0}, Landroid/hardware/input/InputManager$SemTspCommandType;->getvalue()I

    move-result v0

    if-ne p1, v0, :cond_4f

    .line 6032
    invoke-virtual {p0, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setBrushEnable(I)I

    :goto_4d
    const/4 p0, 0x1

    return p0

    .line 6034
    :cond_4f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setEnableTSP cmdtype: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " enable: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InputManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 6017
    :cond_70
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "only system signature can use setEnableTSP(), but UID("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") has not system signature"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFocusedApplication(ILandroid/view/InputApplicationHandle;)V
    .registers 3

    .line 3159
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->setFocusedApplication(ILandroid/view/InputApplicationHandle;)V

    return-void
.end method

.method public setFocusedDisplay(I)V
    .registers 2

    .line 3163
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setFocusedDisplay(I)V

    return-void
.end method

.method public final setForcedDefaultPointerIconInternal(ILandroid/view/PointerIcon;)V
    .registers 7

    .line 6114
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mForcedDefaultPointerIcon:Landroid/view/PointerIcon;

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDefaultPointerIcon:Landroid/view/PointerIcon;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_10

    iget v0, p0, Lcom/android/server/input/InputManagerService;->mToolTypeForForcedDefaultPointerIcon:I

    iget v1, p0, Lcom/android/server/input/InputManagerService;->mToolTypeForDefaultPointerIcon:I

    if-ne v0, v1, :cond_10

    move v0, v2

    goto :goto_11

    :cond_10
    move v0, v3

    .line 6117
    :goto_11
    iput-object p2, p0, Lcom/android/server/input/InputManagerService;->mForcedDefaultPointerIcon:Landroid/view/PointerIcon;

    if-eqz p2, :cond_1a

    .line 6119
    iput-boolean v2, p0, Lcom/android/server/input/InputManagerService;->mForcedDefaultPointerIconChanged:Z

    .line 6120
    iput p1, p0, Lcom/android/server/input/InputManagerService;->mToolTypeForForcedDefaultPointerIcon:I

    goto :goto_1e

    .line 6122
    :cond_1a
    iput-boolean v3, p0, Lcom/android/server/input/InputManagerService;->mForcedDefaultPointerIconChanged:Z

    .line 6123
    iput v3, p0, Lcom/android/server/input/InputManagerService;->mToolTypeForForcedDefaultPointerIcon:I

    :goto_1e
    if-eqz v0, :cond_23

    .line 6127
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->setDefaultPointerIconInternal(ILandroid/view/PointerIcon;)V

    :cond_23
    return-void
.end method

.method public setHostRoleWirelessKeyboardShare()V
    .registers 3

    .line 2509
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputWirelessKeyboardMouseShareLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2510
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    if-eqz v1, :cond_e

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

    if-eqz p0, :cond_e

    .line 2511
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->setHostRoleWirelessKeyboardShare()V

    .line 2513
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_18

    const-string p0, "InputManager"

    const-string/jumbo v0, "setHostRoleWirelessKeyboardShare"

    .line 2514
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_18
    move-exception p0

    .line 2513
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public setInTouchMode(ZIIZ)Z
    .registers 5

    .line 1513
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/input/NativeInputManagerService;->setInTouchMode(ZIIZ)Z

    move-result p0

    return p0
.end method

.method public setInputDispatchMode(ZZ)V
    .registers 3

    .line 3186
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->setInputDispatchMode(ZZ)V

    return-void
.end method

.method public setInputFilter(Landroid/view/IInputFilter;)V
    .registers 6

    .line 1462
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1463
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    if-ne v1, p1, :cond_9

    .line 1465
    monitor-exit v0

    return-void

    :cond_9
    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 1469
    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    .line 1470
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;

    invoke-virtual {v3}, Lcom/android/server/input/InputManagerService$InputFilterHost;->disconnectLocked()V

    .line 1471
    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_32

    .line 1473
    :try_start_15
    invoke-interface {v1}, Landroid/view/IInputFilter;->uninstall()V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_18} :catch_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_32

    :catch_18
    :cond_18
    if-eqz p1, :cond_26

    .line 1480
    :try_start_1a
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    .line 1481
    new-instance v1, Lcom/android/server/input/InputManagerService$InputFilterHost;

    invoke-direct {v1, p0, v2}, Lcom/android/server/input/InputManagerService$InputFilterHost;-><init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$InputFilterHost-IA;)V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_32

    .line 1483
    :try_start_23
    invoke-interface {p1, v1}, Landroid/view/IInputFilter;->install(Landroid/view/IInputFilterHost;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_26} :catch_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_32

    .line 1489
    :catch_26
    :cond_26
    :try_start_26
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    if-eqz p1, :cond_2c

    const/4 p1, 0x1

    goto :goto_2d

    :cond_2c
    const/4 p1, 0x0

    :goto_2d
    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setInputFilterEnabled(Z)V

    .line 1490
    monitor-exit v0

    return-void

    :catchall_32
    move-exception p0

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_26 .. :try_end_34} :catchall_32

    throw p0
.end method

.method public setInputMethodManagerCallbacks(Lcom/android/server/input/InputManagerService$InputMethodManagerCallbacks;)V
    .registers 2

    .line 6083
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mInputMethodManagerCallbacks:Lcom/android/server/input/InputManagerService$InputMethodManagerCallbacks;

    return-void
.end method

.method public setKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Ljava/lang/String;)V
    .registers 7

    const-string v0, "android.permission.SET_KEYBOARD_LAYOUT"

    const-string/jumbo v1, "setKeyboardLayoutForInputDevice()"

    .line 6872
    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    if-eqz p4, :cond_37

    if-eqz p2, :cond_2e

    .line 6883
    new-instance v0, Lcom/android/server/input/InputMethodSubtypeHandle;

    invoke-direct {v0, p2, p3}, Lcom/android/server/input/InputMethodSubtypeHandle;-><init>(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 6884
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Trying to set keyboard layout "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "InputManager"

    invoke-static {p3, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6885
    invoke-virtual {p0, p1, v0, p4}, Lcom/android/server/input/InputManagerService;->setKeyboardLayoutForInputDeviceInner(Landroid/hardware/input/InputDeviceIdentifier;Lcom/android/server/input/InputMethodSubtypeHandle;Ljava/lang/String;)V

    return-void

    .line 6880
    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "imeInfo must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6877
    :cond_37
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "keyboardLayoutDescriptor must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6874
    :cond_40
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires SET_KEYBOARD_LAYOUT permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setKeyboardLayoutForInputDeviceInner(Landroid/hardware/input/InputDeviceIdentifier;Lcom/android/server/input/InputMethodSubtypeHandle;Ljava/lang/String;)V
    .registers 9

    .line 6890
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 6891
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 6893
    :try_start_7
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0, p2, p3}, Lcom/android/server/input/PersistentDataStore;->setKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputMethodSubtypeHandle;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5d

    const-string v2, "InputManager"

    .line 6894
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set keyboard layout "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " for subtype "

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " and device "

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " using key "

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6897
    iget-object p3, p0, Lcom/android/server/input/InputManagerService;->mCurrentImeHandle:Lcom/android/server/input/InputMethodSubtypeHandle;

    invoke-virtual {p2, p3}, Lcom/android/server/input/InputMethodSubtypeHandle;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_57

    .line 6901
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p3

    .line 6902
    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 6903
    iput-object p2, p3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 6904
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 6906
    :cond_57
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_5d
    .catchall {:try_start_7 .. :try_end_5d} :catchall_64

    .line 6909
    :cond_5d
    :try_start_5d
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 6911
    monitor-exit v1

    return-void

    :catchall_64
    move-exception p1

    .line 6909
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 6910
    throw p1

    :catchall_6b
    move-exception p0

    .line 6911
    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_5d .. :try_end_6d} :catchall_6b

    throw p0
.end method

.method public final setLightStateInternal(ILandroid/hardware/lights/Light;Landroid/hardware/lights/LightState;)V
    .registers 6

    const-string/jumbo v0, "light does not exist"

    .line 4052
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4057
    invoke-virtual {p2}, Landroid/hardware/lights/Light;->getType()I

    move-result v0

    const/16 v1, 0x2712

    if-ne v0, v1, :cond_1c

    .line 4058
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-virtual {p2}, Landroid/hardware/lights/Light;->getId()I

    move-result p2

    invoke-virtual {p3}, Landroid/hardware/lights/LightState;->getPlayerId()I

    move-result p3

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/input/NativeInputManagerService;->setLightPlayerId(III)V

    goto :goto_29

    .line 4062
    :cond_1c
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-virtual {p2}, Landroid/hardware/lights/Light;->getId()I

    move-result p2

    invoke-virtual {p3}, Landroid/hardware/lights/LightState;->getColor()I

    move-result p3

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/input/NativeInputManagerService;->setLightColor(III)V

    :goto_29
    return-void
.end method

.method public setLightStates(I[I[Landroid/hardware/lights/LightState;Landroid/os/IBinder;)V
    .registers 10

    .line 4088
    array-length v0, p2

    array-length v1, p3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v3

    :goto_9
    const-string/jumbo v1, "lights and light states are not same length"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 4090
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mLightLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4091
    :try_start_12
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mLightSessions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/input/InputManagerService$LightSession;

    if-eqz p4, :cond_1e

    move v1, v2

    goto :goto_1f

    :cond_1e
    move v1, v3

    :goto_1f
    const-string/jumbo v4, "not registered"

    .line 4092
    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 4093
    invoke-static {p4}, Lcom/android/server/input/InputManagerService$LightSession;->-$$Nest$fgetmDeviceId(Lcom/android/server/input/InputManagerService$LightSession;)I

    move-result v1

    if-ne v1, p1, :cond_2c

    goto :goto_2d

    :cond_2c
    move v2, v3

    :goto_2d
    const-string v1, "Incorrect device ID"

    invoke-static {v2, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 4094
    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    invoke-static {p4, v1}, Lcom/android/server/input/InputManagerService$LightSession;->-$$Nest$fputmLightIds(Lcom/android/server/input/InputManagerService$LightSession;[I)V

    .line 4095
    invoke-virtual {p3}, [Landroid/hardware/lights/LightState;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/lights/LightState;

    invoke-static {p4, v1}, Lcom/android/server/input/InputManagerService$LightSession;->-$$Nest$fputmLightStates(Lcom/android/server/input/InputManagerService$LightSession;[Landroid/hardware/lights/LightState;)V

    .line 4099
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_12 .. :try_end_45} :catchall_49

    .line 4100
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->setLightStatesInternal(I[I[Landroid/hardware/lights/LightState;)V

    return-void

    :catchall_49
    move-exception p0

    .line 4099
    :try_start_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw p0
.end method

.method public final setLightStatesInternal(I[I[Landroid/hardware/lights/LightState;)V
    .registers 10

    .line 4070
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0, p1}, Lcom/android/server/input/NativeInputManagerService;->getLights(I)Ljava/util/List;

    move-result-object v0

    .line 4071
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 4072
    :goto_d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_29

    .line 4073
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/lights/Light;

    invoke-virtual {v4}, Landroid/hardware/lights/Light;->getId()I

    move-result v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/lights/Light;

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 4075
    :cond_29
    :goto_29
    array-length v0, p2

    if-ge v2, v0, :cond_44

    .line 4076
    aget v0, p2, v2

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 4077
    aget v0, p2, v2

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/lights/Light;

    aget-object v3, p3, v2

    invoke-virtual {p0, p1, v0, v3}, Lcom/android/server/input/InputManagerService;->setLightStateInternal(ILandroid/hardware/lights/Light;Landroid/hardware/lights/LightState;)V

    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_44
    return-void
.end method

.method public final setPointerAcceleration(FI)V
    .registers 4

    .line 3269
    new-instance v0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda8;-><init>(F)V

    invoke-virtual {p0, p2, v0}, Lcom/android/server/input/InputManagerService;->updateAdditionalDisplayInputProperties(ILjava/util/function/Consumer;)V

    return-void
.end method

.method public setPointerIconType(I)V
    .registers 5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_20

    .line 3809
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputPropertiesLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 3810
    :try_start_7
    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mIcon:Landroid/view/PointerIcon;

    .line 3811
    iput p1, p0, Lcom/android/server/input/InputManagerService;->mIconType:I

    .line 3813
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mCurrentDisplayProperties:Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;

    iget-boolean v2, v2, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerIconVisible:Z

    if-nez v2, :cond_13

    monitor-exit v0

    return-void

    .line 3815
    :cond_13
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v2, p1}, Lcom/android/server/input/NativeInputManagerService;->setPointerIconType(I)V

    .line 3816
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_1d

    .line 3817
    invoke-virtual {p0, p1, v1}, Lcom/android/server/input/InputManagerService;->sendPointerIconChanged(ILandroid/view/PointerIcon;)V

    return-void

    :catchall_1d
    move-exception p0

    .line 3816
    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p0

    .line 3807
    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Use setCustomPointerIcon to set custom pointers"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setPointerIconVisible(ZI)V
    .registers 4

    .line 3274
    new-instance v0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda1;-><init>(Z)V

    invoke-virtual {p0, p2, v0}, Lcom/android/server/input/InputManagerService;->updateAdditionalDisplayInputProperties(ILjava/util/function/Consumer;)V

    return-void
.end method

.method public final setPointerSpeedUnchecked(I)V
    .registers 3

    const/4 v0, -0x7

    .line 3263
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v0, 0x7

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 3265
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setPointerSpeed(I)V

    return-void
.end method

.method public final setPrimaryMouseButtonLocation(I)V
    .registers 4

    if-eqz p1, :cond_1d

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1d

    .line 6632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wrong primary mouse button : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InputManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 6635
    :cond_1d
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setPrimaryMouseButtonLocation(I)V

    return-void
.end method

.method public setSecAccessoryManagerCallbacks(Lcom/android/server/input/InputManagerService$SecAccessoryManagerCallbacks;)V
    .registers 2

    .line 5996
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mSecAccessoryManagerCallbacks:Lcom/android/server/input/InputManagerService$SecAccessoryManagerCallbacks;

    return-void
.end method

.method public final setSensorPrivacy(IZ)V
    .registers 4

    .line 4560
    const-class p0, Landroid/hardware/SensorPrivacyManagerInternal;

    .line 4561
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorPrivacyManagerInternal;

    const/4 v0, -0x2

    .line 4562
    invoke-virtual {p0, v0, p1, p2}, Landroid/hardware/SensorPrivacyManagerInternal;->setPhysicalToggleSensorPrivacy(IIZ)V

    return-void
.end method

.method public setShowAllTouches(Z)V
    .registers 3

    .line 6566
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->showAllTouches(Z)V

    .line 6567
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "show all touches : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InputManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setStartedShutdown(Z)V
    .registers 4

    .line 5971
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_18

    .line 5973
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Lcom/android/server/input/NativeInputManagerService;->updateInputMetaState(IZ)V

    .line 5975
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->IFW_KEY_COUNTER:Z

    if-eqz p1, :cond_18

    .line 5976
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mInputKeyCounter:Lcom/android/server/input/InputKeyCounter;

    invoke-virtual {p0}, Lcom/android/server/input/InputKeyCounter;->saveCount()V

    :cond_18
    return-void
.end method

.method public setSystemUiLightsOut(Z)V
    .registers 2

    .line 3190
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setSystemUiLightsOut(Z)V

    return-void
.end method

.method public setSystemUiLightsOut(ZI)V
    .registers 3

    return-void
.end method

.method public setTouchCalibrationForInputDevice(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V
    .registers 6

    const-string v0, "android.permission.SET_INPUT_CALIBRATION"

    const-string/jumbo v1, "setTouchCalibrationForInputDevice()"

    .line 1994
    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    const-string/jumbo v0, "inputDeviceDescriptor must not be null"

    .line 1998
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "calibration must not be null"

    .line 1999
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-ltz p2, :cond_3c

    const/4 v0, 0x3

    if-gt p2, v0, :cond_3c

    .line 2004
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v0

    .line 2006
    :try_start_1e
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/input/PersistentDataStore;->setTouchCalibration(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 2008
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p1}, Lcom/android/server/input/NativeInputManagerService;->reloadCalibration()V
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_32

    .line 2011
    :cond_2b
    :try_start_2b
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 2013
    monitor-exit v0

    return-void

    :catchall_32
    move-exception p1

    .line 2011
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 2012
    throw p1

    :catchall_39
    move-exception p0

    .line 2013
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_2b .. :try_end_3b} :catchall_39

    throw p0

    .line 2001
    :cond_3c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "surfaceRotation value out of bounds"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1996
    :cond_45
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires SET_INPUT_CALIBRATION permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setVirtualMousePointerDisplayIdBlocking(I)Z
    .registers 10

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne p1, v1, :cond_7

    move v3, v2

    goto :goto_8

    :cond_7
    move v3, v0

    :goto_8
    if-eqz v3, :cond_11

    .line 3477
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v4}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->getPointerDisplayId()I

    move-result v4

    goto :goto_12

    :cond_11
    move v4, p1

    .line 3480
    :goto_12
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputPropertiesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3481
    :try_start_15
    iput p1, p0, Lcom/android/server/input/InputManagerService;->mOverriddenPointerDisplayId:I

    .line 3483
    invoke-virtual {p0, v4}, Lcom/android/server/input/InputManagerService;->updatePointerDisplayIdLocked(I)Z

    move-result v6

    if-nez v6, :cond_23

    iget v6, p0, Lcom/android/server/input/InputManagerService;->mAcknowledgedPointerDisplayId:I

    if-ne v6, v4, :cond_23

    .line 3486
    monitor-exit v5

    return v2

    :cond_23
    if-eqz v3, :cond_2b

    .line 3488
    iget v4, p0, Lcom/android/server/input/InputManagerService;->mAcknowledgedPointerDisplayId:I

    if-ne v4, v1, :cond_2b

    .line 3492
    monitor-exit v5
    :try_end_2a
    .catchall {:try_start_15 .. :try_end_2a} :catchall_3b

    return v2

    .line 3496
    :cond_2b
    :try_start_2b
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputPropertiesLock:Ljava/lang/Object;

    const-wide/16 v6, 0x1388

    invoke-virtual {v1, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_32} :catch_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_3b

    :catch_32
    if-nez v3, :cond_38

    .line 3506
    :try_start_34
    iget p0, p0, Lcom/android/server/input/InputManagerService;->mAcknowledgedPointerDisplayId:I

    if-ne p0, p1, :cond_39

    :cond_38
    move v0, v2

    :cond_39
    monitor-exit v5

    return v0

    :catchall_3b
    move-exception p0

    .line 3507
    monitor-exit v5
    :try_end_3d
    .catchall {:try_start_34 .. :try_end_3d} :catchall_3b

    throw p0
.end method

.method public declared-synchronized setWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 6044
    :try_start_1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mControlWakeKey:Lcom/android/server/input/ControlWakeKey;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/input/ControlWakeKey;->setWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 6045
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V
    .registers 3

    .line 862
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    if-eqz v0, :cond_7

    .line 863
    invoke-virtual {p0, v0}, Lcom/android/server/input/InputManagerService;->unregisterLidSwitchCallbackInternal(Landroid/hardware/input/InputManagerInternal$LidSwitchCallback;)V

    .line 865
    :cond_7
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 866
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->registerLidSwitchCallbackInternal(Landroid/hardware/input/InputManagerInternal$LidSwitchCallback;)V

    return-void
.end method

.method public setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    .registers 2

    .line 870
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    return-void
.end method

.method public final showMissingKeyboardLayoutNotification(Landroid/view/InputDevice;)V
    .registers 9

    .line 2588
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    if-nez v0, :cond_78

    .line 2589
    new-instance v3, Landroid/content/Intent;

    const-string v0, "android.settings.HARD_KEYBOARD_SETTINGS"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_17

    .line 2591
    invoke-virtual {p1}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v0

    const-string/jumbo v1, "input_device_identifier"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_17
    const/high16 v0, 0x14200000

    .line 2593
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2596
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v4, 0x4000000

    const/4 v5, 0x0

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 2599
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2600
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/internal/notification/SystemNotificationChannels;->PHYSICAL_KEYBOARD:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v3, 0x1040c42

    .line 2602
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const v3, 0x1040c41

    .line 2604
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 2606
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x1080573

    .line 2607
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const v2, 0x106001c

    .line 2608
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2610
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 2611
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v2, 0x0

    const/16 v3, 0x13

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    const/4 v0, 0x1

    .line 2614
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    .line 2617
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mCurrentMissingKeyboardLayoutDevice:Landroid/view/InputDevice;

    :cond_78
    return-void
.end method

.method public start()V
    .registers 6

    const-string v0, "InputManager"

    const-string v1, "Starting input manager"

    .line 895
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0}, Lcom/android/server/input/NativeInputManagerService;->start()V

    .line 899
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 901
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->registerPointerSpeedSettingObserver()V

    .line 902
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->registerShowTouchesSettingObserver()V

    .line 903
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->registerAccessibilityLargePointerSettingObserver()V

    .line 906
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->registerPointerIconCustomSettingObserver()V

    .line 909
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->registerLongPressTimeoutObserver()V

    .line 910
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->registerMaximumObscuringOpacityForTouchSettingObserver()V

    .line 911
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->registerBlockUntrustedTouchesModeSettingObserver()V

    .line 915
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->registerTalkBackSettingObserver()V

    .line 919
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->registerAOTOnOffSettingObserver()V

    .line 923
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->registerShowHoveringPointerSettingObserver()V

    .line 924
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->registerPenHoveringSettingObserver()V

    .line 933
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->registerSetPenModeOnDexObserver()V

    .line 937
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->registerEnabledInputMethodsSettingObserver()V

    .line 941
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->registerPrimaryMouseButtonSettingObserver()V

    .line 942
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->registerScrollSpeedSettingObserver()V

    .line 943
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->registerUseMouseAccelerationSettingObserver()V

    .line 944
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->registerSecondaryButtonBehaviorSettingObserver()V

    .line 945
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->registerTertiaryButtonBehaviorSettingObserver()V

    .line 946
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->registerBackButtonBehaviorSettingObserver()V

    .line 947
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->registerForwardButtonBehaviorSettingObserver()V

    .line 951
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->registerCoverTestModeSettingObserver()V

    const/4 v0, 0x4

    .line 955
    invoke-virtual {p0, v0}, Lcom/android/server/input/InputManagerService;->registerMultiFingerTapBehavior(I)V

    const/4 v0, 0x1

    .line 956
    invoke-virtual {p0, v0}, Lcom/android/server/input/InputManagerService;->registerMultiFingerTapBehavior(I)V

    .line 957
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->registerTapToClickSettingObserver()V

    .line 958
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->registerReverseSwipeSettingObserver()V

    .line 962
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/input/InputManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/input/InputManagerService$1;-><init>(Lcom/android/server/input/InputManagerService;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1025
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateCoverTestModeFromSettings()V

    .line 1028
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updatePointerSpeedFromSettings()V

    .line 1029
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateShowTouchesFromSettings()V

    .line 1030
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateAccessibilityLargePointerFromSettings()V

    .line 1032
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updatePointerIconCustomFromSettings()V

    const-string/jumbo v0, "just booted"

    .line 1034
    invoke-virtual {p0, v0}, Lcom/android/server/input/InputManagerService;->updateDeepPressStatusFromSettings(Ljava/lang/String;)V

    .line 1035
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateMaximumObscuringOpacityForTouchFromSettings()V

    .line 1036
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateBlockUntrustedTouchesModeFromSettings()V

    .line 1039
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateAccessibilityEnabledFromSettings()V

    .line 1043
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateAOTOnOffSettings()V

    .line 1047
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateShowHoveringFromSettings()V

    .line 1048
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updatePenHoveringFromSettings()V

    .line 1052
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updatePrimaryMouseButtonFromSetting()V

    .line 1053
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateScrollSpeedFromSetting()V

    .line 1054
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateUseMouseAccelerationFromSetting()V

    .line 1055
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateSecondaryButtonBehaviorFromSetting()V

    .line 1056
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateTertiaryButtonBehaviorFromSetting()V

    .line 1057
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateBackButtonBehaviorFromSetting()V

    .line 1058
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateForwardButtonBehaviorFromSetting()V

    .line 1062
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateTapToClickFromSetting()V

    .line 1063
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateReverseSwipeFromSetting()V

    return-void
.end method

.method public final startGameToolsService(II)V
    .registers 6

    .line 1735
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.game.gametools.GAMEPAD_INTENTSERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.game.gametools"

    .line 1736
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "DEVICE_VID"

    .line 1737
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "DEVICE_PID"

    .line 1738
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "DEVICE_ACTION"

    const-string v2, "CONNECTED"

    .line 1739
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1741
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1742
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "start service game TOOLS: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InputManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public switchDeviceWirelessKeyboardShare(Ljava/lang/String;I)Z
    .registers 5

    .line 2497
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputWirelessKeyboardMouseShareLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2498
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    if-eqz v1, :cond_10

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

    if-eqz p0, :cond_10

    .line 2499
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->switchDevice(Ljava/lang/String;I)Z

    move-result p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x1

    .line 2501
    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_2a

    const-string p2, "InputManager"

    .line 2502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "switchDeviceWirelessKeyboardShare : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :catchall_2a
    move-exception p0

    .line 2501
    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public switchKeyboardLayout(II)V
    .registers 3

    return-void
.end method

.method public final switchKeyboardLayoutIfNotSetAsCurrentSubtype(Landroid/hardware/input/InputDeviceIdentifier;)V
    .registers 7

    .line 7034
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mCurrentImeHandle:Lcom/android/server/input/InputMethodSubtypeHandle;

    if-eqz v0, :cond_56

    if-eqz p1, :cond_56

    .line 7035
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v0

    .line 7036
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v1

    .line 7037
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v1}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7038
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mCurrentImeHandle:Lcom/android/server/input/InputMethodSubtypeHandle;

    invoke-virtual {v3, v1, v4}, Lcom/android/server/input/PersistentDataStore;->getKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputMethodSubtypeHandle;)Ljava/lang/String;

    move-result-object v1

    .line 7039
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_51

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_51

    const-string v2, "InputManager"

    .line 7040
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Switch to a layout: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7041
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    .line 7042
    iput-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 7043
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mCurrentImeHandle:Lcom/android/server/input/InputMethodSubtypeHandle;

    iput-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 7044
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 7046
    :cond_51
    monitor-exit v0

    goto :goto_56

    :catchall_53
    move-exception p0

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_9 .. :try_end_55} :catchall_53

    throw p0

    :cond_56
    :goto_56
    return-void
.end method

.method public switchWirelessKeyboardShare(Z)V
    .registers 2

    .line 2445
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->enableWirelessKeyboardShare(Z)V

    return-void
.end method

.method public systemRunning()V
    .registers 12

    .line 1073
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1076
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 1077
    :try_start_11
    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    const/16 v2, -0x100

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 1081
    invoke-virtual {p0, v3, v2, v4}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v5

    move v6, v4

    .line 1087
    :goto_1c
    iget-object v7, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchCallbacks:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_39

    .line 1088
    iget-object v7, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchCallbacks:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/input/InputManagerInternal$LidSwitchCallback;

    const-wide/16 v8, 0x0

    if-nez v5, :cond_32

    move v10, v1

    goto :goto_33

    :cond_32
    move v10, v4

    .line 1089
    :goto_33
    invoke-interface {v7, v8, v9, v10}, Landroid/hardware/input/InputManagerInternal$LidSwitchCallback;->notifyLidSwitchChanged(JZ)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    .line 1092
    :cond_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_11 .. :try_end_3a} :catchall_d8

    const/16 v0, 0xe

    .line 1095
    invoke-virtual {p0, v3, v2, v0}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v0

    if-eq v0, v3, :cond_4a

    if-eqz v0, :cond_46

    move v0, v1

    goto :goto_47

    :cond_46
    move v0, v4

    .line 1098
    :goto_47
    invoke-virtual {p0, v1, v0}, Lcom/android/server/input/InputManagerService;->setSensorPrivacy(IZ)V

    :cond_4a
    const/16 v0, 0x9

    .line 1101
    invoke-virtual {p0, v3, v2, v0}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v0

    if-eq v0, v3, :cond_5a

    const/4 v2, 0x2

    if-eqz v0, :cond_56

    goto :goto_57

    :cond_56
    move v1, v4

    .line 1104
    :goto_57
    invoke-virtual {p0, v2, v1}, Lcom/android/server/input/InputManagerService;->setSensorPrivacy(IZ)V

    .line 1107
    :cond_5a
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 1108
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 1109
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 1110
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    .line 1111
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1112
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/input/InputManagerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputManagerService$2;-><init>(Lcom/android/server/input/InputManagerService;)V

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v0, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1119
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.ALIAS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1120
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/input/InputManagerService$3;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputManagerService$3;-><init>(Lcom/android/server/input/InputManagerService;)V

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-virtual {v1, v2, v0, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1127
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1128
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1130
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    if-eqz v0, :cond_a9

    .line 1131
    invoke-interface {v0}, Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;->systemReady()V

    .line 1134
    :cond_a9
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mMissingKeyboardLayoutNotificationPending:Z

    if-eqz v0, :cond_b9

    const-string v0, "InputManager"

    const-string v1, "Showing pending notification of missing keyboard layout"

    .line 1135
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mMissingKeyboardLayoutDevice:Landroid/view/InputDevice;

    invoke-virtual {p0, v0}, Lcom/android/server/input/InputManagerService;->showMissingKeyboardLayoutNotification(Landroid/view/InputDevice;)V

    .line 1139
    :cond_b9
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mAddingPogoKeyboardIntentPending:Z

    if-eqz v0, :cond_c4

    .line 1140
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mPogoKeyboardConnected:Z

    invoke-virtual {p0, v0}, Lcom/android/server/input/InputManagerService;->sendPogoKeyboardStatus(Z)V

    .line 1141
    iput-boolean v4, p0, Lcom/android/server/input/InputManagerService;->mAddingPogoKeyboardIntentPending:Z

    .line 1146
    :cond_c4
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 1147
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateEnabledInputMethodsFromSettings()V

    .line 1162
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->initTspCmdForSpay()V

    return-void

    :catchall_d8
    move-exception p0

    .line 1092
    :try_start_d9
    monitor-exit v0
    :try_end_da
    .catchall {:try_start_d9 .. :try_end_da} :catchall_d8

    throw p0
.end method

.method public transferTouch(Landroid/os/IBinder;I)Z
    .registers 4

    const-string v0, "destChannelToken must not be null"

    .line 1304
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1305
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->transferTouch(Landroid/os/IBinder;I)Z

    move-result p0

    return p0
.end method

.method public transferTouchFocus(Landroid/os/IBinder;Landroid/os/IBinder;)Z
    .registers 4

    .line 3237
    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    .line 3238
    invoke-static {p2}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    .line 3239
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Lcom/android/server/input/NativeInputManagerService;->transferTouchFocus(Landroid/os/IBinder;Landroid/os/IBinder;Z)Z

    move-result p0

    return p0
.end method

.method public transferTouchFocus(Landroid/view/InputChannel;Landroid/view/InputChannel;Z)Z
    .registers 4

    .line 3218
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-virtual {p1}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/input/NativeInputManagerService;->transferTouchFocus(Landroid/os/IBinder;Landroid/os/IBinder;Z)Z

    move-result p0

    return p0
.end method

.method public tryPointerSpeed(I)V
    .registers 4

    const-string v0, "android.permission.SET_POINTER_SPEED"

    const-string/jumbo v1, "tryPointerSpeed()"

    .line 3245
    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, -0x7

    if-lt p1, v0, :cond_15

    const/4 v0, 0x7

    if-gt p1, v0, :cond_15

    .line 3254
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->setPointerSpeedUnchecked(I)V

    return-void

    .line 3251
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "speed out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3247
    :cond_1e
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires SET_POINTER_SPEED permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterLidSwitchCallbackInternal(Landroid/hardware/input/InputManagerInternal$LidSwitchCallback;)V
    .registers 3

    .line 889
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchLock:Ljava/lang/Object;

    monitor-enter v0

    .line 890
    :try_start_3
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 891
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public unregisterSensorListener(Landroid/hardware/input/IInputSensorEventListener;)V
    .registers 5

    const-string/jumbo v0, "listener must not be null"

    .line 3968
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3970
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSensorEventLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3971
    :try_start_9
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 3972
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 3973
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;

    .line 3974
    invoke-virtual {v2}, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->getListener()Landroid/hardware/input/IInputSensorEventListener;

    move-result-object v2

    invoke-interface {v2}, Landroid/hardware/input/IInputSensorEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/hardware/input/IInputSensorEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    if-ne v2, p1, :cond_31

    .line 3977
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_3a

    .line 3975
    :cond_31
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "listener is not registered"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3979
    :cond_3a
    :goto_3a
    monitor-exit v0

    return-void

    :catchall_3c
    move-exception p0

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_9 .. :try_end_3e} :catchall_3c

    throw p0
.end method

.method public unregisterVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z
    .registers 7

    .line 3775
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3776
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_46

    .line 3778
    :try_start_7
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mVibratorStateListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v3

    if-nez v3, :cond_30

    const-string p0, "InputManager"

    .line 3779
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Vibrator state listener "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t exist"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_41

    const/4 p0, 0x0

    .line 3786
    :try_start_2b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_46

    return p0

    .line 3782
    :cond_30
    :try_start_30
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mVibratorStateListeners:Landroid/util/SparseArray;

    .line 3783
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/RemoteCallbackList;

    .line 3784
    invoke-virtual {p0, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result p0
    :try_end_3c
    .catchall {:try_start_30 .. :try_end_3c} :catchall_41

    .line 3786
    :try_start_3c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    return p0

    :catchall_41
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3787
    throw p0

    :catchall_46
    move-exception p0

    .line 3788
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3c .. :try_end_48} :catchall_46

    throw p0
.end method

.method public updateAOTOnOffSettings()V
    .registers 6

    const/4 v0, 0x0

    .line 5825
    invoke-virtual {p0, v0}, Lcom/android/server/input/InputManagerService;->getAOTOnOffFromSettings(I)I

    move-result v1

    .line 5827
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->checkInputFeature()I

    move-result v2

    const/4 v3, 0x1

    and-int/2addr v2, v3

    const-string v4, "InputManager"

    if-ne v2, v3, :cond_31

    if-eqz v1, :cond_29

    if-ne v1, v3, :cond_14

    goto :goto_29

    .line 5831
    :cond_14
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Abnormal AOT value! "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_29
    :goto_29
    if-nez v1, :cond_2c

    goto :goto_2d

    :cond_2c
    move v0, v3

    .line 5829
    :goto_2d
    invoke-virtual {p0, v0}, Lcom/android/server/input/InputManagerService;->sendAOTOnOffcmd(Z)V

    goto :goto_36

    :cond_31
    const-string p0, "AOT feature not enabled"

    .line 5835
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_36
    return-void
.end method

.method public updateAccessibilityEnabledFromSettings()V
    .registers 5

    .line 5808
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_accessibility_services"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_52

    const-string v1, "(?i).*com.samsung.android.app.talkback.TalkBackService.*"

    .line 5813
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "(?i).*com.google.android.marvin.talkback.TalkBackService.*"

    .line 5814
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v1, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v1, 0x1

    .line 5816
    :goto_22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accessibility service : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "InputManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "talkbackEnabled : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5818
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, v1}, Lcom/android/server/input/NativeInputManagerService;->setTalkBack(Z)V

    :cond_52
    return-void
.end method

.method public final updateAccessibilityLargePointerFromSettings()V
    .registers 5

    .line 3316
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 3317
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_large_pointer_icon"

    const/4 v2, 0x0

    const/4 v3, -0x2

    .line 3316
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    move v2, v1

    .line 3319
    :cond_12
    invoke-static {v2}, Landroid/view/PointerIcon;->setUseLargeIcons(Z)V

    .line 3320
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->reloadPointerIcons()V

    return-void
.end method

.method public final updateAdditionalDisplayInputProperties(ILjava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;",
            ">;)V"
        }
    .end annotation

    .line 5926
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputPropertiesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5927
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputProperties:Landroid/util/SparseArray;

    .line 5928
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;

    if-nez v1, :cond_17

    .line 5930
    new-instance v1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;

    invoke-direct {v1}, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;-><init>()V

    .line 5931
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputProperties:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5933
    :cond_17
    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 5934
    invoke-virtual {v1}, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->allDefaults()Z

    move-result p2

    if-eqz p2, :cond_25

    .line 5935
    iget-object p2, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputProperties:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 5937
    :cond_25
    iget p2, p0, Lcom/android/server/input/InputManagerService;->mRequestedPointerDisplayId:I

    if-eq p1, p2, :cond_50

    const-string p2, "InputManager"

    .line 5938
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not applying additional properties for display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " because the pointer is currently targeting display "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/input/InputManagerService;->mRequestedPointerDisplayId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5941
    monitor-exit v0

    return-void

    .line 5943
    :cond_50
    invoke-virtual {p0, v1}, Lcom/android/server/input/InputManagerService;->applyAdditionalDisplayInputPropertiesLocked(Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;)V

    .line 5944
    monitor-exit v0

    return-void

    :catchall_55
    move-exception p0

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_3 .. :try_end_57} :catchall_55

    throw p0
.end method

.method public updateBackButtonBehaviorFromSetting()V
    .registers 5

    .line 6735
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mouse_additional_1_option"

    const/4 v2, 0x7

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 6737
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, v0}, Lcom/android/server/input/NativeInputManagerService;->setBackButtonBehavior(I)V

    return-void
.end method

.method public final updateBlockUntrustedTouchesModeFromSettings()V
    .registers 3

    .line 3410
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getBlockUntrustedTouchesMode(Landroid/content/Context;)I

    move-result v0

    .line 3411
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, v0}, Lcom/android/server/input/NativeInputManagerService;->setBlockUntrustedTouchesMode(I)V

    return-void
.end method

.method public updateCoverTestModeFromSettings()V
    .registers 2

    const/4 v0, -0x1

    .line 4345
    invoke-virtual {p0, v0}, Lcom/android/server/input/InputManagerService;->getCoverTestModeSetting(I)I

    move-result v0

    .line 4346
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, v0}, Lcom/android/server/input/NativeInputManagerService;->setCoverTestModeType(I)V

    return-void
.end method

.method public final updateDeepPressStatusFromSettings(Ljava/lang/String;)V
    .registers 7

    .line 3371
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "long_press_timeout"

    const/16 v2, 0x190

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const-string/jumbo v1, "input_native_boot"

    const-string v3, "deep_press_enabled"

    const/4 v4, 0x1

    .line 3375
    invoke-static {v1, v3, v4}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1f

    if-gt v0, v2, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v4, 0x0

    .line 3379
    :goto_20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v4, :cond_2a

    const-string v3, "Enabling"

    goto :goto_2c

    :cond_2a
    const-string v3, "Disabling"

    .line 3380
    :goto_2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " motion classifier because "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": feature "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_41

    const-string p1, "enabled"

    goto :goto_43

    :cond_41
    const-string p1, "disabled"

    .line 3381
    :goto_43
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", long press timeout = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InputManager"

    .line 3379
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3383
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, v4}, Lcom/android/server/input/NativeInputManagerService;->setMotionClassifierEnabled(Z)V

    return-void
.end method

.method public final updateDefaultKeyboardLayouts(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Ljava/util/HashSet;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/input/InputDeviceIdentifier;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_3

    return-void

    .line 6972
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 6973
    :goto_8
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v2

    if-ge v1, v2, :cond_4f

    .line 6974
    invoke-virtual {p2, v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    .line 6975
    new-instance v3, Lcom/android/server/input/InputMethodSubtypeHandle;

    invoke-direct {v3, p2, v2}, Lcom/android/server/input/InputMethodSubtypeHandle;-><init>(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 6976
    invoke-virtual {v3}, Lcom/android/server/input/InputMethodSubtypeHandle;->getSubtypeId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 6977
    invoke-virtual {p3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    goto :goto_42

    .line 6981
    :cond_26
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v4

    .line 6984
    :try_start_29
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v5, v0, v3}, Lcom/android/server/input/PersistentDataStore;->getKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputMethodSubtypeHandle;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3c

    .line 6985
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-static {v2, v5}, Lcom/android/server/input/KeyboardLayoutUtils;->getDefaultKeyboardLayoutForSubtype(Landroid/view/inputmethod/InputMethodSubtype;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3c

    .line 6988
    invoke-virtual {p0, p1, v3, v2}, Lcom/android/server/input/InputManagerService;->setKeyboardLayoutForInputDeviceInner(Landroid/hardware/input/InputDeviceIdentifier;Lcom/android/server/input/InputMethodSubtypeHandle;Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_29 .. :try_end_3c} :catchall_45

    .line 6992
    :cond_3c
    :try_start_3c
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 6994
    monitor-exit v4

    :goto_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :catchall_45
    move-exception p1

    .line 6992
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 6993
    throw p1

    :catchall_4c
    move-exception p0

    .line 6994
    monitor-exit v4
    :try_end_4e
    .catchall {:try_start_3c .. :try_end_4e} :catchall_4c

    throw p0

    :cond_4f
    return-void
.end method

.method public final updateDefaultKeyboardLayoutsForAll(Ljava/lang/String;Ljava/util/HashSet;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 6951
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_5

    return-void

    .line 6954
    :cond_5
    invoke-static {p1}, Lcom/android/server/input/KeyboardLayoutUtils;->getPackageNameFromCmpName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6955
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 6956
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v0

    .line 6955
    invoke-static {p1, v0}, Lcom/android/server/input/KeyboardLayoutUtils;->getInputMethodInfoOf(Ljava/lang/String;Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object p1

    .line 6957
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6958
    :try_start_16
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v2, :cond_34

    aget-object v4, v1, v3

    .line 6959
    invoke-virtual {v4}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-virtual {v4}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v5

    if-nez v5, :cond_31

    .line 6960
    invoke-virtual {v4}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v4

    invoke-virtual {p0, v4, p1, p2}, Lcom/android/server/input/InputManagerService;->updateDefaultKeyboardLayouts(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Ljava/util/HashSet;)V

    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 6963
    :cond_34
    monitor-exit v0

    return-void

    :catchall_36
    move-exception p0

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_16 .. :try_end_38} :catchall_36

    throw p0
.end method

.method public updateEnabledInputMethodsFromSettings()V
    .registers 4

    .line 6926
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 6927
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_input_methods"

    const/4 v2, -0x2

    .line 6926
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 6933
    invoke-static {v0}, Lcom/android/server/input/KeyboardLayoutUtils;->getEnabledInputMethodsAndSubtypes(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 6936
    invoke-static {v0}, Lcom/android/server/input/KeyboardLayoutUtils;->filterIfAvailableInputMethods(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x0

    .line 6938
    invoke-virtual {p0, v1, v0}, Lcom/android/server/input/InputManagerService;->sendMsgUpdateDefaultKeyboardLayouts(Landroid/hardware/input/InputDeviceIdentifier;Ljava/util/HashMap;)V

    return-void
.end method

.method public updateFlowPointerDirectionSettings()V
    .registers 1

    return-void
.end method

.method public updateFlowPointerSettings()V
    .registers 1

    return-void
.end method

.method public updateForwardButtonBehaviorFromSetting()V
    .registers 5

    .line 6751
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mouse_additional_2_option"

    const/4 v2, 0x4

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 6753
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, v0}, Lcom/android/server/input/NativeInputManagerService;->setForwardButtonBehavior(I)V

    return-void
.end method

.method public final updateKeyboardLayouts()V
    .registers 4

    .line 2641
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2644
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2647
    new-instance v1, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, v0}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/input/InputManagerService;Ljava/util/HashSet;)V

    invoke-virtual {p0, v1}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 2655
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 2657
    :try_start_15
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->removeUninstalledKeyboardLayouts(Ljava/util/Set;)Z
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_24

    .line 2659
    :try_start_1a
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 2661
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_2b

    .line 2664
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V

    return-void

    :catchall_24
    move-exception v0

    .line 2659
    :try_start_25
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 2660
    throw v0

    :catchall_2b
    move-exception p0

    .line 2661
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public final updateMaximumObscuringOpacityForTouchFromSettings()V
    .registers 3

    .line 3427
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getMaximumObscuringOpacityForTouch()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_1a

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_14

    goto :goto_1a

    .line 3433
    :cond_14
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, v0}, Lcom/android/server/input/NativeInputManagerService;->setMaximumObscuringOpacityForTouch(F)V

    return-void

    .line 3429
    :cond_1a
    :goto_1a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid maximum obscuring opacity "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", it should be >= 0 and <= 1, rejecting update."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "InputManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateMultiFingerTapBehavior(I)V
    .registers 2

    return-void
.end method

.method public updatePenHoveringFromSettings()V
    .registers 5

    const/4 v0, 0x0

    .line 6335
    invoke-virtual {p0, v0}, Lcom/android/server/input/InputManagerService;->getPenHoveringSetting(Z)Z

    move-result v1

    .line 6336
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v2, v1}, Lcom/android/server/input/NativeInputManagerService;->setPenHovering(Z)V

    .line 6338
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.spen_usp"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->semGetSystemFeatureLevel(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_24

    if-nez v1, :cond_21

    .line 6342
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, v0}, Lcom/android/server/input/NativeInputManagerService;->setShowHovering(Z)V

    goto :goto_24

    .line 6344
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateShowHoveringFromSettings()V

    :cond_24
    :goto_24
    return-void
.end method

.method public final updatePointerDisplayIdLocked(I)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAdditionalDisplayInputPropertiesLock"
        }
    .end annotation

    .line 3453
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mRequestedPointerDisplayId:I

    if-ne v0, p1, :cond_6

    const/4 p0, 0x0

    return p0

    .line 3456
    :cond_6
    iput p1, p0, Lcom/android/server/input/InputManagerService;->mRequestedPointerDisplayId:I

    .line 3457
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0, p1}, Lcom/android/server/input/NativeInputManagerService;->setPointerDisplayId(I)V

    .line 3458
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->applyAdditionalDisplayInputProperties()V

    const/4 p0, 0x1

    return p0
.end method

.method public final updatePointerIconCustomFromSettings()V
    .registers 6

    .line 3356
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 3357
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mouse_pointer_color"

    const v2, 0xffffff

    const/4 v3, -0x2

    .line 3356
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 3359
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 3360
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mouse_pointer_size_step"

    const/4 v4, 0x1

    .line 3359
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 3363
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updatePointerIcon color=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InputManager"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3364
    invoke-static {v0, v1}, Landroid/view/PointerIcon;->setCustomIcons(IF)V

    .line 3365
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->reloadPointerIcons()V

    return-void
.end method

.method public final updatePointerSpeedFromSettings()V
    .registers 2

    .line 3258
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->getPointerSpeedSetting()I

    move-result v0

    .line 3259
    invoke-virtual {p0, v0}, Lcom/android/server/input/InputManagerService;->setPointerSpeedUnchecked(I)V

    return-void
.end method

.method public updatePrimaryMouseButtonFromSetting()V
    .registers 2

    .line 6638
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->getPrimaryMouseButtonLocation()I

    move-result v0

    .line 6639
    invoke-virtual {p0, v0}, Lcom/android/server/input/InputManagerService;->setPrimaryMouseButtonLocation(I)V

    return-void
.end method

.method public updateReverseSwipeFromSetting()V
    .registers 3

    .line 4402
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->getReverseSwipeSetting()I

    move-result v0

    .line 4404
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-interface {p0, v1}, Lcom/android/server/input/NativeInputManagerService;->setReverseSwipeGesture(Z)V

    .line 4405
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateReverseSwipeFromSetting : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "InputManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateScrollSpeedFromSetting()V
    .registers 5

    .line 6664
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mouse_scrolling_speed"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ge v0, v2, :cond_29

    .line 6667
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wrong scroll speed : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    :cond_29
    move v2, v0

    .line 6670
    :goto_2a
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, v2}, Lcom/android/server/input/NativeInputManagerService;->setScrollSpeed(I)V

    return-void
.end method

.method public updateSecondaryButtonBehaviorFromSetting()V
    .registers 5

    .line 6703
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mouse_secondary_button_option"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 6705
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, v0}, Lcom/android/server/input/NativeInputManagerService;->setSecondaryButtonBehavior(I)V

    return-void
.end method

.method public updateSetPenModeOnDex()V
    .registers 1

    return-void
.end method

.method public updateShowHoveringFromSettings()V
    .registers 2

    const/4 v0, 0x0

    .line 6331
    invoke-virtual {p0, v0}, Lcom/android/server/input/InputManagerService;->getShowHoveringSetting(Z)Z

    move-result v0

    .line 6332
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, v0}, Lcom/android/server/input/NativeInputManagerService;->setShowHovering(Z)V

    return-void
.end method

.method public final updateShowTouchesFromSettings()V
    .registers 3

    const/4 v0, 0x0

    .line 3300
    invoke-virtual {p0, v0}, Lcom/android/server/input/InputManagerService;->getShowTouchesSetting(I)I

    move-result v1

    .line 3301
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    invoke-interface {p0, v0}, Lcom/android/server/input/NativeInputManagerService;->setShowTouches(Z)V

    return-void
.end method

.method public updateTapToClickFromSetting()V
    .registers 3

    .line 4373
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->getTapToClickSetting()I

    move-result v0

    .line 4375
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-interface {p0, v1}, Lcom/android/server/input/NativeInputManagerService;->setEnableTapToClick(Z)V

    .line 4376
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateTapToClickFromSetting : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "InputManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateTertiaryButtonBehaviorFromSetting()V
    .registers 5

    .line 6719
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mouse_middle_button_option"

    const/4 v2, 0x3

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 6721
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, v0}, Lcom/android/server/input/NativeInputManagerService;->setTertiaryButtonBehavior(I)V

    return-void
.end method

.method public updateUseMouseAccelerationFromSetting()V
    .registers 5

    .line 6684
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enhance_pointer_precision"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 6687
    iget v1, p0, Lcom/android/server/input/InputManagerService;->mRequestedPointerDisplayId:I

    const/high16 v3, 0x40400000    # 3.0f

    invoke-virtual {p0, v3, v1}, Lcom/android/server/input/InputManagerService;->setPointerAcceleration(FI)V

    .line 6689
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    if-ne v0, v2, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    :goto_1b
    invoke-interface {p0, v2}, Lcom/android/server/input/NativeInputManagerService;->setUseMouseAcceleration(Z)V

    return-void
.end method

.method public updateWirelessKeyboardShareStatus()V
    .registers 4

    .line 2431
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputWirelessKeyboardMouseShareLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2432
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

    if-eqz v1, :cond_1d

    .line 2433
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1f

    .line 2435
    :try_start_f
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->updateWirelessKeyboardShareStatus()V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_18

    .line 2437
    :try_start_14
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1d

    :catchall_18
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2438
    throw p0

    .line 2440
    :cond_1d
    :goto_1d
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public verifyInputEvent(Landroid/view/InputEvent;)Landroid/view/VerifiedInputEvent;
    .registers 3

    const-string v0, "event must not be null"

    .line 1619
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1620
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->verifyInputEvent(Landroid/view/InputEvent;)Landroid/view/VerifiedInputEvent;

    move-result-object p0

    return-object p0
.end method

.method public vibrate(ILandroid/os/VibrationEffect;Landroid/os/IBinder;)V
    .registers 11

    .line 3612
    new-instance v0, Lcom/android/server/input/InputManagerService$VibrationInfo;

    invoke-direct {v0, p2}, Lcom/android/server/input/InputManagerService$VibrationInfo;-><init>(Landroid/os/VibrationEffect;)V

    .line 3613
    invoke-virtual {p0, p1, p3}, Lcom/android/server/input/InputManagerService;->getVibratorToken(ILandroid/os/IBinder;)Lcom/android/server/input/InputManagerService$VibratorToken;

    move-result-object p2

    .line 3614
    monitor-enter p2

    const/4 p3, 0x1

    .line 3615
    :try_start_b
    iput-boolean p3, p2, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    .line 3616
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService$VibrationInfo;->getPattern()[J

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService$VibrationInfo;->getAmplitudes()[I

    move-result-object v4

    .line 3617
    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService$VibrationInfo;->getRepeatIndex()I

    move-result v5

    iget v6, p2, Lcom/android/server/input/InputManagerService$VibratorToken;->mTokenValue:I

    move v2, p1

    .line 3616
    invoke-interface/range {v1 .. v6}, Lcom/android/server/input/NativeInputManagerService;->vibrate(I[J[III)V

    .line 3618
    monitor-exit p2

    return-void

    :catchall_23
    move-exception p0

    monitor-exit p2
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_23

    throw p0
.end method

.method public vibrateCombined(ILandroid/os/CombinedVibration;Landroid/os/IBinder;)V
    .registers 12

    .line 3636
    invoke-virtual {p0, p1, p3}, Lcom/android/server/input/InputManagerService;->getVibratorToken(ILandroid/os/IBinder;)Lcom/android/server/input/InputManagerService$VibratorToken;

    move-result-object p3

    .line 3637
    monitor-enter p3

    .line 3638
    :try_start_5
    instance-of v0, p2, Landroid/os/CombinedVibration$Mono;

    if-nez v0, :cond_16

    instance-of v0, p2, Landroid/os/CombinedVibration$Stereo;

    if-nez v0, :cond_16

    const-string p0, "InputManager"

    const-string p1, "Only Mono and Stereo effects are supported"

    .line 3640
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3641
    monitor-exit p3

    return-void

    :cond_16
    const/4 v0, 0x1

    .line 3644
    iput-boolean v0, p3, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    .line 3645
    instance-of v0, p2, Landroid/os/CombinedVibration$Mono;

    if-eqz v0, :cond_3d

    .line 3646
    check-cast p2, Landroid/os/CombinedVibration$Mono;

    .line 3647
    new-instance v0, Lcom/android/server/input/InputManagerService$VibrationInfo;

    invoke-virtual {p2}, Landroid/os/CombinedVibration$Mono;->getEffect()Landroid/os/VibrationEffect;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/android/server/input/InputManagerService$VibrationInfo;-><init>(Landroid/os/VibrationEffect;)V

    .line 3648
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService$VibrationInfo;->getPattern()[J

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService$VibrationInfo;->getAmplitudes()[I

    move-result-object v4

    .line 3649
    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService$VibrationInfo;->getRepeatIndex()I

    move-result v5

    iget v6, p3, Lcom/android/server/input/InputManagerService$VibratorToken;->mTokenValue:I

    move v2, p1

    .line 3648
    invoke-interface/range {v1 .. v6}, Lcom/android/server/input/NativeInputManagerService;->vibrate(I[J[III)V

    goto :goto_8c

    .line 3650
    :cond_3d
    instance-of v0, p2, Landroid/os/CombinedVibration$Stereo;

    if-eqz v0, :cond_8c

    .line 3651
    check-cast p2, Landroid/os/CombinedVibration$Stereo;

    .line 3652
    invoke-virtual {p2}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object p2

    const/4 v0, 0x0

    new-array v1, v0, [J

    .line 3655
    new-instance v5, Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v5, v2}, Landroid/util/SparseArray;-><init>(I)V

    const/high16 v2, -0x80000000

    move-object v4, v1

    move v6, v2

    .line 3656
    :goto_57
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_84

    .line 3657
    new-instance v1, Lcom/android/server/input/InputManagerService$VibrationInfo;

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/VibrationEffect;

    invoke-direct {v1, v3}, Lcom/android/server/input/InputManagerService$VibrationInfo;-><init>(Landroid/os/VibrationEffect;)V

    .line 3659
    array-length v3, v4

    if-nez v3, :cond_70

    .line 3660
    invoke-virtual {v1}, Lcom/android/server/input/InputManagerService$VibrationInfo;->getPattern()[J

    move-result-object v3

    move-object v4, v3

    :cond_70
    if-ne v6, v2, :cond_76

    .line 3663
    invoke-virtual {v1}, Lcom/android/server/input/InputManagerService$VibrationInfo;->getRepeatIndex()I

    move-result v6

    .line 3665
    :cond_76
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v1}, Lcom/android/server/input/InputManagerService$VibrationInfo;->getAmplitudes()[I

    move-result-object v1

    invoke-virtual {v5, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    .line 3667
    :cond_84
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService;

    iget v7, p3, Lcom/android/server/input/InputManagerService$VibratorToken;->mTokenValue:I

    move v3, p1

    invoke-interface/range {v2 .. v7}, Lcom/android/server/input/NativeInputManagerService;->vibrateCombined(I[JLandroid/util/SparseArray;II)V

    .line 3670
    :cond_8c
    :goto_8c
    monitor-exit p3

    return-void

    :catchall_8e
    move-exception p0

    monitor-exit p3
    :try_end_90
    .catchall {:try_start_5 .. :try_end_90} :catchall_8e

    throw p0
.end method

.method public final visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    .registers 10

    .line 2751
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2752
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.hardware.input.action.QUERY_KEYBOARD_LAYOUTS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v2, 0xc0080

    .line 2753
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_18
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 2756
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2757
    iget v5, v1, Landroid/content/pm/ResolveInfo;->priority:I

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, v0

    move-object v6, p1

    .line 2758
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    goto :goto_18

    :cond_30
    return-void
.end method

.method public final visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    .registers 10

    .line 2764
    invoke-static {p1}, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->parse(Ljava/lang/String;)Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 2766
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2768
    :try_start_c
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->receiverName:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0xc0080

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 2773
    iget-object v4, p1, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->keyboardLayoutName:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    :try_end_24
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_24} :catch_24

    :catch_24
    :cond_24
    return-void
.end method

.method public final visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    .registers 27

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 2781
    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_b

    return-void

    :cond_b
    const-string v4, "android.hardware.input.metadata.KEYBOARD_LAYOUTS"

    .line 2786
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "/"

    const-string v5, "InputManager"

    if-nez v3, :cond_36

    .line 2788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing meta-data \'android.hardware.input.metadata.KEYBOARD_LAYOUTS\' on receiver "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2793
    :cond_36
    invoke-virtual {v1, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_41

    .line 2794
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_43

    :cond_41
    const-string v6, ""

    .line 2796
    :goto_43
    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v15, 0x1

    and-int/2addr v8, v15

    const/4 v14, 0x0

    if-eqz v8, :cond_4f

    move/from16 v16, p4

    goto :goto_51

    :cond_4f
    move/from16 v16, v14

    .line 2803
    :goto_51
    :try_start_51
    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    .line 2804
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_59} :catch_189

    :try_start_59
    const-string/jumbo v7, "keyboard-layouts"

    .line 2805
    invoke-static {v3, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 2808
    :goto_5f
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2809
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7
    :try_end_66
    .catchall {:try_start_59 .. :try_end_66} :catchall_17b

    if-nez v7, :cond_6d

    .line 2877
    :try_start_68
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6b} :catch_189

    goto/16 :goto_1a8

    :cond_6d
    :try_start_6d
    const-string/jumbo v8, "keyboard-layout"

    .line 2813
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_147

    .line 2814
    sget-object v7, Lcom/android/internal/R$styleable;->KeyboardLayout:[I

    invoke-virtual {v0, v3, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13
    :try_end_7c
    .catchall {:try_start_6d .. :try_end_7c} :catchall_17b

    .line 2817
    :try_start_7c
    invoke-virtual {v13, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2819
    invoke-virtual {v13, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    .line 2821
    invoke-virtual {v13, v9, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    const/4 v10, 0x3

    .line 2824
    invoke-virtual {v13, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    const-string/jumbo v11, "http://schemas.android.com/apk/res-auto"

    const-string/jumbo v9, "subtypeLocale"

    .line 2828
    invoke-interface {v3, v11, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v11, "style"

    .line 2830
    invoke-static {v3, v0, v11}, Lcom/android/server/input/KeyboardLayoutUtils;->getStringFromInputDevices(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2832
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_c9

    const-string v17, ","
    :try_end_a6
    .catchall {:try_start_7c .. :try_end_a6} :catchall_140

    :try_start_a6
    const-string v15, "comma"

    const-string/jumbo v14, "string"

    const-string v10, "com.android.inputdevices"

    .line 2835
    invoke-virtual {v0, v15, v14, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 2837
    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_b5} :catch_b5
    .catchall {:try_start_a6 .. :try_end_b5} :catchall_140

    :catch_b5
    :try_start_b5
    const-string v10, "%s%s %s"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v8, v14, v15

    const/16 v18, 0x1

    aput-object v17, v14, v18

    const/4 v8, 0x2

    aput-object v11, v14, v8

    .line 2841
    invoke-static {v10, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_cc

    :cond_c9
    move/from16 v18, v15

    move v15, v14

    :goto_cc
    move-object v10, v8

    .line 2846
    invoke-static {v9}, Lcom/android/server/input/InputManagerService;->getLocalesFromLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v14

    const/4 v8, 0x5

    const/4 v9, -0x1

    .line 2847
    invoke-virtual {v13, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    const/4 v8, 0x4

    .line 2849
    invoke-virtual {v13, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v19

    if-eqz v7, :cond_116

    if-eqz v10, :cond_116

    if-nez v12, :cond_e3

    goto :goto_116

    .line 2858
    :cond_e3
    iget-object v8, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v8, v9, v7}, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v2, :cond_fb

    .line 2860
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f4

    goto :goto_fb

    :cond_f4
    move-object/from16 v8, p5

    move-object/from16 v20, v13

    move/from16 v17, v15

    goto :goto_13a

    .line 2861
    :cond_fb
    :goto_fb
    new-instance v11, Landroid/hardware/input/KeyboardLayout;
    :try_end_fd
    .catchall {:try_start_b5 .. :try_end_fd} :catchall_140

    move-object v7, v11

    move-object v9, v10

    move-object v10, v6

    move-object v15, v11

    move/from16 v11, v16

    move v2, v12

    move-object v12, v14

    move-object/from16 v20, v13

    move/from16 v13, v17

    const/16 v17, 0x0

    move/from16 v14, v19

    :try_start_10d
    invoke-direct/range {v7 .. v14}, Landroid/hardware/input/KeyboardLayout;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/LocaleList;II)V

    move-object/from16 v8, p5

    .line 2864
    invoke-interface {v8, v0, v2, v15}, Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;->visitKeyboardLayout(Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V

    goto :goto_13a

    :cond_116
    :goto_116
    move-object/from16 v8, p5

    move-object/from16 v20, v13

    move/from16 v17, v15

    .line 2853
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing required \'name\', \'label\' or \'keyboardLayout\' attributes in keyboard layout resource from receiver "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13a
    .catchall {:try_start_10d .. :try_end_13a} :catchall_13e

    .line 2869
    :goto_13a
    :try_start_13a
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_173

    :catchall_13e
    move-exception v0

    goto :goto_143

    :catchall_140
    move-exception v0

    move-object/from16 v20, v13

    :goto_143
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    .line 2870
    throw v0

    :cond_147
    move-object/from16 v8, p5

    move/from16 v17, v14

    move/from16 v18, v15

    .line 2872
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping unrecognized element \'"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' in keyboard layout resource from receiver "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_173
    .catchall {:try_start_13a .. :try_end_173} :catchall_17b

    :goto_173
    move-object/from16 v2, p3

    move/from16 v14, v17

    move/from16 v15, v18

    goto/16 :goto_5f

    :catchall_17b
    move-exception v0

    move-object v2, v0

    if-eqz v3, :cond_188

    .line 2804
    :try_start_17f
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_182
    .catchall {:try_start_17f .. :try_end_182} :catchall_183

    goto :goto_188

    :catchall_183
    move-exception v0

    move-object v3, v0

    :try_start_185
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_188
    :goto_188
    throw v2
    :try_end_189
    .catch Ljava/lang/Exception; {:try_start_185 .. :try_end_189} :catch_189

    :catch_189
    move-exception v0

    .line 2879
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse keyboard layout resource from receiver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1a8
    return-void
.end method

.method public final wakeUp(JILjava/lang/String;)V
    .registers 5

    .line 7078
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "power"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    if-eqz p0, :cond_2b

    .line 7080
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 7081
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "wakeup -"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InputManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    return-void
.end method

.method public final wakeUpWhenPogoConnected(Z)V
    .registers 6

    if-eqz p1, :cond_29

    .line 6173
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 6174
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p1

    const-wide/16 v2, -0x1

    and-long/2addr v2, v0

    long-to-int v2, v2

    .line 6175
    iput v2, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    .line 6176
    iput v0, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    const/16 v0, 0x69

    .line 6177
    iput v0, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    const-string v0, "android.policy:POGO_CONNECT"

    .line 6178
    iput-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 6179
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/16 v0, 0x6a

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_29
    return-void
.end method
