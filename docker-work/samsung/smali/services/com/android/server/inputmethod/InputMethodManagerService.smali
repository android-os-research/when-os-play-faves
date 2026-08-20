.class public final Lcom/android/server/inputmethod/InputMethodManagerService;
.super Lcom/android/internal/view/IInputMethodManager$Stub;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;,
        Lcom/android/server/inputmethod/InputMethodManagerService$AccessControlKeyboardEnableChangeObserver;,
        Lcom/android/server/inputmethod/InputMethodManagerService$AccessControlEnableChangeObserver;,
        Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;,
        Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;,
        Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;,
        Lcom/android/server/inputmethod/InputMethodManagerService$KeyboardSubTypeReceiver;,
        Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;,
        Lcom/android/server/inputmethod/InputMethodManagerService$ScreenOffReceiver;,
        Lcom/android/server/inputmethod/InputMethodManagerService$VZWResetSettingReceiver;,
        Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;,
        Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;,
        Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;,
        Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;,
        Lcom/android/server/inputmethod/InputMethodManagerService$InlineSuggestionsRequestCallbackDecorator;,
        Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer;,
        Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;,
        Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;,
        Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;,
        Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForAllUsers;,
        Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForSystemUser;,
        Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;,
        Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;,
        Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;,
        Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;,
        Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;,
        Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;,
        Lcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;,
        Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;,
        Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;,
        Lcom/android/server/inputmethod/InputMethodManagerService$CreateInlineSuggestionsRequest;,
        Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandResult;
    }
.end annotation


# static fields
.field public static final ACTION_DEMO_RESET_STARTED:Ljava/lang/String; = "com.samsung.sea.rm.DEMO_RESET_STARTED"

.field public static final ACTION_SHOW_INPUT_METHOD_PICKER:Ljava/lang/String; = "com.android.server.inputmethod.InputMethodManagerService.SHOW_INPUT_METHOD_PICKER"

.field public static final ACTION_STATUSBAR_ANIMATING:Ljava/lang/String; = "com.samsung.systemui.statusbar.ANIMATING"

.field public static final ACTION_SUBTYPE_EVENT:Ljava/lang/String; = "com.sec.android.inputmethod.Subtype"

.field public static final ACTION_VZW_RESET_SETTING:Ljava/lang/String; = "com.samsung.intent.action.SETTINGS_SOFT_RESET"

.field public static final BIXBY_DICT:Ljava/lang/String; = "com.samsung.android.bixby.voiceinput/com.samsung.android.svoiceime.BixbyDictVoiceReco"

.field public static final BIXBY_DICTATION:Ljava/lang/String; = "com.samsung.android.bixby.service/.dictation.DictationInputMethodService"

.field public static final BUNDLE_DEFAULT_VALUE:Ljava/lang/String; = "def"

.field public static final BUNDLE_KEY:Ljava/lang/String; = "key"

.field public static final BUNDLE_VALUE:Ljava/lang/String; = "val"

.field public static final CUSTOMIZED_SOGOU_KEYPAD:Ljava/lang/String; = "com.sohu.inputmethod.sogou.samsung/.SogouIME"

.field public static final DEBUG:Z = false

.field public static final DEBUG_HARDWARE_KEYBOARD:Z = true

.field public static final DEBUG_RESTORE:Z = false

.field public static final DEBUG_SEP:Z

.field public static final DEX_CALL_METHOD_GET:Ljava/lang/String; = "getSettings"

.field public static final DEX_CALL_METHOD_SET:Ljava/lang/String; = "setSettings"

.field public static final DEX_CONTENT_URI:Landroid/net/Uri;

.field public static final DICTATION:Landroid/net/Uri;

.field public static final EXTRA_SIP_SUBTYPE:Ljava/lang/String; = "SamsungIME.Subtype"

.field public static final FALLBACK_DISPLAY_ID:I = 0x0

.field public static final FEATURE_CONFIG_SIP:Ljava/lang/String;

.field public static final HANDLER_THREAD_NAME:Ljava/lang/String; = "android.imms"

.field public static final HANDLE_DICTATION_FOR_HW_VOICE_KEY:Ljava/lang/String; = "handle_dictation_for_hw_voice_key"

.field public static IME_MARKER_NAVI_ICON:I = 0x0

.field public static IME_MARKER_NONE:I = 0x0

.field public static IME_MARKER_NOTI_PANEL:I = 0x0

.field public static final IMS_MASK_HW_KEYBOARD:I = 0xf

.field public static final KEYBOARD_TYPE_MOUSE_ID_LIST:Ljava/lang/String; = "1133:45077,1133:45072,1133:45091,1133:45083,1133:45082"

.field public static final KEY_DICTATION_EXECUTED:Ljava/lang/String; = "dictation_executed"

.field public static final METHOD_ID_HONEYBOARD:Ljava/lang/String; = "com.samsung.android.honeyboard/.service.HoneyBoardService"

.field public static final MSG_BIND_ACCESSIBILITY_SERVICE:I = 0xbc3

.field public static final MSG_BIND_CLIENT:I = 0xbc2

.field public static final MSG_DISPATCH_ON_INPUT_METHOD_LIST_UPDATED:I = 0x1392

.field public static final MSG_FINISH_HANDWRITING:I = 0x456

.field public static final MSG_HARD_KEYBOARD_SWITCH_CHANGED:I = 0xfa0

.field public static final MSG_HIDE_CURRENT_INPUT_METHOD:I = 0x40b

.field public static final MSG_NOTIFY_IME_UID_TO_AUDIO_SERVICE:I = 0x1b58

.field public static final MSG_REMOVE_IME_SURFACE:I = 0x424

.field public static final MSG_REMOVE_IME_SURFACE_FROM_WINDOW:I = 0x425

.field public static final MSG_REPORT_FULLSCREEN_MODE:I = 0xbe5

.field public static final MSG_RESET_HANDWRITING:I = 0x442

.field public static final MSG_SET_ACTIVE:I = 0xbcc

.field public static final MSG_SET_INTERACTIVE:I = 0xbd6

.field public static final MSG_SHOW_AGAIN_IM_PICKER:I = 0x3ff

.field public static final MSG_SHOW_IM_SUBTYPE_PICKER:I = 0x1

.field public static final MSG_START_HANDWRITING:I = 0x44c

.field public static final MSG_SYSTEM_UNLOCK_USER:I = 0x1388

.field public static final MSG_UNBIND_ACCESSIBILITY_SERVICE:I = 0xbb9

.field public static final MSG_UNBIND_CLIENT:I = 0xbb8

.field public static final MSG_UPDATE_IME_WINDOW_STATUS:I = 0x42e

.field public static final MSG_UPDATE_SYSTEM_UI_LOCKED:I = 0x402

.field public static final MSG_UPDATE_WACOM_STATE:I = 0x3fd

.field public static final NOT_A_SUBTYPE_ID:I = -0x1

.field public static final PACKAGE_HONEYBOARD:Ljava/lang/String; = "com.samsung.android.honeyboard"

.field public static final PERMISSION_SOFT_RESET_SETTING:Ljava/lang/String; = "com.sec.android.settings.permission.SOFT_RESET"

.field public static final PROTO_ARG:Ljava/lang/String; = "--proto"

.field public static final QWERTYKEYBOARD:I = 0x1

.field public static final SETTINGS_DEX_ON_PC_STATE:Ljava/lang/String; = "dexonpc_connection_state"

.field public static final SETTINGS_INPUTMETHOD_PREVIOUS_INPUTMETHOD_DEX:Ljava/lang/String; = "com.sec.android.inputmethod.previous_inputmethod_dex"

.field public static final SETTINGS_KEY_KEYBOARD_DEX:Ljava/lang/String; = "keyboard_dex"

.field public static final SETTINGS_KEY_TOUCH_KEYBOARD:Ljava/lang/String; = "touch_keyboard"

.field public static final SVOICE_KEYPAD:Ljava/lang/String; = "com.samsung.android.svoiceime/.SamsungVoiceReco"

.field public static final SWIFT_KEYPAD:Ljava/lang/String; = "com.touchtype.swiftkey/com.touchtype.KeyboardService"

.field public static final TAG:Ljava/lang/String; = "InputMethodManagerService"

.field public static final TAG_TRY_SUPPRESSING_IME_SWITCHER:Ljava/lang/String; = "TrySuppressingImeSwitcher"

.field public static final UNIVERSAL_SWITCH_ENABLED:Ljava/lang/String; = "universal_switch_enabled"

.field public static mDefaultSIP:Ljava/lang/String;

.field public static mInputMethodSwitchDisable:Z


# instance fields
.field public mAccessControlEnable:Z

.field public mAccessControlEnableChangeObserver:Lcom/android/server/inputmethod/InputMethodManagerService$AccessControlEnableChangeObserver;

.field public mAccessControlKeyboardBlockEnable:Z

.field public mAccessControlKeyboardEnableChangeObserver:Lcom/android/server/inputmethod/InputMethodManagerService$AccessControlKeyboardEnableChangeObserver;

.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mAccessibilityRequestingNoSoftKeyboard:Z

.field public final mAdditionalSubtypeMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public mAudioManagerInternal:Landroid/media/AudioManagerInternal;

.field public mBackDisposition:I

.field public final mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

.field public mBoundToAccessibility:Z

.field public mBoundToMethod:Z

.field public final mClients:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;",
            ">;"
        }
    .end annotation
.end field

.field public mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public mCurAttribute:Landroid/view/inputmethod/EditorInfo;

.field public mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

.field public mCurFocusedWindow:Landroid/os/IBinder;

.field public mCurFocusedWindowClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

.field public mCurFocusedWindowSoftInputMode:I

.field public mCurHostInputToken:Landroid/os/IBinder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation
.end field

.field public mCurImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

.field public mCurInputContext:Lcom/android/internal/view/IInputContext;

.field public mCurPerceptible:Z

.field public mCurRemoteAccessibilityInputConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

.field public mCurTokenDisplayId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation
.end field

.field public mCurVirtualDisplayToScreenMatrix:Landroid/graphics/Matrix;

.field public mCurrentDisplayId:I

.field public mCurrentShowAuxSubtypes:Z

.field public mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

.field public mDeXDualViewChangeObserver:Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;

.field public mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field public mDexOnPCStateChangeObserver:Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;

.field public mDirectWritingFlag:Z

.field public mDisplayIdToShowIme:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation
.end field

.field public final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public mEnabledAccessibilitySessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;",
            ">;"
        }
    .end annotation
.end field

.field public mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation
.end field

.field public mFocusedDisplayId:I

.field public final mHandler:Landroid/os/Handler;

.field public final mHasFeature:Z

.field public final mHideRequestWindowMap:Ljava/util/WeakHashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/os/IBinder;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field public final mHwController:Lcom/android/server/inputmethod/HandwritingModeController;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation
.end field

.field public final mIPackageManager:Landroid/content/pm/IPackageManager;

.field public final mIWindowManager:Landroid/view/IWindowManager;

.field public final mImeDisplayValidator:Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;

.field public mImeDrawsImeNavBarRes:Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation
.end field

.field public mImeDrawsImeNavBarResLazyInitFuture:Ljava/util/concurrent/Future;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field public mImeHiddenByDisplayPolicy:Z

.field public final mImePlatformCompatUtils:Lcom/android/server/inputmethod/ImePlatformCompatUtils;

.field public final mImeSelectedOnBoot:Z

.field public final mImeSwitchPendingIntent:Landroid/app/PendingIntent;

.field public final mImeSwitcherNotification:Landroid/app/Notification$Builder;

.field public final mImeTargetWindowMap:Ljava/util/WeakHashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/os/IBinder;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field public mImeWindowVis:I

.field public mInFullscreenMode:Z

.field public mInitialUserSwitch:Z

.field public mInlineSuggestionsRequestCallback:Lcom/android/internal/view/IInlineSuggestionsRequestCallback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation
.end field

.field public mInputManager:Landroid/hardware/input/InputManager;

.field public final mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

.field public final mInputMethodListListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/server/inputmethod/InputMethodManagerInternal$InputMethodListListener;",
            ">;"
        }
    .end annotation
.end field

.field public mInputShown:Z

.field public final mIsFolderModel:Z

.field public mIsInteractive:Z

.field public mIsNeedUpdateSubtypeForLocaleChanged:Z

.field public mKeyboardTypeMouseIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mKeyguardManager:Landroid/app/KeyguardManager;

.field public mLastImeTargetWindow:Landroid/os/IBinder;

.field public mLastSwitchUserId:I

.field public mLastSystemLocales:Landroid/os/LocaleList;

.field public final mLoggedDeniedGetInputMethodWindowVisibleHeightForUid:Landroid/util/SparseBooleanArray;

.field public final mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

.field public final mMethodList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mMethodMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mMethodMapUpdateCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation
.end field

.field public final mMyPackageMonitor:Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

.field public mNeedToExplicitallyCall:Z

.field public final mNonPreemptibleInputMethods:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mNotificationManager:Landroid/app/NotificationManager;

.field public mNotificationShown:Z

.field public mOverrideDWFlag:Z

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public mPendingInlineSuggestionsRequest:Lcom/android/server/inputmethod/InputMethodManagerService$CreateInlineSuggestionsRequest;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation
.end field

.field public final mPointerEventListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

.field public mPowerManager:Landroid/os/PowerManager;

.field public mPrevInputMethodForUniversalSwitch:Ljava/lang/String;

.field public final mPreventImeStartupUnlessTextEditor:Z

.field public final mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;

.field public final mRes:Landroid/content/res/Resources;

.field public mSamsungIMMSHWKeyboard:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

.field public final mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

.field public final mSettingsObserver:Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;

.field public mShowExplicitlyRequested:Z

.field public mShowForced:Z

.field public mShowOngoingImeSwitcherForPhones:Z

.field public final mShowRequestWindowMap:Ljava/util/WeakHashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/os/IBinder;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field public mShowRequested:Z

.field public final mSlotIme:Ljava/lang/String;

.field public final mSoftInputShowHideHistory:Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation
.end field

.field public final mStartInputHistory:Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation
.end field

.field public mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

.field public final mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

.field public mSystemReady:Z

.field public mUniversalSwitchChangeObserver:Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation
.end field

.field public final mVirtualDisplayIdToParentMap:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mWMS:Lcom/android/server/wm/WindowManagerService;

.field public final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

.field public mbWACOMPen:Z

.field public misSecurefolderIdOrDualAppId:Z


# direct methods
.method public static synthetic $r8$lambda$1QzpuuZ6HJulf5akbbPWxWszu7k(Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;Landroid/view/inputmethod/InputMethodInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$handleShellCommandResetInputMethod$5(Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;Landroid/view/inputmethod/InputMethodInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AhkKGaXMb2go3kAOJFxNNwN_Wcw(Lcom/android/server/inputmethod/InputMethodManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$systemRunning$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$F9EIkbJ0j0nkV0RkbPOhyw9yI_8(Ljava/util/List;ILcom/android/server/inputmethod/InputMethodManagerInternal$InputMethodListListener;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$handleMessage$4(Ljava/util/List;ILcom/android/server/inputmethod/InputMethodManagerInternal$InputMethodListListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XUIWnM1I-xqMtdWJBk3rvGL6t0I(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$maybeInitImeNavbarConfigLocked$0(Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bNnzxTzGOLxDTcZA3PdLo_4mWHU(Lcom/android/server/inputmethod/InputMethodManagerService;ILcom/android/internal/view/IInputMethodClient;)Ljava/lang/Integer;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$getInputMethodWindowVisibleHeight$3(ILcom/android/internal/view/IInputMethodClient;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gRgjY_HS13W_5gOOIaCMhjqn2ac(Ljava/io/PrintWriter;Landroid/view/inputmethod/InputMethodInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$handleShellCommandResetInputMethod$6(Ljava/io/PrintWriter;Landroid/view/inputmethod/InputMethodInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vz_z57ulRhr4T1Ld16KRvnRuVVc(Lcom/android/server/inputmethod/InputMethodManagerService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$systemRunning$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$wSuf01Y3R2kwffFN0uue-KYdDjg(Lcom/android/server/inputmethod/InputMethodManagerService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$getHwKeyboardStatusChangeListener$7(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAccessibilityManager(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/view/accessibility/AccessibilityManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAccessibilityRequestingNoSoftKeyboard(Lcom/android/server/inputmethod/InputMethodManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessibilityRequestingNoSoftKeyboard:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAdditionalSubtypeMap(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAdditionalSubtypeMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurClient(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .registers 1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurHostInputToken(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurHostInputToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurTokenDisplayId(Lcom/android/server/inputmethod/InputMethodManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeXDualViewChangeObserver(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDeXDualViewChangeObserver:Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFocusedDisplayId(Lcom/android/server/inputmethod/InputMethodManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedDisplayId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHideRequestWindowMap(Lcom/android/server/inputmethod/InputMethodManagerService;)Ljava/util/WeakHashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHideRequestWindowMap:Ljava/util/WeakHashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIPackageManager(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/content/pm/IPackageManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInputMethodListListeners(Lcom/android/server/inputmethod/InputMethodManagerService;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputMethodListListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLoggedDeniedGetInputMethodWindowVisibleHeightForUid(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/util/SparseBooleanArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLoggedDeniedGetInputMethodWindowVisibleHeightForUid:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMenuController(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodMenuController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPrevInputMethodForUniversalSwitch(Lcom/android/server/inputmethod/InputMethodManagerService;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPrevInputMethodForUniversalSwitch:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSamsungIMMSHWKeyboard(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;
    .registers 1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSamsungIMMSHWKeyboard:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmShowRequested(Lcom/android/server/inputmethod/InputMethodManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequested:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserSwitchHandlerTask(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;
    .registers 1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmbWACOMPen(Lcom/android/server/inputmethod/InputMethodManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mbWACOMPen:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmAccessibilityRequestingNoSoftKeyboard(Lcom/android/server/inputmethod/InputMethodManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessibilityRequestingNoSoftKeyboard:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCurPerceptible(Lcom/android/server/inputmethod/InputMethodManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurPerceptible:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPrevInputMethodForUniversalSwitch(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPrevInputMethodForUniversalSwitch:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmShowRequested(Lcom/android/server/inputmethod/InputMethodManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequested:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUserSwitchHandlerTask(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mapplyImeVisibility(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Landroid/os/IBinder;Z)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->applyImeVisibility(Landroid/os/IBinder;Landroid/os/IBinder;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mbuildKeyboardTypeMouseList(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/content/Context;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->buildKeyboardTypeMouseList(Landroid/content/Context;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mchooseNewDefaultIMELocked(Lcom/android/server/inputmethod/InputMethodManagerService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcreateInputContentUriToken(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/inputmethod/IInputContentUriToken;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->createInputContentUriToken(Landroid/os/IBinder;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/inputmethod/IInputContentUriToken;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdumpAsStringNoCheck(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->dumpAsStringNoCheck(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdumpDebug(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/util/proto/ProtoOutputStream;J)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mexecuteOrSendMessage(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/internal/view/IInputMethodClient;Landroid/os/Message;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Lcom/android/internal/view/IInputMethodClient;Landroid/os/Message;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfinishSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->finishSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetCurMethodLocked(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/IInputMethodInvoker;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetCurrentInputMethodPackageName(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodPackageName(Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetDisplayIdOfInputMethodWindowToBeAdded(Lcom/android/server/inputmethod/InputMethodManagerService;I)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getDisplayIdOfInputMethodWindowToBeAdded(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetDisplayIdOfInputMethodWindowToBeAddedForDEX(Lcom/android/server/inputmethod/InputMethodManagerService;)I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getDisplayIdOfInputMethodWindowToBeAddedForDEX()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetEnabledInputMethodListLocked(Lcom/android/server/inputmethod/InputMethodManagerService;I)Ljava/util/List;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodListLocked(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetInputMethodListLocked(Lcom/android/server/inputmethod/InputMethodManagerService;II)Ljava/util/List;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodListLocked(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetLastSwitchUserId(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getLastSwitchUserId(Landroid/os/ShellCommand;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetSequenceNumberLocked(Lcom/android/server/inputmethod/InputMethodManagerService;)I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSequenceNumberLocked()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhandleShellCommandEnableDisableInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;Z)I
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleShellCommandEnableDisableInputMethod(Landroid/os/ShellCommand;Z)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhandleShellCommandListInputMethods(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleShellCommandListInputMethods(Landroid/os/ShellCommand;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhandleShellCommandResetInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleShellCommandResetInputMethod(Landroid/os/ShellCommand;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhandleShellCommandSetInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleShellCommandSetInputMethod(Landroid/os/ShellCommand;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhandleShellCommandTraceInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleShellCommandTraceInputMethod(Landroid/os/ShellCommand;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhideMySoftInput(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideMySoftInput(Landroid/os/IBinder;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misHoneyboardInstalled(Lcom/android/server/inputmethod/InputMethodManagerService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isHoneyboardInstalled()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misInstalledInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->isInstalledInputMethod(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misSamsungDefaultMethodID(Lcom/android/server/inputmethod/InputMethodManagerService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isSamsungDefaultMethodID()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mnotifyUserAction(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->notifyUserAction(Landroid/os/IBinder;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mobtainMessageIIOO(Lcom/android/server/inputmethod/InputMethodManagerService;IIILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/inputmethod/InputMethodManagerService;->obtainMessageIIOO(IIILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mobtainMessageOOO(Lcom/android/server/inputmethod/InputMethodManagerService;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->obtainMessageOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$monCreateInlineSuggestionsRequestLocked(Lcom/android/server/inputmethod/InputMethodManagerService;ILcom/android/internal/view/InlineSuggestionsRequestInfo;Lcom/android/internal/view/IInlineSuggestionsRequestCallback;Z)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->onCreateInlineSuggestionsRequestLocked(ILcom/android/internal/view/InlineSuggestionsRequestInfo;Lcom/android/internal/view/IInlineSuggestionsRequestCallback;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monStylusHandwritingReady(Lcom/android/server/inputmethod/InputMethodManagerService;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->onStylusHandwritingReady(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpublishLocalService(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->publishLocalService()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mqueryMethodMapForUser(Lcom/android/server/inputmethod/InputMethodManagerService;I)Landroid/util/ArrayMap;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryMethodMapForUser(I)Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mreportFullscreenMode(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Z)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->reportFullscreenMode(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreportStartInput(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->reportStartInput(Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mresetSelectedInputMethodAndSubtypeLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mresetStylusHandwriting(Lcom/android/server/inputmethod/InputMethodManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetStylusHandwriting(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDefaultIMEForKeyboard(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setDefaultIMEForKeyboard(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDefaultInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->setDefaultInputMethod()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetImeWindowStatus(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;II)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeWindowStatus(Landroid/os/IBinder;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetInputMethodAndSubtype(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetInputMethodEnabledLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;Z)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetWACOMPen(Lcom/android/server/inputmethod/InputMethodManagerService;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setWACOMPen(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshouldOfferSwitchingToNextInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldOfferSwitchingToNextInputMethod(Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mshowMySoftInput(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->showMySoftInput(Landroid/os/IBinder;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartInputUncheckedInnerLocked(Lcom/android/server/inputmethod/InputMethodManagerService;I)Lcom/android/internal/inputmethod/InputBindResult;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputUncheckedInnerLocked(I)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mswitchToInputMethodLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;I)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchToInputMethodLocked(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mswitchToNextInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Z)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchToNextInputMethod(Landroid/os/IBinder;Z)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mswitchToPreviousInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchToPreviousInputMethod(Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mswitchUserOnHandlerLocked(Lcom/android/server/inputmethod/InputMethodManagerService;ILcom/android/internal/view/IInputMethodClient;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchUserOnHandlerLocked(ILcom/android/internal/view/IInputMethodClient;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateStatusIcon(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateSystemUiLocked(Lcom/android/server/inputmethod/InputMethodManagerService;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEX_CONTENT_URI()Landroid/net/Uri;
    .registers 1

    sget-object v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEX_CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "content://com.samsung.android.honeyboard.DictationProvider"

    .line 330
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DICTATION:Landroid/net/Uri;

    .line 393
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG_SEP:Z

    const-string v0, "content://0@com.sec.android.desktopmode.uiservice.SettingsProvider/settings"

    .line 426
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEX_CONTENT_URI:Landroid/net/Uri;

    .line 468
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SIP_CONFIG_PACKAGE_NAME"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/inputmethod/InputMethodManagerService;->FEATURE_CONFIG_SIP:Ljava/lang/String;

    const/4 v0, 0x0

    .line 489
    sput-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputMethodSwitchDisable:Z

    .line 517
    sput v0, Lcom/android/server/inputmethod/InputMethodManagerService;->IME_MARKER_NONE:I

    const/4 v0, 0x1

    .line 518
    sput v0, Lcom/android/server/inputmethod/InputMethodManagerService;->IME_MARKER_NAVI_ICON:I

    const/4 v0, 0x2

    .line 519
    sput v0, Lcom/android/server/inputmethod/InputMethodManagerService;->IME_MARKER_NOTI_PANEL:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "InputMethodManagerService"

    .line 2014
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;-><init>()V

    const/4 v4, -0x1

    .line 436
    iput v4, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedDisplayId:I

    const/4 v5, 0x0

    .line 476
    iput-boolean v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mbWACOMPen:Z

    .line 479
    iput-boolean v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessControlEnable:Z

    .line 480
    iput-boolean v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessControlKeyboardBlockEnable:Z

    const/4 v6, 0x0

    .line 485
    iput-object v6, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mPrevInputMethodForUniversalSwitch:Ljava/lang/String;

    .line 494
    iput-boolean v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mNeedToExplicitallyCall:Z

    .line 496
    iput-boolean v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsNeedUpdateSubtypeForLocaleChanged:Z

    .line 498
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$1;

    invoke-direct {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$1;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mPointerEventListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    .line 522
    iput-boolean v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentShowAuxSubtypes:Z

    .line 523
    iput v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentDisplayId:I

    .line 528
    iput-boolean v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->misSecurefolderIdOrDualAppId:Z

    .line 531
    iput-boolean v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mDirectWritingFlag:Z

    .line 532
    iput-boolean v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mOverrideDWFlag:Z

    .line 538
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mKeyboardTypeMouseIdList:Ljava/util/List;

    .line 552
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0, v5}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mLoggedDeniedGetInputMethodWindowVisibleHeightForUid:Landroid/util/SparseBooleanArray;

    .line 560
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mAdditionalSubtypeMap:Landroid/util/ArrayMap;

    .line 577
    iput-object v6, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    .line 581
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    .line 582
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    .line 588
    iput v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMapUpdateCount:I

    .line 599
    iput v4, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mDisplayIdToShowIme:I

    .line 723
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    .line 751
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mVirtualDisplayIdToParentMap:Landroid/util/SparseArray;

    .line 869
    iput-object v6, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurVirtualDisplayToScreenMatrix:Landroid/graphics/Matrix;

    .line 961
    iput v4, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    .line 1021
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    const/4 v7, 0x1

    .line 1026
    iput-boolean v7, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    .line 1028
    iput v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    .line 1055
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

    invoke-direct {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

    .line 1063
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputMethodListListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1132
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeTargetWindowMap:Ljava/util/WeakHashMap;

    .line 1240
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequestWindowMap:Ljava/util/WeakHashMap;

    .line 1248
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mHideRequestWindowMap:Ljava/util/WeakHashMap;

    .line 1405
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;

    invoke-direct {v0, v6}, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory-IA;)V

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mStartInputHistory:Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;

    .line 1409
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;

    invoke-direct {v0, v6}, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory-IA;)V

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSoftInputShowHideHistory:Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;

    .line 6632
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$3;

    invoke-direct {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$3;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;

    .line 8092
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;

    invoke-direct {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mDexOnPCStateChangeObserver:Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;

    .line 8117
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;

    invoke-direct {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mUniversalSwitchChangeObserver:Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;

    .line 8209
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$AccessControlEnableChangeObserver;

    invoke-direct {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$AccessControlEnableChangeObserver;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessControlEnableChangeObserver:Lcom/android/server/inputmethod/InputMethodManagerService$AccessControlEnableChangeObserver;

    .line 8226
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$AccessControlKeyboardEnableChangeObserver;

    invoke-direct {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$AccessControlKeyboardEnableChangeObserver;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessControlKeyboardEnableChangeObserver:Lcom/android/server/inputmethod/InputMethodManagerService$AccessControlKeyboardEnableChangeObserver;

    .line 8277
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;

    invoke-direct {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mDeXDualViewChangeObserver:Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;

    .line 2015
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 2016
    iput-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 2017
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 2020
    new-instance v8, Lcom/android/server/ServiceThread;

    const-string v0, "android.imms"

    const/4 v9, -0x2

    invoke-direct {v8, v0, v9, v7}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 2022
    invoke-virtual {v8}, Landroid/os/HandlerThread;->start()V

    .line 2023
    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    .line 2025
    new-instance v9, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;

    invoke-direct {v9, v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/Handler;)V

    iput-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;

    const-string/jumbo v9, "window"

    .line 2027
    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2026
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    .line 2028
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 2029
    const-class v10, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v10}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageManagerInternal;

    iput-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 2030
    const-class v10, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v10}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/input/InputManagerInternal;

    iput-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    .line 2031
    new-instance v10, Lcom/android/server/inputmethod/ImePlatformCompatUtils;

    invoke-direct {v10}, Lcom/android/server/inputmethod/ImePlatformCompatUtils;-><init>()V

    iput-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mImePlatformCompatUtils:Lcom/android/server/inputmethod/ImePlatformCompatUtils;

    .line 2032
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v10, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/WindowManagerInternal;)V

    iput-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeDisplayValidator:Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;

    .line 2033
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 2034
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 2035
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManager:Landroid/os/UserManager;

    .line 2036
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 2037
    invoke-static/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 2038
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v10, "android.software.input_methods"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mHasFeature:Z

    const v0, 0x1040db5

    .line 2041
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    .line 2043
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v10, "android.allowDuringSetup"

    .line 2044
    invoke-virtual {v0, v10, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const v0, 0x106001c

    .line 2045
    invoke-virtual {v2, v0}, Landroid/content/Context;->getColor(I)I

    .line 2047
    new-instance v0, Landroid/app/Notification$Builder;

    sget-object v10, Lcom/android/internal/notification/SystemNotificationChannels;->VIRTUAL_KEYBOARD:Ljava/lang/String;

    invoke-direct {v0, v2, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v10, 0x1080533

    .line 2049
    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-wide/16 v10, 0x0

    .line 2050
    invoke-virtual {v0, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2051
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string/jumbo v10, "sys"

    .line 2053
    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    .line 2056
    new-instance v0, Landroid/content/Intent;

    const-string v10, "com.android.server.inputmethod.InputMethodManagerService.SHOW_INPUT_METHOD_PICKER"

    invoke-direct {v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2057
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    const/high16 v0, 0x4000000

    .line 2058
    invoke-static {v2, v5, v10, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeSwitchPendingIntent:Landroid/app/PendingIntent;

    .line 2061
    iput-boolean v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    .line 2063
    iput-boolean v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationShown:Z

    .line 2067
    :try_start_1c2
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_1cc
    .catch Landroid/os/RemoteException; {:try_start_1c2 .. :try_end_1cc} :catch_1cd

    goto :goto_1d4

    :catch_1cd
    move-exception v0

    const-string v11, "Couldn\'t get current user ID; guessing it\'s 0"

    .line 2069
    invoke-static {v3, v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v5

    .line 2072
    :goto_1d4
    iput v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastSwitchUserId:I

    .line 2075
    new-instance v11, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v13, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 2076
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    iget-object v15, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-boolean v12, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    xor-int/lit8 v17, v12, 0x1

    move-object v12, v11

    move/from16 v16, v0

    invoke-direct/range {v12 .. v17}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Landroid/util/ArrayMap;IZ)V

    iput-object v11, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 2078
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateCurrentProfileIds()V

    .line 2079
    iget-object v12, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mAdditionalSubtypeMap:Landroid/util/ArrayMap;

    invoke-static {v12, v0}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->load(Landroid/util/ArrayMap;I)V

    .line 2080
    invoke-static {v11, v2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->createInstanceLocked(Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;Landroid/content/Context;)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    .line 2082
    new-instance v0, Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-direct {v0, v1}, Lcom/android/server/inputmethod/InputMethodMenuController;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    .line 2083
    new-instance v0, Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-direct {v0, v1}, Lcom/android/server/inputmethod/InputMethodBindingController;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 2084
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const v12, 0x1110007

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mPreventImeStartupUnlessTextEditor:Z

    .line 2086
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const v12, 0x10700fd

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mNonPreemptibleInputMethods:Ljava/util/Set;

    .line 2088
    new-instance v0, Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    new-instance v12, Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer;

    invoke-direct {v12, v1, v6}, Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer-IA;)V

    invoke-direct {v0, v8, v12}, Lcom/android/server/inputmethod/HandwritingModeController;-><init>(Landroid/os/Looper;Ljava/lang/Runnable;)V

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    .line 2092
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->buildKeyboardTypeMouseList(Landroid/content/Context;)V

    .line 2094
    iput-boolean v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mInitialUserSwitch:Z

    const/high16 v0, 0x10000000

    .line 2095
    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2098
    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2097
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerService;

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mWMS:Lcom/android/server/wm/WindowManagerService;

    .line 2099
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v8, "com.sec.feature.folder_type"

    invoke-virtual {v6, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsFolderModel:Z

    .line 2103
    iget-object v6, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v8, "desktopmode"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v6, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 2104
    iget-object v6, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "power"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    iput-object v6, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 2107
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 2108
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->registerSamsungAdditionalReceivers()V

    .line 2112
    invoke-virtual {v11}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v2

    .line 2113
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/2addr v6, v7

    iput-boolean v6, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeSelectedOnBoot:Z

    .line 2114
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Initial default ime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mImeSelectedOnBoot :"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 2118
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2119
    invoke-virtual {v11}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v6

    const-string v8, "access_control_keyboard_block"

    .line 2117
    invoke-static {v2, v8, v7, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_2b0

    goto :goto_2b1

    :cond_2b0
    move v7, v5

    :goto_2b1
    iput-boolean v7, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessControlKeyboardBlockEnable:Z

    .line 2121
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v6, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_VERSION"

    invoke-virtual {v2, v6, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-gtz v2, :cond_2c5

    const-string v0, "Spen input disable"

    .line 2122
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2cf

    :cond_2c5
    const-string v2, "Spen input enable"

    .line 2124
    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mPointerEventListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    invoke-virtual {v0, v1, v5}, Lcom/android/server/wm/WindowManagerService;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;I)V

    :goto_2cf
    return-void
.end method

.method public static computeImeDisplayIdForTarget(ILcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;)I
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_12

    const/4 v1, -0x1

    if-ne p0, v1, :cond_7

    goto :goto_12

    .line 3368
    :cond_7
    invoke-interface {p1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;->getDisplayImePolicy(I)I

    move-result p1

    if-nez p1, :cond_e

    return p0

    :cond_e
    const/4 p0, 0x2

    if-ne p1, p0, :cond_12

    return v1

    :cond_12
    :goto_12
    return v0
.end method

.method public static getDexSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 8480
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string/jumbo v1, "key"

    .line 8481
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "def"

    .line 8482
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8484
    :try_start_11
    sget-object v1, Lcom/android/server/inputmethod/InputMethodManagerService;->DEX_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v2, "getSettings"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_29

    .line 8486
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_21} :catch_22

    return-object p0

    :catch_22
    const-string p0, "InputMethodManagerService"

    const-string p1, "Failed to get settings"

    .line 8489
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    return-object p2
.end method

.method public static getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;
    .registers 3

    .line 2207
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-ne v0, p1, :cond_b

    .line 2208
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    goto :goto_18

    .line 2209
    :cond_b
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    .line 2210
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    :goto_18
    return-object p0
.end method

.method public static handleOptionsForCommandsThatOnlyHaveUserOption(Landroid/os/ShellCommand;)I
    .registers 3

    .line 7102
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, -0x2

    return p0

    :cond_8
    const-string v1, "-u"

    .line 7106
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "--user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_0

    .line 7109
    :cond_19
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static isInlineSuggestionsEnabled(Landroid/view/inputmethod/InputMethodInfo;Z)Z
    .registers 3

    .line 2606
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->isInlineSuggestionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    if-eqz p1, :cond_e

    .line 2608
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->supportsInlineSuggestionsWithTouchExploration()Z

    move-result p0

    if-eqz p0, :cond_10

    :cond_e
    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public static isShopDemo(Landroid/content/Context;)Z
    .registers 3

    .line 7737
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "shopdemo"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_10

    move v1, v0

    :cond_10
    return v1
.end method

.method private synthetic lambda$getHwKeyboardStatusChangeListener$7(Z)V
    .registers 6

    if-eqz p1, :cond_1a

    const-string p1, "InputMethodManagerService"

    const-string v0, "HW Keyboard connected"

    .line 7907
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7908
    const-class p1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p1

    .line 7909
    :try_start_c
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x1b

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    .line 7911
    monitor-exit p1

    goto :goto_1a

    :catchall_17
    move-exception p0

    monitor-exit p1
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_17

    throw p0

    :cond_1a
    :goto_1a
    return-void
.end method

.method private synthetic lambda$getInputMethodWindowVisibleHeight$3(ILcom/android/internal/view/IInputMethodClient;)Ljava/lang/Integer;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5162
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    :try_start_3
    const-string v1, "getInputMethodWindowVisibleHeight"

    .line 5163
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->canInteractWithImeLocked(ILcom/android/internal/view/IInputMethodClient;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_38

    .line 5165
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLoggedDeniedGetInputMethodWindowVisibleHeightForUid:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_32

    const p2, 0x534e4554

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "204906124"

    aput-object v3, v2, v1

    .line 5166
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    const-string v5, ""

    aput-object v5, v2, v3

    invoke-static {p2, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5167
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLoggedDeniedGetInputMethodWindowVisibleHeightForUid:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5169
    :cond_32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 5173
    :cond_38
    iget p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    .line 5174
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_46

    .line 5175
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerInternal;->getInputMethodWindowVisibleHeight(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :catchall_46
    move-exception p0

    .line 5174
    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw p0
.end method

.method public static synthetic lambda$handleMessage$4(Ljava/util/List;ILcom/android/server/inputmethod/InputMethodManagerInternal$InputMethodListListener;)V
    .registers 3

    .line 5813
    invoke-interface {p2, p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerInternal$InputMethodListListener;->onInputMethodListUpdated(Ljava/util/List;I)V

    return-void
.end method

.method public static synthetic lambda$handleShellCommandResetInputMethod$5(Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;Landroid/view/inputmethod/InputMethodInfo;)V
    .registers 3

    .line 7285
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 7284
    invoke-virtual {p0, p1, v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->appendAndPutEnabledInputMethodLocked(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic lambda$handleShellCommandResetInputMethod$6(Ljava/io/PrintWriter;Landroid/view/inputmethod/InputMethodInfo;)V
    .registers 4

    .line 7293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   Enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$maybeInitImeNavbarConfigLocked$0(Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;)V
    .registers 4

    .line 2195
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 2196
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeDrawsImeNavBarRes:Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;

    if-ne p1, v1, :cond_a

    .line 2197
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->sendOnNavButtonFlagsChangedLocked()V

    .line 2199
    :cond_a
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method private synthetic lambda$systemRunning$1(Z)V
    .registers 4

    .line 2333
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    const/16 v1, 0xfa0

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 2334
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private synthetic lambda$systemRunning$2(I)V
    .registers 4

    .line 2343
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2344
    :try_start_4
    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeDrawsImeNavBarResLazyInitFuture:Ljava/util/concurrent/Future;

    .line 2345
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v1

    if-eq p1, v1, :cond_10

    .line 2349
    monitor-exit v0

    return-void

    .line 2351
    :cond_10
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->maybeInitImeNavbarConfigLocked(I)V

    .line 2352
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public static queryInputMethodServicesInternal(Landroid/content/Context;ILandroid/util/ArrayMap;Landroid/util/ArrayMap;Ljava/util/ArrayList;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;I)V"
        }
    .end annotation

    .line 5940
    invoke-virtual {p4}, Ljava/util/ArrayList;->clear()V

    .line 5941
    invoke-virtual {p3}, Landroid/util/ArrayMap;->clear()V

    const/high16 v0, 0x10000000

    const-string v1, "InputMethodManagerService"

    if-eqz p5, :cond_2b

    const/4 v2, 0x1

    if-eq p5, v2, :cond_29

    .line 5954
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown directBootAwareness="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, ". Falling back to DirectBootAwareness.AUTO"

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v1, p5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    :cond_29
    const/high16 v0, 0xc0000

    :cond_2b
    :goto_2b
    const p5, 0x8080

    or-int/2addr p5, v0

    .line 5961
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.view.InputMethod"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, p5, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p1

    .line 5964
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p5

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 5965
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p5

    invoke-virtual {p3, p5}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    const/4 p5, 0x0

    .line 5967
    :goto_4d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p5, v0, :cond_bb

    .line 5968
    invoke-interface {p1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 5969
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 5970
    invoke-static {v0}, Landroid/view/inputmethod/InputMethodInfo;->computeId(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v3

    .line 5971
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v4, "android.permission.BIND_INPUT_METHOD"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_86

    .line 5972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping input method "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": it does not require the permission "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b8

    .line 5981
    :cond_86
    :try_start_86
    new-instance v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 5982
    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {v2, p0, v0, v4}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/util/List;)V

    .line 5983
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->isVrOnly()Z

    move-result v0

    if-eqz v0, :cond_98

    goto :goto_b8

    .line 5986
    :cond_98
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5987
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_a2} :catch_a3

    goto :goto_b8

    :catch_a3
    move-exception v0

    .line 5992
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load input method "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_b8
    add-int/lit8 p5, p5, 0x1

    goto :goto_4d

    :cond_bb
    return-void
.end method


# virtual methods
.method public addClient(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;I)V
    .registers 14

    .line 2785
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2786
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 2787
    const-class v7, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v7

    .line 2789
    :try_start_b
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_13
    if-ge v2, v0, :cond_5a

    .line 2791
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 2792
    iget v6, v5, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    if-ne v6, v3, :cond_57

    iget v6, v5, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->pid:I

    if-ne v6, v4, :cond_57

    iget v5, v5, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    if-eq v5, p3, :cond_2a

    goto :goto_57

    .line 2794
    :cond_2a
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "uid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/pid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/displayId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is already registered."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_57
    :goto_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 2798
    :cond_5a
    new-instance v6, Lcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;

    invoke-direct {v6, p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/internal/view/IInputMethodClient;)V
    :try_end_5f
    .catchall {:try_start_b .. :try_end_5f} :catchall_81

    .line 2800
    :try_start_5f
    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v6, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_66} :catch_7a
    .catchall {:try_start_5f .. :try_end_66} :catchall_81

    .line 2814
    :try_start_66
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    new-instance v9, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;-><init>(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;IIILcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;)V

    invoke-virtual {p0, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2816
    monitor-exit v7

    return-void

    :catch_7a
    move-exception p0

    .line 2802
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catchall_81
    move-exception p0

    .line 2816
    monitor-exit v7
    :try_end_83
    .catchall {:try_start_66 .. :try_end_83} :catchall_81

    throw p0
.end method

.method public final advanceSequenceNumberLocked()V
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 799
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->advanceSequenceNumber()V

    return-void
.end method

.method public final applyImeVisibility(Landroid/os/IBinder;Landroid/os/IBinder;Z)V
    .registers 9

    const-string v0, "IMMS.applyImeVisibility"

    const-wide/16 v1, 0x20

    .line 5448
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5449
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5450
    :try_start_a
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 5451
    monitor-exit v0

    return-void

    :cond_12
    if-nez p3, :cond_4f

    const-string p1, "InputMethodManagerService"

    .line 5455
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyImeVisibility: setVisible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", IsClientNull="

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-nez p3, :cond_2e

    const/4 p3, 0x1

    goto :goto_2f

    :cond_2e
    const/4 p3, 0x0

    :goto_2f
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5458
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz p1, :cond_5f

    .line 5465
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHideRequestWindowMap:Ljava/util/WeakHashMap;

    .line 5466
    invoke-virtual {p3, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    .line 5465
    invoke-virtual {p1, p2, p0}, Lcom/android/server/wm/WindowManagerInternal;->hideIme(Landroid/os/IBinder;I)V

    goto :goto_5f

    .line 5471
    :cond_4f
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->notifyUserActivity()V

    .line 5475
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequestWindowMap:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowManagerInternal;->showImePostLayout(Landroid/os/IBinder;)V

    .line 5477
    :cond_5f
    :goto_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_a .. :try_end_60} :catchall_64

    .line 5478
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_64
    move-exception p0

    .line 5477
    :try_start_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw p0
.end method

.method public attachNewAccessibilityLocked(IZI)Lcom/android/internal/inputmethod/InputBindResult;
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 3090
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToAccessibility:Z

    const/4 v1, 0x1

    if-nez v0, :cond_e

    .line 3091
    invoke-static {}, Lcom/android/server/AccessibilityManagerInternal;->get()Lcom/android/server/AccessibilityManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/AccessibilityManagerInternal;->bindInput()V

    .line 3092
    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToAccessibility:Z

    .line 3098
    :cond_e
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    .line 3099
    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;

    const/16 v0, 0xb

    if-eq p1, v0, :cond_34

    .line 3103
    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    .line 3104
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setEnabledSessionForAccessibilityLocked(Landroid/util/SparseArray;)V

    .line 3105
    invoke-static {}, Lcom/android/server/AccessibilityManagerInternal;->get()Lcom/android/server/AccessibilityManagerInternal;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurRemoteAccessibilityInputConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    xor-int/2addr p2, v1

    invoke-virtual {p1, v0, v2, p2}, Lcom/android/server/AccessibilityManagerInternal;->startInput(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    :cond_34
    const/4 p1, 0x0

    if-eqz p3, :cond_5b

    .line 3110
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object p3, p2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-nez p3, :cond_3e

    goto :goto_40

    .line 3111
    :cond_3e
    iget-object p1, p3, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    :goto_40
    move-object v2, p1

    .line 3112
    iget-object p1, p2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    .line 3113
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->createAccessibilityInputMethodSessions(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v3

    .line 3114
    new-instance p1, Lcom/android/internal/inputmethod/InputBindResult;

    const/16 v1, 0x10

    const/4 v4, 0x0

    .line 3117
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurIdLocked()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSequenceNumberLocked()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurVirtualDisplayToScreenMatrix:Landroid/graphics/Matrix;

    const/4 v8, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/inputmethod/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/util/SparseArray;Landroid/view/InputChannel;Ljava/lang/String;ILandroid/graphics/Matrix;Z)V

    :cond_5b
    return-object p1
.end method

.method public attachNewInputLocked(IZ)Lcom/android/internal/inputmethod/InputBindResult;
    .registers 21
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2994
    iget-boolean v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToMethod:Z

    const/4 v2, 0x1

    if-nez v1, :cond_14

    .line 2995
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v1

    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v3, v3, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->binding:Landroid/view/inputmethod/InputBinding;

    invoke-virtual {v1, v3}, Lcom/android/server/inputmethod/IInputMethodInvoker;->bindInput(Landroid/view/inputmethod/InputBinding;)V

    .line 2996
    iput-boolean v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToMethod:Z

    :cond_14
    xor-int/lit8 v1, p2, 0x1

    .line 3000
    new-instance v15, Landroid/os/Binder;

    invoke-direct {v15}, Landroid/os/Binder;-><init>()V

    .line 3001
    new-instance v14, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;

    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v4

    .line 3002
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurTokenLocked()Landroid/os/IBinder;

    move-result-object v5

    iget v6, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    .line 3003
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurIdLocked()Ljava/lang/String;

    move-result-object v7

    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget v3, v3, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    .line 3004
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget v11, v3, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    iget-object v12, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    iget-object v13, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v9, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowSoftInputMode:I

    .line 3006
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSequenceNumberLocked()I

    move-result v16

    move-object v3, v14

    move/from16 v8, p1

    move/from16 v17, v9

    move v9, v1

    move-object v2, v14

    move/from16 v14, v17

    move/from16 p2, v1

    move-object v1, v15

    move/from16 v15, v16

    invoke-direct/range {v3 .. v15}, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;-><init>(ILandroid/os/IBinder;ILjava/lang/String;IZIILandroid/os/IBinder;Landroid/view/inputmethod/EditorInfo;II)V

    .line 3007
    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeTargetWindowMap:Ljava/util/WeakHashMap;

    iget-object v4, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    invoke-virtual {v3, v1, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3008
    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStartInputHistory:Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;

    invoke-virtual {v3, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;->addEntry(Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;)V

    .line 3015
    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget v3, v3, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v2, v3, :cond_89

    .line 3016
    iget-object v4, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v5

    const/4 v6, 0x0

    .line 3017
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodUidLocked()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget v8, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    const/4 v9, 0x1

    .line 3016
    invoke-virtual/range {v4 .. v9}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZ)V

    .line 3022
    :cond_89
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodNavButtonFlagsLocked()I

    move-result v8

    .line 3023
    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 3024
    invoke-virtual {v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setEnabledSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;)V

    if-eqz v2, :cond_a4

    .line 3028
    iget-object v3, v2, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->method:Lcom/android/server/inputmethod/IInputMethodInvoker;

    iget-object v5, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurInputContext:Lcom/android/internal/view/IInputContext;

    iget-object v6, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v9, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    move-object v4, v1

    move/from16 v7, p2

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/inputmethod/IInputMethodInvoker;->startInput(Landroid/os/IBinder;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;ZILandroid/window/ImeOnBackInvokedDispatcher;)V

    .line 3035
    :cond_a4
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->checkDisplayOfStartInputAndUpdateKeyboard(Landroid/view/inputmethod/EditorInfo;)V

    .line 3038
    iget-boolean v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequested:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_c0

    const-string v1, "InputMethodManagerService"

    const-string v4, "Attach new input asks to show input"

    .line 3040
    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3041
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getAppShowFlagsLocked()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v0, v1, v4, v3, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    goto :goto_c1

    :cond_c0
    const/4 v5, 0x1

    .line 3045
    :goto_c1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurIdLocked()Ljava/lang/String;

    move-result-object v11

    .line 3046
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v1, :cond_d7

    .line 3048
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->suppressesSpellChecker()Z

    move-result v1

    if-eqz v1, :cond_d7

    move v14, v5

    goto :goto_d9

    :cond_d7
    const/4 v1, 0x0

    move v14, v1

    .line 3051
    :goto_d9
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-nez v1, :cond_e3

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    goto :goto_e9

    .line 3053
    :cond_e3
    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->createAccessibilityInputMethodSessions(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v1

    :goto_e9
    move-object v9, v1

    .line 3054
    new-instance v1, Lcom/android/internal/inputmethod/InputBindResult;

    const/4 v7, 0x0

    iget-object v8, v2, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    .line 3056
    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    if-eqz v2, :cond_f7

    invoke-virtual {v2}, Landroid/view/InputChannel;->dup()Landroid/view/InputChannel;

    move-result-object v3

    :cond_f7
    move-object v10, v3

    .line 3057
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSequenceNumberLocked()I

    move-result v12

    iget-object v13, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurVirtualDisplayToScreenMatrix:Landroid/graphics/Matrix;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lcom/android/internal/inputmethod/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/util/SparseArray;Landroid/view/InputChannel;Ljava/lang/String;ILandroid/graphics/Matrix;Z)V

    return-object v1
.end method

.method public buildInputMethodListLocked(Z)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 6003
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    const-string v1, "InputMethodManagerService"

    if-nez v0, :cond_c

    const-string p0, "buildInputMethodListLocked is not allowed until system is ready"

    .line 6004
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6007
    :cond_c
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMapUpdateCount:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMapUpdateCount:I

    .line 6008
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->clearKnownImePackageNamesLocked()V

    .line 6010
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAdditionalSubtypeMap:Landroid/util/ArrayMap;

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryInputMethodServicesInternal(Landroid/content/Context;ILandroid/util/ArrayMap;Landroid/util/ArrayMap;Ljava/util/ArrayList;I)V

    .line 6014
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->checkAndSetIMEAlwaysEnable()V

    .line 6024
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 6025
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.view.InputMethod"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x200

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 6027
    invoke-virtual {v5}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v5

    .line 6025
    invoke-virtual {v0, v3, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 6028
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_4b
    if-ge v5, v3, :cond_69

    .line 6030
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 6031
    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v8, "android.permission.BIND_INPUT_METHOD"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_66

    .line 6032
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->addKnownImePackageNameLocked(Ljava/lang/String;)V

    :cond_66
    add-int/lit8 v5, v5, 0x1

    goto :goto_4b

    :cond_69
    if-nez p1, :cond_a7

    .line 6042
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v0

    .line 6043
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v5, v4

    move v6, v5

    :goto_77
    if-ge v5, v3, :cond_94

    .line 6045
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodInfo;

    .line 6046
    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_91

    .line 6048
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v6

    if-nez v6, :cond_90

    move v0, v2

    move v6, v0

    goto :goto_95

    :cond_90
    move v6, v2

    :cond_91
    add-int/lit8 v5, v5, 0x1

    goto :goto_77

    :cond_94
    move v0, v4

    :goto_95
    if-nez v6, :cond_a3

    const-string p1, "All the enabled IMEs are gone. Reset default enabled IMEs."

    .line 6056
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    .line 6059
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    move p1, v2

    goto :goto_a7

    :cond_a3
    if-nez v0, :cond_a7

    move v0, v2

    goto :goto_a8

    :cond_a7
    :goto_a7
    move v0, v4

    :goto_a8
    if-nez p1, :cond_ac

    if-eqz v0, :cond_f8

    .line 6069
    :cond_ac
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    .line 6070
    invoke-static {p1, v3, v0}, Lcom/android/server/inputmethod/InputMethodUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object p1

    .line 6072
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, v4

    :goto_b9
    if-ge v3, v0, :cond_f8

    .line 6074
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 6076
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--- enable ime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6080
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 6081
    invoke-virtual {v6}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v6

    .line 6080
    invoke-static {v6}, Lcom/android/server/inputmethod/InputMethodUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v6

    if-eqz v6, :cond_ee

    .line 6082
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ee

    goto :goto_f5

    .line 6086
    :cond_ee
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    :goto_f5
    add-int/lit8 v3, v3, 0x1

    goto :goto_b9

    .line 6090
    :cond_f8
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object p1

    .line 6091
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11e

    .line 6092
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11b

    const-string p1, "Default IME is uninstalled. Choose new default IME."

    .line 6093
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6094
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result p1

    if-eqz p1, :cond_11e

    .line 6095
    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    goto :goto_11e

    .line 6099
    :cond_11b
    invoke-virtual {p0, p1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    .line 6103
    :cond_11e
    :goto_11e
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateDefaultVoiceImeIfNeededLocked()V

    .line 6109
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->resetCircularListLocked(Landroid/content/Context;)V

    .line 6111
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->sendOnNavButtonFlagsChangedLocked()V

    .line 6114
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6115
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1392

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 6116
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result p0

    .line 6115
    invoke-virtual {v0, v1, p0, v4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 6116
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final buildKeyboardTypeMouseList(Landroid/content/Context;)V
    .registers 4

    const-string/jumbo v0, "sip_keyboard_type_mouse_id_list"

    const-string v1, "1133:45077,1133:45072,1133:45091,1133:45083,1133:45082"

    .line 8043
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getKeyboardTypeMouseIdList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mKeyboardTypeMouseIdList:Ljava/util/List;

    .line 8045
    sget-boolean p1, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG_SEP:Z

    if-eqz p1, :cond_27

    .line 8046
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "buildKeyboardTypeMouseList: mKeyboardTypeMouseIdList="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mKeyboardTypeMouseIdList:Ljava/util/List;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InputMethodManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    return-void
.end method

.method public final calledFromValidUserLocked()Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 2392
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2393
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x3e8

    if-ne v0, v3, :cond_e

    return v2

    .line 2404
    :cond_e
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v0

    if-ne v1, v0, :cond_17

    return v2

    .line 2408
    :cond_17
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->misSecurefolderIdOrDualAppId:Z

    if-eqz v0, :cond_1c

    return v2

    .line 2421
    :cond_1c
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_27

    return v2

    .line 2431
    :cond_27
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "--- IPC called from background users. Ignore. callers="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    .line 2432
    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "InputMethodManagerService"

    .line 2431
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final calledWithValidTokenLocked(Landroid/os/IBinder;)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    if-eqz p1, :cond_3a

    .line 2447
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurTokenLocked()Landroid/os/IBinder;

    move-result-object p0

    if-eq p1, p0, :cond_38

    .line 2448
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " due to an invalid token. uid:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2449
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " token:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InputMethodManagerService"

    .line 2448
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_38
    const/4 p0, 0x1

    return p0

    .line 2445
    :cond_3a
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string/jumbo p1, "token must not be null."

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final canInteractWithImeLocked(ILcom/android/internal/view/IInputMethodClient;Ljava/lang/String;)Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 4801
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    if-eqz p2, :cond_13

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    .line 4802
    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eq v0, v2, :cond_44

    .line 4806
    :cond_13
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_45

    .line 4810
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    invoke-virtual {p0, v2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isImeClientFocused(Landroid/os/IBinder;Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)Z

    move-result p0

    if-nez p0, :cond_44

    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, p0, v0

    .line 4811
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v1

    const/4 p1, 0x2

    aput-object p2, p0, p1

    const-string p1, "Ignoring %s of uid %d : %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "InputMethodManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_44
    return v1

    .line 4808
    :cond_45
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "unknown client "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final canShowInputMethodPickerLocked(Lcom/android/internal/view/IInputMethodClient;)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 4834
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4835
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    const/4 v2, 0x1

    if-eqz v1, :cond_18

    if-eqz p1, :cond_18

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    .line 4836
    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    if-ne v1, p1, :cond_18

    return v2

    .line 4838
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurIntentLocked()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_33

    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 4841
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurIntentLocked()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 4838
    invoke-static {p1, v0, p0}, Lcom/android/server/inputmethod/InputMethodUtils;->checkIfPackageBelongsToUid(Landroid/app/AppOpsManager;ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_33

    return v2

    :cond_33
    const/4 p0, 0x0

    return p0
.end method

.method public changeKeyboardForVZWResetSetting()V
    .registers 3

    .line 7919
    :try_start_0
    sget-object v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    if-eqz v0, :cond_25

    .line 7920
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_25

    :catch_e
    move-exception p0

    .line 7923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeKeyboardForVZWResetSetting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "InputMethodManagerService"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    :goto_25
    return-void
.end method

.method public final checkAndSetIMEAlwaysEnable()V
    .registers 4

    .line 7748
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v1, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    .line 7751
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    .line 7752
    invoke-virtual {p0, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    .line 7754
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isFinishSetupWizard()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    const-string v1, "com.samsung.android.svoiceime/.SamsungVoiceReco"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 7755
    invoke-virtual {p0, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    :cond_24
    return-void
.end method

.method public final checkBlocklistUsbKeyboardConnected()I
    .registers 7

    .line 8005
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputManager:Landroid/hardware/input/InputManager;

    if-nez v0, :cond_11

    .line 8006
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "input"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputManager:Landroid/hardware/input/InputManager;

    .line 8008
    :cond_11
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1a
    if-ge v3, v1, :cond_2f

    aget v4, v0, v3

    .line 8009
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v5, v4}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->isQwertyKeyboard(Landroid/view/InputDevice;)Z

    move-result v4

    if-eqz v4, :cond_2c

    const/4 p0, 0x1

    return p0

    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_2f
    return v2
.end method

.method public final checkDisplayOfStartInputAndUpdateKeyboard(Landroid/view/inputmethod/EditorInfo;)V
    .registers 5

    if-eqz p1, :cond_47

    .line 8421
    iget-object p1, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-eqz p1, :cond_47

    const-string v0, "displayId"

    const/4 v1, -0x2

    .line 8423
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 8424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkDisplayOfStartInputAndUpdateKeyboard: displayId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mFocusedDisplayId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedDisplayId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "InputMethodManagerService"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8425
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedDisplayId:I

    if-eq v0, p1, :cond_47

    if-eq p1, v1, :cond_47

    .line 8426
    iput p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedDisplayId:I

    .line 8427
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isDeskTopMode()Z

    move-result p1

    if-eqz p1, :cond_47

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldShowImeKeyboardDefaultDisplayOnly()Z

    move-result p1

    if-nez p1, :cond_47

    .line 8428
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDeXDualViewChangeObserver:Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;->onChange(Z)V

    :cond_47
    return-void
.end method

.method public final checkIMEMarkerLocation(I)I
    .registers 8

    .line 8586
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "navigation_bar_button_to_hide_keyboard"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_12

    goto :goto_13

    :cond_12
    move v2, v1

    .line 8588
    :goto_13
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->isShowKeyboardButton()Z

    move-result v0

    .line 8589
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v3, v1}, Landroid/view/IWindowManager;->hasNavigationBar(I)Z

    move-result v1

    .line 8590
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    move-result v3

    .line 8591
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-nez v3, :cond_3e

    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_3e

    and-int/2addr p1, v5

    if-nez p1, :cond_3e

    .line 8594
    sget p0, Lcom/android/server/inputmethod/InputMethodManagerService;->IME_MARKER_NONE:I

    return p0

    :cond_3e
    if-eqz v1, :cond_65

    if-eqz v0, :cond_65

    .line 8596
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hasNavigationBarGesture()Z

    move-result p1

    if-eqz p1, :cond_62

    if-ne v4, v5, :cond_5a

    .line 8597
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 8598
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result p0

    if-nez p0, :cond_5a

    .line 8599
    sget p0, Lcom/android/server/inputmethod/InputMethodManagerService;->IME_MARKER_NOTI_PANEL:I

    return p0

    :cond_5a
    if-eqz v2, :cond_5f

    .line 8601
    sget p0, Lcom/android/server/inputmethod/InputMethodManagerService;->IME_MARKER_NAVI_ICON:I

    goto :goto_61

    :cond_5f
    sget p0, Lcom/android/server/inputmethod/InputMethodManagerService;->IME_MARKER_NOTI_PANEL:I

    :goto_61
    return p0

    .line 8603
    :cond_62
    sget p0, Lcom/android/server/inputmethod/InputMethodManagerService;->IME_MARKER_NAVI_ICON:I

    return p0

    .line 8606
    :cond_65
    sget p0, Lcom/android/server/inputmethod/InputMethodManagerService;->IME_MARKER_NOTI_PANEL:I
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_67} :catch_68

    return p0

    :catch_68
    const-string p0, "InputMethodManagerService"

    const-string/jumbo p1, "has navbar exception"

    .line 8608
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8609
    sget p0, Lcom/android/server/inputmethod/InputMethodManagerService;->IME_MARKER_NOTI_PANEL:I

    return p0
.end method

.method public final chooseNewDefaultIMELocked()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 5923
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 5924
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v0

    .line 5923
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 5929
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public clearClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 3529
    :goto_2
    iget-object v2, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_18

    .line 3530
    iget-object v2, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;

    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->finishSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3532
    :cond_18
    iget-object p0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 3533
    iput-boolean v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->mSessionRequestedForAccessibility:Z

    return-void
.end method

.method public clearClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 3538
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;

    if-eqz v0, :cond_12

    .line 3540
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->finishSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;)V

    .line 3541
    iget-object p0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    :cond_12
    return-void
.end method

.method public clearClientSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 3522
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->finishSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;)V

    const/4 p0, 0x0

    .line 3523
    iput-object p0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    const/4 p0, 0x0

    .line 3524
    iput-boolean p0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->sessionRequested:Z

    return-void
.end method

.method public clearClientSessionsLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 3580
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_51

    .line 3581
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    move v2, v1

    :goto_e
    if-ge v2, v0, :cond_29

    .line 3583
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    invoke-virtual {p0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V

    .line 3584
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    invoke-virtual {p0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 3587
    :cond_29
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->finishSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;)V

    move v0, v1

    .line 3588
    :goto_2f
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_45

    .line 3589
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;

    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->finishSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_45
    const/4 v0, 0x0

    .line 3591
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 3592
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, -0x1

    .line 3593
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleNotifyImeUidToAudioService(I)V

    .line 3595
    :cond_51
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideStatusBarIconLocked()V

    .line 3596
    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInFullscreenMode:Z

    return-void
.end method

.method public clearInputShowRequestLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 2964
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputShown:Z

    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequested:Z

    const/4 v0, 0x0

    .line 2965
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputShown:Z

    return-void
.end method

.method public final clearPendingInlineSuggestionsRequestLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2601
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPendingInlineSuggestionsRequest:Lcom/android/server/inputmethod/InputMethodManagerService$CreateInlineSuggestionsRequest;

    return-void
.end method

.method public final createAccessibilityInputMethodSessions(Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;",
            ">;)",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;",
            ">;"
        }
    .end annotation

    .line 3125
    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    if-eqz p1, :cond_20

    const/4 v0, 0x0

    .line 3128
    :goto_8
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 3129
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 3130
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;->mSession:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    .line 3129
    invoke-virtual {p0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_20
    return-object p0
.end method

.method public final createInputContentUriToken(Landroid/os/IBinder;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/inputmethod/IInputContentUriToken;
    .registers 11

    if-eqz p1, :cond_b3

    if-eqz p3, :cond_aa

    if-eqz p2, :cond_a2

    .line 6575
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    .line 6576
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 6580
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 6581
    :try_start_15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 6582
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_22

    .line 6583
    monitor-exit v0

    return-object v2

    .line 6585
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurTokenLocked()Landroid/os/IBinder;

    move-result-object v1

    if-eq v1, p1, :cond_4c

    const-string p2, "InputMethodManagerService"

    .line 6586
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring createInputContentUriToken mCurToken="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurTokenLocked()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " token="

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6588
    monitor-exit v0

    return-object v2

    .line 6593
    :cond_4c
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object p1, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7a

    const-string p1, "InputMethodManagerService"

    .line 6594
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring createInputContentUriToken mCurAttribute.packageName="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object p0, p0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " packageName="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6596
    monitor-exit v0

    return-object v2

    .line 6599
    :cond_7a
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 6601
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 6603
    invoke-static {p2, p1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v5

    .line 6605
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 6612
    new-instance p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;

    move-object v1, p0

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/inputmethod/InputContentUriTokenHandler;-><init>(Landroid/net/Uri;ILjava/lang/String;II)V

    monitor-exit v0

    return-object p0

    :catchall_97
    move-exception p0

    .line 6614
    monitor-exit v0
    :try_end_99
    .catchall {:try_start_15 .. :try_end_99} :catchall_97

    throw p0

    .line 6577
    :cond_9a
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "contentUri must have content scheme"

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6573
    :cond_a2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "contentUri"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6570
    :cond_aa
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "packageName"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6567
    :cond_b3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "token"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dismissAndShowAgainInputMethodPicker()V
    .registers 3

    .line 8616
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v0, "InputMethodManagerService"

    const-string/jumbo v1, "showAgainInputMehtodPicker"

    .line 8619
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8620
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x3ff

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 6689
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v1, "InputMethodManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 6691
    :cond_b
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/utils/PriorityDump;->dump(Lcom/android/server/utils/PriorityDump$PriorityDumper;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final dumpAsStringNoCheck(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 13

    .line 6701
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 6703
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    :try_start_8
    const-string v2, "Current SEP Input Method Manager Service state:"

    .line 6705
    invoke-interface {v0, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6706
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mImeWindowVis="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    const-string v2, "Current Input Method Manager state:"

    .line 6708
    invoke-interface {v0, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6709
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6710
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Input Methods: mMethodMapUpdateCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMapUpdateCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    move v4, v3

    :goto_46
    if-ge v4, v2, :cond_71

    .line 6712
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 6713
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  InputMethod #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    const-string v6, "    "

    .line 6714
    invoke-virtual {v5, v0, v6}, Landroid/view/inputmethod/InputMethodInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_46

    :cond_71
    const-string v2, "  Clients:"

    .line 6716
    invoke-interface {v0, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6717
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    :goto_7c
    if-ge v3, v2, :cond_111

    .line 6719
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 6720
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Client "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6721
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    client="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6722
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    inputContext="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->inputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6723
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    sessionRequested="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v4, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->sessionRequested:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6724
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    sessionRequestedForAccessibility="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v4, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->mSessionRequestedForAccessibility:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6726
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    curSession="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_7c

    .line 6728
    :cond_111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mCurMethodId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6729
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 6730
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mCurClient="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " mCurSeq="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSequenceNumberLocked()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6731
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mCurPerceptible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurPerceptible:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6732
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mCurFocusedWindow="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " softInputMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowSoftInputMode:I

    .line 6734
    invoke-static {v4}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " client="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6732
    invoke-interface {v0, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6736
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 6737
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCurId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurIdLocked()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " mHaveConnection="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hasConnectionLocked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mBoundToMethod="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToMethod:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mVisibleBound="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 6739
    invoke-virtual {v5}, Lcom/android/server/inputmethod/InputMethodBindingController;->isVisibleBound()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6737
    invoke-interface {v0, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6740
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCurToken="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurTokenLocked()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6741
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCurTokenDisplayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6742
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCurHostInputToken="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurHostInputToken:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6743
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCurIntent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurIntentLocked()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6744
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v4

    .line 6745
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mCurMethod="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6746
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mEnabledSession="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6747
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mShowRequested="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequested:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mShowExplicitlyRequested="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowExplicitlyRequested:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mShowForced="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowForced:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mInputShown="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputShown:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6751
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mInFullscreenMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInFullscreenMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6752
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mSystemReady="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mInteractive="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6753
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mSettingsObserver="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6754
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mImeHiddenByDisplayPolicy="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeHiddenByDisplayPolicy:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    const-string v5, "  mSwitchingController:"

    .line 6755
    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6756
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    invoke-virtual {v5, v0}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->dump(Landroid/util/Printer;)V

    const-string v5, "  mSettings:"

    .line 6757
    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6758
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    const-string v6, "    "

    invoke-virtual {v5, v0, v6}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->dumpLocked(Landroid/util/Printer;Ljava/lang/String;)V

    const-string v5, "  mStartInputHistory:"

    .line 6760
    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6761
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStartInputHistory:Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;

    const-string v6, "   "

    invoke-virtual {v5, p2, v6}, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string v5, "  mSoftInputShowHideHistory:"

    .line 6763
    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6764
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSoftInputShowHideHistory:Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;

    const-string v5, "   "

    invoke-virtual {p0, p2, v5}, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string p0, "  mSoftInputShowHideHistory End"

    .line 6765
    invoke-interface {v0, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6766
    monitor-exit v1
    :try_end_325
    .catchall {:try_start_8 .. :try_end_325} :catchall_3bf

    if-eqz p4, :cond_328

    return-void

    :cond_328
    const-string p0, " "

    .line 6773
    invoke-interface {v0, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    if-eqz v2, :cond_352

    .line 6775
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 6777
    :try_start_332
    iget-object p0, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {p0}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0, p1, p3}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_33b
    .catch Ljava/io/IOException; {:try_start_332 .. :try_end_33b} :catch_33c
    .catch Landroid/os/RemoteException; {:try_start_332 .. :try_end_33b} :catch_33c

    goto :goto_357

    :catch_33c
    move-exception p0

    .line 6779
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to dump input method client: "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_357

    :cond_352
    const-string p0, "No input method client."

    .line 6782
    invoke-interface {v0, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :goto_357
    if-eqz v3, :cond_391

    if-eq v2, v3, :cond_391

    const-string p0, " "

    .line 6786
    invoke-interface {v0, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    const-string p0, "Warning: Current input method client doesn\'t match the last focused. window."

    .line 6787
    invoke-interface {v0, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    const-string p0, "Dumping input method client in the last focused window just in case."

    .line 6789
    invoke-interface {v0, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    const-string p0, " "

    .line 6790
    invoke-interface {v0, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6791
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 6793
    :try_start_372
    iget-object p0, v3, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {p0}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0, p1, p3}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_37b
    .catch Ljava/io/IOException; {:try_start_372 .. :try_end_37b} :catch_37c
    .catch Landroid/os/RemoteException; {:try_start_372 .. :try_end_37b} :catch_37c

    goto :goto_391

    :catch_37c
    move-exception p0

    .line 6795
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to dump input method client in focused window: "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_391
    :goto_391
    const-string p0, " "

    .line 6799
    invoke-interface {v0, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    if-eqz v4, :cond_3b9

    .line 6801
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 6803
    :try_start_39b
    invoke-virtual {v4}, Lcom/android/server/inputmethod/IInputMethodInvoker;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0, p1, p3}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_3a2
    .catch Ljava/io/IOException; {:try_start_39b .. :try_end_3a2} :catch_3a3
    .catch Landroid/os/RemoteException; {:try_start_39b .. :try_end_3a2} :catch_3a3

    goto :goto_3be

    :catch_3a3
    move-exception p0

    .line 6805
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to dump input method service: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_3be

    :cond_3b9
    const-string p0, "No input method service."

    .line 6808
    invoke-interface {v0, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :goto_3be
    return-void

    :catchall_3bf
    move-exception p0

    .line 6766
    :try_start_3c0
    monitor-exit v1
    :try_end_3c1
    .catchall {:try_start_3c0 .. :try_end_3c1} :catchall_3bf

    throw p0
.end method

.method public final dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9

    .line 5390
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5391
    :try_start_3
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v1, 0x10900000001L

    .line 5392
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v1, 0x10500000002L

    .line 5393
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSequenceNumberLocked()I

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10900000003L

    .line 5394
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v1, 0x10900000004L

    .line 5395
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    .line 5396
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerInternal;->getWindowName(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v3

    .line 5395
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v1, 0x10900000005L

    .line 5397
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastImeTargetWindow:Landroid/os/IBinder;

    .line 5398
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerInternal;->getWindowName(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v3

    .line 5397
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v1, 0x10900000006L

    .line 5399
    iget v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowSoftInputMode:I

    .line 5400
    invoke-static {v3}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v3

    .line 5399
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 5401
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_67

    const-wide v2, 0x10b00000007L

    .line 5402
    invoke-virtual {v1, p1, v2, v3}, Landroid/view/inputmethod/EditorInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_67
    const-wide v1, 0x10900000008L

    .line 5404
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurIdLocked()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v1, 0x10800000009L

    .line 5405
    iget-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequested:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x1080000000aL

    .line 5406
    iget-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowExplicitlyRequested:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x1080000000bL

    .line 5407
    iget-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowForced:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x1080000000cL

    .line 5408
    iget-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputShown:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x1080000000dL

    .line 5409
    iget-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInFullscreenMode:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x1090000000eL

    .line 5410
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurTokenLocked()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v1, 0x1050000000fL

    .line 5411
    iget v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10800000010L

    .line 5412
    iget-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10500000011L

    .line 5413
    iget v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastSwitchUserId:I

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10800000012L

    .line 5414
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hasConnectionLocked()Z

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10800000013L

    .line 5415
    iget-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToMethod:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10800000014L

    .line 5416
    iget-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10500000015L

    .line 5417
    iget v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10500000016L

    .line 5418
    iget v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10800000017L

    .line 5419
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodMenuController;->getShowImeWithHardKeyboard()Z

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10800000018L

    .line 5420
    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessibilityRequestingNoSoftKeyboard:Z

    invoke-virtual {p1, v1, v2, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5422
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 5423
    monitor-exit v0

    return-void

    :catchall_124
    move-exception p0

    monitor-exit v0
    :try_end_126
    .catchall {:try_start_3 .. :try_end_126} :catchall_124

    throw p0
.end method

.method public final executeOrSendMessage(Lcom/android/internal/view/IInputMethodClient;Landroid/os/Message;)V
    .registers 3

    if-nez p1, :cond_1b

    .line 2903
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "executeOrSendMessage : return because target is null, msg : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InputMethodManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2908
    :cond_1b
    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    instance-of p1, p1, Landroid/os/Binder;

    if-eqz p1, :cond_27

    .line 2915
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2d

    .line 2917
    :cond_27
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleMessage(Landroid/os/Message;)Z

    .line 2918
    invoke-virtual {p2}, Landroid/os/Message;->recycle()V

    :goto_2d
    return-void
.end method

.method public final finishSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    if-eqz p1, :cond_15

    .line 3567
    iget-object p0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;->mSession:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    if-eqz p0, :cond_15

    .line 3569
    :try_start_6
    invoke-interface {p0}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;->finishSession()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception p0

    const-string v0, "InputMethodManagerService"

    const-string v1, "Session failed to close due to remote exception"

    .line 3571
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    const/4 p0, 0x0

    .line 3573
    iput-object p0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;->mSession:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    :cond_15
    return-void
.end method

.method public final finishSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    if-eqz p1, :cond_24

    .line 3548
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 3550
    :try_start_7
    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodSession;->finishSession()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_19

    :catch_b
    move-exception v0

    const-string v2, "InputMethodManagerService"

    const-string v3, "Session failed to close due to remote exception"

    .line 3552
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 3553
    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    invoke-virtual {p0, v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 3555
    :goto_19
    iput-object v1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    .line 3557
    :cond_1b
    iget-object p0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    if-eqz p0, :cond_24

    .line 3558
    invoke-virtual {p0}, Landroid/view/InputChannel;->dispose()V

    .line 3559
    iput-object v1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    :cond_24
    return-void
.end method

.method public final getAppShowFlagsLocked()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 2983
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowForced:Z

    if-eqz v0, :cond_6

    const/4 p0, 0x2

    goto :goto_d

    .line 2985
    :cond_6
    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowExplicitlyRequested:Z

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public getAwareLockedInputMethodList(II)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 2485
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodListInternal(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getCurIdLocked()Ljava/lang/String;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 883
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getCurIntentLocked()Landroid/content/Intent;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 936
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public final getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 986
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p0

    return-object p0
.end method

.method public final getCurMethodUidLocked()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 994
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethodUid()I

    move-result p0

    return p0
.end method

.method public getCurTokenDisplayId()I
    .registers 3

    .line 8180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurTokenDisplayId : mCurTokenDisplayId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8181
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    return p0
.end method

.method public getCurTokenDisplayIdLocked()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 953
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    return p0
.end method

.method public final getCurTokenLocked()Landroid/os/IBinder;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 945
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurToken()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentFocusDisplayID()I
    .registers 3

    .line 8171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentFocusDisplayID : mFocusedDisplayId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8172
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedDisplayId:I

    return p0
.end method

.method public final getCurrentInputMethodPackageName(Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;
    .registers 3

    if-nez p2, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 8077
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "default_input_method"

    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .registers 3

    .line 6281
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 6283
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v1

    if-nez v1, :cond_c

    const/4 p0, 0x0

    .line 6284
    monitor-exit v0

    return-object p0

    .line 6286
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    .line 6287
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 6292
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 6296
    :cond_8
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->isSubtypeSelected()Z

    move-result v2

    .line 6297
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v3, :cond_7c

    .line 6298
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v4

    if-nez v4, :cond_1f

    goto :goto_7c

    :cond_1f
    if-eqz v2, :cond_2f

    .line 6301
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-eqz v2, :cond_2f

    .line 6302
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v2

    invoke-static {v3, v2}, Lcom/android/server/inputmethod/InputMethodUtils;->isValidSubtypeId(Landroid/view/inputmethod/InputMethodInfo;I)Z

    move-result v2

    if-nez v2, :cond_79

    .line 6303
    :cond_2f
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2, v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_6d

    .line 6308
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    .line 6309
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v0

    .line 6312
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v4, :cond_51

    const/4 v1, 0x0

    .line 6313
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodSubtype;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_79

    .line 6314
    :cond_51
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_79

    .line 6315
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const-string/jumbo v3, "keyboard"

    invoke-static {v2, v0, v3, v1, v4}, Lcom/android/server/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v2, :cond_79

    .line 6319
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-static {v2, v0, v1, v1, v4}, Lcom/android/server/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_79

    .line 6325
    :cond_6d
    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodSubtype;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 6328
    :cond_79
    :goto_79
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    return-object p0

    :cond_7c
    :goto_7c
    return-object v1
.end method

.method public getDexSettingsValue(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 8521
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 8524
    :try_start_4
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 8525
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 8524
    invoke-static {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getDexSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p2, "keyboard_dex"

    .line 8526
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    const-string p1, "1"

    .line 8527
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_26

    .line 8529
    :cond_1e
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_26
    const-string p1, "InputMethodManagerService"

    .line 8531
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDexSettingsValue: isDexDualModeEnable="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catchall {:try_start_4 .. :try_end_3c} :catchall_40

    .line 8534
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_40
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8535
    throw p0
.end method

.method public final getDisplayIdOfInputMethodWindowToBeAdded(I)I
    .registers 3

    .line 8258
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isDeskTopMode()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldShowImeKeyboardDefaultDisplayOnly()Z

    move-result p0

    if-eqz p0, :cond_d

    const/4 p1, 0x0

    .line 8260
    :cond_d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getDisplayIdOfInputMethodWindowToBeAdded: displayId="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "InputMethodManagerService"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public final getDisplayIdOfInputMethodWindowToBeAddedForDEX()I
    .registers 3

    .line 8270
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isDeskTopMode()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldShowImeKeyboardDefaultDisplayOnly()Z

    move-result v0

    if-nez v0, :cond_27

    .line 8271
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentFocusDisplayID()I

    move-result p0

    .line 8272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDisplayIdOfInputMethodWindowToBeAddedForDEX: displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    :cond_27
    const/4 p0, 0x0

    :goto_28
    return p0
.end method

.method public getDisplayIdToShowImeLocked()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 596
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDisplayIdToShowIme:I

    return p0
.end method

.method public getEnabledInputMethodList(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 2490
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p1, :cond_e

    .line 2491
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2494
    :cond_e
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 2495
    :try_start_11
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 2496
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    .line 2495
    invoke-static {p1, v2, v1}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object p1

    .line 2497
    array-length v1, p1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_25

    .line 2498
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 2500
    :cond_25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_3e

    const/4 v3, 0x0

    .line 2504
    :try_start_2a
    aget p1, p1, v3

    .line 2505
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodListLocked(I)Ljava/util/List;

    move-result-object p0

    .line 2504
    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodUtils;->getAuxilaryRemoveList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_39

    .line 2508
    :try_start_34
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    return-object p0

    :catchall_39
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2509
    throw p0

    :catchall_3e
    move-exception p0

    .line 2510
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_34 .. :try_end_40} :catchall_3e

    throw p0
.end method

.method public final getEnabledInputMethodListLocked(I)Ljava/util/List;
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 2536
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v0

    if-ne p1, v0, :cond_f

    .line 2537
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    .line 2539
    :cond_f
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryMethodMapForUser(I)Landroid/util/ArrayMap;

    move-result-object v3

    .line 2540
    new-instance v6, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 2541
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x1

    move-object v0, v6

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Landroid/util/ArrayMap;IZ)V

    .line 2542
    invoke-virtual {v6}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getEnabledInputMethodSubtypeList(Ljava/lang/String;Z)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .line 2715
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2716
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    .line 2717
    :try_start_7
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 2718
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    const/4 v3, 0x0

    .line 2717
    invoke-static {v0, v2, v3}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object v0

    .line 2719
    array-length v2, v0

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1c

    .line 2720
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    monitor-exit v1

    return-object p0

    .line 2722
    :cond_1c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_31

    const/4 v4, 0x0

    .line 2724
    :try_start_21
    aget v0, v0, v4

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodSubtypeListLocked(Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p0
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_2c

    .line 2727
    :try_start_27
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v1

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2728
    throw p0

    :catchall_31
    move-exception p0

    .line 2729
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_27 .. :try_end_33} :catchall_31

    throw p0
.end method

.method public final getEnabledInputMethodSubtypeListLocked(Ljava/lang/String;ZI)Ljava/util/List;
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .line 2735
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v0

    if-ne p3, v0, :cond_31

    .line 2737
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    move-result-object p3

    if-nez p1, :cond_19

    if-eqz p3, :cond_19

    .line 2739
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodInfo;

    goto :goto_21

    .line 2741
    :cond_19
    iget-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {p3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodInfo;

    :goto_21
    if-nez p1, :cond_28

    .line 2744
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 2746
    :cond_28
    iget-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 2749
    :cond_31
    invoke-virtual {p0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryMethodMapForUser(I)Landroid/util/ArrayMap;

    move-result-object v3

    .line 2750
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodInfo;

    if-nez p1, :cond_42

    .line 2752
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 2754
    :cond_42
    new-instance v6, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 2755
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x1

    move-object v0, v6

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Landroid/util/ArrayMap;IZ)V

    .line 2756
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getHwKeyboardStatusChangeListener()Lcom/android/server/inputmethod/HWKeyboardStatusChangeListener;
    .registers 2

    .line 7905
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    return-object v0
.end method

.method public final getImeShowFlagsLocked()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 2971
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowForced:Z

    if-eqz v0, :cond_6

    const/4 p0, 0x3

    goto :goto_d

    .line 2974
    :cond_6
    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowExplicitlyRequested:Z

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public getInputMethodList(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2479
    invoke-virtual {p0, p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodListInternal(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getInputMethodListInternal(II)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 2457
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p1, :cond_e

    .line 2458
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2461
    :cond_e
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 2462
    :try_start_11
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 2463
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    .line 2462
    invoke-static {p1, v2, v1}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object p1

    .line 2464
    array-length v1, p1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_25

    .line 2465
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 2468
    :cond_25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_3a

    const/4 v3, 0x0

    .line 2470
    :try_start_2a
    aget p1, p1, v3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodListLocked(II)Ljava/util/List;

    move-result-object p0
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_35

    .line 2472
    :try_start_30
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    return-object p0

    :catchall_35
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2473
    throw p0

    :catchall_3a
    move-exception p0

    .line 2474
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_30 .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method public final getInputMethodListLocked(II)Ljava/util/List;
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 2517
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v0

    if-ne p1, v0, :cond_12

    if-nez p2, :cond_12

    .line 2520
    new-instance p1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_2d

    .line 2522
    :cond_12
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 2523
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2524
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 2526
    invoke-static {v2, p1}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->load(Landroid/util/ArrayMap;I)V

    .line 2527
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    move v1, p1

    move-object v4, v6

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryInputMethodServicesInternal(Landroid/content/Context;ILandroid/util/ArrayMap;Landroid/util/ArrayMap;Ljava/util/ArrayList;I)V

    move-object p1, v6

    .line 2531
    :goto_2d
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodUtils;->getAuxilaryRemoveList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getInputMethodNavButtonFlagsLocked()I
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 3646
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeDrawsImeNavBarResLazyInitFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_9

    const-string v1, "Waiting for the lazy init of mImeDrawsImeNavBarRes"

    .line 3648
    invoke-static {v0, v1}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 3651
    :cond_9
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeDrawsImeNavBarRes:Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 3652
    invoke-virtual {v0}, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;->get()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    move v0, v1

    :goto_17
    const/4 v2, 0x3

    .line 3653
    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldShowImeSwitcherLocked(I)Z

    move-result p0

    if-eqz p0, :cond_1f

    const/4 v1, 0x2

    :cond_1f
    or-int p0, v0, v1

    return p0
.end method

.method public getInputMethodWindowVisibleHeight(Lcom/android/internal/view/IInputMethodClient;)I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5159
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5160
    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;ILcom/android/internal/view/IInputMethodClient;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final getKeyboardTypeMouseIdList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 8051
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, ","

    .line 8052
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final getLastBindTimeLocked()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 1003
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getLastBindTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .registers 5

    .line 5070
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5071
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 5072
    monitor-exit v0

    return-object v2

    .line 5074
    :cond_c
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getLastInputMethodAndSubtypeLocked()Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_56

    .line 5076
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_56

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    .line 5077
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_29

    goto :goto_56

    .line 5078
    :cond_29
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodInfo;

    if-nez p0, :cond_37

    .line 5079
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_58

    return-object v2

    .line 5081
    :cond_37
    :try_start_37
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 5083
    invoke-static {p0, v1}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v1

    if-ltz v1, :cond_52

    .line 5084
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v3

    if-lt v1, v3, :cond_4c

    goto :goto_52

    .line 5087
    :cond_4c
    invoke-virtual {p0, v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p0
    :try_end_50
    .catch Ljava/lang/NumberFormatException; {:try_start_37 .. :try_end_50} :catch_54
    .catchall {:try_start_37 .. :try_end_50} :catchall_58

    :try_start_50
    monitor-exit v0

    return-object p0

    .line 5085
    :cond_52
    :goto_52
    monitor-exit v0

    return-object v2

    .line 5089
    :catch_54
    monitor-exit v0

    return-object v2

    .line 5077
    :cond_56
    :goto_56
    monitor-exit v0

    return-object v2

    :catchall_58
    move-exception p0

    .line 5091
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_50 .. :try_end_5a} :catchall_58

    throw p0
.end method

.method public final getLastSwitchUserId(Landroid/os/ShellCommand;)I
    .registers 3

    .line 6995
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 6996
    :try_start_3
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastSwitchUserId:I

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    const/4 p0, 0x0

    .line 6997
    monitor-exit v0

    return p0

    :catchall_f
    move-exception p0

    .line 6998
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public getSelectedMethodIdLocked()Ljava/lang/String;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 776
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSequenceNumberLocked()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 790
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSequenceNumber()I

    move-result p0

    return p0
.end method

.method public getShowImeWithHardKeyboardValue()Z
    .registers 4

    .line 7816
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isDexSetting()Z

    move-result v0

    const-string v1, "InputMethodManagerService"

    if-eqz v0, :cond_27

    const-string/jumbo v0, "keyboard_dex"

    const-string v2, "0"

    .line 7817
    invoke-virtual {p0, v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getDexSettingsValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    .line 7818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getShowImeWithHardKeyboardValue for DEX: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 7821
    :cond_27
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    move-result p0

    .line 7822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getShowImeWithHardKeyboardValue for Phone: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 8056
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 8057
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_12

    :cond_11
    return-object p0

    .line 8058
    :cond_12
    :goto_12
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p2, p3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-object p3
.end method

.method public final getTargetInputMethodSubtypeId(Ljava/lang/String;)I
    .registers 4

    .line 8730
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v0, :cond_38

    .line 8732
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 8733
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getLastSubtypeForInputMethodLocked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_38

    .line 8737
    :try_start_18
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 8736
    invoke-static {v0, p1}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result p0
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_20} :catch_21

    goto :goto_39

    :catch_21
    move-exception p1

    .line 8739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HashCode for subtype looks broken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "InputMethodManagerService"

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_38
    const/4 p0, -0x1

    :goto_39
    return p0
.end method

.method public final getVirtualDisplayToScreenMatrixLocked(II)Landroid/graphics/Matrix;
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    const/4 v0, 0x0

    if-ne p1, p2, :cond_4

    return-object v0

    :cond_4
    move-object v1, v0

    .line 3070
    :goto_5
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVirtualDisplayIdToParentMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;

    if-nez p1, :cond_10

    return-object v0

    :cond_10
    if-nez v1, :cond_1c

    .line 3075
    new-instance v1, Landroid/graphics/Matrix;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;->-$$Nest$fgetmMatrix(Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    goto :goto_23

    .line 3077
    :cond_1c
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;->-$$Nest$fgetmMatrix(Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 3079
    :goto_23
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;->-$$Nest$fgetmParentClient(Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v2

    iget v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    if-ne v2, p2, :cond_2c

    return-object v1

    .line 3082
    :cond_2c
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;->-$$Nest$fgetmParentClient(Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object p1

    iget p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    goto :goto_5
.end method

.method public getWACOMPen()Z
    .registers 1

    .line 7530
    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mbWACOMPen:Z

    return p0
.end method

.method public final handleDictation(Z)Z
    .registers 5

    .line 8748
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "keyCode"

    const/16 v2, 0x44f

    .line 8749
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p1, :cond_1d

    const/4 p1, 0x1

    const-string/jumbo v1, "needRestoreIME"

    .line 8751
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8752
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    const-string v1, "editorInfo"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8754
    :cond_1d
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/android/server/inputmethod/InputMethodManagerService;->DICTATION:Landroid/net/Uri;

    const/4 v1, 0x0

    const-string/jumbo v2, "handle_dictation_for_hw_voice_key"

    invoke-virtual {p0, p1, v2, v1, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const/4 p1, 0x0

    const-string v0, "dictation_executed"

    .line 8757
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 10

    .line 5632
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_326

    return v2

    .line 5819
    :sswitch_a
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    if-nez v0, :cond_18

    .line 5820
    const-class v0, Landroid/media/AudioManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManagerInternal;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    .line 5822
    :cond_18
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    if-eqz p0, :cond_21

    .line 5823
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Landroid/media/AudioManagerInternal;->setInputMethodServiceUid(I)V

    :cond_21
    return v3

    .line 5810
    :sswitch_22
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 5811
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 5812
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputMethodListListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;I)V

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    return v3

    .line 5805
    :sswitch_33
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 5806
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->onUnlockUser(I)V

    return v3

    .line 5799
    :sswitch_39
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v3, :cond_40

    move v2, v3

    :cond_40
    invoke-virtual {v1, v2}, Lcom/android/server/inputmethod/InputMethodMenuController;->handleHardKeyboardStatusChange(Z)V

    .line 5800
    monitor-enter v0

    .line 5801
    :try_start_44
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->sendOnNavButtonFlagsChangedLocked()V

    .line 5802
    monitor-exit v0

    return v3

    :catchall_49
    move-exception p0

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_44 .. :try_end_4b} :catchall_49

    throw p0

    .line 5785
    :sswitch_4c
    iget p0, p1, Landroid/os/Message;->arg1:I

    if-eqz p0, :cond_51

    move v2, v3

    .line 5786
    :cond_51
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 5788
    :try_start_55
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {p1, v2}, Lcom/android/internal/view/IInputMethodClient;->reportFullscreenMode(Z)V
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_5a} :catch_5b

    goto :goto_85

    :catch_5b
    const-string p1, "InputMethodManagerService"

    .line 5790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got RemoteException sending reportFullscreen("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") notification to pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_85
    return v3

    .line 5782
    :sswitch_86
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_8b

    move v2, v3

    :cond_8b
    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleSetInteractive(Z)V

    return v3

    .line 5768
    :sswitch_8f
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/os/SomeArgs;

    .line 5769
    iget-object p1, p0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 5771
    :try_start_97
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget v1, p0, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-eqz v1, :cond_9f

    move v1, v3

    goto :goto_a0

    :cond_9f
    move v1, v2

    :goto_a0
    iget v4, p0, Lcom/android/internal/os/SomeArgs;->argi2:I

    if-eqz v4, :cond_a6

    move v4, v3

    goto :goto_a7

    :cond_a6
    move v4, v2

    :goto_a7
    iget v5, p0, Lcom/android/internal/os/SomeArgs;->argi3:I

    if-eqz v5, :cond_ac

    move v2, v3

    :cond_ac
    invoke-interface {v0, v1, v4, v2}, Lcom/android/internal/view/IInputMethodClient;->setActive(ZZZ)V
    :try_end_af
    .catch Landroid/os/RemoteException; {:try_start_97 .. :try_end_af} :catch_b0

    goto :goto_d2

    :catch_b0
    const-string v0, "InputMethodManagerService"

    .line 5775
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got RemoteException sending setActive(false) notification to pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5778
    :goto_d2
    invoke-virtual {p0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return v3

    .line 5749
    :sswitch_d6
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/os/SomeArgs;

    .line 5750
    iget-object p1, p0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/view/IInputMethodClient;

    .line 5751
    iget-object v0, p0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/inputmethod/InputBindResult;

    .line 5752
    iget-object v1, p0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 5754
    :try_start_ea
    invoke-interface {p1, v0, v1}, Lcom/android/internal/view/IInputMethodClient;->onBindAccessibilityService(Lcom/android/internal/inputmethod/InputBindResult;I)V
    :try_end_ed
    .catch Landroid/os/RemoteException; {:try_start_ea .. :try_end_ed} :catch_ff
    .catchall {:try_start_ea .. :try_end_ed} :catchall_fd

    .line 5760
    iget-object v1, v0, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v1, :cond_122

    invoke-static {p1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result p1

    if-eqz p1, :cond_122

    .line 5761
    :goto_f7
    iget-object p1, v0, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {p1}, Landroid/view/InputChannel;->dispose()V

    goto :goto_122

    :catchall_fd
    move-exception p0

    goto :goto_126

    :catch_ff
    :try_start_ff
    const-string v1, "InputMethodManagerService"

    .line 5756
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Client died receiving input method "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_117
    .catchall {:try_start_ff .. :try_end_117} :catchall_fd

    .line 5760
    iget-object v1, v0, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v1, :cond_122

    invoke-static {p1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result p1

    if-eqz p1, :cond_122

    goto :goto_f7

    .line 5764
    :cond_122
    :goto_122
    invoke-virtual {p0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return v3

    .line 5760
    :goto_126
    iget-object v1, v0, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v1, :cond_135

    invoke-static {p1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result p1

    if-eqz p1, :cond_135

    .line 5761
    iget-object p1, v0, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {p1}, Landroid/view/InputChannel;->dispose()V

    .line 5763
    :cond_135
    throw p0

    .line 5731
    :sswitch_136
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/os/SomeArgs;

    .line 5732
    iget-object p1, p0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/view/IInputMethodClient;

    .line 5733
    iget-object v0, p0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/inputmethod/InputBindResult;

    .line 5735
    :try_start_142
    invoke-interface {p1, v0}, Lcom/android/internal/view/IInputMethodClient;->onBindMethod(Lcom/android/internal/inputmethod/InputBindResult;)V
    :try_end_145
    .catch Landroid/os/RemoteException; {:try_start_142 .. :try_end_145} :catch_157
    .catchall {:try_start_142 .. :try_end_145} :catchall_155

    .line 5741
    iget-object v1, v0, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v1, :cond_17a

    invoke-static {p1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result p1

    if-eqz p1, :cond_17a

    .line 5742
    :goto_14f
    iget-object p1, v0, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {p1}, Landroid/view/InputChannel;->dispose()V

    goto :goto_17a

    :catchall_155
    move-exception p0

    goto :goto_17e

    :catch_157
    :try_start_157
    const-string v1, "InputMethodManagerService"

    .line 5737
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Client died receiving input method "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16f
    .catchall {:try_start_157 .. :try_end_16f} :catchall_155

    .line 5741
    iget-object v1, v0, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v1, :cond_17a

    invoke-static {p1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result p1

    if-eqz p1, :cond_17a

    goto :goto_14f

    .line 5745
    :cond_17a
    :goto_17a
    invoke-virtual {p0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return v3

    .line 5741
    :goto_17e
    iget-object v1, v0, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v1, :cond_18d

    invoke-static {p1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result p1

    if-eqz p1, :cond_18d

    .line 5742
    iget-object p1, v0, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {p1}, Landroid/view/InputChannel;->dispose()V

    .line 5744
    :cond_18d
    throw p0

    .line 5716
    :sswitch_18e
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/os/SomeArgs;

    .line 5717
    iget-object v0, p0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputMethodClient;

    .line 5718
    iget-object v1, p0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 5720
    :try_start_19e
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1, v1}, Lcom/android/internal/view/IInputMethodClient;->onUnbindAccessibilityService(II)V
    :try_end_1a3
    .catch Landroid/os/RemoteException; {:try_start_19e .. :try_end_1a3} :catch_1a4

    goto :goto_1b0

    :catch_1a4
    move-exception p1

    .line 5723
    instance-of p1, p1, Landroid/os/DeadObjectException;

    if-nez p1, :cond_1b0

    const-string p1, "InputMethodManagerService"

    const-string v0, "RemoteException when unbinding accessibility services"

    .line 5724
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5727
    :cond_1b0
    :goto_1b0
    invoke-virtual {p0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return v3

    .line 5705
    :sswitch_1b4
    :try_start_1b4
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/view/IInputMethodClient;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v0, p1}, Lcom/android/internal/view/IInputMethodClient;->onUnbindMethod(II)V
    :try_end_1bf
    .catch Landroid/os/RemoteException; {:try_start_1b4 .. :try_end_1bf} :catch_1c0

    goto :goto_1cc

    :catch_1c0
    move-exception p0

    .line 5708
    instance-of p0, p0, Landroid/os/DeadObjectException;

    if-nez p0, :cond_1cc

    const-string p0, "InputMethodManagerService"

    const-string p1, "RemoteException when unbinding input method service oraccessibility services"

    .line 5709
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1cc
    :goto_1cc
    return v3

    .line 5866
    :sswitch_1cd
    monitor-enter v0

    .line 5867
    :try_start_1ce
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p1

    if-eqz p1, :cond_1e3

    .line 5868
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->getCurrentRequestId()Ljava/util/OptionalInt;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/OptionalInt;->isPresent()Z

    move-result p0

    if-eqz p0, :cond_1e3

    .line 5869
    invoke-virtual {p1}, Lcom/android/server/inputmethod/IInputMethodInvoker;->finishStylusHandwriting()V

    .line 5871
    :cond_1e3
    monitor-exit v0

    return v3

    :catchall_1e5
    move-exception p0

    monitor-exit v0
    :try_end_1e7
    .catchall {:try_start_1ce .. :try_end_1e7} :catchall_1e5

    throw p0

    .line 5840
    :sswitch_1e8
    monitor-enter v0

    .line 5841
    :try_start_1e9
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v1

    if-eqz v1, :cond_240

    .line 5842
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    if-nez v2, :cond_1f4

    goto :goto_240

    .line 5845
    :cond_1f4
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 5849
    invoke-virtual {v6}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethodUid()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    .line 5846
    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/server/inputmethod/HandwritingModeController;->startHandwritingSession(IIILandroid/os/IBinder;)Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;

    move-result-object v2

    if-nez v2, :cond_222

    const-string p0, "InputMethodManagerService"

    .line 5852
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to start handwriting session for requestId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5854
    monitor-exit v0

    return v3

    .line 5857
    :cond_222
    invoke-virtual {v2}, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;->getRequestId()I

    move-result p1

    .line 5858
    invoke-virtual {v2}, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;->getHandwritingChannel()Landroid/view/InputChannel;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;->getRecordedEvents()Ljava/util/List;

    move-result-object v2

    .line 5857
    invoke-virtual {v1, p1, v4, v2}, Lcom/android/server/inputmethod/IInputMethodInvoker;->startStylusHandwriting(ILandroid/view/InputChannel;Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_23e

    const-string p1, "InputMethodManagerService"

    const-string v1, "Resetting handwriting mode."

    .line 5860
    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5861
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleResetStylusHandwriting()V

    .line 5863
    :cond_23e
    monitor-exit v0

    return v3

    .line 5843
    :cond_240
    :goto_240
    monitor-exit v0

    return v3

    :catchall_242
    move-exception p0

    .line 5863
    monitor-exit v0
    :try_end_244
    .catchall {:try_start_1e9 .. :try_end_244} :catchall_242

    throw p0

    .line 5829
    :sswitch_245
    monitor-enter v0

    .line 5830
    :try_start_246
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->supportsStylusHandwriting()Z

    move-result p1

    if-eqz p1, :cond_25c

    .line 5831
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p1

    if-eqz p1, :cond_25c

    .line 5832
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    invoke-virtual {p1, p0}, Lcom/android/server/inputmethod/HandwritingModeController;->initializeHandwritingSpy(I)V

    goto :goto_261

    .line 5834
    :cond_25c
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->reset()V

    .line 5836
    :goto_261
    monitor-exit v0

    return v3

    :catchall_263
    move-exception p0

    monitor-exit v0
    :try_end_265
    .catchall {:try_start_246 .. :try_end_265} :catchall_263

    throw p0

    .line 5696
    :sswitch_266
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v3, :cond_26b

    move v2, v3

    :cond_26b
    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateImeWindowStatus(Z)V

    return v3

    .line 5683
    :sswitch_26f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/IBinder;

    .line 5684
    monitor-enter v0

    .line 5686
    :try_start_274
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    if-ne p1, v1, :cond_286

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-eqz p0, :cond_286

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    if-eqz p0, :cond_286

    .line 5688
    invoke-interface {p0}, Lcom/android/internal/view/IInputMethodSession;->removeImeSurface()V
    :try_end_283
    .catch Landroid/os/RemoteException; {:try_start_274 .. :try_end_283} :catch_286
    .catchall {:try_start_274 .. :try_end_283} :catchall_284

    goto :goto_286

    :catchall_284
    move-exception p0

    goto :goto_288

    .line 5692
    :catch_286
    :cond_286
    :goto_286
    :try_start_286
    monitor-exit v0

    return v3

    :goto_288
    monitor-exit v0
    :try_end_289
    .catchall {:try_start_286 .. :try_end_289} :catchall_284

    throw p0

    .line 5671
    :sswitch_28a
    monitor-enter v0

    .line 5673
    :try_start_28b
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-eqz p1, :cond_29d

    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    if-eqz p1, :cond_29d

    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequested:Z

    if-nez p0, :cond_29d

    .line 5675
    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodSession;->removeImeSurface()V
    :try_end_29a
    .catch Landroid/os/RemoteException; {:try_start_28b .. :try_end_29a} :catch_29d
    .catchall {:try_start_28b .. :try_end_29a} :catchall_29b

    goto :goto_29d

    :catchall_29b
    move-exception p0

    goto :goto_29f

    .line 5679
    :catch_29d
    :cond_29d
    :goto_29d
    :try_start_29d
    monitor-exit v0

    return v3

    :goto_29f
    monitor-exit v0
    :try_end_2a0
    .catchall {:try_start_29d .. :try_end_2a0} :catchall_29b

    throw p0

    .line 5664
    :sswitch_2a1
    monitor-enter v0

    .line 5665
    :try_start_2a2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 5666
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v4, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    .line 5668
    monitor-exit v0

    return v3

    :catchall_2b2
    move-exception p0

    monitor-exit v0
    :try_end_2b4
    .catchall {:try_start_2a2 .. :try_end_2b4} :catchall_2b2

    throw p0

    .line 5875
    :sswitch_2b5
    iget p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    return v3

    .line 5882
    :sswitch_2bd
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodMenuController;->getSwitchingDialogLocked()Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_2f2

    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    .line 5883
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodMenuController;->getSwitchingDialogLocked()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2f2

    const-string p1, "InputMethodManagerService"

    const-string v0, "MSG_SHOW_AGAIN_IM_PICKER"

    .line 5884
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5885
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodMenuController;->getSwitchingDialogLocked()Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_2e9

    .line 5886
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodMenuController;->getSwitchingDialogLocked()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 5888
    :cond_2e9
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentShowAuxSubtypes:Z

    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentDisplayId:I

    invoke-virtual {p1, v0, p0}, Lcom/android/server/inputmethod/InputMethodMenuController;->showInputMethodMenu(ZI)V

    :cond_2f2
    return v3

    .line 5635
    :sswitch_2f3
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 5636
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_319

    if-eq v1, v3, :cond_317

    const/4 v4, 0x2

    if-eq v1, v4, :cond_31b

    const-string p0, "InputMethodManagerService"

    .line 5650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown subtype picker mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_317
    move v2, v3

    goto :goto_31b

    .line 5641
    :cond_319
    iget-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputShown:Z

    .line 5654
    :cond_31b
    :goto_31b
    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentShowAuxSubtypes:Z

    .line 5655
    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentDisplayId:I

    .line 5658
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-virtual {p0, v2, v0}, Lcom/android/server/inputmethod/InputMethodMenuController;->showInputMethodMenu(ZI)V

    return v3

    nop

    :sswitch_data_326
    .sparse-switch
        0x1 -> :sswitch_2f3
        0x3ff -> :sswitch_2bd
        0x402 -> :sswitch_2b5
        0x40b -> :sswitch_2a1
        0x424 -> :sswitch_28a
        0x425 -> :sswitch_26f
        0x42e -> :sswitch_266
        0x442 -> :sswitch_245
        0x44c -> :sswitch_1e8
        0x456 -> :sswitch_1cd
        0xbb8 -> :sswitch_1b4
        0xbb9 -> :sswitch_18e
        0xbc2 -> :sswitch_136
        0xbc3 -> :sswitch_d6
        0xbcc -> :sswitch_8f
        0xbd6 -> :sswitch_86
        0xbe5 -> :sswitch_4c
        0xfa0 -> :sswitch_39
        0x1388 -> :sswitch_33
        0x1392 -> :sswitch_22
        0x1b58 -> :sswitch_a
    .end sparse-switch
.end method

.method public final handleSetInteractive(Z)V
    .registers 7

    .line 5902
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5903
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    if-eqz p1, :cond_a

    .line 5904
    iget p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    invoke-virtual {p0, p1, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 5907
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz p1, :cond_29

    iget-object v1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v1, :cond_29

    .line 5908
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    iget-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInFullscreenMode:Z

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImePlatformCompatUtils:Lcom/android/server/inputmethod/ImePlatformCompatUtils;

    .line 5910
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodUidLocked()I

    move-result v4

    .line 5909
    invoke-virtual {v3, v4}, Lcom/android/server/inputmethod/ImePlatformCompatUtils;->shouldFinishInputWithReportToIme(I)Z

    move-result v3

    .line 5908
    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleSetActiveToClient(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;ZZZ)V

    .line 5912
    :cond_29
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception p0

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public final handleShellCommandEnableDisableInputMethod(Landroid/os/ShellCommand;Z)I
    .registers 19

    move-object/from16 v0, p0

    .line 7067
    invoke-static/range {p1 .. p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleOptionsForCommandsThatOnlyHaveUserOption(Landroid/os/ShellCommand;)I

    move-result v1

    .line 7068
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    .line 7069
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v8

    .line 7070
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v9

    .line 7072
    const-class v10, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v10

    .line 7073
    :try_start_15
    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 7074
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    .line 7073
    invoke-static {v1, v2, v3}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object v11

    .line 7075
    array-length v12, v11

    const/4 v13, 0x0

    move v14, v13

    move v15, v14

    :goto_27
    if-ge v14, v12, :cond_45

    aget v2, v11, v14

    move-object/from16 v6, p1

    .line 7076
    invoke-virtual {v0, v2, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->userHasDebugPriv(ILandroid/os/ShellCommand;)Z

    move-result v1

    if-nez v1, :cond_34

    goto :goto_42

    :cond_34
    move-object/from16 v1, p0

    move-object v3, v7

    move/from16 v4, p2

    move-object v5, v8

    move-object v6, v9

    .line 7079
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleShellCommandEnableDisableInputMethodInternalLocked(ILjava/lang/String;ZLjava/io/PrintWriter;Ljava/io/PrintWriter;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v15, v1

    :goto_42
    add-int/lit8 v14, v14, 0x1

    goto :goto_27

    .line 7082
    :cond_45
    monitor-exit v10

    if-eqz v15, :cond_49

    const/4 v13, -0x1

    :cond_49
    return v13

    :catchall_4a
    move-exception v0

    monitor-exit v10
    :try_end_4c
    .catchall {:try_start_15 .. :try_end_4c} :catchall_4a

    throw v0
.end method

.method public final handleShellCommandEnableDisableInputMethodInternalLocked(ILjava/lang/String;ZLjava/io/PrintWriter;Ljava/io/PrintWriter;)Z
    .registers 16
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 7132
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1a

    if-eqz p3, :cond_15

    .line 7133
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_3b

    .line 7136
    :cond_15
    invoke-virtual {p0, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    move-result p0

    goto :goto_72

    .line 7139
    :cond_1a
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryMethodMapForUser(I)Landroid/util/ArrayMap;

    move-result-object v0

    .line 7140
    new-instance v9, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 7141
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v8, 0x0

    move-object v3, v9

    move-object v6, v0

    move v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Landroid/util/ArrayMap;IZ)V

    if-eqz p3, :cond_65

    .line 7143
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3e

    :goto_3b
    move v0, v1

    move p0, v2

    goto :goto_73

    .line 7146
    :cond_3e
    invoke-virtual {v9}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_46
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 7147
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_46

    move p0, v1

    goto :goto_5f

    :cond_5e
    move p0, v2

    :goto_5f
    if-nez p0, :cond_72

    .line 7153
    invoke-virtual {v9, p2, v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->appendAndPutEnabledInputMethodLocked(Ljava/lang/String;Z)V

    goto :goto_72

    .line 7157
    :cond_65
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7160
    invoke-virtual {v9}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;

    move-result-object v0

    .line 7158
    invoke-virtual {v9, p0, v0, p2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->buildAndPutEnabledInputMethodsStrRemovingIdLocked(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    :cond_72
    :goto_72
    move v0, v2

    :goto_73
    if-eqz v0, :cond_b5

    const-string p0, "Unknown input method "

    .line 7164
    invoke-virtual {p5, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7165
    invoke-virtual {p5, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7166
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " cannot be enabled for user #"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p5, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7168
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\"ime enable "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" for user #"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " failed due to its unrecognized IME ID."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InputMethodManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_b5
    const-string p5, "Input method "

    .line 7173
    invoke-virtual {p4, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7174
    invoke-virtual {p4, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, ": "

    .line 7175
    invoke-virtual {p4, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-ne p3, p0, :cond_c7

    const-string p0, "already "

    goto :goto_ca

    :cond_c7
    const-string/jumbo p0, "now "

    .line 7176
    :goto_ca
    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p3, :cond_d2

    const-string p0, "enabled"

    goto :goto_d4

    :cond_d2
    const-string p0, "disabled"

    .line 7177
    :goto_d4
    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, " for user #"

    .line 7178
    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7179
    invoke-virtual {p4, p1}, Ljava/io/PrintWriter;->println(I)V

    return v1
.end method

.method public final handleShellCommandListInputMethods(Landroid/os/ShellCommand;)I
    .registers 14

    const/4 v0, 0x0

    const/4 v1, -0x2

    move v2, v0

    move v3, v2

    .line 7013
    :goto_4
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    if-nez v4, :cond_7a

    .line 7030
    const-class v6, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v6

    .line 7031
    :try_start_e
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    .line 7032
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 7033
    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v7

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    .line 7032
    invoke-static {v1, v7, p1}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object p1

    .line 7034
    array-length v1, p1

    move v7, v0

    :goto_22
    if-ge v7, v1, :cond_75

    aget v8, p1, v7

    if-eqz v2, :cond_2d

    .line 7036
    invoke-virtual {p0, v8, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodListLocked(II)Ljava/util/List;

    move-result-object v9

    goto :goto_31

    .line 7037
    :cond_2d
    invoke-virtual {p0, v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodListLocked(I)Ljava/util/List;

    move-result-object v9

    .line 7038
    :goto_31
    array-length v10, p1

    if-le v10, v5, :cond_41

    const-string v10, "User #"

    .line 7039
    invoke-virtual {v4, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7040
    invoke-virtual {v4, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string v8, ":"

    .line 7041
    invoke-virtual {v4, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7043
    :cond_41
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_45
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_72

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v3, :cond_5b

    .line 7045
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_45

    .line 7047
    :cond_5b
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, ":"

    .line 7048
    invoke-virtual {v4, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7049
    new-instance v10, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v10, v4}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda2;-><init>(Ljava/io/PrintWriter;)V

    const-string v11, "  "

    invoke-virtual {v9, v10, v11}, Landroid/view/inputmethod/InputMethodInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_45

    :cond_72
    add-int/lit8 v7, v7, 0x1

    goto :goto_22

    .line 7053
    :cond_75
    monitor-exit v6

    return v0

    :catchall_77
    move-exception p0

    monitor-exit v6
    :try_end_79
    .catchall {:try_start_e .. :try_end_79} :catchall_77

    throw p0

    :cond_7a
    const/4 v6, -0x1

    .line 7017
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_c4

    goto :goto_ae

    :sswitch_83
    const-string v7, "--user"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8c

    goto :goto_ae

    :cond_8c
    const/4 v6, 0x3

    goto :goto_ae

    :sswitch_8e
    const-string v7, "-u"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_97

    goto :goto_ae

    :cond_97
    const/4 v6, 0x2

    goto :goto_ae

    :sswitch_99
    const-string v7, "-s"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a2

    goto :goto_ae

    :cond_a2
    move v6, v5

    goto :goto_ae

    :sswitch_a4
    const-string v7, "-a"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ad

    goto :goto_ae

    :cond_ad
    move v6, v0

    :goto_ae
    packed-switch v6, :pswitch_data_d6

    goto/16 :goto_4

    .line 7026
    :pswitch_b3
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_4

    :pswitch_bd
    move v3, v5

    goto/16 :goto_4

    :pswitch_c0
    move v2, v5

    goto/16 :goto_4

    nop

    :sswitch_data_c4
    .sparse-switch
        0x5d4 -> :sswitch_a4
        0x5e6 -> :sswitch_99
        0x5e8 -> :sswitch_8e
        0x4f7b216b -> :sswitch_83
    .end sparse-switch

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_bd
        :pswitch_b3
        :pswitch_b3
    .end packed-switch
.end method

.method public final handleShellCommandResetInputMethod(Landroid/os/ShellCommand;)I
    .registers 19

    move-object/from16 v0, p0

    .line 7232
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 7233
    invoke-static/range {p1 .. p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleOptionsForCommandsThatOnlyHaveUserOption(Landroid/os/ShellCommand;)I

    move-result v2

    .line 7234
    const-class v3, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v3

    .line 7235
    :try_start_d
    iget-object v4, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 7236
    invoke-virtual {v4}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    .line 7235
    invoke-static {v2, v4, v5}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object v2

    .line 7237
    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_1e
    if-ge v6, v4, :cond_13c

    aget v13, v2, v6

    move-object/from16 v14, p1

    .line 7238
    invoke-virtual {v0, v13, v14}, Lcom/android/server/inputmethod/InputMethodManagerService;->userHasDebugPriv(ILandroid/os/ShellCommand;)Z

    move-result v7

    if-nez v7, :cond_2c

    goto/16 :goto_137

    .line 7243
    :cond_2c
    iget-object v7, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v7

    if-ne v13, v7, :cond_ad

    .line 7244
    iget-object v7, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    const/16 v8, 0xe

    const/4 v9, 0x0

    invoke-virtual {v0, v7, v5, v9, v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    .line 7246
    iget-object v7, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    .line 7248
    invoke-virtual {v0, v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    .line 7250
    iget-object v7, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v7, v9}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    .line 7253
    iget-object v7, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_53
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_67

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    .line 7254
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    goto :goto_53

    .line 7258
    :cond_67
    iget-object v7, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v8, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-static {v7, v8}, Lcom/android/server/inputmethod/InputMethodUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_73
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_88

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    .line 7259
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    goto :goto_73

    .line 7261
    :cond_88
    invoke-virtual {v0, v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    .line 7262
    iget-object v7, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v8, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 7263
    invoke-virtual {v8}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 7264
    invoke-virtual {v8}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v8

    .line 7262
    invoke-static {v7, v8}, Lcom/android/server/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/PackageManager;Ljava/util/List;)V

    .line 7265
    iget-object v7, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v7

    .line 7266
    iget-object v8, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v8}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v8

    goto :goto_107

    .line 7268
    :cond_ad
    new-instance v15, Landroid/util/ArrayMap;

    invoke-direct {v15}, Landroid/util/ArrayMap;-><init>()V

    .line 7269
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 7270
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    .line 7272
    invoke-static {v9, v13}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->load(Landroid/util/ArrayMap;I)V

    .line 7273
    iget-object v7, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const/16 v16, 0x0

    move v8, v13

    move-object v10, v15

    move-object v11, v12

    move-object v5, v12

    move/from16 v12, v16

    invoke-static/range {v7 .. v12}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryInputMethodServicesInternal(Landroid/content/Context;ILandroid/util/ArrayMap;Landroid/util/ArrayMap;Ljava/util/ArrayList;I)V

    .line 7275
    new-instance v12, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v7, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 7276
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v7, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/16 v16, 0x0

    move-object v7, v12

    move-object v10, v15

    move v11, v13

    move-object v15, v12

    move/from16 v12, v16

    invoke-direct/range {v7 .. v12}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Landroid/util/ArrayMap;IZ)V

    .line 7279
    iget-object v7, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/android/server/inputmethod/InputMethodUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v8

    .line 7280
    invoke-static {v8}, Lcom/android/server/inputmethod/InputMethodUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v7

    const-string v5, ""

    .line 7283
    invoke-virtual {v15, v5}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putEnabledInputMethodsStr(Ljava/lang/String;)V

    .line 7284
    new-instance v5, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v5, v15}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;)V

    invoke-interface {v8, v5}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 7288
    invoke-virtual {v15, v7}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    const/4 v5, -0x1

    .line 7289
    invoke-virtual {v15, v5}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    .line 7291
    :goto_107
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Reset current and enabled IMEs for user #"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7292
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  Selected: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7293
    new-instance v5, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda7;

    invoke-direct {v5, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda7;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {v8, v5}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :goto_137
    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x0

    goto/16 :goto_1e

    .line 7295
    :cond_13c
    monitor-exit v3

    const/4 v0, 0x0

    return v0

    :catchall_13f
    move-exception v0

    monitor-exit v3
    :try_end_141
    .catchall {:try_start_d .. :try_end_141} :catchall_13f

    throw v0
.end method

.method public final handleShellCommandSetInputMethod(Landroid/os/ShellCommand;)I
    .registers 16

    .line 7191
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleOptionsForCommandsThatOnlyHaveUserOption(Landroid/os/ShellCommand;)I

    move-result v0

    .line 7192
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 7193
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 7194
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    .line 7196
    const-class v4, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v4

    .line 7197
    :try_start_13
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 7198
    invoke-virtual {v5}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    .line 7197
    invoke-static {v0, v5, v6}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object v0

    .line 7199
    array-length v5, v0

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    :goto_25
    if-ge v7, v5, :cond_80

    aget v9, v0, v7

    .line 7200
    invoke-virtual {p0, v9, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->userHasDebugPriv(ILandroid/os/ShellCommand;)Z

    move-result v10

    if-nez v10, :cond_30

    goto :goto_7d

    .line 7203
    :cond_30
    invoke-virtual {p0, v1, v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchToInputMethodLocked(Ljava/lang/String;I)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_6c

    const-string v11, "Unknown input method "

    .line 7205
    invoke-virtual {v3, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7206
    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, " cannot be selected for user #"

    .line 7207
    invoke-virtual {v3, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7208
    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->println(I)V

    const-string v11, "InputMethodManagerService"

    .line 7210
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\"ime set "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\" for user #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " failed due to its unrecognized IME ID."

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7c

    :cond_6c
    const-string v11, "Input method "

    .line 7213
    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7214
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, " selected for user #"

    .line 7215
    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7216
    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(I)V

    :goto_7c
    or-int/2addr v8, v10

    :goto_7d
    add-int/lit8 v7, v7, 0x1

    goto :goto_25

    .line 7220
    :cond_80
    monitor-exit v4

    if-eqz v8, :cond_84

    const/4 v6, -0x1

    :cond_84
    return v6

    :catchall_85
    move-exception p0

    monitor-exit v4
    :try_end_87
    .catchall {:try_start_13 .. :try_end_87} :catchall_85

    throw p0
.end method

.method public final handleShellCommandTraceInputMethod(Landroid/os/ShellCommand;)I
    .registers 6

    .line 7307
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 7308
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    .line 7309
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_b4

    :goto_14
    move v1, v2

    goto :goto_39

    :sswitch_16
    const-string/jumbo v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_14

    :cond_20
    const/4 v1, 0x2

    goto :goto_39

    :sswitch_22
    const-string/jumbo v1, "stop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    goto :goto_14

    :cond_2c
    const/4 v1, 0x1

    goto :goto_39

    :sswitch_2e
    const-string/jumbo v1, "save-for-bugreport"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    goto :goto_14

    :cond_38
    move v1, v3

    :goto_39
    packed-switch v1, :pswitch_data_c2

    .line 7320
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown command: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "Input method trace options:"

    .line 7321
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  start: Start tracing"

    .line 7322
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  stop: Stop tracing"

    .line 7323
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 7311
    :pswitch_60
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/ImeTracing;->startTrace(Ljava/io/PrintWriter;)V

    goto :goto_6f

    .line 7314
    :pswitch_68
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/ImeTracing;->stopTrace(Ljava/io/PrintWriter;)V

    .line 7326
    :goto_6f
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/inputmethod/ImeTracing;->isEnabled()Z

    move-result p1

    .line 7328
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 7329
    :try_start_7a
    new-instance v1, Landroid/util/ArrayMap;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-direct {v1, p0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 7330
    monitor-exit v0
    :try_end_82
    .catchall {:try_start_7a .. :try_end_82} :catchall_a8

    .line 7331
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8a
    :goto_8a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_8a

    .line 7334
    :try_start_98
    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v0, p1}, Lcom/android/internal/view/IInputMethodClient;->setImeTraceEnabled(Z)V
    :try_end_9d
    .catch Landroid/os/RemoteException; {:try_start_98 .. :try_end_9d} :catch_9e

    goto :goto_8a

    :catch_9e
    move-exception v0

    const-string v1, "InputMethodManagerService"

    const-string v2, "Error while trying to enable/disable ime trace on client window"

    .line 7336
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8a

    :cond_a7
    return v3

    :catchall_a8
    move-exception p0

    .line 7330
    :try_start_a9
    monitor-exit v0
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_a8

    throw p0

    .line 7317
    :pswitch_ab
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/inputmethod/ImeTracing;->saveForBugreport(Ljava/io/PrintWriter;)V

    return v3

    nop

    :sswitch_data_b4
    .sparse-switch
        -0x174ab7ac -> :sswitch_2e
        0x360802 -> :sswitch_22
        0x68ac462 -> :sswitch_16
    .end sparse-switch

    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_ab
        :pswitch_68
        :pswitch_60
    .end packed-switch
.end method

.method public handleVoiceHWKey()V
    .registers 8

    .line 8691
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 8692
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_77

    .line 8694
    :try_start_7
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    move-result v3

    if-nez v3, :cond_24

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 8695
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerInternal;->isHardKeyboardAvailable()Z

    move-result v3

    if-eqz v3, :cond_24

    const-string p0, "InputMethodManagerService"

    const-string/jumbo v3, "handleVoiceHWKey: show ime with hard keyboard disable, skip"

    .line 8696
    invoke-static {p0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1f} :catch_67
    .catchall {:try_start_7 .. :try_end_1f} :catchall_65

    .line 8724
    :try_start_1f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_77

    return-void

    .line 8700
    :cond_24
    :try_start_24
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isCurrentInputMethodAsSamsungKeyboard()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2d

    move v5, v4

    goto :goto_2e

    :cond_2d
    const/4 v5, 0x0

    .line 8701
    :goto_2e
    invoke-virtual {p0, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleDictation(Z)Z

    move-result v5

    if-nez v5, :cond_41

    const-string p0, "InputMethodManagerService"

    const-string/jumbo v3, "handleVoiceHWKey: voice input disable or need close voice"

    .line 8702
    invoke-static {p0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_3c} :catch_67
    .catchall {:try_start_24 .. :try_end_3c} :catchall_65

    .line 8724
    :try_start_3c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3c .. :try_end_40} :catchall_77

    return-void

    :cond_41
    if-nez v3, :cond_4e

    :try_start_43
    const-string v5, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    const-string v6, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    .line 8708
    invoke-virtual {p0, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->getTargetInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v6

    .line 8707
    invoke-virtual {p0, v5, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    .line 8711
    :cond_4e
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isInputMethodShown()Z

    move-result v5

    if-nez v5, :cond_61

    if-eqz v3, :cond_5f

    .line 8713
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    const/4 v5, 0x0

    const/16 v6, 0x16

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    goto :goto_61

    .line 8718
    :cond_5f
    iput-boolean v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequested:Z
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_61} :catch_67
    .catchall {:try_start_43 .. :try_end_61} :catchall_65

    .line 8724
    :cond_61
    :goto_61
    :try_start_61
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_77

    goto :goto_71

    :catchall_65
    move-exception p0

    goto :goto_73

    :catch_67
    move-exception p0

    :try_start_68
    const-string v3, "InputMethodManagerService"

    const-string/jumbo v4, "handleVoiceHWKey: exception:"

    .line 8722
    invoke-static {v3, v4, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_70
    .catchall {:try_start_68 .. :try_end_70} :catchall_65

    goto :goto_61

    .line 8726
    :goto_71
    :try_start_71
    monitor-exit v0

    return-void

    .line 8724
    :goto_73
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8725
    throw p0

    :catchall_77
    move-exception p0

    .line 8726
    monitor-exit v0
    :try_end_79
    .catchall {:try_start_71 .. :try_end_79} :catchall_77

    throw p0
.end method

.method public final hasConnectionLocked()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 902
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->hasConnection()Z

    move-result p0

    return p0
.end method

.method public hasNavigationBarGesture()Z
    .registers 3

    .line 7762
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "navigation_bar_gesture_while_hidden"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1
.end method

.method public hideCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    and-int/lit8 v0, p2, 0x1

    const-string v1, "InputMethodManagerService"

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    .line 4306
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowExplicitlyRequested:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowForced:Z

    if-eqz v0, :cond_15

    :cond_f
    const-string p0, "Not hiding: explicit show not cancelled by non-explicit hide"

    .line 4309
    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 4312
    :cond_15
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowForced:Z

    if-eqz v0, :cond_23

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_23

    const-string p0, "Not hiding: forced show not cancelled by not-always hide"

    .line 4314
    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 4326
    :cond_23
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p2

    const/4 v0, 0x1

    if-eqz p2, :cond_35

    .line 4327
    iget-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputShown:Z

    if-nez v3, :cond_33

    iget v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_35

    :cond_33
    move v3, v0

    goto :goto_36

    :cond_35
    move v3, v2

    :goto_36
    if-eqz v3, :cond_7c

    .line 4331
    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    .line 4332
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHideRequestWindowMap:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v3, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4338
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ".hideSoftInput(0, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ") for reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4340
    invoke-static {p4}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputDisplayReasonToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4338
    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4343
    invoke-virtual {p2, v3, v2, p3}, Lcom/android/server/inputmethod/IInputMethodInvoker;->hideSoftInput(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    move-result p2

    if-eqz p2, :cond_a6

    .line 4344
    invoke-virtual {p0, v2, p1, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->onShowHideSoftInputRequested(ZLandroid/os/IBinder;I)V

    goto :goto_a6

    .line 4349
    :cond_7c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "hideCurrentInputLocked : canceled, shouldHideSoftInput="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mInputShown="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputShown:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mImeWindowVis="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 4356
    :cond_a6
    :goto_a6
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->setCurrentMethodNotVisible()V

    .line 4357
    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputShown:Z

    .line 4358
    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequested:Z

    .line 4359
    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowExplicitlyRequested:Z

    .line 4360
    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowForced:Z

    return v0
.end method

.method public final hideMySoftInput(Landroid/os/IBinder;I)V
    .registers 10

    const-string v0, "InputMethodManagerService"

    .line 5534
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hideMySoftInput: flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "IMMS.hideMySoftInput"

    const-wide/16 v1, 0x20

    .line 5537
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5538
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5539
    :try_start_21
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result p1

    if-nez p1, :cond_29

    .line 5540
    monitor-exit v0

    return-void

    .line 5542
    :cond_29
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_2d
    .catchall {:try_start_21 .. :try_end_2d} :catchall_41

    .line 5544
    :try_start_2d
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastImeTargetWindow:Landroid/os/IBinder;

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {p0, p1, p2, v5, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_3c

    .line 5549
    :try_start_34
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5551
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_41

    .line 5552
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_3c
    move-exception p0

    .line 5549
    :try_start_3d
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5550
    throw p0

    :catchall_41
    move-exception p0

    .line 5551
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3d .. :try_end_43} :catchall_41

    throw p0
.end method

.method public hideSoftInput(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z
    .registers 15

    const-string v0, "InputMethodManagerService"

    const-string/jumbo v1, "hideSoftInput"

    .line 4251
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4254
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4255
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v1

    const-string v2, "InputMethodManagerService#hideSoftInput"

    invoke-virtual {v1, v2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerManagerServiceDump(Ljava/lang/String;)V

    .line 4257
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    .line 4258
    :try_start_18
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_29

    const-string p0, "InputMethodManagerService"

    const-string/jumbo p1, "hideSoftInput : Ignoring, called from invalid user"

    .line 4260
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4262
    monitor-exit v1

    return v3

    .line 4264
    :cond_29
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_2d
    .catchall {:try_start_18 .. :try_end_2d} :catchall_ce

    const-wide/16 v6, 0x20

    :try_start_2f
    const-string v2, "IMMS.hideSoftInput"

    .line 4266
    invoke-static {v6, v7, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4267
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v2, :cond_46

    if-eqz p1, :cond_46

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    .line 4268
    invoke-interface {v2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    if-eq v2, v8, :cond_97

    .line 4272
    :cond_46
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v2, :cond_aa

    const/16 v8, 0x22

    if-ne p5, v8, :cond_6b

    const-string p1, "InputMethodManagerService"

    const-string v0, "Client requesting input be hidden"

    .line 4279
    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4280
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    move-result p0
    :try_end_63
    .catchall {:try_start_2f .. :try_end_63} :catchall_c6

    .line 4297
    :try_start_63
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4298
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v1
    :try_end_6a
    .catchall {:try_start_63 .. :try_end_6a} :catchall_ce

    return p0

    .line 4285
    :cond_6b
    :try_start_6b
    invoke-virtual {p0, p2, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->isImeClientFocused(Landroid/os/IBinder;Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)Z

    move-result v2

    if-nez v2, :cond_97

    const-string p0, "InputMethodManagerService"

    .line 4287
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ignoring hideSoftInput of uid "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8f
    .catchall {:try_start_6b .. :try_end_8f} :catchall_c6

    .line 4297
    :try_start_8f
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4298
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v1
    :try_end_96
    .catchall {:try_start_8f .. :try_end_96} :catchall_ce

    return v3

    :cond_97
    :try_start_97
    const-string p1, "InputMethodManagerService"

    const-string v0, "Client requesting input be hidden"

    .line 4293
    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4294
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    move-result p0
    :try_end_a2
    .catchall {:try_start_97 .. :try_end_a2} :catchall_c6

    .line 4297
    :try_start_a2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4298
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v1
    :try_end_a9
    .catchall {:try_start_a2 .. :try_end_a9} :catchall_ce

    return p0

    .line 4274
    :cond_aa
    :try_start_aa
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "unknown client "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_c6
    .catchall {:try_start_aa .. :try_end_c6} :catchall_c6

    :catchall_c6
    move-exception p0

    .line 4297
    :try_start_c7
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4298
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 4299
    throw p0

    :catchall_ce
    move-exception p0

    .line 4300
    monitor-exit v1
    :try_end_d0
    .catchall {:try_start_c7 .. :try_end_d0} :catchall_ce

    throw p0
.end method

.method public final hideStatusBarIconLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 3638
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v0, :cond_a

    .line 3639
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V

    :cond_a
    return-void
.end method

.method public initializeImeLocked(Lcom/android/server/inputmethod/IInputMethodInvoker;Landroid/os/IBinder;IZ)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 3385
    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;

    invoke-direct {v2, p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)V

    .line 3386
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodNavButtonFlagsLocked()I

    move-result v5

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    move v4, p4

    .line 3385
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/inputmethod/IInputMethodInvoker;->initializeInternal(Landroid/os/IBinder;Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;IZI)V

    return-void
.end method

.method public invalidateAutofillSessionLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 3255
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInlineSuggestionsRequestCallback:Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    if-eqz p0, :cond_10

    .line 3257
    :try_start_4
    invoke-interface {p0}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback;->onInlineSuggestionsSessionInvalidated()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception p0

    const-string v0, "InputMethodManagerService"

    const-string v1, "Cannot invalidate autofill session."

    .line 3259
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    :goto_10
    return-void
.end method

.method public isAccessoryKeyboard()I
    .registers 7

    .line 7978
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSamsungIMMSHWKeyboard:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->isAccessoryKeyboard()I

    move-result v0

    .line 7979
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSamsungIMMSHWKeyboard:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->isPogoConnectedOnly()Z

    move-result v1

    const-string/jumbo v2, "isAccessoryKeyboard "

    const-string v3, "InputMethodManagerService"

    if-eqz v1, :cond_66

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSamsungIMMSHWKeyboard:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 7980
    invoke-virtual {v1}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->isPogoBackfolded()Z

    move-result v1

    if-nez v1, :cond_26

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 7981
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_66

    .line 7982
    :cond_26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", PogoKeyboard connectedOnly="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSamsungIMMSHWKeyboard:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 7983
    invoke-virtual {v0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->isPogoConnectedOnly()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", backfolded="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSamsungIMMSHWKeyboard:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 7984
    invoke-virtual {v0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->isPogoBackfolded()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", orientation="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 7985
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 7982
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 7991
    :cond_66
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    if-nez v0, :cond_76

    .line 7994
    :try_start_6c
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->checkBlocklistUsbKeyboardConnected()I

    move-result v0
    :try_end_70
    .catchall {:try_start_6c .. :try_end_70} :catchall_71

    goto :goto_76

    :catchall_71
    move-exception p0

    .line 7997
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7998
    throw p0

    .line 7997
    :cond_76
    :goto_76
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8000
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isCurrentInputMethodAsSamsungKeyboard()Z
    .registers 3

    .line 8086
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodPackageName(Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    .line 8088
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isDEXStandAloneMode()Z
    .registers 6

    .line 7604
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    const/4 v0, 0x0

    const-string v1, "InputMethodManagerService"

    if-nez p0, :cond_e

    const-string/jumbo p0, "mDesktopModeManager null!"

    .line 7605
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 7608
    :cond_e
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p0

    if-nez p0, :cond_15

    return v0

    .line 7612
    :cond_15
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v2

    .line 7613
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DESKTOP TYPE! : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7614
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result p0

    const/16 v2, 0x65

    if-ne p0, v2, :cond_3c

    const-string p0, "IN KNOX DESKTOP MODE with STAND ALONE!"

    .line 7615
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_3c
    const-string p0, "NOT IN KNOX DESKTOP MODE with STAND ALONE!"

    .line 7618
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isDeskTopMode()Z
    .registers 5

    .line 7586
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    const/4 v0, 0x0

    const-string v1, "InputMethodManagerService"

    if-eqz p0, :cond_37

    .line 7587
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p0

    .line 7588
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DESKTOP MODE! : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7589
    iget p0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v2, 0x4

    if-eq p0, v2, :cond_30

    const/4 v2, 0x3

    if-ne p0, v2, :cond_2a

    goto :goto_30

    :cond_2a
    const-string p0, "NOT IN KNOX DESKTOP MODE!"

    .line 7594
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_30
    :goto_30
    const-string p0, "IN KNOX DESKTOP MODE!"

    .line 7591
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_37
    const-string/jumbo p0, "mDesktopModeManager null!"

    .line 7598
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isDexSetting()Z
    .registers 2

    .line 7805
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isDeskTopMode()Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedDisplayId:I

    if-nez v0, :cond_10

    :cond_a
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isDEXStandAloneMode()Z

    move-result p0

    if-eqz p0, :cond_12

    :cond_10
    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public final isFinishSetupWizard()Z
    .registers 4

    .line 7743
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "user_setup_complete"

    const/4 v1, 0x0

    const/4 v2, -0x3

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_13

    move v1, v0

    :cond_13
    return v1
.end method

.method public isHWAccessoryKeyboard()Z
    .registers 2

    .line 8066
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSamsungIMMSHWKeyboard:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->isHWAccessoryKeyboard()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 8067
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_14

    goto :goto_16

    :cond_14
    const/4 p0, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 p0, 0x1

    :goto_17
    return p0
.end method

.method public final isHoneyboardInstalled()Z
    .registers 3

    .line 8468
    sget-object v0, Lcom/android/server/inputmethod/InputMethodManagerService;->FEATURE_CONFIG_SIP:Ljava/lang/String;

    const-string v1, "com.samsung.android.honeyboard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isInstalledInputMethod(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method

.method public final isImeClientFocused(Landroid/os/IBinder;Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)Z
    .registers 5

    .line 4365
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v0, p2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    iget v1, p2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->pid:I

    iget p2, p2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/wm/WindowManagerInternal;->hasInputMethodClientFocus(Landroid/os/IBinder;III)I

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public final isImeSwitcherDisabledPackage()Z
    .registers 3

    .line 8441
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    const-string v1, "InputMethodManagerService"

    if-eqz v0, :cond_16

    .line 8442
    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isSKBDPacakge(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1c

    const-string/jumbo p0, "isImeSwitcherDisabledPackage : true"

    .line 8443
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_16
    const-string/jumbo p0, "mCurAttribute is null"

    .line 8447
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    const-string/jumbo p0, "isImeSwitcherDisabledPackage : false"

    .line 8449
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isImeTraceEnabled()Z
    .registers 1

    .line 5348
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracing;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public isInputMethodPickerShownForTest()Z
    .registers 2

    .line 4905
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 4906
    :try_start_3
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodMenuController;->isisInputMethodPickerShownForTestLocked()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 4907
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final isInputMethodRestrictedByMDM()Z
    .registers 2

    .line 4912
    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object p0

    if-eqz p0, :cond_1b

    .line 4913
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 4914
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInputMethodRestrictionState()Z

    move-result p0

    if-eqz p0, :cond_1b

    const-string p0, "InputMethodManagerService"

    const-string v0, "Input method restricted by Knox Customization"

    .line 4915
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method public isInputMethodShown()Z
    .registers 3

    .line 7793
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    .line 7794
    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isInputMethodShown: isShown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final isInstalledInputMethod(Ljava/lang/String;)Z
    .registers 6

    .line 7963
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2b

    .line 7964
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2b

    .line 7965
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    move v2, v0

    :goto_14
    if-ge v2, v1, :cond_2b

    .line 7967
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 7968
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 p0, 0x1

    return p0

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_2b
    return v0
.end method

.method public isKeyboardBlockedForInteractionControl()Z
    .registers 3

    .line 8411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACCESS_CONTROL_ENABLED = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessControlEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ACCESS_CONTROL_KEYBOARD_BLOCK = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessControlKeyboardBlockEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8413
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessControlEnable:Z

    if-eqz v0, :cond_2c

    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessControlKeyboardBlockEnable:Z

    if-eqz p0, :cond_2c

    const/4 p0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 p0, 0x0

    :goto_2d
    return p0
.end method

.method public final isKeyguardLocked()Z
    .registers 1

    .line 8629
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public final isNonPreemptibleImeLocked(Ljava/lang/String;)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 3285
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz p1, :cond_15

    .line 3287
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNonPreemptibleInputMethods:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public isPasswordInputType(I)Z
    .registers 2

    and-int/lit16 p0, p1, 0xfff

    const/16 p1, 0x81

    if-eq p0, p1, :cond_11

    const/16 p1, 0xe1

    if-eq p0, p1, :cond_11

    const/16 p1, 0x12

    if-ne p0, p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method public final isQwertyKeyboard(Landroid/view/InputDevice;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 8021
    :cond_4
    invoke-virtual {p1}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v1

    if-nez v1, :cond_13

    .line 8022
    invoke-virtual {p1}, Landroid/view/InputDevice;->getKeyboardType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    move v1, v0

    :goto_14
    if-eqz v1, :cond_58

    const/16 v2, 0x2002

    .line 8025
    invoke-virtual {p1, v2}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 8026
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->semIsKeyboardTypedMouse(Landroid/view/InputDevice;)Z

    move-result p0

    if-eqz p0, :cond_58

    .line 8027
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isQwertyKeyboard: name="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8028
    invoke-virtual {p1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " vendorId="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8029
    invoke-virtual {p1}, Landroid/view/InputDevice;->getVendorId()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " productId="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8030
    invoke-virtual {p1}, Landroid/view/InputDevice;->getProductId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InputMethodManagerService"

    .line 8027
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_58
    return v1
.end method

.method public final isSKBDPacakge(Ljava/lang/String;)Z
    .registers 2

    const-string p0, "com.samsung.android.honeyboard"

    .line 8459
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public final isSamsungDefaultMethodID()Z
    .registers 2

    .line 7701
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isHoneyboardInstalled()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public final isScreenLocked()Z
    .registers 2

    .line 8624
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_14

    .line 8625
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public final isSelectedMethodBoundLocked()Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 3294
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurIdLocked()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 3295
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDisplayIdToShowIme:I

    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    if-ne v0, p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public final maybeInitImeNavbarConfigLocked(I)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 2179
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result p1

    .line 2180
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeDrawsImeNavBarRes:Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;

    if-eqz v0, :cond_18

    .line 2181
    invoke-virtual {v0}, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;->getUserId()I

    move-result v0

    if-eq v0, p1, :cond_18

    .line 2182
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeDrawsImeNavBarRes:Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;->close()V

    const/4 v0, 0x0

    .line 2183
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeDrawsImeNavBarRes:Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;

    .line 2185
    :cond_18
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeDrawsImeNavBarRes:Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;

    if-nez v0, :cond_42

    .line 2187
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-ne v0, p1, :cond_27

    .line 2188
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    goto :goto_32

    .line 2190
    :cond_27
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p1

    :goto_32
    const v0, 0x111016f

    .line 2193
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;->create(Landroid/content/Context;ILandroid/os/Handler;Ljava/util/function/Consumer;)Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeDrawsImeNavBarRes:Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;

    :cond_42
    return-void
.end method

.method public minimizeSoftInput(Lcom/android/internal/view/IInputMethodClient;I)Z
    .registers 3

    .line 7771
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 7775
    :cond_8
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/IInputMethodInvoker;->minimizeSoftInput(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final notifyInputMethodSubtypeChanged(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 4

    .line 8576
    const-class p0, Landroid/hardware/input/InputManagerInternal;

    .line 8577
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/InputManagerInternal;

    if-eqz p0, :cond_d

    .line 8579
    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/input/InputManagerInternal;->onInputMethodSubtypeChanged(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    :cond_d
    return-void
.end method

.method public final notifyUserAction(Landroid/os/IBinder;)V
    .registers 4

    .line 5431
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5432
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurTokenLocked()Landroid/os/IBinder;

    move-result-object v1

    if-eq v1, p1, :cond_b

    .line 5437
    monitor-exit v0

    return-void

    .line 5439
    :cond_b
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz p1, :cond_20

    .line 5441
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v1, p1, p0}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->onUserActionLocked(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 5443
    :cond_20
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public final notifyUserActivity()V
    .registers 8

    .line 8378
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 8379
    iget v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    goto :goto_9

    :cond_8
    move v0, v1

    :goto_9
    const-string v2, "InputMethodManagerService"

    if-nez v0, :cond_23

    .line 8382
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyUserActivity: canceled, displayId="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 8386
    :cond_23
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isDeskTopMode()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 8387
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 8389
    :try_start_2d
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldShowImeKeyboardDefaultDisplayOnly()Z

    move-result v0

    if-eqz v0, :cond_49

    const-string/jumbo v0, "notifyUserActivity: notified."

    .line 8390
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8391
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 8392
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, v5, v6}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 8393
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/16 v0, 0x1000

    invoke-virtual {p0, v5, v6, v1, v0}, Landroid/os/PowerManager;->userActivity(JII)V
    :try_end_49
    .catchall {:try_start_2d .. :try_end_49} :catchall_4d

    .line 8396
    :cond_49
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_52

    :catchall_4d
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8397
    throw p0

    :cond_52
    :goto_52
    return-void
.end method

.method public final obtainMessageIIIO(IIIILjava/lang/Object;)Landroid/os/Message;
    .registers 7

    .line 2892
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 2893
    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2894
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 2895
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 2896
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 2897
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public final obtainMessageIIOO(IIILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .registers 7

    .line 2884
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 2885
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2886
    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2887
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public final obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .registers 5

    .line 2866
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 2867
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2868
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2869
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public final obtainMessageOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .registers 6

    .line 2874
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 2875
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2876
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2877
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 2878
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public onActionLocaleChanged()V
    .registers 5

    .line 1608
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 1609
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 1610
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastSystemLocales:Landroid/os/LocaleList;

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1611
    monitor-exit v0

    return-void

    :cond_19
    const/4 v2, 0x1

    .line 1613
    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    .line 1615
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;)V

    .line 1616
    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    .line 1617
    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastSystemLocales:Landroid/os/LocaleList;

    .line 1619
    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsNeedUpdateSubtypeForLocaleChanged:Z

    .line 1621
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception p0

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public final onCreateInlineSuggestionsRequestLocked(ILcom/android/internal/view/InlineSuggestionsRequestInfo;Lcom/android/internal/view/IInlineSuggestionsRequestCallback;Z)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 2549
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearPendingInlineSuggestionsRequestLocked()V

    .line 2550
    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInlineSuggestionsRequestCallback:Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    .line 2551
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 2553
    :try_start_11
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v1

    if-ne p1, v1, :cond_36

    if-eqz v0, :cond_36

    .line 2554
    invoke-static {v0, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->isInlineSuggestionsEnabled(Landroid/view/inputmethod/InputMethodInfo;Z)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 2555
    new-instance p1, Lcom/android/server/inputmethod/InputMethodManagerService$CreateInlineSuggestionsRequest;

    .line 2556
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p1, p2, p3, p4}, Lcom/android/server/inputmethod/InputMethodManagerService$CreateInlineSuggestionsRequest;-><init>(Lcom/android/internal/view/InlineSuggestionsRequestInfo;Lcom/android/internal/view/IInlineSuggestionsRequestCallback;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPendingInlineSuggestionsRequest:Lcom/android/server/inputmethod/InputMethodManagerService$CreateInlineSuggestionsRequest;

    .line 2557
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p1

    if-eqz p1, :cond_51

    .line 2559
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->performOnCreateInlineSuggestionsRequestLocked()V

    goto :goto_51

    .line 2569
    :cond_36
    invoke-interface {p3}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback;->onInlineSuggestionsUnsupported()V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_39} :catch_3a

    goto :goto_51

    :catch_3a
    move-exception p0

    .line 2572
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RemoteException calling onCreateInlineSuggestionsRequest(): "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InputMethodManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    :goto_51
    return-void
.end method

.method public onSessionCreated(Lcom/android/server/inputmethod/IInputMethodInvoker;Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;)V
    .registers 9

    const-string v0, "IMMS.onSessionCreated"

    const-wide/16 v1, 0x20

    .line 3404
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3406
    :try_start_7
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_64

    .line 3407
    :try_start_a
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    if-eqz v3, :cond_16

    .line 3410
    invoke-virtual {p3}, Landroid/view/InputChannel;->dispose()V

    .line 3411
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_61

    .line 3436
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 3413
    :cond_16
    :try_start_16
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v3

    if-eqz v3, :cond_59

    if-eqz p1, :cond_59

    .line 3415
    invoke-virtual {v3}, Lcom/android/server/inputmethod/IInputMethodInvoker;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/inputmethod/IInputMethodInvoker;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v3, v4, :cond_59

    .line 3416
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v3, :cond_59

    .line 3417
    invoke-virtual {p0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V

    .line 3418
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    new-instance v4, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-direct {v4, v3, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Lcom/android/server/inputmethod/IInputMethodInvoker;Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;)V

    iput-object v4, v3, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    const/4 p1, 0x1

    const/16 p2, 0xa

    .line 3420
    invoke-virtual {p0, p2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->attachNewInputLocked(IZ)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object p3

    const/4 v3, -0x1

    .line 3422
    invoke-virtual {p0, p2, p1, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->attachNewAccessibilityLocked(IZI)Lcom/android/internal/inputmethod/InputBindResult;

    .line 3424
    iget-object p1, p3, Lcom/android/internal/inputmethod/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    if-eqz p1, :cond_54

    .line 3425
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    const/16 p2, 0xbc2

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Lcom/android/internal/view/IInputMethodClient;Landroid/os/Message;)V

    .line 3428
    :cond_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_16 .. :try_end_55} :catchall_61

    .line 3436
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 3431
    :cond_59
    :try_start_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_61

    .line 3434
    :try_start_5a
    invoke-virtual {p3}, Landroid/view/InputChannel;->dispose()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_64

    .line 3436
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_61
    move-exception p0

    .line 3431
    :try_start_62
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    :try_start_63
    throw p0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_64

    :catchall_64
    move-exception p0

    .line 3436
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3437
    throw p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6818
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eqz v0, :cond_40

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_40

    if-eqz p6, :cond_11

    const/4 p0, -0x1

    const/4 p1, 0x0

    .line 6825
    invoke-virtual {p6, p0, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 6827
    :cond_11
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "InputMethodManagerService does not support shell commands from non-shell users. callingUid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " args="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6829
    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6830
    invoke-static {v0}, Landroid/os/Process;->isCoreUid(I)Z

    move-result p1

    if-eqz p1, :cond_3a

    const-string p1, "InputMethodManagerService"

    .line 6832
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6835
    :cond_3a
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6837
    :cond_40
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;

    invoke-direct {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

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

.method public final onShowHideSoftInputRequested(ZLandroid/os/IBinder;I)V
    .registers 15
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 5521
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    .line 5522
    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/android/server/wm/WindowManagerInternal;->onToggleImeRequested(ZLandroid/os/IBinder;Landroid/os/IBinder;I)Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;

    move-result-object p1

    .line 5524
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSoftInputShowHideHistory:Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;

    new-instance v10, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v3, p1, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->focusedWindowName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowSoftInputMode:I

    iget-boolean v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInFullscreenMode:Z

    iget-object v7, p1, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->requestWindowName:Ljava/lang/String;

    iget-object v8, p1, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->imeControlTargetName:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->imeLayerTargetName:Ljava/lang/String;

    move-object v0, v10

    move v5, p3

    invoke-direct/range {v0 .. v9}, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Landroid/view/inputmethod/EditorInfo;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v10}, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;->addEntry(Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;)V

    return-void
.end method

.method public final onStylusHandwritingReady(II)V
    .registers 4

    .line 5898
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x44c

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2302
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/view/IInputMethodManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception p0

    .line 2306
    instance-of p1, p0, Ljava/lang/SecurityException;

    if-nez p1, :cond_11

    const-string p1, "InputMethodManagerService"

    const-string p2, "Input Method Manager Crash"

    .line 2307
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2309
    :cond_11
    throw p0
.end method

.method public onUnlockUser(I)V
    .registers 7

    .line 1967
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 1968
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v1

    if-eq p1, v1, :cond_d

    .line 1973
    monitor-exit v0

    return-void

    .line 1975
    :cond_d
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_17

    move v2, v4

    goto :goto_18

    :cond_17
    move v2, v3

    :goto_18
    invoke-virtual {p1, v1, v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->switchCurrentUser(IZ)V

    .line 1976
    iget-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-eqz p1, :cond_25

    .line 1978
    invoke-virtual {p0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    .line 1979
    invoke-virtual {p0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    :cond_25
    const-string p1, "InputMethodManagerService"

    .line 1983
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUnlockUser : mImeSelectedOnBoot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeSelectedOnBoot:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mInitialUserSwitch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInitialUserSwitch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    iget-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeSelectedOnBoot:Z

    if-eqz p1, :cond_50

    iget-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInitialUserSwitch:Z

    if-eqz p1, :cond_51

    :cond_50
    move v3, v4

    :cond_51
    invoke-virtual {p0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    .line 1986
    invoke-virtual {p0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    .line 1988
    monitor-exit v0

    return-void

    :catchall_59
    move-exception p0

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_3 .. :try_end_5b} :catchall_59

    throw p0
.end method

.method public overrideDirectWritingFlag()V
    .registers 2

    const/4 v0, 0x1

    .line 8681
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mOverrideDWFlag:Z

    return-void
.end method

.method public performOnCreateInlineSuggestionsRequestLocked()V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 2578
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPendingInlineSuggestionsRequest:Lcom/android/server/inputmethod/InputMethodManagerService$CreateInlineSuggestionsRequest;

    if-nez v0, :cond_5

    return-void

    .line 2581
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 2586
    new-instance v7, Lcom/android/server/inputmethod/InputMethodManagerService$InlineSuggestionsRequestCallbackDecorator;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPendingInlineSuggestionsRequest:Lcom/android/server/inputmethod/InputMethodManagerService$CreateInlineSuggestionsRequest;

    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService$CreateInlineSuggestionsRequest;->mCallback:Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    iget-object v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService$CreateInlineSuggestionsRequest;->mPackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    .line 2590
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurTokenLocked()Landroid/os/IBinder;

    move-result-object v5

    move-object v1, v7

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService$InlineSuggestionsRequestCallbackDecorator;-><init>(Lcom/android/internal/view/IInlineSuggestionsRequestCallback;Ljava/lang/String;ILandroid/os/IBinder;Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 2591
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPendingInlineSuggestionsRequest:Lcom/android/server/inputmethod/InputMethodManagerService$CreateInlineSuggestionsRequest;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$CreateInlineSuggestionsRequest;->mRequestInfo:Lcom/android/internal/view/InlineSuggestionsRequestInfo;

    invoke-virtual {v0, v1, v7}, Lcom/android/server/inputmethod/IInputMethodInvoker;->onCreateInlineSuggestionsRequest(Lcom/android/internal/view/InlineSuggestionsRequestInfo;Lcom/android/internal/view/IInlineSuggestionsRequestCallback;)V

    goto :goto_2d

    :cond_26
    const-string v0, "InputMethodManagerService"

    const-string v1, "No IME connected! Abandoning inline suggestions creation request."

    .line 2594
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2596
    :goto_2d
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearPendingInlineSuggestionsRequestLocked()V

    return-void
.end method

.method public final prepareClientSwitchLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    const/4 v0, 0x1

    .line 3303
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentClientLocked(I)V

    .line 3305
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    .line 3306
    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleSetActiveToClient(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;ZZZ)V

    :cond_c
    return-void
.end method

.method public final publishLocalService()V
    .registers 4

    .line 6368
    const-class v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl-IA;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public final queryMethodMapForUser(I)Landroid/util/ArrayMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 6332
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 6333
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 6334
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 6336
    invoke-static {v2, p1}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->load(Landroid/util/ArrayMap;I)V

    .line 6337
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    move v1, p1

    move-object v3, v6

    invoke-static/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryInputMethodServicesInternal(Landroid/content/Context;ILandroid/util/ArrayMap;Landroid/util/ArrayMap;Ljava/util/ArrayList;I)V

    return-object v6
.end method

.method public reRequestCurrentClientSessionLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 3459
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_16

    .line 3460
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V

    .line 3461
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V

    .line 3462
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->requestClientSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V

    .line 3463
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->requestClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V

    :cond_16
    return-void
.end method

.method public registerSamsungAdditionalReceivers()V
    .registers 6

    .line 7848
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 7849
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7850
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$ScreenOffReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ScreenOffReceiver;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 7853
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 7854
    sget-object v1, Landroid/app/UiModeManager;->SEM_ACTION_ENTER_DESKTOP_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7855
    sget-object v1, Landroid/app/UiModeManager;->SEM_ACTION_EXIT_DESKTOP_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7856
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$KnoxDesktopModeReceiver;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 7860
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.android.inputmethod.Subtype"

    .line 7861
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7862
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$KeyboardSubTypeReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$KeyboardSubTypeReceiver;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 7866
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.sea.rm.DEMO_RESET_STARTED"

    .line 7867
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7868
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v0, "ro.csc.sales_code"

    .line 7872
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "VZW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_73

    .line 7873
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VPP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 7874
    :cond_73
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    .line 7875
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7876
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$VZWResetSettingReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$VZWResetSettingReceiver;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    const-string v3, "com.sec.android.settings.permission.SOFT_RESET"

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 7880
    :cond_89
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "universal_switch_enabled"

    .line 7881
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUniversalSwitchChangeObserver:Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;

    const/4 v3, 0x0

    .line 7880
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 7886
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dexonpc_connection_state"

    .line 7887
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDexOnPCStateChangeObserver:Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;

    .line 7886
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 7892
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessControlEnableChangeObserver:Lcom/android/server/inputmethod/InputMethodManagerService$AccessControlEnableChangeObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 7894
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_keyboard_block"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessControlKeyboardEnableChangeObserver:Lcom/android/server/inputmethod/InputMethodManagerService$AccessControlKeyboardEnableChangeObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 7898
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getHwKeyboardStatusChangeListener()Lcom/android/server/inputmethod/HWKeyboardStatusChangeListener;

    move-result-object v0

    .line 7899
    new-instance v1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-direct {v1}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;-><init>()V

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSamsungIMMSHWKeyboard:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 7900
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->registerReceiver(Landroid/content/Context;)V

    .line 7901
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSamsungIMMSHWKeyboard:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->setOnHardKeyboardStatusChangeListener(Lcom/android/server/inputmethod/HWKeyboardStatusChangeListener;)V

    return-void
.end method

.method public removeClient(Lcom/android/internal/view/IInputMethodClient;)V
    .registers 7

    const-string v0, "InputMethodManagerService"

    const-string/jumbo v1, "removeClient"

    .line 2822
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2825
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 2826
    :try_start_b
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v1, :cond_77

    .line 2828
    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->clientDeathRecipient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2829
    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V

    .line 2830
    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V

    .line 2832
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVirtualDisplayIdToParentMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_31
    if-ltz p1, :cond_49

    .line 2834
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVirtualDisplayIdToParentMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;

    .line 2835
    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;->-$$Nest$fgetmParentClient(Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v2

    if-ne v2, v1, :cond_46

    .line 2836
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVirtualDisplayIdToParentMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_46
    add-int/lit8 p1, p1, -0x1

    goto :goto_31

    .line 2840
    :cond_49
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_71

    .line 2841
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    const/16 v4, 0x15

    invoke-virtual {p0, p1, v3, v2, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    .line 2843
    iget-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToMethod:Z

    if-eqz p1, :cond_6b

    .line 2844
    iput-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToMethod:Z

    .line 2845
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p1

    if-eqz p1, :cond_6b

    .line 2849
    invoke-virtual {p1}, Lcom/android/server/inputmethod/IInputMethodInvoker;->unbindInput()V

    .line 2850
    invoke-static {}, Lcom/android/server/AccessibilityManagerInternal;->get()Lcom/android/server/AccessibilityManagerInternal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/AccessibilityManagerInternal;->unbindInput()V

    .line 2853
    :cond_6b
    iput-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToAccessibility:Z

    .line 2854
    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 2855
    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurVirtualDisplayToScreenMatrix:Landroid/graphics/Matrix;

    .line 2857
    :cond_71
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-ne p1, v1, :cond_77

    .line 2858
    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 2861
    :cond_77
    monitor-exit v0

    return-void

    :catchall_79
    move-exception p0

    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_b .. :try_end_7b} :catchall_79

    throw p0
.end method

.method public removeImeSurface()V
    .registers 4

    .line 5181
    sget-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG_SEP:Z

    if-eqz v0, :cond_c

    const-string v0, "InputMethodManagerService"

    const-string/jumbo v1, "removeImeSurface called with checking permission."

    .line 5182
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5184
    :cond_c
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5185
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x424

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public removeImeSurfaceFromWindowAsync(Landroid/os/IBinder;)V
    .registers 3

    .line 5290
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x425

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final reportFullscreenMode(Landroid/os/IBinder;Z)V
    .registers 8

    .line 6619
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 6620
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 6621
    monitor-exit v0

    return-void

    .line 6623
    :cond_b
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz p1, :cond_26

    iget-object v1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v1, :cond_26

    .line 6624
    iput-boolean p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInFullscreenMode:Z

    .line 6625
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xbe5

    const/4 v4, 0x0

    if-eqz p2, :cond_1e

    const/4 p2, 0x1

    goto :goto_1f

    :cond_1e
    move p2, v4

    :goto_1f
    invoke-virtual {v2, v3, p2, v4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Lcom/android/internal/view/IInputMethodClient;Landroid/os/Message;)V

    .line 6629
    :cond_26
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public reportPerceptibleAsync(Landroid/os/IBinder;Z)V
    .registers 7

    const-string/jumbo v0, "windowToken must not be null"

    .line 4156
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4157
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4158
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 4159
    :try_start_c
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v1

    if-nez v1, :cond_14

    .line 4160
    monitor-exit v0

    return-void

    .line 4162
    :cond_14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_33

    .line 4164
    :try_start_18
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    if-ne v3, p1, :cond_29

    iget-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurPerceptible:Z

    if-eq p1, p2, :cond_29

    .line 4166
    iput-boolean p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurPerceptible:Z

    .line 4167
    iget p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    iget p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V
    :try_end_29
    .catchall {:try_start_18 .. :try_end_29} :catchall_2e

    .line 4170
    :cond_29
    :try_start_29
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4172
    monitor-exit v0

    return-void

    :catchall_2e
    move-exception p0

    .line 4170
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4171
    throw p0

    :catchall_33
    move-exception p0

    .line 4172
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_29 .. :try_end_35} :catchall_33

    throw p0
.end method

.method public final reportStartInput(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 5

    .line 3806
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 3807
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 3808
    monitor-exit v0

    return-void

    .line 3810
    :cond_b
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeTargetWindowMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/IBinder;

    if-eqz p2, :cond_1a

    .line 3812
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowManagerInternal;->updateInputMethodTargetWindow(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 3814
    :cond_1a
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastImeTargetWindow:Landroid/os/IBinder;

    .line 3815
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public reportVirtualDisplayGeometryAsync(Lcom/android/internal/view/IInputMethodClient;I[F)V
    .registers 10

    .line 5192
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, p2}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    if-eqz v0, :cond_135

    .line 5197
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5198
    iget v0, v0, Landroid/view/DisplayInfo;->ownerUid:I

    if-ne v1, v0, :cond_12d

    .line 5202
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14c

    .line 5203
    :try_start_13
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-nez v1, :cond_23

    .line 5205
    monitor-exit v0

    return-void

    :cond_23
    if-nez p3, :cond_55

    .line 5210
    iget-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVirtualDisplayIdToParentMap:Landroid/util/SparseArray;

    .line 5211
    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;

    if-nez p3, :cond_31

    .line 5213
    monitor-exit v0

    return-void

    .line 5215
    :cond_31
    invoke-static {p3}, Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;->-$$Nest$fgetmParentClient(Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object p3

    if-ne p3, v1, :cond_3e

    .line 5219
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVirtualDisplayIdToParentMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 5220
    monitor-exit v0

    return-void

    .line 5216
    :cond_3e
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Only the owner client can clear VirtualDisplayGeometry for display #"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5223
    :cond_55
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVirtualDisplayIdToParentMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;

    if-eqz v2, :cond_89

    .line 5224
    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;->-$$Nest$fgetmParentClient(Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v3

    if-ne v3, v1, :cond_66

    goto :goto_89

    .line 5225
    :cond_66
    new-instance p0, Ljava/security/InvalidParameterException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display #"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is already registered by "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;->-$$Nest$fgetmParentClient(Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_89
    :goto_89
    if-nez v2, :cond_bf

    .line 5229
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v2, p2, v3}, Lcom/android/server/wm/WindowManagerInternal;->isUidAllowedOnDisplay(II)Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 5233
    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    invoke-direct {v2, v1, v3}, Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Landroid/graphics/Matrix;)V

    .line 5234
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVirtualDisplayIdToParentMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_bf

    .line 5230
    :cond_a5
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cannot access to display #"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5236
    :cond_bf
    :goto_bf
    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;->-$$Nest$fgetmMatrix(Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/graphics/Matrix;->setValues([F)V

    .line 5238
    iget-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz p3, :cond_128

    iget-object v1, p3, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-nez v1, :cond_cf

    goto :goto_128

    :cond_cf
    const/4 v1, 0x0

    .line 5243
    iget p3, p3, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    const/4 v3, 0x0

    move v4, v3

    :goto_d4
    if-ne p3, p2, :cond_d8

    const/4 v5, 0x1

    goto :goto_d9

    :cond_d8
    move v5, v3

    :goto_d9
    or-int/2addr v4, v5

    .line 5247
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVirtualDisplayIdToParentMap:Landroid/util/SparseArray;

    invoke-virtual {v5, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;

    if-nez p3, :cond_e5

    goto :goto_11f

    :cond_e5
    if-nez v1, :cond_f1

    .line 5252
    new-instance v1, Landroid/graphics/Matrix;

    invoke-static {p3}, Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;->-$$Nest$fgetmMatrix(Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;)Landroid/graphics/Matrix;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    goto :goto_f8

    .line 5254
    :cond_f1
    invoke-static {p3}, Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;->-$$Nest$fgetmMatrix(Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;)Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 5256
    :goto_f8
    invoke-static {p3}, Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;->-$$Nest$fgetmParentClient(Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object p3

    iget p3, p3, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    iget v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    if-ne p3, v5, :cond_121

    if-eqz v4, :cond_11f

    const/16 p2, 0x9

    new-array p2, p2, [F

    .line 5259
    invoke-virtual {v1, p2}, Landroid/graphics/Matrix;->getValues([F)V
    :try_end_10b
    .catchall {:try_start_13 .. :try_end_10b} :catchall_12a

    .line 5261
    :try_start_10b
    iget-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object p3, p3, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    .line 5262
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSequenceNumberLocked()I

    move-result p0

    .line 5261
    invoke-interface {p3, p0, p2}, Lcom/android/internal/view/IInputMethodClient;->updateVirtualDisplayToScreenMatrix(I[F)V
    :try_end_116
    .catch Landroid/os/RemoteException; {:try_start_10b .. :try_end_116} :catch_117
    .catchall {:try_start_10b .. :try_end_116} :catchall_12a

    goto :goto_11f

    :catch_117
    move-exception p0

    :try_start_118
    const-string p2, "InputMethodManagerService"

    const-string p3, "Exception calling updateVirtualDisplayToScreenMatrix()"

    .line 5264
    invoke-static {p2, p3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5274
    :cond_11f
    :goto_11f
    monitor-exit v0

    goto :goto_15f

    .line 5272
    :cond_121
    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;->-$$Nest$fgetmParentClient(Lcom/android/server/inputmethod/InputMethodManagerService$VirtualDisplayInfo;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object p3

    iget p3, p3, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    goto :goto_d4

    .line 5239
    :cond_128
    :goto_128
    monitor-exit v0

    return-void

    :catchall_12a
    move-exception p0

    .line 5274
    monitor-exit v0
    :try_end_12c
    .catchall {:try_start_118 .. :try_end_12c} :catchall_12a

    :try_start_12c
    throw p0

    .line 5199
    :cond_12d
    new-instance p0, Ljava/lang/SecurityException;

    const-string p2, "The caller doesn\'t own the display."

    invoke-direct {p0, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5194
    :cond_135
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot find display for non-existent displayId: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_14c
    .catchall {:try_start_12c .. :try_end_14c} :catchall_14c

    :catchall_14c
    move-exception p0

    if-eqz p1, :cond_15f

    .line 5278
    :try_start_14f
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/internal/view/IInputMethodClient;->throwExceptionFromSystem(Ljava/lang/String;)V
    :try_end_156
    .catch Landroid/os/RemoteException; {:try_start_14f .. :try_end_156} :catch_157

    goto :goto_15f

    :catch_157
    move-exception p0

    const-string p1, "InputMethodManagerService"

    const-string p2, "Exception calling throwExceptionFromSystem()"

    .line 5280
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15f
    :goto_15f
    return-void
.end method

.method public requestClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 3509
    iget-boolean p0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->mSessionRequestedForAccessibility:Z

    if-nez p0, :cond_2c

    const/4 p0, 0x1

    .line 3511
    iput-boolean p0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->mSessionRequestedForAccessibility:Z

    .line 3512
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    const/4 v0, 0x0

    .line 3513
    :goto_d
    iget-object v1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 3514
    iget-object v1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 3516
    :cond_25
    invoke-static {}, Lcom/android/server/AccessibilityManagerInternal;->get()Lcom/android/server/AccessibilityManagerInternal;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/AccessibilityManagerInternal;->createImeSession(Landroid/util/ArraySet;)V

    :cond_2c
    return-void
.end method

.method public requestClientSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 3469
    iget-boolean v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->sessionRequested:Z

    if-nez v0, :cond_43

    .line 3471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Creating new session for client "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3475
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    const/4 v1, 0x0

    .line 3476
    aget-object v1, v0, v1

    const/4 v2, 0x1

    .line 3477
    aget-object v0, v0, v2

    .line 3480
    iput-boolean v2, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->sessionRequested:Z

    .line 3482
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p1

    .line 3483
    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$2;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$2;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/IInputMethodInvoker;Landroid/view/InputChannel;)V

    .line 3496
    :try_start_33
    invoke-virtual {p1, v0, v2}, Lcom/android/server/inputmethod/IInputMethodInvoker;->createSession(Landroid/view/InputChannel;Lcom/android/internal/view/IInputSessionCallback;)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_3c

    if-eqz v0, :cond_43

    .line 3501
    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    goto :goto_43

    :catchall_3c
    move-exception p0

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 3503
    :cond_42
    throw p0

    :cond_43
    :goto_43
    return-void
.end method

.method public resetCurrentMethodAndClientLocked(I)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3452
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->setSelectedMethodIdLocked(Ljava/lang/String;)V

    .line 3453
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    .line 3454
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentClientLocked(I)V

    return-void
.end method

.method public final resetDefaultImeLocked(Landroid/content/Context;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 2146
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 2147
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    const-string v1, "InputMethodManagerService"

    if-eqz v0, :cond_3f

    .line 2148
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 2149
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.sohu.inputmethod.sogou.samsung/.SogouIME"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 2150
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.touchtype.swiftkey/com.touchtype.KeyboardService"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    :cond_38
    const-string/jumbo p0, "resetDefaultImeLocked: Do not reset the default (current) IME that preloaded."

    .line 2151
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2157
    :cond_3f
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 2158
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v0

    if-nez v0, :cond_54

    return-void

    .line 2161
    :cond_54
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 2162
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v0

    .line 2161
    invoke-static {p1, v0}, Lcom/android/server/inputmethod/InputMethodUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 2163
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6a

    const-string p0, "No default found"

    .line 2164
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6a
    const/4 v0, 0x0

    .line 2167
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodInfo;

    const/4 v1, -0x1

    .line 2171
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    return-void
.end method

.method public final resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 6253
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 6255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetSelectedInputMethodAndSubtypeLocked mMethodMap size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputMethodManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3c

    .line 6257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resetSelectedInputMethodAndSubtypeLocked imi : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    const/4 v1, -0x1

    if-eqz v0, :cond_6b

    .line 6262
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6b

    .line 6263
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getLastSubtypeForInputMethodLocked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6b

    .line 6267
    :try_start_4d
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 6266
    invoke-static {v0, v3}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v1
    :try_end_55
    .catch Ljava/lang/NumberFormatException; {:try_start_4d .. :try_end_55} :catch_56

    goto :goto_6b

    :catch_56
    move-exception v3

    .line 6269
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HashCode for subtype looks broken: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6b
    :goto_6b
    const/4 p1, 0x0

    .line 6273
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    return-void
.end method

.method public final resetStylusHandwriting(I)V
    .registers 6

    .line 5483
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5484
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/HandwritingModeController;->getCurrentRequestId()Ljava/util/OptionalInt;

    move-result-object v1

    .line 5485
    invoke-virtual {v1}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v1}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v1

    if-eq v1, p1, :cond_2b

    :cond_15
    const-string v1, "InputMethodManagerService"

    .line 5486
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IME requested to finish handwriting with a mismatched requestId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5489
    :cond_2b
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleResetStylusHandwriting()V

    .line 5490
    monitor-exit v0

    return-void

    :catchall_30
    move-exception p0

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw p0
.end method

.method public resetSystemUiLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3443
    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    .line 3444
    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    .line 3445
    invoke-virtual {p0, v0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    const/4 v0, -0x1

    .line 3446
    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    const/4 v0, 0x0

    .line 3447
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurHostInputToken:Landroid/os/IBinder;

    return-void
.end method

.method public scheduleNotifyImeUidToAudioService(I)V
    .registers 4

    .line 3396
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1b58

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3397
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 3398
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public scheduleResetStylusHandwriting()V
    .registers 2

    .line 3391
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x442

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final scheduleSetActiveToClient(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;ZZZ)V
    .registers 12

    .line 5917
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    const/16 v2, 0xbcc

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->obtainMessageIIIO(IIIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Lcom/android/internal/view/IInputMethodClient;Landroid/os/Message;)V

    return-void
.end method

.method public scheduleSwitchUserTaskLocked(ILcom/android/internal/view/IInputMethodClient;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 1995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "scheduleSwitchUserTaskLocked: userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    if-eqz v0, :cond_27

    .line 1998
    iget v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mToUserId:I

    if-ne v1, p1, :cond_22

    .line 1999
    iput-object p2, v0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mClientToBeReset:Lcom/android/internal/view/IInputMethodClient;

    return-void

    .line 2002
    :cond_22
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2006
    :cond_27
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    .line 2008
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;ILcom/android/internal/view/IInputMethodClient;)V

    .line 2010
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    .line 2011
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final semIsKeyboardTypedMouse(Landroid/view/InputDevice;)Z
    .registers 4

    .line 8038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/InputDevice;->getVendorId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/InputDevice;->getProductId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8039
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mKeyboardTypeMouseIdList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_26

    const/4 p0, 0x1

    goto :goto_27

    :cond_26
    const/4 p0, 0x0

    :goto_27
    return p0
.end method

.method public sendInputText(Ljava/lang/CharSequence;)V
    .registers 3

    .line 8654
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurInputContext:Lcom/android/internal/view/IInputContext;

    if-eqz p0, :cond_c

    .line 8655
    invoke-static {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->create(Lcom/android/internal/view/IInputContext;)Lcom/android/internal/inputmethod/IInputContextInvoker;

    move-result-object p0

    const/4 v0, 0x0

    .line 8656
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->commitText(Ljava/lang/CharSequence;I)Z

    :cond_c
    return-void
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)V
    .registers 2

    .line 8661
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurInputContext:Lcom/android/internal/view/IInputContext;

    if-eqz p0, :cond_b

    .line 8662
    invoke-static {p0}, Lcom/android/internal/inputmethod/IInputContextInvoker;->create(Lcom/android/internal/view/IInputContext;)Lcom/android/internal/inputmethod/IInputContextInvoker;

    move-result-object p0

    .line 8663
    invoke-virtual {p0, p1}, Lcom/android/internal/inputmethod/IInputContextInvoker;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_b
    return-void
.end method

.method public sendOnNavButtonFlagsChangedLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 6121
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 6126
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodNavButtonFlagsLocked()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->onNavButtonFlagsChanged(I)V

    return-void
.end method

.method public setAccessControlEnable(Z)V
    .registers 2

    .line 8403
    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessControlEnable:Z

    return-void
.end method

.method public setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 11

    .line 5098
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c7

    if-nez p2, :cond_a

    goto/16 :goto_c7

    .line 5099
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5100
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_12
    if-ge v3, v1, :cond_49

    aget-object v4, p2, v3

    .line 5101
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_20

    .line 5102
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_46

    :cond_20
    const-string v5, "InputMethodManagerService"

    .line 5104
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Duplicated subtype definition found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5105
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5104
    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 5108
    :cond_49
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    .line 5109
    :try_start_4c
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v3

    if-nez v3, :cond_54

    .line 5110
    monitor-exit v1

    return-void

    .line 5112
    :cond_54
    iget-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-nez v3, :cond_5a

    .line 5113
    monitor-exit v1

    return-void

    .line 5115
    :cond_5a
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodInfo;

    if-nez p1, :cond_66

    .line 5116
    monitor-exit v1
    :try_end_65
    .catchall {:try_start_4c .. :try_end_65} :catchall_c4

    return-void

    .line 5119
    :cond_66
    :try_start_66
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_70} :catch_bb
    .catchall {:try_start_66 .. :try_end_70} :catchall_c4

    if-eqz v3, :cond_b9

    .line 5125
    :try_start_72
    array-length v4, v3

    move v5, v2

    :goto_74
    if-ge v5, v4, :cond_b9

    .line 5127
    aget-object v6, v3, v5

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b6

    .line 5128
    array-length p2, p2

    if-lez p2, :cond_8f

    .line 5129
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAdditionalSubtypeMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_98

    .line 5131
    :cond_8f
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAdditionalSubtypeMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5133
    :goto_98
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAdditionalSubtypeMap:Landroid/util/ArrayMap;

    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 5134
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v0

    .line 5133
    invoke-static {p1, p2, v0}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->save(Landroid/util/ArrayMap;Landroid/util/ArrayMap;I)V

    .line 5135
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1
    :try_end_a9
    .catchall {:try_start_72 .. :try_end_a9} :catchall_c4

    .line 5137
    :try_start_a9
    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->buildInputMethodListLocked(Z)V
    :try_end_ac
    .catchall {:try_start_a9 .. :try_end_ac} :catchall_b1

    .line 5139
    :try_start_ac
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5141
    monitor-exit v1

    return-void

    :catchall_b1
    move-exception p0

    .line 5139
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5140
    throw p0

    :cond_b6
    add-int/lit8 v5, v5, 0x1

    goto :goto_74

    .line 5145
    :cond_b9
    monitor-exit v1

    return-void

    :catch_bb
    const-string p0, "InputMethodManagerService"

    const-string p1, "Failed to get package infos"

    .line 5121
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5122
    monitor-exit v1

    return-void

    :catchall_c4
    move-exception p0

    .line 5145
    monitor-exit v1
    :try_end_c6
    .catchall {:try_start_ac .. :try_end_c6} :catchall_c4

    throw p0

    :cond_c7
    :goto_c7
    return-void
.end method

.method public setCurHostInputToken(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 4

    .line 2697
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 2698
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 2699
    monitor-exit v0

    return-void

    .line 2701
    :cond_b
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurHostInputToken:Landroid/os/IBinder;

    .line 2702
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public setCurTokenDisplayIdLocked(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 958
    iput p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    return-void
.end method

.method public setCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Z
    .registers 6

    .line 8556
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 8559
    :cond_8
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 8560
    :try_start_b
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_2c

    if-eqz v2, :cond_2c

    .line 8562
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 8563
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result p1

    invoke-static {v3, p1}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result p1

    const/4 v3, -0x1

    if-eq p1, v3, :cond_2c

    .line 8565
    invoke-virtual {p0, v2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    const/4 p0, 0x1

    .line 8566
    monitor-exit v0

    return p0

    .line 8569
    :cond_2c
    monitor-exit v0

    return v1

    :catchall_2e
    move-exception p0

    .line 8570
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_b .. :try_end_30} :catchall_2e

    throw p0
.end method

.method public setDefaultIMEForKeyboard()V
    .registers 6

    .line 7929
    sget-object v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-void

    .line 7931
    :cond_5
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_35

    .line 7932
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_35

    .line 7933
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_18
    if-ge v1, v0, :cond_35

    .line 7935
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 7938
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 7940
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/inputmethod/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;

    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_35
    return-void
.end method

.method public final setDefaultIMEForKeyboard(Ljava/lang/String;)V
    .registers 4

    .line 7949
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->isInstalledInputMethod(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "InputMethodManagerService"

    if-nez v0, :cond_1e

    .line 7950
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setDefaultIMEForKeyboard, IME not installed: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7955
    :cond_1e
    :try_start_1e
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_27} :catch_28

    goto :goto_3e

    :catch_28
    move-exception p0

    .line 7957
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setDefaultIMEForKeyboard "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3e
    return-void
.end method

.method public final setDefaultInputMethod()V
    .registers 3

    .line 7567
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isSamsungDefaultMethodID()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 7570
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isHoneyboardInstalled()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 7572
    :try_start_19
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_22} :catch_23

    goto :goto_2d

    :catch_23
    move-exception p0

    .line 7574
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "InputMethodManagerService"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    :goto_2d
    return-void
.end method

.method public setDexSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-string p0, "InputMethodManagerService"

    .line 8501
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string/jumbo v1, "key"

    .line 8502
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "val"

    .line 8503
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8506
    :try_start_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDexSettings of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8507
    sget-object p2, Lcom/android/server/inputmethod/InputMethodManagerService;->DEX_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo p3, "setSettings"

    const/4 v1, 0x0

    invoke-virtual {p1, p2, p3, v1, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_3a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_3a} :catch_3b

    goto :goto_40

    :catch_3b
    const-string p1, "Failed to set settings"

    .line 8509
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_40
    return-void
.end method

.method public setDexSettingsValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 8545
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 8547
    :try_start_4
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setDexSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    .line 8549
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_11
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8550
    throw p0
.end method

.method public setDirectWritingFlag(Z)V
    .registers 2

    .line 8673
    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDirectWritingFlag:Z

    return-void
.end method

.method public setEnabledSessionForAccessibilityLocked(Landroid/util/SparseArray;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;",
            ">;)V"
        }
    .end annotation

    .line 5597
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 5598
    :goto_7
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_33

    .line 5599
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->contains(I)Z

    move-result v3

    if-nez v3, :cond_30

    .line 5600
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;

    if-eqz v3, :cond_30

    .line 5602
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    iget-object v3, v3, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;->mSession:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 5607
    :cond_33
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_40

    .line 5608
    invoke-static {}, Lcom/android/server/AccessibilityManagerInternal;->get()Lcom/android/server/AccessibilityManagerInternal;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/server/AccessibilityManagerInternal;->setImeSessionEnabled(Landroid/util/SparseArray;Z)V

    .line 5611
    :cond_40
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 5612
    :goto_45
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_6b

    .line 5613
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-nez v2, :cond_68

    .line 5614
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;

    if-eqz v2, :cond_68

    .line 5616
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;->mSession:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_68
    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    .line 5620
    :cond_6b
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_79

    .line 5621
    invoke-static {}, Lcom/android/server/AccessibilityManagerInternal;->get()Lcom/android/server/AccessibilityManagerInternal;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/server/AccessibilityManagerInternal;->setImeSessionEnabled(Landroid/util/SparseArray;Z)V

    .line 5624
    :cond_79
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    return-void
.end method

.method public setEnabledSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 5580
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-eq v0, p1, :cond_1e

    if-eqz v0, :cond_10

    .line 5581
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v1, :cond_10

    .line 5583
    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->method:Lcom/android/server/inputmethod/IInputMethodInvoker;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/inputmethod/IInputMethodInvoker;->setSessionEnabled(Lcom/android/internal/view/IInputMethodSession;Z)V

    .line 5585
    :cond_10
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-eqz p1, :cond_1e

    .line 5586
    iget-object p0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    if-eqz p0, :cond_1e

    .line 5588
    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->method:Lcom/android/server/inputmethod/IInputMethodInvoker;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->setSessionEnabled(Lcom/android/internal/view/IInputMethodSession;Z)V

    :cond_1e
    return-void
.end method

.method public final setImeWindowStatus(Landroid/os/IBinder;II)V
    .registers 6

    .line 3761
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->getTopFocusedDisplayId()I

    move-result v0

    .line 3763
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    .line 3764
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 3765
    monitor-exit v1

    return-void

    .line 3771
    :cond_11
    iget p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    if-eq p1, v0, :cond_19

    if-eqz p1, :cond_19

    .line 3773
    monitor-exit v1

    return-void

    .line 3775
    :cond_19
    iput p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    .line 3776
    iput p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    .line 3777
    invoke-virtual {p0, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 3778
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_58

    const-string p1, "InputMethodManagerService"

    .line 3781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setImeWindowStatus: vis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", backDisposition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p3, v1, :cond_4d

    if-eq p3, v0, :cond_4b

    and-int/lit8 p3, p2, 0x2

    if-eqz p3, :cond_4d

    :cond_4b
    move p3, v1

    goto :goto_4e

    :cond_4d
    move p3, p1

    .line 3797
    :goto_4e
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    and-int/2addr p2, v0

    if-eqz p2, :cond_54

    move p1, v1

    :cond_54
    invoke-virtual {p0, p3, p1}, Lcom/android/server/wm/WindowManagerInternal;->setDismissImeOnBackKeyPressed(ZZ)V

    return-void

    :catchall_58
    move-exception p0

    .line 3778
    :try_start_59
    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw p0
.end method

.method public final setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 5

    .line 4926
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 4927
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 4928
    monitor-exit v0

    return-void

    :cond_b
    const/4 v1, -0x1

    .line 4930
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 4931
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public final setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 6

    .line 4937
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 4938
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 4939
    monitor-exit v0

    return-void

    :cond_b
    if-eqz p3, :cond_21

    .line 4942
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    .line 4943
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 4944
    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result p3

    .line 4943
    invoke-static {v1, p3}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result p3

    .line 4942
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V

    goto :goto_24

    .line 4946
    :cond_21
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 4948
    :goto_24
    monitor-exit v0

    return-void

    :catchall_26
    move-exception p0

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public final setInputMethodEnabledLocked(Ljava/lang/String;Z)Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 6189
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 6190
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_2b

    .line 6193
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 6194
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    return v1

    .line 6200
    :cond_25
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->appendAndPutEnabledInputMethodLocked(Ljava/lang/String;Z)V

    return v2

    .line 6204
    :cond_2b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6205
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3, p2, v0, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->buildAndPutEnabledInputMethodsStrRemovingIdLocked(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_57

    .line 6208
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {p2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object p2

    .line 6209
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_56

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result p1

    if-nez p1, :cond_56

    const-string p1, "InputMethodManagerService"

    const-string p2, "Can\'t find new IME, unsetting the current input method."

    .line 6210
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    .line 6211
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    :cond_56
    return v1

    :cond_57
    return v2
.end method

.method public setInputMethodLocked(Ljava/lang/String;I)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 4013
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v0, :cond_ed

    .line 4019
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a2

    .line 4020
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result p1

    if-gtz p1, :cond_1c

    return-void

    .line 4024
    :cond_1c
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-ltz p2, :cond_27

    if-ge p2, p1, :cond_27

    .line 4027
    invoke-virtual {v0, p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p1

    goto :goto_2b

    .line 4031
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p1

    :goto_2b
    const-string v3, "InputMethodManagerService"

    if-eqz p1, :cond_85

    if-nez v1, :cond_32

    goto :goto_85

    .line 4040
    :cond_32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "subtype state: oldSubtype = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " newSubtype = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " force = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsNeedUpdateSubtypeForLocaleChanged:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v1, :cond_5f

    .line 4041
    iget-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsNeedUpdateSubtypeForLocaleChanged:Z

    if-eqz v3, :cond_84

    :cond_5f
    const/4 v3, 0x1

    .line 4043
    invoke-virtual {p0, v0, p2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 4044
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p2

    if-eqz p2, :cond_73

    .line 4046
    iget v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    iget v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    invoke-virtual {p0, v3, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 4047
    invoke-virtual {p2, p1}, Lcom/android/server/inputmethod/IInputMethodInvoker;->changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 4050
    :cond_73
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {p2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result p2

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->notifyInputMethodSubtypeChanged(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 4051
    iget-boolean p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsNeedUpdateSubtypeForLocaleChanged:Z

    if-eqz p2, :cond_84

    if-ne p1, v1, :cond_84

    .line 4052
    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsNeedUpdateSubtypeForLocaleChanged:Z

    :cond_84
    return-void

    .line 4034
    :cond_85
    :goto_85
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Illegal subtype state: old subtype = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", new subtype = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4060
    :cond_a2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 4064
    :try_start_a6
    invoke-virtual {p0, v0, p2, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 4068
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setSelectedMethodIdLocked(Ljava/lang/String;)V

    .line 4070
    const-class p2, Landroid/app/ActivityManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManagerInternal;

    invoke-virtual {p2}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result p2

    if-eqz p2, :cond_d3

    .line 4071
    new-instance p2, Landroid/content/Intent;

    const-string v1, "android.intent.action.INPUT_METHOD_CHANGED"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x20000000

    .line 4072
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "input_method_id"

    .line 4073
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4074
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_d3
    const/4 p1, 0x2

    .line 4076
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentClientLocked(I)V
    :try_end_d7
    .catchall {:try_start_a6 .. :try_end_d7} :catchall_e8

    .line 4078
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4081
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->notifyInputMethodSubtypeChanged(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    return-void

    :catchall_e8
    move-exception p0

    .line 4078
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4079
    throw p0

    .line 4015
    :cond_ed
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown id: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setInputMethodSwitchDisable(Lcom/android/internal/view/IInputMethodClient;Z)V
    .registers 7

    const-string v0, "InputMethodManagerService"

    .line 8187
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 8192
    :try_start_6
    sget-boolean v2, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputMethodSwitchDisable:Z

    if-eq v2, p2, :cond_78

    const-string/jumbo v2, "setInputMethodSwitchDisable change"

    .line 8193
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8194
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v2, :cond_46

    .line 8198
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    invoke-virtual {p0, v3, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->isImeClientFocused(Landroid/os/IBinder;Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)Z

    move-result p0

    if-nez p0, :cond_78

    .line 8199
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setInputMethodSwitchDisable : Ignoring, uid "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8200
    sput-boolean p2, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputMethodSwitchDisable:Z

    goto :goto_78

    .line 8196
    :cond_46
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown client "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_62} :catch_62

    :catch_62
    move-exception p0

    .line 8204
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setInputMethodSwitchDisable : exception "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_78
    :goto_78
    return-void
.end method

.method public final setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    if-nez p1, :cond_15

    .line 5496
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_d

    goto :goto_3e

    .line 5499
    :cond_d
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Using null token requires permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5503
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurTokenLocked()Landroid/os/IBinder;

    move-result-object v0

    if-eq v0, p1, :cond_3e

    .line 5504
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring setInputMethod of uid "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " token: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InputMethodManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5509
    :cond_3e
    :goto_3e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5511
    :try_start_42
    invoke-virtual {p0, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_49

    .line 5513
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_49
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5514
    throw p0
.end method

.method public final setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 6226
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->saveCurrentInputMethodAndSubtypeToHistory(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    const/4 v0, -0x1

    if-eqz p1, :cond_33

    if-gez p2, :cond_11

    goto :goto_33

    .line 6234
    :cond_11
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v1

    if-ge p2, v1, :cond_27

    .line 6235
    invoke-virtual {p1, p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p2

    .line 6236
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    .line 6237
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_3b

    .line 6239
    :cond_27
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {p2, v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    .line 6241
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_3b

    .line 6231
    :cond_33
    :goto_33
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {p2, v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    const/4 p2, 0x0

    .line 6232
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    :goto_3b
    if-nez p3, :cond_4b

    .line 6247
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    if-eqz p1, :cond_46

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p1

    goto :goto_48

    :cond_46
    const-string p1, ""

    :goto_48
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    :cond_4b
    return-void
.end method

.method public final setSelectedMethodIdLocked(Ljava/lang/String;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 781
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->setSelectedMethodId(Ljava/lang/String;)V

    return-void
.end method

.method public setShowImeWithHardKeyboardValue(Z)V
    .registers 6

    const-string v0, "0"

    if-eqz p1, :cond_7

    const-string v1, "1"

    goto :goto_8

    :cond_7
    move-object v1, v0

    .line 7834
    :goto_8
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isDexSetting()Z

    move-result v2

    const-string v3, "InputMethodManagerService"

    if-eqz v2, :cond_30

    .line 7835
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setShowImeWithHardKeyboardValue for DEX: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "keyboard_dex"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getDexSettingsValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7836
    invoke-virtual {p0, v2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setDexSettingsValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_50

    .line 7838
    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setShowImeWithHardKeyboardValue for Phone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7839
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->setShowImeWithHardKeyboard(Z)V

    :goto_50
    return-void
.end method

.method public final setWACOMPen(Z)V
    .registers 2

    .line 7526
    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mbWACOMPen:Z

    return-void
.end method

.method public setisAccessControlKeyboardBlockEnable(Z)V
    .registers 2

    .line 8407
    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessControlKeyboardBlockEnable:Z

    return-void
.end method

.method public final shouldOfferSwitchingToNextInputMethod(Landroid/os/IBinder;)Z
    .registers 6

    .line 5054
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5055
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_c

    .line 5056
    monitor-exit v0

    return v1

    .line 5058
    :cond_c
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    .line 5059
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 5058
    invoke-virtual {p1, v1, v2, p0}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-result-object p0

    if-nez p0, :cond_24

    .line 5062
    monitor-exit v0

    return v1

    :cond_24
    const/4 p0, 0x1

    .line 5064
    monitor-exit v0

    return p0

    :catchall_27
    move-exception p0

    .line 5065
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public final shouldPreventImeStartupLocked(Ljava/lang/String;II)Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 3270
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPreventImeStartupUnlessTextEditor:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 3275
    :cond_6
    invoke-static {p3, p2}, Lcom/android/server/inputmethod/InputMethodUtils;->isSoftInputModeStateVisibleAllowed(II)Z

    move-result p2

    if-nez p2, :cond_17

    .line 3277
    iget-boolean p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequested:Z

    if-nez p2, :cond_17

    .line 3279
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->isNonPreemptibleImeLocked(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_17

    const/4 v1, 0x1

    :cond_17
    return v1
.end method

.method public final shouldRestoreImeVisibility(Landroid/os/IBinder;I)Z
    .registers 6

    and-int/lit8 v0, p2, 0xf

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_b

    const/4 p2, 0x3

    if-eq v0, p2, :cond_a

    goto :goto_10

    :cond_a
    return v2

    :cond_b
    and-int/lit16 p2, p2, 0x100

    if-eqz p2, :cond_10

    return v2

    .line 4828
    :cond_10
    :goto_10
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerInternal;->shouldRestoreImeVisibility(Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method public shouldShowImeKeyboardDefaultDisplayOnly()Z
    .registers 3

    .line 8246
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 8247
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "touch_keyboard"

    const-string v1, "false"

    .line 8246
    invoke-static {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getDexSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 8248
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 8249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "shouldShowImeKeyboardDefaultDisplayOnly(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final shouldShowImeSwitcherLocked(I)Z
    .registers 15
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 3662
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 3663
    :cond_6
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodMenuController;->getSwitchingDialogLocked()Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_f

    return v1

    .line 3664
    :cond_f
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_22

    .line 3665
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_22

    return v1

    .line 3673
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isImeSwitcherDisabledPackage()Z

    move-result v0

    if-eqz v0, :cond_29

    return v1

    .line 3674
    :cond_29
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isScreenLocked()Z

    move-result v0

    if-eqz v0, :cond_30

    return v1

    .line 3675
    :cond_30
    sget-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputMethodSwitchDisable:Z

    if-eqz v0, :cond_35

    return v1

    .line 3676
    :cond_35
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    if-nez v0, :cond_3a

    return v1

    .line 3677
    :cond_3a
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_41

    return v1

    .line 3678
    :cond_41
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isScreenLocked()Z

    move-result v0

    if-eqz v0, :cond_48

    return v1

    :cond_48
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_4d

    return v1

    :cond_4d
    const/4 v0, 0x3

    and-int/lit8 v2, p1, 0x3

    if-eq v2, v0, :cond_63

    .line 3682
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 3683
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    move-result v0

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 3684
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->isHardKeyboardAvailable()Z

    move-result v0

    if-eqz v0, :cond_63

    return v1

    .line 3688
    :cond_63
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->isHardKeyboardAvailable()Z

    move-result v0

    const-string v2, "InputMethodManagerService"

    const/4 v3, 0x1

    if-eqz v0, :cond_75

    const-string/jumbo p0, "shouldShowImeSwitcherLocked isHardKeyboardAvailable return true"

    .line 3694
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_75
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_7a

    return v1

    .line 3702
    :cond_7a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "shouldShowImeSwitcherLocked : checking vis : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3704
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListWithFilterLocked(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    move-result-object p1

    .line 3706
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_a2

    return v3

    :cond_a2
    if-ge v0, v3, :cond_a5

    return v1

    :cond_a5
    const/4 v2, 0x0

    move v5, v1

    move v6, v5

    move v7, v6

    move-object v4, v2

    :goto_aa
    const-string v8, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    if-ge v5, v0, :cond_108

    .line 3714
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodInfo;

    .line 3715
    iget-object v10, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v11, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 3716
    invoke-virtual {v10, v11, v9, v3}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v10

    .line 3719
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    .line 3720
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ce

    if-le v11, v3, :cond_ce

    move v11, v3

    goto :goto_e7

    .line 3722
    :cond_ce
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v8

    const-string v12, "com.samsung.android.bixby.voiceinput/com.samsung.android.svoiceime.BixbyDictVoiceReco"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_105

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.samsung.android.bixby.service/.dictation.DictationInputMethodService"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e7

    goto :goto_105

    :cond_e7
    :goto_e7
    if-nez v11, :cond_ec

    add-int/lit8 v6, v6, 0x1

    goto :goto_105

    :cond_ec
    move v8, v1

    :goto_ed
    if-ge v8, v11, :cond_105

    .line 3730
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodSubtype;

    .line 3731
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v12

    if-nez v12, :cond_ff

    add-int/lit8 v6, v6, 0x1

    move-object v2, v9

    goto :goto_102

    :cond_ff
    add-int/lit8 v7, v7, 0x1

    move-object v4, v9

    :goto_102
    add-int/lit8 v8, v8, 0x1

    goto :goto_ed

    :cond_105
    :goto_105
    add-int/lit8 v5, v5, 0x1

    goto :goto_aa

    :cond_108
    if-gt v6, v3, :cond_14d

    if-le v7, v3, :cond_10d

    goto :goto_14d

    :cond_10d
    if-ne v6, v3, :cond_139

    if-ne v7, v3, :cond_139

    if-eqz v2, :cond_138

    if-eqz v4, :cond_138

    .line 3745
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12f

    .line 3746
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result p0

    if-nez p0, :cond_12f

    .line 3747
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result p0

    if-eqz p0, :cond_138

    :cond_12f
    const-string p0, "TrySuppressingImeSwitcher"

    .line 3748
    invoke-virtual {v2, p0}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_138

    return v1

    :cond_138
    return v3

    :cond_139
    if-ne v0, v3, :cond_14c

    .line 3755
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14c

    move v1, v3

    :cond_14c
    return v1

    :cond_14d
    :goto_14d
    return v3
.end method

.method public showCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 4180
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mbWACOMPen:Z

    const-string v1, "InputMethodManagerService"

    const/4 v2, 0x0

    if-eqz v0, :cond_3a

    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mOverrideDWFlag:Z

    if-nez v0, :cond_3a

    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDirectWritingFlag:Z

    if-eqz v0, :cond_3a

    .line 4181
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[DWL] show keyboard blocked by DW o="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mOverrideDWFlag:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", f="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDirectWritingFlag:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", w="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mbWACOMPen:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 4185
    :cond_3a
    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mOverrideDWFlag:Z

    .line 4190
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isKeyboardBlockedForInteractionControl()Z

    move-result v0

    if-eqz v0, :cond_48

    const-string p0, "Interaction Control Keyboard block is enabled, so not show keyboard"

    .line 4191
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_48
    const/4 v0, 0x1

    .line 4196
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequested:Z

    .line 4197
    iget-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessibilityRequestingNoSoftKeyboard:Z

    if-nez v3, :cond_cf

    iget-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeHiddenByDisplayPolicy:Z

    if-eqz v3, :cond_55

    goto/16 :goto_cf

    :cond_55
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_5e

    .line 4205
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowExplicitlyRequested:Z

    .line 4206
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowForced:Z

    goto :goto_63

    :cond_5e
    and-int/2addr p2, v0

    if-nez p2, :cond_63

    .line 4208
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowExplicitlyRequested:Z

    .line 4212
    :cond_63
    :goto_63
    iget-boolean p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNeedToExplicitallyCall:Z

    if-eqz p2, :cond_69

    .line 4213
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowExplicitlyRequested:Z

    .line 4217
    :cond_69
    iget-boolean p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-nez p2, :cond_73

    const-string p0, "System is not Ready, so not show keyboard"

    .line 4219
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 4224
    :cond_73
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {p2}, Lcom/android/server/inputmethod/InputMethodBindingController;->setCurrentMethodVisible()V

    .line 4225
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p2

    if-eqz p2, :cond_ce

    .line 4228
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    .line 4229
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequestWindowMap:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v2, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4230
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getImeShowFlagsLocked()I

    move-result v3

    .line 4232
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ".showSoftInput("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ") for reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4234
    invoke-static {p4}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputDisplayReasonToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4232
    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4237
    invoke-virtual {p2, v2, v3, p3}, Lcom/android/server/inputmethod/IInputMethodInvoker;->showSoftInput(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    move-result p2

    if-eqz p2, :cond_cb

    .line 4238
    invoke-virtual {p0, v0, p1, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->onShowHideSoftInputRequested(ZLandroid/os/IBinder;I)V

    .line 4240
    :cond_cb
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputShown:Z

    return v0

    :cond_ce
    return v2

    :cond_cf
    :goto_cf
    const-string/jumbo p0, "mAccessibilityRequestingNoSoftKeyboard, so not show keyboard"

    .line 4199
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final showInputMethodAndSubtypeEnabler(Ljava/lang/String;)V
    .registers 4

    .line 6163
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.INPUT_METHOD_SUBTYPE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x14200000

    .line 6164
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6167
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string/jumbo v1, "input_method_id"

    .line 6168
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6171
    :cond_18
    const-class p1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p1

    .line 6172
    :try_start_1b
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v1

    .line 6173
    monitor-exit p1
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_2d

    .line 6174
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void

    :catchall_2d
    move-exception p0

    .line 6173
    :try_start_2e
    monitor-exit p1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public showInputMethodAndSubtypeEnablerFromClient(Lcom/android/internal/view/IInputMethodClient;Ljava/lang/String;)V
    .registers 4

    .line 4954
    const-class p1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p1

    .line 4956
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v0

    if-nez v0, :cond_b

    .line 4957
    monitor-exit p1

    return-void

    .line 4959
    :cond_b
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->showInputMethodAndSubtypeEnabler(Ljava/lang/String;)V

    .line 4960
    monitor-exit p1

    return-void

    :catchall_10
    move-exception p0

    monitor-exit p1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public showInputMethodPickerFromClient(Lcom/android/internal/view/IInputMethodClient;I)V
    .registers 5

    .line 4852
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isInputMethodRestrictedByMDM()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 4857
    :cond_7
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 4858
    :try_start_a
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v1

    if-nez v1, :cond_12

    .line 4859
    monitor-exit v0

    return-void

    .line 4861
    :cond_12
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->canShowInputMethodPickerLocked(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v1

    if-nez v1, :cond_3c

    const-string p0, "InputMethodManagerService"

    .line 4862
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring showInputMethodPickerFromClient of uid "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4863
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4862
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4864
    monitor-exit v0

    return-void

    .line 4870
    :cond_3c
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz p1, :cond_43

    iget p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    goto :goto_44

    :cond_43
    const/4 p1, 0x0

    .line 4871
    :goto_44
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 4872
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 4873
    monitor-exit v0

    return-void

    :catchall_50
    move-exception p0

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_a .. :try_end_52} :catchall_50

    throw p0
.end method

.method public showInputMethodPickerFromSystem(Lcom/android/internal/view/IInputMethodClient;II)V
    .registers 5

    .line 4879
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_21

    .line 4887
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isInputMethodRestrictedByMDM()Z

    move-result p1

    if-eqz p1, :cond_11

    return-void

    .line 4892
    :cond_11
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/inputmethod/InputMethodMenuController;->setImeSwitchButtonVisible(Z)V

    .line 4897
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 4898
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 4881
    :cond_21
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "showInputMethodPickerFromSystem requires WRITE_SECURE_SETTINGS permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final showMySoftInput(Landroid/os/IBinder;I)V
    .registers 10

    const-string v0, "InputMethodManagerService"

    .line 5559
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showMySoftInput: flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "IMMS.showMySoftInput"

    const-wide/16 v1, 0x20

    .line 5562
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5563
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5564
    :try_start_21
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result p1

    if-nez p1, :cond_29

    .line 5565
    monitor-exit v0

    return-void

    .line 5567
    :cond_29
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_2d
    .catchall {:try_start_21 .. :try_end_2d} :catchall_41

    .line 5569
    :try_start_2d
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastImeTargetWindow:Landroid/os/IBinder;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {p0, p1, p2, v5, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_3c

    .line 5572
    :try_start_34
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5574
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_41

    .line 5575
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_3c
    move-exception p0

    .line 5572
    :try_start_3d
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5573
    throw p0

    :catchall_41
    move-exception p0

    .line 5574
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3d .. :try_end_43} :catchall_41

    throw p0
.end method

.method public showSoftInput(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z
    .registers 14

    const-string v0, "IMMS.showSoftInput"

    const-wide/16 v1, 0x20

    .line 4088
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4089
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4090
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v3

    const-string v4, "InputMethodManagerService#showSoftInput"

    invoke-virtual {v3, v4}, Lcom/android/internal/inputmethod/ImeTracing;->triggerManagerServiceDump(Ljava/lang/String;)V

    .line 4092
    const-class v3, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v3

    .line 4093
    :try_start_17
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_20

    .line 4094
    monitor-exit v3

    return v5

    .line 4096
    :cond_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_24
    .catchall {:try_start_17 .. :try_end_24} :catchall_5f

    :try_start_24
    const-string/jumbo v4, "showSoftInput"

    .line 4098
    invoke-virtual {p0, v0, p1, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->canInteractWithImeLocked(ILcom/android/internal/view/IInputMethodClient;Ljava/lang/String;)Z

    move-result p1
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_57

    if-nez p1, :cond_35

    .line 4105
    :try_start_2d
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4106
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v3
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_5f

    return v5

    :cond_35
    :try_start_35
    const-string p1, "InputMethodManagerService"

    .line 4102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Client requesting input be shown, flags : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4103
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    move-result p0
    :try_end_4f
    .catchall {:try_start_35 .. :try_end_4f} :catchall_57

    .line 4105
    :try_start_4f
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4106
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v3

    return p0

    :catchall_57
    move-exception p0

    .line 4105
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4106
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 4107
    throw p0

    :catchall_5f
    move-exception p0

    .line 4108
    monitor-exit v3
    :try_end_61
    .catchall {:try_start_4f .. :try_end_61} :catchall_5f

    throw p0
.end method

.method public startImeTrace()V
    .registers 4

    .line 5354
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/ImeTracing;->startTrace(Ljava/io/PrintWriter;)V

    .line 5356
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5357
    :try_start_b
    new-instance v1, Landroid/util/ArrayMap;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-direct {v1, p0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 5358
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_3a

    .line 5359
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1b
    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_1b

    .line 5362
    :try_start_29
    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/view/IInputMethodClient;->setImeTraceEnabled(Z)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2f} :catch_30

    goto :goto_1b

    :catch_30
    move-exception v0

    const-string v1, "InputMethodManagerService"

    const-string v2, "Error while trying to enable ime trace on client window"

    .line 5364
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    :cond_39
    return-void

    :catchall_3a
    move-exception p0

    .line 5358
    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method public startInputOrWindowGainedFocus(ILcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;ILandroid/window/ImeOnBackInvokedDispatcher;)Lcom/android/internal/inputmethod/InputBindResult;
    .registers 12

    .line 4379
    invoke-virtual/range {p0 .. p11}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputOrWindowGainedFocusInternal(ILcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;ILandroid/window/ImeOnBackInvokedDispatcher;)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object p0

    return-object p0
.end method

.method public final startInputOrWindowGainedFocusInternal(ILcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;ILandroid/window/ImeOnBackInvokedDispatcher;)Lcom/android/internal/inputmethod/InputBindResult;
    .registers 33

    move-object/from16 v0, p0

    move-object/from16 v14, p7

    if-nez p3, :cond_11

    const-string v0, "InputMethodManagerService"

    const-string/jumbo v1, "windowToken cannot be null."

    .line 4394
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4395
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->NULL:Lcom/android/internal/inputmethod/InputBindResult;

    return-object v0

    :cond_11
    const-wide/16 v12, 0x20

    :try_start_13
    const-string v1, "IMMS.startInputOrWindowGainedFocus"

    .line 4398
    invoke-static {v12, v13, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4400
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v1

    const-string v2, "InputMethodManagerService#startInputOrWindowGainedFocus"

    invoke-virtual {v1, v2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerManagerServiceDump(Ljava/lang/String;)V

    .line 4402
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    if-eqz v14, :cond_6e

    .line 4404
    iget-object v2, v14, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    if-eqz v2, :cond_6e

    .line 4405
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    if-eq v2, v1, :cond_6e

    .line 4406
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v3, "Using EditorInfo.targetInputMethodUser requires INTERACT_ACROSS_USERS_FULL."

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4411
    iget-object v1, v14, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 4417
    iget-object v1, v14, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 4419
    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/UserManagerInternal;->isUserRunning(I)Z

    move-result v2

    if-nez v2, :cond_6e

    const-string v0, "InputMethodManagerService"

    .line 4424
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not running."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4425
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->INVALID_USER:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_6a
    .catchall {:try_start_13 .. :try_end_6a} :catchall_f3

    .line 4459
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :cond_6e
    move v15, v1

    .line 4432
    :try_start_6f
    const-class v16, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v16
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_f3

    .line 4433
    :try_start_72
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17
    :try_end_76
    .catchall {:try_start_72 .. :try_end_76} :catchall_ea

    if-eqz v14, :cond_88

    .line 4436
    :try_start_78
    iget v1, v14, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->isPasswordInputType(I)Z

    move-result v1

    if-eqz v1, :cond_88

    const/4 v1, 0x1

    .line 4437
    iput-boolean v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mOverrideDWFlag:Z
    :try_end_83
    .catchall {:try_start_78 .. :try_end_83} :catchall_84

    goto :goto_88

    :catchall_84
    move-exception v0

    move-wide/from16 v19, v12

    goto :goto_e6

    :cond_88
    :goto_88
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-wide/from16 v19, v12

    move v12, v15

    move-object/from16 v13, p11

    .line 4440
    :try_start_a3
    invoke-virtual/range {v1 .. v13}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputOrWindowGainedFocusInternalLocked(ILcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0
    :try_end_a7
    .catchall {:try_start_a3 .. :try_end_a7} :catchall_e5

    .line 4445
    :try_start_a7
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4447
    monitor-exit v16
    :try_end_ab
    .catchall {:try_start_a7 .. :try_end_ab} :catchall_f1

    if-nez v0, :cond_e1

    :try_start_ad
    const-string v0, "InputMethodManagerService"

    .line 4450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InputBindResult is @NonNull. startInputReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4451
    invoke-static/range {p1 .. p1}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputReasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " windowFlags=#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4452
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " editorInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4450
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4454
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->NULL:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_dd
    .catchall {:try_start_ad .. :try_end_dd} :catchall_ef

    .line 4459
    invoke-static/range {v19 .. v20}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :cond_e1
    invoke-static/range {v19 .. v20}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :catchall_e5
    move-exception v0

    .line 4445
    :goto_e6
    :try_start_e6
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4446
    throw v0

    :catchall_ea
    move-exception v0

    move-wide/from16 v19, v12

    .line 4447
    :goto_ed
    monitor-exit v16
    :try_end_ee
    .catchall {:try_start_e6 .. :try_end_ee} :catchall_f1

    :try_start_ee
    throw v0
    :try_end_ef
    .catchall {:try_start_ee .. :try_end_ef} :catchall_ef

    :catchall_ef
    move-exception v0

    goto :goto_f6

    :catchall_f1
    move-exception v0

    goto :goto_ed

    :catchall_f3
    move-exception v0

    move-wide/from16 v19, v12

    .line 4459
    :goto_f6
    invoke-static/range {v19 .. v20}, Landroid/os/Trace;->traceEnd(J)V

    .line 4460
    throw v0
.end method

.method public final startInputOrWindowGainedFocusInternalLocked(ILcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;)Lcom/android/internal/inputmethod/InputBindResult;
    .registers 32
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p3

    move/from16 v11, p4

    move/from16 v0, p5

    move-object/from16 v12, p7

    move/from16 v13, p10

    const/4 v14, 0x0

    .line 4487
    iput-boolean v14, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->misSecurefolderIdOrDualAppId:Z

    .line 4490
    iget-object v1, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v1, v10}, Lcom/android/server/wm/WindowManagerInternal;->getDisplayIdForWindow(Landroid/os/IBinder;)I

    .line 4492
    iget-object v1, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v15, :cond_33d

    and-int/lit8 v1, v11, 0x2

    const-string v2, "InputMethodManagerService"

    const/4 v8, 0x1

    if-eqz v1, :cond_8e

    .line 4499
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startInputOrWindowGainedFocusInternalLocked: reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4500
    invoke-static/range {p1 .. p1}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputReasonToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " clientState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4501
    invoke-static {v15}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " attribute="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " startInputFlags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4504
    invoke-static/range {p4 .. p4}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputFlagsToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " softInputMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4505
    invoke-static/range {p5 .. p5}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " windowFlags=#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4506
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " sameWindowFocused="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    if-ne v4, v10, :cond_83

    move v4, v8

    goto :goto_84

    :cond_83
    move v4, v14

    :goto_84
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4499
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4513
    :cond_8e
    iget-object v3, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v4, v15, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    iget v5, v15, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->pid:I

    iget v6, v15, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    invoke-virtual {v3, v10, v4, v5, v6}, Lcom/android/server/wm/WindowManagerInternal;->hasInputMethodClientFocus(Landroid/os/IBinder;III)I

    move-result v3

    const/4 v4, -0x3

    if-eq v3, v4, :cond_33a

    const/4 v4, -0x2

    if-eq v3, v4, :cond_331

    const/4 v4, -0x1

    if-eq v3, v4, :cond_32e

    .line 4534
    invoke-static/range {p11 .. p11}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v3

    if-nez v3, :cond_b3

    invoke-static/range {p11 .. p11}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v3

    if-eqz v3, :cond_b0

    goto :goto_b3

    :cond_b0
    move/from16 v3, p11

    goto :goto_b6

    .line 4536
    :cond_b3
    :goto_b3
    iput-boolean v8, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->misSecurefolderIdOrDualAppId:Z

    move v3, v14

    .line 4540
    :goto_b6
    iget-object v4, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    if-eqz v4, :cond_e1

    .line 4542
    iget v0, v4, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mToUserId:I

    if-ne v3, v0, :cond_c6

    .line 4544
    iget-object v0, v15, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v9, v3, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleSwitchUserTaskLocked(ILcom/android/internal/view/IInputMethodClient;)V

    .line 4545
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->USER_SWITCHING:Lcom/android/internal/inputmethod/InputBindResult;

    return-object v0

    .line 4547
    :cond_c6
    iget-object v1, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v0

    array-length v1, v0

    :goto_cd
    if-ge v14, v1, :cond_de

    aget v2, v0, v14

    if-ne v2, v3, :cond_db

    .line 4549
    iget-object v0, v15, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v9, v3, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleSwitchUserTaskLocked(ILcom/android/internal/view/IInputMethodClient;)V

    .line 4550
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->USER_SWITCHING:Lcom/android/internal/inputmethod/InputBindResult;

    return-object v0

    :cond_db
    add-int/lit8 v14, v14, 0x1

    goto :goto_cd

    .line 4553
    :cond_de
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->INVALID_USER:Lcom/android/internal/inputmethod/InputBindResult;

    return-object v0

    .line 4556
    :cond_e1
    iget-object v4, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mImePlatformCompatUtils:Lcom/android/server/inputmethod/ImePlatformCompatUtils;

    iget v5, v15, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v4, v5}, Lcom/android/server/inputmethod/ImePlatformCompatUtils;->shouldClearShowForcedFlag(I)Z

    move-result v4

    .line 4560
    iget-object v5, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    if-eq v5, v10, :cond_f5

    iget-boolean v5, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowForced:Z

    if-eqz v5, :cond_f5

    if-eqz v4, :cond_f5

    .line 4561
    iput-boolean v14, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowForced:Z

    .line 4565
    :cond_f5
    iget-object v4, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4, v3}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->isCurrentProfile(I)Z

    move-result v4

    const/4 v7, 0x0

    if-nez v4, :cond_112

    const-string v0, "A background user is requesting window. Hiding IME."

    .line 4566
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "If you need to impersonate a foreground user/profile from a background user, use EditorInfo.targetInputMethodUser with INTERACT_ACROSS_USERS_FULL permission."

    .line 4567
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4570
    iget-object v0, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    const/16 v1, 0xa

    invoke-virtual {v9, v0, v14, v7, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    .line 4572
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->INVALID_USER:Lcom/android/internal/inputmethod/InputBindResult;

    return-object v0

    .line 4575
    :cond_112
    iget-object v4, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v4

    if-eq v3, v4, :cond_122

    .line 4576
    iget-object v0, v15, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v9, v3, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleSwitchUserTaskLocked(ILcom/android/internal/view/IInputMethodClient;)V

    .line 4577
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->USER_SWITCHING:Lcom/android/internal/inputmethod/InputBindResult;

    return-object v0

    .line 4580
    :cond_122
    iget-object v3, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    if-ne v3, v10, :cond_129

    move/from16 v16, v8

    goto :goto_12b

    :cond_129
    move/from16 v16, v14

    :goto_12b
    if-eqz v1, :cond_12f

    move v1, v8

    goto :goto_130

    :cond_12f
    move v1, v14

    :goto_130
    and-int/lit8 v3, v11, 0x8

    if-eqz v3, :cond_137

    move/from16 v17, v8

    goto :goto_139

    :cond_137
    move/from16 v17, v14

    :goto_139
    if-eqz v16, :cond_175

    if-eqz v1, :cond_175

    if-eqz v12, :cond_155

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object/from16 v4, p7

    move/from16 v5, p4

    move/from16 v6, p1

    move/from16 v7, p10

    move-object/from16 v8, p12

    .line 4593
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;IIILandroid/window/ImeOnBackInvokedDispatcher;)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0

    return-object v0

    .line 4597
    :cond_155
    new-instance v0, Lcom/android/internal/inputmethod/InputBindResult;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 p0, v0

    move/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move/from16 p6, v6

    move-object/from16 p7, v7

    move/from16 p8, v8

    invoke-direct/range {p0 .. p8}, Lcom/android/internal/inputmethod/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/util/SparseArray;Landroid/view/InputChannel;Ljava/lang/String;ILandroid/graphics/Matrix;Z)V

    return-object v0

    .line 4602
    :cond_175
    iput-object v10, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    .line 4603
    iput v0, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowSoftInputMode:I

    .line 4604
    iput-object v15, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 4605
    iput-boolean v8, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurPerceptible:Z

    .line 4620
    iget-object v3, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz v3, :cond_18f

    const-string v4, "com.samsung.feature.device_category_tablet"

    .line 4621
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18f

    move v3, v8

    goto :goto_190

    :cond_18f
    move v3, v14

    :goto_190
    and-int/lit16 v4, v0, 0xf0

    const/16 v5, 0x10

    const/4 v6, 0x3

    const/4 v7, 0x4

    if-eq v4, v5, :cond_1ac

    .line 4624
    iget-object v4, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 4627
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    if-eqz v3, :cond_1a2

    move v3, v6

    goto :goto_1a3

    :cond_1a2
    move v3, v7

    :goto_1a3
    invoke-virtual {v4, v3}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v3

    if-eqz v3, :cond_1aa

    goto :goto_1ac

    :cond_1aa
    move v3, v14

    goto :goto_1ad

    :cond_1ac
    :goto_1ac
    move v3, v8

    :goto_1ad
    if-eqz v1, :cond_1d4

    if-eqz v12, :cond_1d4

    .line 4644
    invoke-virtual {v9, v10, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldRestoreImeVisibility(Landroid/os/IBinder;I)Z

    move-result v4

    if-eqz v4, :cond_1d4

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object/from16 v4, p7

    move/from16 v5, p4

    move/from16 v6, p1

    const/4 v11, 0x0

    move/from16 v7, p10

    move v12, v8

    move-object/from16 v8, p12

    .line 4645
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;IIILandroid/window/ImeOnBackInvokedDispatcher;)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0

    const/16 v1, 0x16

    .line 4648
    invoke-virtual {v9, v10, v12, v11, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    return-object v0

    :cond_1d4
    move v5, v8

    const/4 v8, 0x0

    and-int/lit8 v4, v0, 0xf

    const/4 v14, 0x5

    const/4 v8, 0x2

    if-eqz v4, :cond_29b

    if-eq v4, v5, :cond_291

    if-eq v4, v8, :cond_27b

    if-eq v4, v6, :cond_267

    if-eq v4, v7, :cond_22b

    if-eq v4, v14, :cond_1eb

    :cond_1e6
    move-object/from16 v18, v15

    const/4 v15, 0x0

    goto/16 :goto_302

    :cond_1eb
    const-string v0, "Window asks to always show input"

    .line 4750
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4752
    invoke-static {v13, v11}, Lcom/android/server/inputmethod/InputMethodUtils;->isSoftInputModeStateVisibleAllowed(II)Z

    move-result v0

    if-eqz v0, :cond_221

    if-nez v16, :cond_1e6

    if-eqz v12, :cond_215

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object/from16 v4, p7

    move v14, v5

    move/from16 v5, p4

    move/from16 v6, p1

    move/from16 v7, p10

    move-object/from16 v18, v15

    const/4 v15, 0x0

    move-object/from16 v8, p12

    .line 4756
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;IIILandroid/window/ImeOnBackInvokedDispatcher;)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v7

    move v8, v14

    goto :goto_21b

    :cond_215
    move v14, v5

    move-object/from16 v18, v15

    const/4 v15, 0x0

    move-object v7, v15

    const/4 v8, 0x0

    :goto_21b
    const/4 v0, 0x7

    .line 4762
    invoke-virtual {v9, v10, v14, v15, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    goto/16 :goto_304

    :cond_221
    move-object/from16 v18, v15

    const/4 v15, 0x0

    const-string v0, "SOFT_INPUT_STATE_ALWAYS_VISIBLE is ignored because there is no focused view that also returns true from View#onCheckIsTextEditor()"

    .line 4766
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_302

    :cond_22b
    move v14, v5

    move-object/from16 v18, v15

    const/4 v15, 0x0

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_302

    const-string v0, "Window asks to show input going forward"

    .line 4727
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4729
    invoke-static {v13, v11}, Lcom/android/server/inputmethod/InputMethodUtils;->isSoftInputModeStateVisibleAllowed(II)Z

    move-result v0

    if-eqz v0, :cond_260

    if-eqz v12, :cond_258

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object/from16 v4, p7

    move/from16 v5, p4

    move/from16 v6, p1

    move/from16 v7, p10

    move-object/from16 v8, p12

    .line 4732
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;IIILandroid/window/ImeOnBackInvokedDispatcher;)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v7

    move v8, v14

    goto :goto_25a

    :cond_258
    move-object v7, v15

    const/4 v8, 0x0

    :goto_25a
    const/4 v0, 0x6

    .line 4738
    invoke-virtual {v9, v10, v14, v15, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    goto/16 :goto_304

    :cond_260
    const-string v0, "SOFT_INPUT_STATE_VISIBLE is ignored because there is no focused view that also returns true from View#onCheckIsTextEditor()"

    .line 4741
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_302

    :cond_267
    move-object/from16 v18, v15

    const/4 v15, 0x0

    if-nez v16, :cond_302

    const-string v0, "Window asks to hide input"

    .line 4718
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4719
    iget-object v0, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    const/16 v1, 0xd

    const/4 v3, 0x0

    invoke-virtual {v9, v0, v3, v15, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    goto/16 :goto_302

    :cond_27b
    move-object/from16 v18, v15

    const/4 v3, 0x0

    const/4 v15, 0x0

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_302

    const-string v0, "Window asks to hide input going forward"

    .line 4710
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4711
    iget-object v0, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    const/16 v1, 0xc

    invoke-virtual {v9, v0, v3, v15, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    goto/16 :goto_302

    :cond_291
    move-object/from16 v18, v15

    const/4 v15, 0x0

    const-string v0, "Window asks to unchanged"

    .line 4703
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_302

    :cond_29b
    move v7, v5

    move-object/from16 v18, v15

    const/4 v15, 0x0

    if-nez v16, :cond_2cb

    if-eqz v1, :cond_2a5

    if-nez v3, :cond_2cb

    .line 4656
    :cond_2a5
    invoke-static/range {p6 .. p6}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v0

    if-eqz v0, :cond_302

    const-string v0, "Unspecified window will hide input"

    .line 4661
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4662
    iget-object v0, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    const/16 v1, 0xb

    invoke-virtual {v9, v0, v8, v15, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    move-object/from16 v8, v18

    .line 4673
    iget v0, v8, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    iget-object v1, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeDisplayValidator:Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;

    invoke-static {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->computeImeDisplayIdForTarget(ILcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;)I

    move-result v0

    .line 4674
    iget v1, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    if-eq v0, v1, :cond_300

    .line 4676
    iget-object v0, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    goto :goto_300

    :cond_2cb
    move-object/from16 v8, v18

    if-eqz v1, :cond_300

    if-eqz v3, :cond_300

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_300

    const-string v0, "Unspecified window will show input"

    .line 4689
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_2f7

    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object/from16 v4, p7

    move/from16 v5, p4

    move/from16 v6, p1

    move v11, v7

    move/from16 v7, p10

    move-object/from16 v18, v8

    move-object/from16 v8, p12

    .line 4691
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;IIILandroid/window/ImeOnBackInvokedDispatcher;)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0

    move-object v7, v0

    move v8, v11

    goto :goto_2fc

    :cond_2f7
    move v11, v7

    move-object/from16 v18, v8

    move-object v7, v15

    const/4 v8, 0x0

    .line 4697
    :goto_2fc
    invoke-virtual {v9, v10, v11, v15, v14}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    goto :goto_304

    :cond_300
    :goto_300
    move-object/from16 v18, v8

    :cond_302
    :goto_302
    move-object v7, v15

    const/4 v8, 0x0

    :goto_304
    if-nez v8, :cond_32d

    if-eqz v12, :cond_32b

    if-eqz v16, :cond_314

    if-eqz v17, :cond_314

    .line 4783
    iget-object v0, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-virtual {v9, v0, v2, v15, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    :cond_314
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object/from16 v4, p7

    move/from16 v5, p4

    move/from16 v6, p1

    move/from16 v7, p10

    move-object/from16 v8, p12

    .line 4787
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;IIILandroid/window/ImeOnBackInvokedDispatcher;)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v7

    goto :goto_32d

    .line 4792
    :cond_32b
    sget-object v7, Lcom/android/internal/inputmethod/InputBindResult;->NULL_EDITOR_INFO:Lcom/android/internal/inputmethod/InputBindResult;

    :cond_32d
    :goto_32d
    return-object v7

    .line 4529
    :cond_32e
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->NOT_IME_TARGET_WINDOW:Lcom/android/internal/inputmethod/InputBindResult;

    return-object v0

    :cond_331
    const-string/jumbo v0, "startInputOrWindowGainedFocusInternal: display ID mismatch."

    .line 4517
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4518
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->DISPLAY_ID_MISMATCH:Lcom/android/internal/inputmethod/InputBindResult;

    return-object v0

    .line 4531
    :cond_33a
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->INVALID_DISPLAY_ID:Lcom/android/internal/inputmethod/InputBindResult;

    return-object v0

    .line 4494
    :cond_33d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown client "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final startInputUncheckedInnerLocked(I)Lcom/android/internal/inputmethod/InputBindResult;
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 8647
    iput p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    .line 8648
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    .line 8649
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->bindCurrentMethod()Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object p0

    return-object p0
.end method

.method public final startInputUncheckedLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;IIILandroid/window/ImeOnBackInvokedDispatcher;)Lcom/android/internal/inputmethod/InputBindResult;
    .registers 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 3154
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    .line 3156
    sget-object p0, Lcom/android/internal/inputmethod/InputBindResult;->NO_IME:Lcom/android/internal/inputmethod/InputBindResult;

    return-object p0

    .line 3159
    :cond_9
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-nez v1, :cond_20

    .line 3162
    new-instance v1, Lcom/android/internal/inputmethod/InputBindResult;

    const/16 p1, 0x8

    const/4 p2, 0x0

    const/4 p3, 0x0

    const/4 p4, 0x0

    .line 3164
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSequenceNumberLocked()I

    move-result p6

    const/4 p7, 0x0

    const/4 p8, 0x0

    move-object p0, v1

    move-object p5, v0

    invoke-direct/range {p0 .. p8}, Lcom/android/internal/inputmethod/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/util/SparseArray;Landroid/view/InputChannel;Ljava/lang/String;ILandroid/graphics/Matrix;Z)V

    return-object v1

    .line 3167
    :cond_20
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v2, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    iget-object v3, p4, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/server/inputmethod/InputMethodUtils;->checkIfPackageBelongsToUid(Landroid/app/AppOpsManager;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_51

    .line 3169
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Rejecting this client as it reported an invalid package name. uid="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " package="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p4, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InputMethodManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3171
    sget-object p0, Lcom/android/internal/inputmethod/InputBindResult;->INVALID_PACKAGE_NAME:Lcom/android/internal/inputmethod/InputBindResult;

    return-object p0

    .line 3176
    :cond_51
    iget v1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeDisplayValidator:Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;

    invoke-static {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->computeImeDisplayIdForTarget(ILcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;)I

    move-result v1

    iput v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDisplayIdToShowIme:I

    .line 3179
    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getDisplayIdOfInputMethodWindowToBeAdded(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDisplayIdToShowIme:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_73

    .line 3183
    iput-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeHiddenByDisplayPolicy:Z

    .line 3184
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/16 p3, 0x1a

    invoke-virtual {p0, p1, v4, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    .line 3186
    sget-object p0, Lcom/android/internal/inputmethod/InputBindResult;->NO_IME:Lcom/android/internal/inputmethod/InputBindResult;

    return-object p0

    .line 3188
    :cond_73
    iput-boolean v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeHiddenByDisplayPolicy:Z

    .line 3190
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eq v1, p1, :cond_7c

    .line 3191
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->prepareClientSwitchLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V

    .line 3195
    :cond_7c
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->advanceSequenceNumberLocked()V

    .line 3196
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 3197
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurInputContext:Lcom/android/internal/view/IInputContext;

    .line 3198
    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurRemoteAccessibilityInputConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    .line 3199
    iput-object p8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    .line 3200
    iget p2, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    iget p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDisplayIdToShowIme:I

    .line 3201
    invoke-virtual {p0, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getVirtualDisplayToScreenMatrixLocked(II)Landroid/graphics/Matrix;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurVirtualDisplayToScreenMatrix:Landroid/graphics/Matrix;

    .line 3203
    iput-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 3206
    iget p2, p4, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    iget-object p3, p4, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    iget-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurInputContext:Lcom/android/internal/view/IInputContext;

    if-eqz p4, :cond_9d

    move p4, v3

    goto :goto_9e

    :cond_9d
    move p4, v4

    :goto_9e
    invoke-static {p2, p3, p4}, Lcom/android/server/DualAppManagerService;->notifyInputContextChanged(ILjava/lang/String;Z)V

    .line 3210
    invoke-virtual {p0, v0, p5, p7}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldPreventImeStartupLocked(Ljava/lang/String;II)Z

    move-result p2

    if-eqz p2, :cond_b2

    .line 3215
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->invalidateAutofillSessionLocked()V

    .line 3216
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    .line 3217
    sget-object p0, Lcom/android/internal/inputmethod/InputBindResult;->NO_EDITOR:Lcom/android/internal/inputmethod/InputBindResult;

    return-object p0

    .line 3223
    :cond_b2
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isSelectedMethodBoundLocked()Z

    move-result p2

    if-eqz p2, :cond_db

    .line 3224
    iget-object p2, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-eqz p2, :cond_d4

    .line 3232
    iput-boolean v4, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->mSessionRequestedForAccessibility:Z

    .line 3233
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->requestClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V

    and-int/lit8 p1, p5, 0x4

    if-eqz p1, :cond_c7

    move p2, v3

    goto :goto_c8

    :cond_c7
    move p2, v4

    .line 3236
    :goto_c8
    invoke-virtual {p0, p6, p2, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->attachNewAccessibilityLocked(IZI)Lcom/android/internal/inputmethod/InputBindResult;

    if-eqz p1, :cond_ce

    goto :goto_cf

    :cond_ce
    move v3, v4

    .line 3238
    :goto_cf
    invoke-virtual {p0, p6, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->attachNewInputLocked(IZ)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object p0

    return-object p0

    .line 3242
    :cond_d4
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->tryReuseConnectionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object p1

    if-eqz p1, :cond_db

    return-object p1

    .line 3248
    :cond_db
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    .line 3250
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->bindCurrentMethod()Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object p0

    return-object p0
.end method

.method public startProtoDump([BILjava/lang/String;)V
    .registers 20

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x2

    if-nez v0, :cond_c

    if-eq v1, v3, :cond_c

    return-void

    .line 5305
    :cond_c
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v4

    .line 5306
    invoke-virtual {v4}, Lcom/android/internal/inputmethod/ImeTracing;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_81

    invoke-virtual {v4}, Lcom/android/internal/inputmethod/ImeTracing;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_1d

    goto :goto_81

    .line 5310
    :cond_1d
    new-instance v5, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v5}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    const-wide v6, 0x10b00000003L

    const-wide v8, 0x10900000002L

    const-wide v10, 0x10600000001L

    const-wide v12, 0x20b00000002L

    if-eqz v1, :cond_6a

    const/4 v14, 0x1

    if-eq v1, v14, :cond_55

    if-eq v1, v3, :cond_3e

    return-void

    .line 5330
    :cond_3e
    invoke-virtual {v5, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 5332
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v14

    .line 5331
    invoke-virtual {v5, v10, v11, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 5333
    invoke-virtual {v5, v8, v9, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    move-object/from16 v0, p0

    .line 5334
    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5336
    invoke-virtual {v5, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_7e

    .line 5321
    :cond_55
    invoke-virtual {v5, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 5323
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v14

    .line 5322
    invoke-virtual {v5, v10, v11, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 5324
    invoke-virtual {v5, v8, v9, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 5325
    invoke-virtual {v5, v6, v7, v0}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 5326
    invoke-virtual {v5, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_7e

    .line 5313
    :cond_6a
    invoke-virtual {v5, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 5315
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v14

    .line 5314
    invoke-virtual {v5, v10, v11, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 5316
    invoke-virtual {v5, v8, v9, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 5317
    invoke-virtual {v5, v6, v7, v0}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 5318
    invoke-virtual {v5, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 5342
    :goto_7e
    invoke-virtual {v4, v5, v1}, Lcom/android/internal/inputmethod/ImeTracing;->addToBuffer(Landroid/util/proto/ProtoOutputStream;I)V

    :cond_81
    :goto_81
    return-void
.end method

.method public startStylusHandwriting(Lcom/android/internal/view/IInputMethodClient;)V
    .registers 9

    const-string v0, "IMMS.startStylusHandwriting"

    const-wide/16 v1, 0x20

    .line 4114
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4115
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v3, "InputMethodManagerService#startStylusHandwriting"

    invoke-virtual {v0, v3}, Lcom/android/internal/inputmethod/ImeTracing;->triggerManagerServiceDump(Ljava/lang/String;)V

    .line 4117
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4118
    const-class v3, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v3

    .line 4119
    :try_start_17
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v4

    if-nez v4, :cond_22

    .line 4120
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 4121
    monitor-exit v3

    return-void

    .line 4123
    :cond_22
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_9d

    :try_start_26
    const-string/jumbo v6, "startStylusHandwriting"

    .line 4125
    invoke-virtual {p0, v0, p1, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->canInteractWithImeLocked(ILcom/android/internal/view/IInputMethodClient;Ljava/lang/String;)Z

    move-result p1
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_95

    if-nez p1, :cond_37

    .line 4147
    :try_start_2f
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4148
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v3
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_9d

    return-void

    .line 4128
    :cond_37
    :try_start_37
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->supportsStylusHandwriting()Z

    move-result p1

    if-nez p1, :cond_4e

    const-string p0, "InputMethodManagerService"

    const-string p1, "Stylus HW unsupported by IME. Ignoring startStylusHandwriting()"

    .line 4129
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_37 .. :try_end_46} :catchall_95

    .line 4147
    :try_start_46
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4148
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v3
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_9d

    return-void

    .line 4132
    :cond_4e
    :try_start_4e
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {p1}, Lcom/android/server/inputmethod/HandwritingModeController;->getCurrentRequestId()Ljava/util/OptionalInt;

    move-result-object p1

    .line 4133
    invoke-virtual {p1}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    if-nez v0, :cond_69

    const-string p0, "InputMethodManagerService"

    const-string p1, "Stylus handwriting was not initialized."

    .line 4134
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catchall {:try_start_4e .. :try_end_61} :catchall_95

    .line 4147
    :try_start_61
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4148
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v3
    :try_end_68
    .catchall {:try_start_61 .. :try_end_68} :catchall_9d

    return-void

    .line 4137
    :cond_69
    :try_start_69
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/HandwritingModeController;->isStylusGestureOngoing()Z

    move-result v0

    if-nez v0, :cond_80

    const-string p0, "InputMethodManagerService"

    const-string p1, "There is no ongoing stylus gesture to start stylus handwriting."

    .line 4138
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catchall {:try_start_69 .. :try_end_78} :catchall_95

    .line 4147
    :try_start_78
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4148
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v3
    :try_end_7f
    .catchall {:try_start_78 .. :try_end_7f} :catchall_9d

    return-void

    .line 4142
    :cond_80
    :try_start_80
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p0

    if-eqz p0, :cond_8d

    .line 4144
    invoke-virtual {p1}, Ljava/util/OptionalInt;->getAsInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/IInputMethodInvoker;->canStartStylusHandwriting(I)V
    :try_end_8d
    .catchall {:try_start_80 .. :try_end_8d} :catchall_95

    .line 4147
    :cond_8d
    :try_start_8d
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4148
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 4150
    monitor-exit v3

    return-void

    :catchall_95
    move-exception p0

    .line 4147
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4148
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 4149
    throw p0

    :catchall_9d
    move-exception p0

    .line 4150
    monitor-exit v3
    :try_end_9f
    .catchall {:try_start_8d .. :try_end_9f} :catchall_9d

    throw p0
.end method

.method public stopImeTrace()V
    .registers 4

    .line 5373
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/ImeTracing;->stopTrace(Ljava/io/PrintWriter;)V

    .line 5375
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5376
    :try_start_b
    new-instance v1, Landroid/util/ArrayMap;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-direct {v1, p0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 5377
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_3a

    .line 5378
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1b
    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_1b

    .line 5381
    :try_start_29
    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/view/IInputMethodClient;->setImeTraceEnabled(Z)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2f} :catch_30

    goto :goto_1b

    :catch_30
    move-exception v0

    const-string v1, "InputMethodManagerService"

    const-string v2, "Error while trying to disable ime trace on client window"

    .line 5383
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    :cond_39
    return-void

    :catchall_3a
    move-exception p0

    .line 5377
    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method public final switchToInputMethodLocked(Ljava/lang/String;I)Z
    .registers 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 6344
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne p2, v0, :cond_2b

    .line 6345
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2a

    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 6346
    invoke-virtual {p2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    .line 6347
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_26

    goto :goto_2a

    .line 6350
    :cond_26
    invoke-virtual {p0, p1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    return v1

    :cond_2a
    :goto_2a
    return v3

    .line 6353
    :cond_2b
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryMethodMapForUser(I)Landroid/util/ArrayMap;

    move-result-object v0

    .line 6354
    new-instance v10, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 6355
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v9, 0x0

    move-object v4, v10

    move-object v7, v0

    move v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Landroid/util/ArrayMap;IZ)V

    .line 6357
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_60

    .line 6358
    invoke-virtual {v10}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object p0

    .line 6359
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_59

    goto :goto_60

    .line 6362
    :cond_59
    invoke-virtual {v10, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    .line 6363
    invoke-virtual {v10, v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    return v1

    :cond_60
    :goto_60
    return v3
.end method

.method public final switchToNextInputMethod(Landroid/os/IBinder;Z)Z
    .registers 8

    .line 5037
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5038
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 5039
    monitor-exit v0

    return v2

    .line 5041
    :cond_c
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    .line 5042
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 5041
    invoke-virtual {v1, p2, v3, v4}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-result-object p2

    if-nez p2, :cond_24

    .line 5044
    monitor-exit v0

    return v2

    .line 5046
    :cond_24
    iget-object v1, p2, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    iget p2, p2, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V

    const/4 p0, 0x1

    .line 5048
    monitor-exit v0

    return p0

    :catchall_32
    move-exception p0

    .line 5049
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw p0
.end method

.method public final switchToPreviousInputMethod(Landroid/os/IBinder;)Z
    .registers 15

    .line 4965
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 4966
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 4967
    monitor-exit v0

    return v2

    .line 4969
    :cond_c
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getLastInputMethodAndSubtypeLocked()Landroid/util/Pair;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_20

    .line 4972
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    goto :goto_21

    :cond_20
    move-object v4, v3

    :goto_21
    const/4 v5, -0x1

    if-eqz v1, :cond_51

    if-eqz v4, :cond_51

    .line 4979
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 4980
    iget-object v7, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 4981
    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v8, :cond_40

    move v8, v5

    goto :goto_44

    .line 4982
    :cond_40
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v8

    :goto_44
    if-eqz v6, :cond_48

    if-eq v7, v8, :cond_51

    .line 4986
    :cond_48
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 4987
    invoke-static {v4, v7}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v5

    .line 4991
    :cond_51
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_bf

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 4992
    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodUtils;->canAddToLastInputMethod(Landroid/view/inputmethod/InputMethodSubtype;)Z

    move-result v1

    if-nez v1, :cond_bf

    .line 4996
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_bf

    .line 4998
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    .line 4999
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v7, :cond_7d

    .line 5000
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v7, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_81

    .line 5001
    :cond_7d
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v7

    :goto_81
    move v8, v2

    :goto_82
    if-ge v8, v6, :cond_bf

    .line 5003
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodInfo;

    .line 5004
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v10

    if-lez v10, :cond_bc

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v10

    if-eqz v10, :cond_bc

    .line 5005
    iget-object v10, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 5007
    invoke-static {v9}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v11

    const-string/jumbo v12, "keyboard"

    .line 5006
    invoke-static {v10, v11, v12, v7, v4}, Lcom/android/server/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v10

    if-eqz v10, :cond_bc

    .line 5010
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 5012
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v5

    .line 5011
    invoke-static {v9, v5}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v5

    .line 5013
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_bc

    goto :goto_bf

    :cond_bc
    add-int/lit8 v8, v8, 0x1

    goto :goto_82

    .line 5022
    :cond_bf
    :goto_bf
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ca

    .line 5027
    invoke-virtual {p0, p1, v3, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 5028
    monitor-exit v0

    return v4

    .line 5030
    :cond_ca
    monitor-exit v0

    return v2

    :catchall_cc
    move-exception p0

    .line 5032
    monitor-exit v0
    :try_end_ce
    .catchall {:try_start_3 .. :try_end_ce} :catchall_cc

    throw p0
.end method

.method public final switchUserOnHandlerLocked(ILcom/android/internal/view/IInputMethodClient;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 2219
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->maybeInitImeNavbarConfigLocked(I)V

    .line 2222
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;

    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->registerContentObserverLocked(I)V

    .line 2226
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 2227
    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_19

    :cond_17
    move v0, v1

    goto :goto_1a

    :cond_19
    :goto_19
    move v0, v2

    .line 2228
    :goto_1a
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3, p1, v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->switchCurrentUser(IZ)V

    .line 2229
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateCurrentProfileIds()V

    .line 2231
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAdditionalSubtypeMap:Landroid/util/ArrayMap;

    invoke-static {v0, p1}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->load(Landroid/util/ArrayMap;I)V

    .line 2232
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v0

    .line 2242
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 2243
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastSystemLocales:Landroid/os/LocaleList;

    const/4 v3, 0x6

    .line 2247
    invoke-virtual {p0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetCurrentMethodAndClientLocked(I)V

    .line 2248
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    .line 2249
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 2252
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;)V

    .line 2254
    :cond_55
    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    if-eqz v0, :cond_69

    .line 2257
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 2258
    invoke-static {v3, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 2259
    invoke-virtual {v4}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v4

    .line 2257
    invoke-static {v3, v4}, Lcom/android/server/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/PackageManager;Ljava/util/List;)V

    .line 2265
    :cond_69
    iput p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastSwitchUserId:I

    .line 2267
    iget-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    if-eqz p1, :cond_87

    if-eqz p2, :cond_87

    .line 2268
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-nez p1, :cond_80

    return-void

    .line 2274
    :cond_80
    :try_start_80
    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-boolean p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInFullscreenMode:Z

    invoke-interface {p1, p2}, Lcom/android/internal/view/IInputMethodClient;->scheduleStartInputIfNecessary(Z)V
    :try_end_87
    .catch Landroid/os/RemoteException; {:try_start_80 .. :try_end_87} :catch_87

    .line 2280
    :catch_87
    :cond_87
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInitialUserSwitch:Z

    .line 2281
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 2282
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 2283
    invoke-virtual {p2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result p2

    const-string v0, "access_control_enabled"

    .line 2281
    invoke-static {p1, v0, v1, p2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_9f

    move p1, v2

    goto :goto_a0

    :cond_9f
    move p1, v1

    .line 2284
    :goto_a0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setAccessControlEnable(Z)V

    .line 2286
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 2287
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 2288
    invoke-virtual {p2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result p2

    const-string v0, "access_control_keyboard_block"

    .line 2286
    invoke-static {p1, v0, v2, p2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_b8

    move v1, v2

    .line 2289
    :cond_b8
    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setisAccessControlKeyboardBlockEnable(Z)V

    return-void
.end method

.method public systemRunning(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .registers 16

    .line 2314
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 2318
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-nez v1, :cond_e8

    const/4 v1, 0x1

    .line 2319
    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    .line 2320
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastSystemLocales:Landroid/os/LocaleList;

    .line 2321
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    .line 2322
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 2323
    invoke-virtual {v4, v2}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_29

    move v4, v1

    goto :goto_2a

    :cond_29
    move v4, v5

    .line 2322
    :goto_2a
    invoke-virtual {v3, v2, v4}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->switchCurrentUser(IZ)V

    .line 2324
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/KeyguardManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 2325
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/NotificationManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 2326
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 2327
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideStatusBarIconLocked()V

    .line 2328
    iget p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    iget v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    invoke-virtual {p0, p1, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 2329
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const v3, 0x1110225

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    if-eqz p1, :cond_68

    .line 2332
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    new-instance v3, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowManagerInternal;->setOnHardKeyboardStatusChangeListener(Lcom/android/server/wm/WindowManagerInternal$OnHardKeyboardStatusChangeListener;)V

    .line 2339
    :cond_68
    new-instance p1, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;I)V

    const-string v3, "Lazily initialize IMMS#mImeDrawsImeNavBarRes"

    invoke-static {p1, v3}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeDrawsImeNavBarResLazyInitFuture:Ljava/util/concurrent/Future;

    .line 2355
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    invoke-virtual {p1, v3, v6, v4, v1}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 2356
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;

    invoke-virtual {p1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->registerContentObserverLocked(I)V

    .line 2358
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.USER_ADDED"

    .line 2359
    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.USER_REMOVED"

    .line 2360
    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.LOCALE_CHANGED"

    .line 2361
    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.android.server.inputmethod.InputMethodManagerService.SHOW_INPUT_METHOD_PICKER"

    .line 2362
    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.samsung.systemui.statusbar.ANIMATING"

    .line 2364
    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2366
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForSystemUser;

    invoke-direct {v4, p0, v6}, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForSystemUser;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForSystemUser-IA;)V

    invoke-virtual {v3, v4, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2369
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    const-string p1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 2370
    invoke-virtual {v10, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2371
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForAllUsers;

    invoke-direct {v8, p0, v6}, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForAllUsers;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForAllUsers-IA;)V

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-virtual/range {v7 .. v13}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 2375
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object p1

    .line 2376
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v1

    if-nez p1, :cond_d3

    move v5, v1

    .line 2377
    :cond_d3
    invoke-virtual {p0, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    .line 2378
    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    .line 2379
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 2380
    invoke-static {p1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 2381
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object p0

    .line 2379
    invoke-static {p1, p0}, Lcom/android/server/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/PackageManager;Ljava/util/List;)V

    .line 2383
    :cond_e8
    monitor-exit v0

    return-void

    :catchall_ea
    move-exception p0

    monitor-exit v0
    :try_end_ec
    .catchall {:try_start_3 .. :try_end_ec} :catchall_ea

    throw p0
.end method

.method public final tryReuseConnectionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)Lcom/android/internal/inputmethod/InputBindResult;
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 3314
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hasConnectionLocked()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 3315
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 3318
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->requestClientSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V

    .line 3319
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->requestClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V

    .line 3320
    new-instance p1, Lcom/android/internal/inputmethod/InputBindResult;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 3322
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurIdLocked()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSequenceNumberLocked()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lcom/android/internal/inputmethod/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/util/SparseArray;Landroid/view/InputChannel;Ljava/lang/String;ILandroid/graphics/Matrix;Z)V

    return-object p1

    .line 3324
    :cond_27
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getLastBindTimeLocked()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long p1, v0, v2

    if-gez p1, :cond_4b

    .line 3333
    new-instance p1, Lcom/android/internal/inputmethod/InputBindResult;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 3335
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurIdLocked()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSequenceNumberLocked()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lcom/android/internal/inputmethod/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/util/SparseArray;Landroid/view/InputChannel;Ljava/lang/String;ILandroid/graphics/Matrix;Z)V

    return-object p1

    :cond_4b
    const/16 p1, 0x7d00

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 3339
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, p0

    const/4 p0, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, p0

    .line 3338
    invoke-static {p1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_68
    const/4 p0, 0x0

    return-object p0
.end method

.method public unbindCurrentClientLocked(I)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 2924
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_44

    .line 2927
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToMethod:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 2928
    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToMethod:Z

    .line 2929
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 2931
    invoke-virtual {v0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->unbindInput()V

    .line 2934
    :cond_14
    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToAccessibility:Z

    .line 2939
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleSetActiveToClient(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;ZZZ)V

    .line 2947
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v0, :cond_34

    .line 2948
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xbb8

    .line 2949
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSequenceNumberLocked()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v5, v5, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    .line 2948
    invoke-virtual {v2, v3, v4, p1, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Lcom/android/internal/view/IInputMethodClient;Landroid/os/Message;)V

    .line 2953
    :cond_34
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iput-boolean v1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->sessionRequested:Z

    .line 2954
    iput-boolean v1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->mSessionRequestedForAccessibility:Z

    const/4 p1, 0x0

    .line 2955
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 2956
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurVirtualDisplayToScreenMatrix:Landroid/graphics/Matrix;

    .line 2958
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodMenuController;->hideInputMethodMenuLocked()V

    :cond_44
    return-void
.end method

.method public undoMinimizeSoftInput()V
    .registers 1

    .line 7784
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    .line 7788
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->undoMinimizeSoftInput()V

    return-void
.end method

.method public updateCurrentProfileIds()V
    .registers 3

    .line 2294
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManager:Landroid/os/UserManager;

    .line 2295
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object p0

    .line 2294
    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->setCurrentProfileIds([I)V

    return-void
.end method

.method public final updateDefaultVoiceImeIfNeededLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 6131
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const v1, 0x104002e

    .line 6132
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6133
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getDefaultVoiceInputMethod()Ljava/lang/String;

    move-result-object v1

    .line 6134
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-static {v2, v0, v1}, Lcom/android/server/inputmethod/InputMethodUtils;->chooseSystemVoiceIme(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    if-nez v0, :cond_25

    .line 6143
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 6144
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putDefaultVoiceInputMethod(Ljava/lang/String;)V

    :cond_24
    return-void

    .line 6150
    :cond_25
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_30

    return-void

    .line 6156
    :cond_30
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    .line 6157
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putDefaultVoiceInputMethod(Ljava/lang/String;)V

    return-void
.end method

.method public updateFromSettingsLocked(Z)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    const-string v0, "InputMethodManagerService"

    const-string/jumbo v1, "updateFromSettingsLocked"

    .line 3944
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3946
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    .line 3947
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodMenuController;->updateKeyboardFromSettingsLocked()V

    return-void
.end method

.method public final updateImeWindowStatus(Z)V
    .registers 4

    .line 3819
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    if-eqz p1, :cond_c

    const/4 p1, 0x0

    .line 3821
    :try_start_6
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    invoke-virtual {p0, p1, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    goto :goto_f

    .line 3823
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked()V

    .line 3825
    :goto_f
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public updateInputMethodsFromSettingsLocked(Z)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    const/4 v0, 0x4

    if-eqz p1, :cond_49

    .line 3953
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v1, 0x0

    .line 3954
    :goto_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_49

    .line 3957
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 3959
    :try_start_16
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-wide/32 v5, 0x8000

    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 3961
    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v7

    .line 3959
    invoke-interface {v3, v4, v5, v6, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_46

    .line 3962
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    if-ne v3, v0, :cond_46

    .line 3968
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 3970
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v8

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 3971
    invoke-virtual {v2}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v9

    .line 3968
    invoke-interface/range {v4 .. v9}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_46} :catch_46

    :catch_46
    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 3981
    :cond_49
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object p1

    .line 3983
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 3984
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object p1

    .line 3986
    :cond_61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "InputMethodManagerService"

    if-nez v1, :cond_8d

    .line 3988
    :try_start_69
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_72
    .catch Ljava/lang/IllegalArgumentException; {:try_start_69 .. :try_end_72} :catch_73

    goto :goto_90

    :catch_73
    move-exception v0

    .line 3990
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown input method from prefs: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x5

    .line 3991
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetCurrentMethodAndClientLocked(I)V

    goto :goto_90

    .line 3995
    :cond_8d
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetCurrentMethodAndClientLocked(I)V

    .line 3999
    :goto_90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateInputMethodsFromSettingsLocked: id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4006
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->resetCircularListLocked(Landroid/content/Context;)V

    .line 4008
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->sendOnNavButtonFlagsChangedLocked()V

    return-void
.end method

.method public final updateStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 14

    .line 3602
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 3603
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 3604
    monitor-exit v0

    return-void

    .line 3606
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_59

    if-nez p3, :cond_17

    .line 3610
    :try_start_11
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideStatusBarIconLocked()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_15

    goto :goto_54

    :catchall_15
    move-exception p0

    goto :goto_50

    :cond_17
    if-eqz p2, :cond_54

    const/4 p1, 0x0

    .line 3616
    :try_start_1a
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 3617
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/16 v5, 0x0

    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 3619
    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v7

    .line 3618
    invoke-interface {v4, p2, v5, v6, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 3617
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_32} :catch_33
    .catchall {:try_start_1a .. :try_end_32} :catchall_15

    goto :goto_34

    :catch_33
    move-object v3, p1

    .line 3623
    :goto_34
    :try_start_34
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v4, :cond_54

    .line 3624
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    const/4 v8, 0x0

    if-eqz v3, :cond_41

    .line 3626
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_41
    move-object v9, p1

    move-object v6, p2

    move v7, p3

    .line 3624
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/statusbar/StatusBarManagerService;->setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 3627
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V
    :try_end_4f
    .catchall {:try_start_34 .. :try_end_4f} :catchall_15

    goto :goto_54

    .line 3631
    :goto_50
    :try_start_50
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3632
    throw p0

    .line 3631
    :cond_54
    :goto_54
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3633
    monitor-exit v0

    return-void

    :catchall_59
    move-exception p0

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_50 .. :try_end_5b} :catchall_59

    throw p0
.end method

.method public updateSystemUiLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 3830
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    return-void
.end method

.method public final updateSystemUiLocked(II)V
    .registers 15
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 3836
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurTokenLocked()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 3848
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->checkIMEMarkerLocation(I)I

    move-result v0

    .line 3853
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    if-eqz p1, :cond_34

    .line 3857
    :try_start_12
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isKeyguardLocked()Z

    move-result v4

    if-nez v4, :cond_1c

    iget-boolean v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    if-nez v4, :cond_34

    :cond_1c
    const-string p1, "InputMethodManagerService"

    .line 3860
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateSystemUiLocked(), Current client is not Keyguard, changing visibility to Vis : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v3

    .line 3863
    :cond_34
    iget-boolean v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurPerceptible:Z

    const/16 v5, 0x8

    if-nez v4, :cond_42

    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_44

    and-int/lit8 p1, p1, -0x3

    or-int/2addr p1, v5

    goto :goto_44

    :cond_42
    and-int/lit8 p1, p1, -0x9

    :cond_44
    :goto_44
    move v9, p1

    .line 3872
    invoke-virtual {p0, v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldShowImeSwitcherLocked(I)Z

    move-result p1

    .line 3873
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    const/4 v4, 0x1

    if-eqz v6, :cond_61

    .line 3874
    iget v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurTokenLocked()Landroid/os/IBinder;

    move-result-object v8

    if-eqz p1, :cond_5c

    sget v10, Lcom/android/server/inputmethod/InputMethodManagerService;->IME_MARKER_NAVI_ICON:I

    if-ne v0, v10, :cond_5c

    move v11, v4

    goto :goto_5d

    :cond_5c
    move v11, v3

    :goto_5d
    move v10, p2

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/statusbar/StatusBarManagerService;->setImeWindowStatus(ILandroid/os/IBinder;IIZ)V

    .line 3879
    :cond_61
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodInfo;

    const/4 v6, 0x0

    if-eqz p2, :cond_c4

    if-eqz p1, :cond_c4

    .line 3881
    sget p1, Lcom/android/server/inputmethod/InputMethodManagerService;->IME_MARKER_NOTI_PANEL:I

    if-ne v0, p1, :cond_c4

    .line 3884
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const v0, 0x1040c3f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 3891
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    move-result v0

    if-nez v0, :cond_97

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isHWAccessoryKeyboard()Z

    move-result v0

    if-eqz v0, :cond_97

    .line 3892
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const v0, 0x1040c40

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_9f

    .line 3893
    :cond_97
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-static {v0, p2, v3}, Lcom/android/server/inputmethod/InputMethodUtils;->getImeAndSubtypeDisplayName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 3895
    :goto_9f
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 3896
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeSwitchPendingIntent:Landroid/app/PendingIntent;

    .line 3897
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 3916
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz p1, :cond_d3

    iget-boolean p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationShown:Z

    if-nez p2, :cond_d3

    .line 3920
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    .line 3922
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 3920
    invoke-virtual {p1, v6, v5, p2, v0}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 3923
    iput-boolean v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationShown:Z

    goto :goto_d3

    .line 3927
    :cond_c4
    iget-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationShown:Z

    if-eqz p1, :cond_d3

    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz p1, :cond_d3

    .line 3931
    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v6, v5, p2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 3933
    iput-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationShown:Z
    :try_end_d3
    .catchall {:try_start_12 .. :try_end_d3} :catchall_d7

    .line 3937
    :cond_d3
    :goto_d3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_d7
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3938
    throw p0
.end method

.method public final userHasDebugPriv(ILandroid/os/ShellCommand;)Z
    .registers 5

    .line 7351
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManager:Landroid/os/UserManager;

    .line 7352
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const-string/jumbo v1, "no_debugging_features"

    .line 7351
    invoke-virtual {p0, v1, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    if-eqz p0, :cond_2e

    .line 7353
    invoke-virtual {p2}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "User #"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is restricted with DISALLOW_DEBUGGING_FEATURES."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_2e
    const/4 p0, 0x1

    return p0
.end method
