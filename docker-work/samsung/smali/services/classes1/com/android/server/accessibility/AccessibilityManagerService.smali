.class public Lcom/android/server/accessibility/AccessibilityManagerService;
.super Landroid/view/accessibility/IAccessibilityManager$Stub;
.source "AccessibilityManagerService.java"

# interfaces
.implements Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;
.implements Lcom/android/server/accessibility/AccessibilityUserState$ServiceInfoChangeListener;
.implements Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;
.implements Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;
.implements Lcom/android/server/accessibility/SystemActionPerformer$SystemActionsChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AccessibilityManagerService$SendWindowStateChangedEventRunnable;,
        Lcom/android/server/accessibility/AccessibilityManagerService$DaltonizerStateContentObserver;,
        Lcom/android/server/accessibility/AccessibilityManagerService$DaltonizerEnabledStateContentObserver;,
        Lcom/android/server/accessibility/AccessibilityManagerService$SetupCompleteStateContentObserver;,
        Lcom/android/server/accessibility/AccessibilityManagerService$ColorInversionStateContentObserver;,
        Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;,
        Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;,
        Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;,
        Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;,
        Lcom/android/server/accessibility/AccessibilityManagerService$Client;,
        Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;,
        Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;,
        Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;,
        Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;,
        Lcom/android/server/accessibility/AccessibilityManagerService$SIPBroadcastReceiver;,
        Lcom/android/server/accessibility/AccessibilityManagerService$Lifecycle;,
        Lcom/android/server/accessibility/AccessibilityManagerService$LocalServiceImpl;
    }
.end annotation


# static fields
.field public static final AOD_SHOW_STATE:Ljava/lang/String; = "aod_show_state"

.field public static final CAMERA_FLASH_NOTIFICATION_ALL_APP:Ljava/lang/String; = "all"

.field public static final COLOR_ADJUSTMENT_DEFAULT:I = 0x2

.field public static final COLOR_ADJUSTMENT_GRAY_SCALE:I = 0x0

.field public static final COLOR_ADJUSTMENT_NOT_SET:I = -0x1

.field public static final COLOR_ADJUSTMENT_PERSONALIZE:I = 0x4

.field public static final COMPONENT_NAME_SEPARATOR:C = ':'

.field public static final DEBUG:Z = false

.field public static final FLASH_NOTIFICATION_APP_LIST_SEPARATOR:C = ';'

.field public static final FLASH_NOTIFICATION_DEFAULT_PATTERN_OFF_DURATION:I = 0xfa

.field public static final FLASH_NOTIFICATION_DEFAULT_PATTERN_ON_DURATION:I = 0x15e

.field public static final FLASH_NOTIFICATION_LONG_PREVIEW_PATTERN_OFF_DURATION:I = 0x3e8

.field public static final FLASH_NOTIFICATION_LONG_PREVIEW_PATTERN_ON_DURATION:I = 0x1388

.field public static final FLASH_NOTIFICATION_PREVIEW_CAMERA:I = 0x1

.field public static final FLASH_NOTIFICATION_PREVIEW_LONG:I = 0x4

.field public static final FLASH_NOTIFICATION_PREVIEW_NONE:I = 0x0

.field public static final FLASH_NOTIFICATION_PREVIEW_SCREEN:I = 0x2

.field public static final FLASH_NOTIFICATION_SEQUENCE_PATTERN_OFF_DURATION:I = 0x2bc

.field public static final FLASH_NOTIFICATION_SEQUENCE_PATTERN_ON_DURATION:I = 0x2bc

.field public static final FUNCTION_REGISTER_UI_TEST_AUTOMATION_SERVICE:Ljava/lang/String; = "registerUiTestAutomationService"

.field public static final GET_WINDOW_TOKEN:Ljava/lang/String; = "getWindowToken"

.field public static final INVALID_SERVICE_ID:I = -0x1

.field public static final KEY_A11YSETTINGS_ASSISTANTMENU_ACTIVELIST:Ljava/lang/String; = "assistant_menu_option_upperapps"

.field public static final KEY_A11YSETTINGS_ASSISTANTMENU_FINGERMOUSE:Ljava/lang/String; = "FingerMouse"

.field public static final KEY_A11YSETTINGS_ASSISTANTMENU_MAGNIFIERWINDOW:Ljava/lang/String; = "MagnifierWindow"

.field public static final LOG_TAG:Ljava/lang/String; = "AccessibilityManagerService"

.field public static final MAGNIFICATION_GESTURE_HANDLER_ID:I = 0x0

.field public static final MAGNIFICATION_MIN_SCALE:F = 2.0f

.field public static final MATRIX_GRAYSCALE:[F

.field public static final MATRIX_INVERT_COLOR:[F

.field public static final MESSAGE_ASSISTANT_PLUS:I = 0x1

.field public static NOTIFLASH_LENGTH_OFF:I = 0x0

.field public static NOTIFLASH_LENGTH_ON:I = 0x0

.field public static final OWN_PROCESS_ID:I

.field public static final POSTPONE_WINDOW_STATE_CHANGED_EVENT_TIMEOUT_MILLIS:I = 0x1f4

.field public static final SAMSUNG_TALKBACK_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.accessibility.talkback"

.field public static final SCREEN_FLASH_NOTIFICATION_APP_LIST_SEPARATOR_COLOR:Ljava/lang/String; = "#"

.field public static final SCREEN_FLASH_NOTIFICATION_COLOR_MODE_CUSTOM:I = 0x1

.field public static final SCREEN_FLASH_NOTIFICATION_DEFAULT_ALPHA:I = 0x66000000

.field public static final SCREEN_FLASH_NOTIFICATION_DEFAULT_COLOR:I = 0xffff00

.field public static final SCREEN_FLASH_NOTIFICATION_DEFAULT_COLOR_WITH_ALPHA:I = 0x66ffff00

.field public static final SCREEN_FLASH_NOTIFICATION_FADE_DURATION:I = 0xc8

.field public static final SCREEN_FLASH_NOTIFICATION_FADE_OUT_TIMEOUT:I = 0xa

.field public static final SCREEN_FLASH_NOTIFICATION_UNCHECKED:Ljava/lang/String; = "0"

.field public static final SEC_ACCESSIBILITY_APP_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.accessibility"

.field public static SEC_DEBUG:Z = false

.field public static final SET_PIP_ACTION_REPLACEMENT:Ljava/lang/String; = "setPictureInPictureActionReplacingConnection"

.field public static final SIP_INTENT_NAME:Ljava/lang/String; = "ResponseAxT9Info"

.field public static final SIP_IS_AVAILABLE:Ljava/lang/String; = "AxT9IME.isVisibleWindow"

.field public static final TEMPORARY_ENABLE_ACCESSIBILITY_UNTIL_KEYGUARD_REMOVED:Ljava/lang/String; = "temporaryEnableAccessibilityStateUntilKeyguardRemoved"

.field public static final WAIT_FOR_USER_STATE_FULLY_INITIALIZED_MILLIS:I = 0xbb8

.field public static final WAIT_MOTION_INJECTOR_TIMEOUT_MILLIS:I = 0x3e8

.field public static bIsFlashOn:Z

.field public static bIsScreenOn:Z

.field public static bIsTorchOn:Z

.field public static isLightFlashNotiEnabled:Z

.field public static isScreenFlashNotiEnabled:Z

.field public static mDisplay:Landroid/hardware/display/DisplayManager;

.field public static final mDisplayManager:Landroid/hardware/display/IDisplayManager;

.field public static mDisplayState:I

.field public static sIdCounter:I


# instance fields
.field public coverScreenNotificationOverlayView:Landroid/view/View;

.field public cvdCalculator:Lcom/android/server/accessibility/CVDCalculator;

.field public final mA11yDisplayListener:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;

.field public mA11yInputFilterThread:Landroid/os/HandlerThread;

.field public final mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

.field public final mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public final mAodShowStateUri:Landroid/net/Uri;

.field public mAssistantMenuMsgnr:Landroid/os/Messenger;

.field public mCVDSeverity:F

.field public mCVDType:I

.field public mCallStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mCameraId:Ljava/lang/String;

.field public mCameraManager:Landroid/hardware/camera2/CameraManager;

.field public final mCaptioningManagerImpl:Lcom/android/server/accessibility/CaptioningManagerImpl;

.field public mColorInversionStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$ColorInversionStateContentObserver;

.field public final mColorInversionStateUri:Landroid/net/Uri;

.field public final mContext:Landroid/content/Context;

.field public mCurrentFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

.field public mCurrentUserId:I

.field public mCurtainModeIsRunning:Z

.field public mDaltonizerEnabledStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$DaltonizerEnabledStateContentObserver;

.field public mDaltonizerStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$DaltonizerStateContentObserver;

.field public final mDisplayDaltonizerEnabledUri:Landroid/net/Uri;

.field public final mDisplayDaltonizerUri:Landroid/net/Uri;

.field public mEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field public mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

.field public mFingerprintGestureDispatcher:Lcom/android/server/accessibility/FingerprintGestureDispatcher;

.field public final mFlashNotifications:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;",
            ">;"
        }
    .end annotation
.end field

.field public mGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;

.field public final mGlobalClients:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/accessibility/IAccessibilityManagerClient;",
            ">;"
        }
    .end annotation
.end field

.field public mHasInputFilter:Z

.field public mInitialized:Z

.field public mInputBound:Z

.field public mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

.field public mInputSessionRequested:Z

.field public mInteractionBridge:Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

.field public mIsAccessibilityButtonShown:Z

.field public mIsSIPshown:Z

.field public mKeyEventDispatcher:Lcom/android/server/accessibility/KeyEventDispatcher;

.field public final mLock:Ljava/lang/Object;

.field public final mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

.field public final mMagnificationProcessor:Lcom/android/server/accessibility/magnification/MagnificationProcessor;

.field public final mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

.field public mMotionEventInjectors:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/MotionEventInjector;",
            ">;"
        }
    .end annotation
.end field

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public mRemoteInputConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

.field public mRestarting:Z

.field public final mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

.field public final mSendWindowStateChangedEventRunnables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/accessibility/AccessibilityManagerService$SendWindowStateChangedEventRunnable;",
            ">;"
        }
    .end annotation
.end field

.field public mSetupCompleteStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$SetupCompleteStateContentObserver;

.field public final mSetupCompleteUri:Landroid/net/Uri;

.field public final mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field public mSystemActionPerformer:Lcom/android/server/accessibility/SystemActionPerformer;

.field public final mTempAccessibilityServiceInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mTempComponentNameSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public final mTempIntArray:Landroid/util/IntArray;

.field public mTempPoint:Landroid/graphics/Point;

.field public final mTempRect:Landroid/graphics/Rect;

.field public final mTempRect1:Landroid/graphics/Rect;

.field public volatile mThread:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;

.field public final mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

.field public final mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

.field public final mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

.field public final mUserStates:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/AccessibilityUserState;",
            ">;"
        }
    .end annotation
.end field

.field public mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

.field public screenNotificationOverlayView:Landroid/view/View;

.field public shouldRecogniseTwoFingerGestures:Z


# direct methods
.method public static synthetic $r8$lambda$-_NWSMTDWJX-NKsIxOcjS_riI90(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$updateAccessibilityShortcutKeyTargetsLocked$15(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$-vePJFkQR3AhL2o4mqvAN9BrHrQ(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->createSessionForConnection(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V

    return-void
.end method

.method public static synthetic $r8$lambda$21wAoMak4uZ530AzGkOCcXtp_AU(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$migrateAccessibilityButtonSettingsIfNecessaryLocked$20(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$3shZZuM0BAjtbqtfio98ut83Tpg(Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 1

    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$readComponentNamesFromSettingLocked$7(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$3tzINC0GuyhfBlDVK5tHOSl3gvo(Lcom/android/server/accessibility/AccessibilityUserState;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$updateFocusAppearanceDataLocked$25(Lcom/android/server/accessibility/AccessibilityUserState;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5e-gjskGFvOKqXQT-XRFbWKaOBg(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/RemoteCallbackList;J)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendServicesStateChanged(Landroid/os/RemoteCallbackList;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$63_iUa5MtbRHI1HnuFSUOPAmHZA(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$readAccessibilityDirectAccessSettingLocked$27(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$9e10GLBNMx9Pu36nGitZK9F7mt4(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->startInput(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$AMpcEQ909mdMcrNkxda8pHd7WN8(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onDoubleTapInternal(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$AVXjUInSbI3Q3J_0C4y8f60_AgU(Lcom/android/server/accessibility/AccessibilityManagerService;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendStateToClients(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$AtBbabX5fpi88BBUX_VynVeJhKE(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$updateRelevantEventsLocked$6(Lcom/android/server/accessibility/AccessibilityUserState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Brk8AhkiXqWvpmQvMbwmr8Ek4FM(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$persistComponentNamesToSettingLocked$9(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BvinDUj28r6jV35YiZTLPSNK1cs(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/util/ArraySet;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->createImeSession(Landroid/util/ArraySet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CzouAxSbdNW44Wfb6GE899qa4pg(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->unbindInput()V

    return-void
.end method

.method public static synthetic $r8$lambda$DgyLfEh8JL3yTmMuHdCuN34kBUc(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/graphics/Region;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->setTouchExplorationPassthroughRegionInternal(ILandroid/graphics/Region;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FvblCa02hMTZe2CS0A_dmfMARe4(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$removeShortcutTargetForUnboundServiceLocked$22(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$G0JDG4FV_I4CtKNAgl09NnY4R0E(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->announceNewUserIfNeeded()V

    return-void
.end method

.method public static synthetic $r8$lambda$I6TGqc9gA4wb2JwoS-wpVcmEHsw(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/graphics/Region;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->setGestureDetectionPassthroughRegionInternal(ILandroid/graphics/Region;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IxlC3new_x7gT3ncWLB3bT_55Rs(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateFingerprintGestureHandling(Lcom/android/server/accessibility/AccessibilityUserState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JzrC1RcyuKrU65qTmp2gdosp0MY(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->unbindInputForConnection(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KYGc_3XmBxmJh-pdOyERdeKfaQg(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$restoreAccessibilityButtonTargetsLocked$2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KgwNZ1LVaFhWj8dQm6GmwlaUShk(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$updateRelevantEventsLocked$5(Lcom/android/server/accessibility/AccessibilityUserState;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LMzVtZRexLg-m9jMkx0OcHXoGC4(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->showEnableTouchExplorationDialog(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LSDs7Khm2Mi0gIAlYI9WB-fbC_A(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$updateFocusAppearanceDataLocked$26(Lcom/android/server/accessibility/AccessibilityUserState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LmOxaMHc81JyAfNHmH0tBFPcCIQ(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateInputFilter(Lcom/android/server/accessibility/AccessibilityUserState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OBTW6cPkIOpPd_A_omb_21B27LQ(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$updateAccessibilityDirectAccessTargetsLocked$29(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$P6xvgXqH5TkctmMH4E0Avp4ZHhA(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$restoreLegacyDisplayMagnificationNavBarIfNeededLocked$0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PxigWXLNKgAAvGh4sGrFb2wXQDc(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->bindAndStartInputForConnection(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q688wQPe4Qa4oYGMFTgJMu4UVYw(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$restoreLegacyDisplayMagnificationNavBarIfNeededLocked$1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$REko452jm6o0w2BoKEXStHdyrYw(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->bindInput()V

    return-void
.end method

.method public static synthetic $r8$lambda$SFTjVGJHKW2KU2l6L4VxXgW2yh4(Lcom/android/server/accessibility/AccessibilityManagerService;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendStateToAllClients(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$SPmrxw0O0THbPyqdFWMkbSlq5Sw(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->requestTouchExplorationInternal(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$TZ5DQQsI53RhOzfDxhY0-dD5eKM(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$readAccessibilityButtonTargetsLocked$13(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VI0vpqFpJRKDwx4TR1lngDPXqoU(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyRefreshMagnificationModeToInputFilter(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$VJfCgF5YxPxOEvxdAlESX3L8RSI(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$restoreAccessibilityButtonTargetsLocked$3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VOxWHTlrzScyq_lsqyThYnZd18c(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/util/SparseArray;Z)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->setImeSessionEnabled(Landroid/util/SparseArray;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Vb2G4WGfYT95yIjXgJjBpPgUsUQ(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$restoreAccessibilityButtonTargetsLocked$4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Wq7hRcbt-c18HFdZggDsbS5b9J4(Lcom/android/server/accessibility/AccessibilityManagerService;IZ)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->setServiceDetectsGesturesInternal(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y-LrNdCKUT-JVShbmpjHlr0bVKY(Lcom/android/server/accessibility/AccessibilityManagerService;IILjava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->performAccessibilityShortcutInternal(IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YOqZRJvSlYYVx6ce6EhSygK32bI(ILandroid/view/accessibility/IAccessibilityManagerClient;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$sendStateToClients$10(ILandroid/view/accessibility/IAccessibilityManagerClient;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YRdSjftqic9-W_XAlDzRmvgTobQ(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$updateAccessibilityDirectAccessTargetsLocked$28(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_Jl7WksShaLjN79Mrz8QhLAEONw(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$updateAccessibilityButtonTargetsLocked$16(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_ZO3sBH_NWwi-_ADStcrkr1Xmg0(Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 1

    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$readComponentNamesFromStringLocked$8(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bNnHTeEBtH49VswclVonWJQh0KU(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$persistMagnificationModeSettingsLocked$24(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$cXUmTWGXoc6Y4Wk63o-pokcuO0A(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->requestDelegatingInternal(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$dQLjz-d1JCBiIehw-V154G8Ey8w(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendAccessibilityEventToInputFilter(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fM11ynPWK0iAVedvrZkMEA7sbxI(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$updateAccessibilityShortcutKeyTargetsLocked$14(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$g8fkizxAF21XacUqYOZi1UPIa9c(Lcom/android/server/accessibility/AccessibilityManagerService;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->requestDraggingInternal(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$hqVrLYzFwtkB5ng9ItwImI57ksU(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$removeShortcutTargetForUnboundServiceLocked$23(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$iKD2o3dZZg4CGhkBERZd_DNdKDE(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$readAccessibilityShortcutKeySettingLocked$12(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ikjZg2-MAt_mITh3eosEJrnnGko(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$updateAccessibilityButtonTargetsLocked$17(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oa4AA9cNda68-fhAssM-vplo6vU(Ljava/lang/String;Lcom/android/server/accessibility/AccessibilityUserState;Ljava/util/Set;Ljava/util/Set;Landroid/content/ComponentName;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$migrateAccessibilityButtonSettingsIfNecessaryLocked$19(Ljava/lang/String;Lcom/android/server/accessibility/AccessibilityUserState;Ljava/util/Set;Ljava/util/Set;Landroid/content/ComponentName;)V

    return-void
.end method

.method public static synthetic $r8$lambda$prCrJr1HHTfwv4b7O9js6gkd4hw(JLandroid/view/accessibility/IAccessibilityManagerClient;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$notifyClientsOfServicesStateChange$11(JLandroid/view/accessibility/IAccessibilityManagerClient;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sb8dFcnuZBsHq6n4u1rt5LabMqk(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onDoubleTapAndHoldInternal(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$t8lU7ExTNvtbE1kJGKoFOCk9p1g(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$removeShortcutTargetForUnboundServiceLocked$21(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xwPzO_Y8yqFTndliRmMGfACCuj4(Ljava/lang/String;Lcom/android/server/accessibility/AccessibilityUserState;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$migrateAccessibilityButtonSettingsIfNecessaryLocked$18(Ljava/lang/String;Lcom/android/server/accessibility/AccessibilityUserState;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmA11yWindowManager(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityWindowManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmActivityTaskManagerService(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/wm/ActivityTaskManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCameraId(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCameraManager(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/hardware/camera2/CameraManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmColorInversionStateContentObserver(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$ColorInversionStateContentObserver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mColorInversionStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$ColorInversionStateContentObserver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmColorInversionStateUri(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mColorInversionStateUri:Landroid/net/Uri;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentFlashNoti(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentUserId(Lcom/android/server/accessibility/AccessibilityManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurtainModeIsRunning(Lcom/android/server/accessibility/AccessibilityManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurtainModeIsRunning:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDaltonizerEnabledStateContentObserver(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$DaltonizerEnabledStateContentObserver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mDaltonizerEnabledStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$DaltonizerEnabledStateContentObserver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDaltonizerStateContentObserver(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$DaltonizerStateContentObserver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mDaltonizerStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$DaltonizerStateContentObserver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayDaltonizerEnabledUri(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mDisplayDaltonizerEnabledUri:Landroid/net/Uri;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayDaltonizerUri(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mDisplayDaltonizerUri:Landroid/net/Uri;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFlashNotifications(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/util/LinkedList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mFlashNotifications:Ljava/util/LinkedList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGesturewakeup(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/GestureWakeup;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHasInputFilter(Lcom/android/server/accessibility/AccessibilityManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInputFilter(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityInputFilter;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMagnificationController(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/magnification/MagnificationController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMainHandler(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageManager(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/pm/PackageManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerManager(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/os/PowerManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSecurityPolicy(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilitySecurityPolicy;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSendWindowStateChangedEventRunnables(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSendWindowStateChangedEventRunnables:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSetupCompleteStateContentObserver(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SetupCompleteStateContentObserver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSetupCompleteStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$SetupCompleteStateContentObserver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSetupCompleteUri(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSetupCompleteUri:Landroid/net/Uri;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTempPoint(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Point;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempPoint:Landroid/graphics/Point;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTempRect(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTempRect1(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect1:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmThread(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mThread:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTorchCallback(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/hardware/camera2/CameraManager$TorchCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTraceManager(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityTraceManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWakeLock(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/os/PowerManager$WakeLock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowManagerService(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/wm/WindowManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmColorInversionStateContentObserver(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$ColorInversionStateContentObserver;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mColorInversionStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$ColorInversionStateContentObserver;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentFlashNoti(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCurtainModeIsRunning(Lcom/android/server/accessibility/AccessibilityManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurtainModeIsRunning:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDaltonizerEnabledStateContentObserver(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$DaltonizerEnabledStateContentObserver;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mDaltonizerEnabledStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$DaltonizerEnabledStateContentObserver;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDaltonizerStateContentObserver(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$DaltonizerStateContentObserver;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mDaltonizerStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$DaltonizerStateContentObserver;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmHasInputFilter(Lcom/android/server/accessibility/AccessibilityManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsSIPshown(Lcom/android/server/accessibility/AccessibilityManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mIsSIPshown:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSetupCompleteStateContentObserver(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$SetupCompleteStateContentObserver;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSetupCompleteStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$SetupCompleteStateContentObserver;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmThread(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mThread:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mapplyDaltonizerSettings(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->applyDaltonizerSettings()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckTorchLight(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->checkTorchLight()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcomputeRelevantEventTypesLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)I
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->computeRelevantEventTypesLocked(Lcom/android/server/accessibility/AccessibilityUserState;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mdispatchAccessibilityEventLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->dispatchAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdoCameraFlashNotiOff(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->doCameraFlashNotiOff()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdoCameraFlashNotiOn(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->doCameraFlashNotiOn()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdoCameraLightNoti(Lcom/android/server/accessibility/AccessibilityManagerService;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->doCameraLightNoti(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdoScreenFlashNotiOff(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->doScreenFlashNotiOff()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdoScreenFlashNotiOn(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->doScreenFlashNotiOn(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfadeOutScreenNotificationOverlayViewInner(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->fadeOutScreenNotificationOverlayViewInner()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetCameraFlashPreference(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCameraFlashPreference(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetCurrentUserStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityUserState;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetInteractionBridge(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getInteractionBridge()Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetScreenFlashColorPreference(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getScreenFlashColorPreference(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetSystemActionPerformer(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/SystemActionPerformer;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getSystemActionPerformer()Lcom/android/server/accessibility/SystemActionPerformer;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetUserStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityUserState;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhideScreenNotificationOverlayViewInner(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->hideScreenNotificationOverlayViewInner()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmigrateAccessibilityButtonSettingsIfNecessaryLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;Ljava/lang/String;I)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->migrateAccessibilityButtonSettingsIfNecessaryLocked(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyClearAccessibilityCacheLocked(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyClearAccessibilityCacheLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monBootPhase(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onBootPhase(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreadAMActiveListSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAMActiveListSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreadAccessibilityButtonTargetComponentLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityButtonTargetComponentLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreadAccessibilityButtonTargetsLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityButtonTargetsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreadAccessibilityDirectAccessSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityDirectAccessSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreadAccessibilityShortcutKeySettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityShortcutKeySettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreadAudioDescriptionEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAudioDescriptionEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreadAutoActionEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAutoActionEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreadAutoclickEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAutoclickEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreadBounceKeysEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readBounceKeysEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreadConfigurationForUserStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readConfigurationForUserStateLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreadCornerActionEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readCornerActionEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreadEnabledAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readEnabledAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreadGestureNaviBarModeSettingsLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readGestureNaviBarModeSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreadHighTextContrastEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readHighTextContrastEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreadMagnificationCapabilitiesLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readMagnificationCapabilitiesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreadMagnificationEnabledSettingsLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readMagnificationEnabledSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreadMagnificationModeForDefaultDisplayLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readMagnificationModeForDefaultDisplayLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreadOneHandModeActivateSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readOneHandModeActivateSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreadSlowKeysEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readSlowKeysEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreadStickyKeysEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readStickyKeysEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreadTapDurationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readTapDurationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreadTouchBlockingEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readTouchBlockingEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreadTouchExplorationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readTouchExplorationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreadTouchExplorationGrantedAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readTouchExplorationGrantedAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreadUserRecommendedUiTimeoutSettingsLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readUserRecommendedUiTimeoutSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mremoveUser(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->removeUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrestoreLegacyDisplayMagnificationNavBarIfNeededLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->restoreLegacyDisplayMagnificationNavBarIfNeededLocked(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscheduleUpdateInputFilter(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleUpdateInputFilter(Lcom/android/server/accessibility/AccessibilityUserState;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msemDisableScreenNotificationEffect(Lcom/android/server/accessibility/AccessibilityManagerService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->semDisableScreenNotificationEffect()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msemEnableScreenNotificationEffect(Lcom/android/server/accessibility/AccessibilityManagerService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->semEnableScreenNotificationEffect()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msemStartFlashNotificationInner(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;I)Z
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/accessibility/AccessibilityManagerService;->semStartFlashNotificationInner(Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msemStartNextFlashNotiLocked(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->semStartNextFlashNotiLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msemStopFlashNotiLocked(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->semStopFlashNotiLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetNonA11yToolNotificationToMatchSafetyCenter(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->setNonA11yToolNotificationToMatchSafetyCenter()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowScreenNotificationOverlayViewInner(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->showScreenNotificationOverlayViewInner(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mswitchUser(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->switchUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munlinkFlashNoti(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->unlinkFlashNoti(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munlockUser(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->unlockUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateMagnificationCapabilitiesSettingsChangeLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateMagnificationCapabilitiesSettingsChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateMagnificationLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateMagnificationLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateMagnificationModeChangeSettingsLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateMagnificationModeChangeSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateWindowsForAccessibilityCallbackLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateWindowsForAccessibilityCallbackLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetMATRIX_INVERT_COLOR()[F
    .registers 1

    sget-object v0, Lcom/android/server/accessibility/AccessibilityManagerService;->MATRIX_INVERT_COLOR:[F

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetNOTIFLASH_LENGTH_OFF()I
    .registers 1

    sget v0, Lcom/android/server/accessibility/AccessibilityManagerService;->NOTIFLASH_LENGTH_OFF:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetNOTIFLASH_LENGTH_ON()I
    .registers 1

    sget v0, Lcom/android/server/accessibility/AccessibilityManagerService;->NOTIFLASH_LENGTH_ON:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetbIsFlashOn()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/accessibility/AccessibilityManagerService;->bIsFlashOn:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetbIsScreenOn()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/accessibility/AccessibilityManagerService;->bIsScreenOn:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetisLightFlashNotiEnabled()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/accessibility/AccessibilityManagerService;->isLightFlashNotiEnabled:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetisScreenFlashNotiEnabled()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/accessibility/AccessibilityManagerService;->isScreenFlashNotiEnabled:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmDisplay()Landroid/hardware/display/DisplayManager;
    .registers 1

    sget-object v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mDisplay:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsIdCounter()I
    .registers 1

    sget v0, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfputbIsFlashOn(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/server/accessibility/AccessibilityManagerService;->bIsFlashOn:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfputbIsScreenOn(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/server/accessibility/AccessibilityManagerService;->bIsScreenOn:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfputbIsTorchOn(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/server/accessibility/AccessibilityManagerService;->bIsTorchOn:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfputisLightFlashNotiEnabled(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/server/accessibility/AccessibilityManagerService;->isLightFlashNotiEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfputisScreenFlashNotiEnabled(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/server/accessibility/AccessibilityManagerService;->isScreenFlashNotiEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfputmDisplayState(I)V
    .registers 1

    sput p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mDisplayState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfputsIdCounter(I)V
    .registers 1

    sput p0, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 281
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/accessibility/AccessibilityManagerService;->OWN_PROCESS_ID:I

    const/4 v0, 0x1

    .line 288
    sput v0, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    const/16 v1, 0x12c

    .line 329
    sput v1, Lcom/android/server/accessibility/AccessibilityManagerService;->NOTIFLASH_LENGTH_ON:I

    const/16 v1, 0xfa

    .line 330
    sput v1, Lcom/android/server/accessibility/AccessibilityManagerService;->NOTIFLASH_LENGTH_OFF:I

    const/4 v1, 0x0

    .line 331
    sput-boolean v1, Lcom/android/server/accessibility/AccessibilityManagerService;->bIsFlashOn:Z

    .line 332
    sput-boolean v1, Lcom/android/server/accessibility/AccessibilityManagerService;->bIsTorchOn:Z

    .line 333
    sput-boolean v1, Lcom/android/server/accessibility/AccessibilityManagerService;->bIsScreenOn:Z

    .line 334
    sput-boolean v1, Lcom/android/server/accessibility/AccessibilityManagerService;->isLightFlashNotiEnabled:Z

    .line 335
    sput-boolean v1, Lcom/android/server/accessibility/AccessibilityManagerService;->isScreenFlashNotiEnabled:Z

    const/4 v1, 0x0

    .line 339
    sput-object v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mDisplay:Landroid/hardware/display/DisplayManager;

    .line 340
    sput v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mDisplayState:I

    const-string v0, "display"

    .line 404
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 7157
    fill-array-data v1, :array_3e

    sput-object v1, Lcom/android/server/accessibility/AccessibilityManagerService;->MATRIX_INVERT_COLOR:[F

    new-array v0, v0, [F

    .line 7165
    fill-array-data v0, :array_62

    sput-object v0, Lcom/android/server/accessibility/AccessibilityManagerService;->MATRIX_GRAYSCALE:[F

    return-void

    :array_3e
    .array-data 4
        0x3ecdd2f2    # 0.402f
        -0x40e6e979    # -0.598f
        -0x40e6a7f0    # -0.599f
        0x0
        -0x4069ba5e    # -1.174f
        -0x41cdd2f2    # -0.174f
        -0x4069999a    # -1.175f
        0x0
        -0x4196872b    # -0.228f
        -0x4196872b    # -0.228f
        0x3f45a1cb    # 0.772f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_62
    .array-data 4
        0x3e59b3d0    # 0.2126f
        0x3e59b3d0    # 0.2126f
        0x3e59b3d0    # 0.2126f
        0x0
        0x3f371759    # 0.7152f
        0x3f371759    # 0.7152f
        0x3f371759    # 0.7152f
        0x0
        0x3d93dd98    # 0.0722f
        0x3d93dd98    # 0.0722f
        0x3d93dd98    # 0.0722f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 13

    .line 617
    invoke-direct {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;-><init>()V

    .line 292
    new-instance v8, Ljava/lang/Object;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 294
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 297
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect:Landroid/graphics/Rect;

    .line 298
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect1:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 328
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCameraId:Ljava/lang/String;

    .line 411
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mAssistantMenuMsgnr:Landroid/os/Messenger;

    const/4 v0, 0x0

    .line 419
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurtainModeIsRunning:Z

    .line 426
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->shouldRecogniseTwoFingerGestures:Z

    .line 432
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mIsSIPshown:Z

    .line 436
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    .line 438
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempAccessibilityServiceInfoList:Ljava/util/List;

    .line 441
    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1, v0}, Landroid/util/IntArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempIntArray:Landroid/util/IntArray;

    .line 443
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    .line 446
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 449
    new-instance v1, Lcom/android/server/accessibility/UiAutomationManager;

    invoke-direct {v1, v8}, Lcom/android/server/accessibility/UiAutomationManager;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    .line 453
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSendWindowStateChangedEventRunnables:Ljava/util/List;

    .line 456
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    const/4 v0, 0x3

    .line 460
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCVDType:I

    const/4 v0, 0x0

    .line 461
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCVDSeverity:F

    .line 465
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCallStack:Ljava/util/ArrayList;

    .line 471
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempPoint:Landroid/graphics/Point;

    const-string v0, "aod_show_state"

    .line 487
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mAodShowStateUri:Landroid/net/Uri;

    const-string v0, "accessibility_display_inversion_enabled"

    .line 492
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mColorInversionStateUri:Landroid/net/Uri;

    const-string/jumbo v0, "user_setup_complete"

    .line 494
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSetupCompleteUri:Landroid/net/Uri;

    const-string v0, "accessibility_display_daltonizer_enabled"

    .line 496
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mDisplayDaltonizerEnabledUri:Landroid/net/Uri;

    const-string v0, "accessibility_display_daltonizer"

    .line 498
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mDisplayDaltonizerUri:Landroid/net/Uri;

    .line 5548
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$8;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$8;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 6498
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mFlashNotifications:Ljava/util/LinkedList;

    .line 618
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 619
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 620
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 622
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerInternal;->getAccessibilityController()Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    move-result-object v0

    .line 621
    invoke-static {v0, p0, v8}, Lcom/android/server/accessibility/AccessibilityTraceManager;->getInstance(Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 623
    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v9, p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Looper;)V

    iput-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    .line 624
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 625
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 626
    new-instance v0, Lcom/android/server/accessibility/PolicyWarningUIController;

    new-instance v1, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;

    invoke-direct {v1, p1}, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v9, p1, v1}, Lcom/android/server/accessibility/PolicyWarningUIController;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;)V

    .line 629
    new-instance v5, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-direct {v5, v0, p1, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;-><init>(Lcom/android/server/accessibility/PolicyWarningUIController;Landroid/content/Context;Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;)V

    iput-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 631
    new-instance v10, Lcom/android/server/accessibility/AccessibilityWindowManager;

    move-object v0, v10

    move-object v1, v8

    move-object v2, v9

    move-object v4, p0

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/accessibility/AccessibilityWindowManager;-><init>(Ljava/lang/Object;Landroid/os/Handler;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;Lcom/android/server/accessibility/AccessibilityTraceManager;)V

    iput-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 633
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;

    invoke-direct {v0, p0, p1, v9}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yDisplayListener:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;

    .line 634
    new-instance v0, Lcom/android/server/accessibility/magnification/MagnificationController;

    new-instance v1, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    invoke-direct {v1, p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p0, v8, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 636
    new-instance v1, Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    invoke-direct {v1, v0}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;-><init>(Lcom/android/server/accessibility/magnification/MagnificationController;)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationProcessor:Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    .line 637
    new-instance v0, Lcom/android/server/accessibility/CaptioningManagerImpl;

    invoke-direct {v0, p1}, Lcom/android/server/accessibility/CaptioningManagerImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCaptioningManagerImpl:Lcom/android/server/accessibility/CaptioningManagerImpl;

    .line 638
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/SystemActionPerformer;Lcom/android/server/accessibility/AccessibilityWindowManager;Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;Lcom/android/server/accessibility/magnification/MagnificationController;Lcom/android/server/accessibility/AccessibilityInputFilter;)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 589
    invoke-direct {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;-><init>()V

    .line 292
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 294
    new-instance v1, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v2, 0x3a

    invoke-direct {v1, v2}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 297
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect:Landroid/graphics/Rect;

    .line 298
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect1:Landroid/graphics/Rect;

    const/4 v1, 0x0

    .line 328
    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCameraId:Ljava/lang/String;

    .line 411
    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mAssistantMenuMsgnr:Landroid/os/Messenger;

    const/4 v1, 0x0

    .line 419
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurtainModeIsRunning:Z

    .line 426
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->shouldRecogniseTwoFingerGestures:Z

    .line 432
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mIsSIPshown:Z

    .line 436
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    .line 438
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempAccessibilityServiceInfoList:Ljava/util/List;

    .line 441
    new-instance v2, Landroid/util/IntArray;

    invoke-direct {v2, v1}, Landroid/util/IntArray;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempIntArray:Landroid/util/IntArray;

    .line 443
    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    .line 446
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 449
    new-instance v2, Lcom/android/server/accessibility/UiAutomationManager;

    invoke-direct {v2, v0}, Lcom/android/server/accessibility/UiAutomationManager;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    .line 453
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSendWindowStateChangedEventRunnables:Ljava/util/List;

    .line 456
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    const/4 v1, 0x3

    .line 460
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCVDType:I

    const/4 v1, 0x0

    .line 461
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCVDSeverity:F

    .line 465
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCallStack:Ljava/util/ArrayList;

    .line 471
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempPoint:Landroid/graphics/Point;

    const-string v1, "aod_show_state"

    .line 487
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mAodShowStateUri:Landroid/net/Uri;

    const-string v1, "accessibility_display_inversion_enabled"

    .line 492
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mColorInversionStateUri:Landroid/net/Uri;

    const-string/jumbo v1, "user_setup_complete"

    .line 494
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSetupCompleteUri:Landroid/net/Uri;

    const-string v1, "accessibility_display_daltonizer_enabled"

    .line 496
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mDisplayDaltonizerEnabledUri:Landroid/net/Uri;

    const-string v1, "accessibility_display_daltonizer"

    .line 498
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mDisplayDaltonizerUri:Landroid/net/Uri;

    .line 5548
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$8;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$8;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 6498
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mFlashNotifications:Ljava/util/LinkedList;

    .line 590
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    .line 591
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 592
    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 594
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerInternal;->getAccessibilityController()Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    move-result-object v1

    .line 593
    invoke-static {v1, p0, v0}, Lcom/android/server/accessibility/AccessibilityTraceManager;->getInstance(Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 595
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    .line 596
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 597
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 598
    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 599
    iput-object p4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSystemActionPerformer:Lcom/android/server/accessibility/SystemActionPerformer;

    .line 600
    iput-object p5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 601
    iput-object p6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yDisplayListener:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;

    .line 602
    iput-object p7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 603
    new-instance p2, Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    invoke-direct {p2, p7}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;-><init>(Lcom/android/server/accessibility/magnification/MagnificationController;)V

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationProcessor:Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    .line 604
    new-instance p2, Lcom/android/server/accessibility/CaptioningManagerImpl;

    invoke-direct {p2, p1}, Lcom/android/server/accessibility/CaptioningManagerImpl;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCaptioningManagerImpl:Lcom/android/server/accessibility/CaptioningManagerImpl;

    if-eqz p8, :cond_102

    .line 606
    iput-object p8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    const/4 p1, 0x1

    .line 607
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    .line 609
    :cond_102
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->init()V

    return-void
.end method

.method public static isClientInPackageAllowlist(Landroid/accessibilityservice/AccessibilityServiceInfo;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 2610
    :cond_4
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mPackageNames:[Ljava/lang/String;

    .line 2611
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    if-eqz p1, :cond_22

    .line 2613
    array-length v2, p1

    :goto_11
    if-ge v0, v2, :cond_22

    aget-object v3, p1, v0

    .line 2614
    iget-object v4, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v1, 0x1

    goto :goto_22

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_22
    :goto_22
    return v1
.end method

.method public static synthetic lambda$migrateAccessibilityButtonSettingsIfNecessaryLocked$18(Ljava/lang/String;Lcom/android/server/accessibility/AccessibilityUserState;Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p0, :cond_c

    if-eqz p2, :cond_c

    .line 3806
    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_c

    return v0

    .line 3809
    :cond_c
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_13

    return v0

    .line 3814
    :cond_13
    invoke-virtual {p1, p0}, Lcom/android/server/accessibility/AccessibilityUserState;->getInstalledServiceInfoLocked(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object p2

    if-nez p2, :cond_1a

    return v0

    .line 3818
    :cond_1a
    invoke-virtual {p2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1d

    const-string v3, "AccessibilityManagerService"

    const/4 v4, 0x1

    if-gt v1, v2, :cond_45

    .line 3821
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Legacy service "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " should not in the button"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 3825
    :cond_45
    iget p2, p2, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 p2, p2, 0x100

    if-eqz p2, :cond_4d

    move p2, v4

    goto :goto_4e

    :cond_4d
    move p2, v0

    :goto_4e
    if-eqz p2, :cond_72

    .line 3827
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_72

    .line 3830
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Service requesting a11y button and be assigned to the button"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " should be enabled state"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_72
    return v0
.end method

.method public static synthetic lambda$migrateAccessibilityButtonSettingsIfNecessaryLocked$19(Ljava/lang/String;Lcom/android/server/accessibility/AccessibilityUserState;Ljava/util/Set;Ljava/util/Set;Landroid/content/ComponentName;)V
    .registers 6

    if-eqz p0, :cond_f

    if-eqz p4, :cond_f

    .line 3843
    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    return-void

    .line 3847
    :cond_f
    invoke-virtual {p1, p4}, Lcom/android/server/accessibility/AccessibilityUserState;->getInstalledServiceInfoLocked(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object p0

    if-nez p0, :cond_16

    return-void

    .line 3851
    :cond_16
    iget p1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 p1, p1, 0x100

    if-eqz p1, :cond_1e

    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    .line 3853
    :goto_1f
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0x1d

    if-le p0, v0, :cond_66

    if-nez p1, :cond_30

    goto :goto_66

    .line 3857
    :cond_30
    invoke-virtual {p4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    .line 3858
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3b

    return-void

    .line 3861
    :cond_3b
    invoke-static {p2, p0}, Lcom/android/server/accessibility/AccessibilityUserState;->doesShortcutTargetsStringContain(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_66

    .line 3862
    invoke-static {p3, p0}, Lcom/android/server/accessibility/AccessibilityUserState;->doesShortcutTargetsStringContain(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_48

    goto :goto_66

    .line 3867
    :cond_48
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "A enabled service requesting a11y button "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " should be assign to the button or shortcut."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "AccessibilityManagerService"

    invoke-static {p3, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3869
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_66
    :goto_66
    return-void
.end method

.method public static synthetic lambda$migrateAccessibilityButtonSettingsIfNecessaryLocked$20(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    return-object p0
.end method

.method public static synthetic lambda$notifyClientsOfServicesStateChange$11(JLandroid/view/accessibility/IAccessibilityManagerClient;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2862
    invoke-interface {p2, p0, p1}, Landroid/view/accessibility/IAccessibilityManagerClient;->notifyServicesStateChanged(J)V

    return-void
.end method

.method public static synthetic lambda$persistComponentNamesToSettingLocked$9(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 1

    .line 2677
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$persistMagnificationModeSettingsLocked$24(I)V
    .registers 6

    .line 5440
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5442
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_magnification_mode"

    iget p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-static {v2, v3, p1, p0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_15

    .line 5445
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_15
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5446
    throw p0
.end method

.method public static synthetic lambda$readAccessibilityButtonTargetsLocked$13(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    return-object p0
.end method

.method public static synthetic lambda$readAccessibilityDirectAccessSettingLocked$27(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    return-object p0
.end method

.method public static synthetic lambda$readAccessibilityShortcutKeySettingLocked$12(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    return-object p0
.end method

.method public static synthetic lambda$readComponentNamesFromSettingLocked$7(Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 1

    .line 2650
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$readComponentNamesFromStringLocked$8(Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 1

    .line 2665
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$removeShortcutTargetForUnboundServiceLocked$21(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    return-object p0
.end method

.method public static synthetic lambda$removeShortcutTargetForUnboundServiceLocked$22(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    return-object p0
.end method

.method public static synthetic lambda$removeShortcutTargetForUnboundServiceLocked$23(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    return-object p0
.end method

.method public static synthetic lambda$restoreAccessibilityButtonTargetsLocked$2(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    return-object p0
.end method

.method public static synthetic lambda$restoreAccessibilityButtonTargetsLocked$3(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    return-object p0
.end method

.method public static synthetic lambda$restoreAccessibilityButtonTargetsLocked$4(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    return-object p0
.end method

.method public static synthetic lambda$restoreLegacyDisplayMagnificationNavBarIfNeededLocked$0(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    return-object p0
.end method

.method public static synthetic lambda$restoreLegacyDisplayMagnificationNavBarIfNeededLocked$1(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    return-object p0
.end method

.method public static synthetic lambda$sendStateToClients$10(ILandroid/view/accessibility/IAccessibilityManagerClient;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2838
    invoke-interface {p1, p0}, Landroid/view/accessibility/IAccessibilityManagerClient;->setState(I)V

    return-void
.end method

.method public static synthetic lambda$updateAccessibilityButtonTargetsLocked$16(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/lang/String;)Z
    .registers 2

    .line 3769
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isShortcutTargetInstalledLocked(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic lambda$updateAccessibilityButtonTargetsLocked$17(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    return-object p0
.end method

.method public static synthetic lambda$updateAccessibilityDirectAccessTargetsLocked$28(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/lang/String;)Z
    .registers 2

    .line 7572
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isShortcutTargetInstalledLocked(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic lambda$updateAccessibilityDirectAccessTargetsLocked$29(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    return-object p0
.end method

.method public static synthetic lambda$updateAccessibilityShortcutKeyTargetsLocked$14(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/lang/String;)Z
    .registers 2

    .line 3583
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isShortcutTargetInstalledLocked(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic lambda$updateAccessibilityShortcutKeyTargetsLocked$15(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    return-object p0
.end method

.method public static synthetic lambda$updateFocusAppearanceDataLocked$25(Lcom/android/server/accessibility/AccessibilityUserState;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7348
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mCallback:Landroid/view/accessibility/IAccessibilityManagerClient;

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityUserState;->getFocusStrokeWidthLocked()I

    move-result v0

    .line 7349
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityUserState;->getFocusColorLocked()I

    move-result p0

    .line 7348
    invoke-interface {p1, v0, p0}, Landroid/view/accessibility/IAccessibilityManagerClient;->setFocusAppearance(II)V

    return-void
.end method

.method private synthetic lambda$updateFocusAppearanceDataLocked$26(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 3

    .line 7347
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda35;

    invoke-direct {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda35;-><init>(Lcom/android/server/accessibility/AccessibilityUserState;)V

    invoke-static {v0}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->broadcastToClients(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$updateRelevantEventsLocked$5(Lcom/android/server/accessibility/AccessibilityUserState;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2523
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2524
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->computeRelevantEventTypesLocked(Lcom/android/server/accessibility/AccessibilityUserState;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)I

    move-result p0

    .line 2526
    iget p1, p2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mLastSentRelevantEventTypes:I

    if-eq p1, p0, :cond_f

    .line 2527
    iput p0, p2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mLastSentRelevantEventTypes:I

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    .line 2530
    :goto_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_19

    if-eqz p1, :cond_18

    .line 2532
    iget-object p1, p2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mCallback:Landroid/view/accessibility/IAccessibilityManagerClient;

    invoke-interface {p1, p0}, Landroid/view/accessibility/IAccessibilityManagerClient;->setRelevantEventTypes(I)V

    :cond_18
    return-void

    :catchall_19
    move-exception p0

    .line 2530
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p0
.end method

.method private synthetic lambda$updateRelevantEventsLocked$6(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 3

    .line 2520
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda31;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda31;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V

    invoke-static {v0}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->broadcastToClients(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 5520
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$7;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$7;-><init>(Ljava/lang/Runnable;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 5526
    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public OnStartGestureWakeup()Z
    .registers 1

    .line 6951
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;

    invoke-virtual {p0}, Lcom/android/server/accessibility/GestureWakeup;->StartGestureWakeup()Z

    move-result p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_c

    :catch_7
    move-exception p0

    .line 6953
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public OnStopGestureWakeup()Z
    .registers 1

    .line 6967
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;

    invoke-virtual {p0}, Lcom/android/server/accessibility/GestureWakeup;->StopGestureWakeup()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception p0

    .line 6969
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_a
    const/4 p0, 0x0

    return p0
.end method

.method public accessibilityFocusOnlyInActiveWindow()Z
    .registers 2

    .line 2059
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2060
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->accessibilityFocusOnlyInActiveWindowLocked()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 2061
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/os/IBinder;Landroid/view/accessibility/IAccessibilityInteractionConnection;Ljava/lang/String;I)I
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    .line 1674
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v2, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 1675
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "windowToken="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v5, p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "leashToken="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v8, p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ";connection="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v9, p3

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "; packageName="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ";userId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p5

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "AccessibilityManagerService.addAccessibilityInteractionConnection"

    invoke-virtual {v1, v6, v2, v3, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_54

    :cond_4d
    move-object v5, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    .line 1681
    :goto_54
    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/accessibility/AccessibilityWindowManager;->addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/os/IBinder;Landroid/view/accessibility/IAccessibilityInteractionConnection;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public addClient(Landroid/view/accessibility/IAccessibilityManagerClient;I)J
    .registers 13

    .line 1334
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1335
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v3, "AccessibilityManagerService.addClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callback="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ";userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 1339
    :cond_2a
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1343
    :try_start_2d
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 1344
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v1

    .line 1349
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v8

    .line 1350
    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService$Client;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v7, 0x0

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    move-object v6, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/AccessibilityManagerService$Client;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/IAccessibilityManagerClient;ILcom/android/server/accessibility/AccessibilityUserState;Lcom/android/server/accessibility/AccessibilityManagerService$Client-IA;)V

    .line 1351
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v2, p2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->isCallerInteractingAcrossUsers(I)Z

    move-result p2

    if-eqz p2, :cond_5e

    .line 1352
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {p2, p1, v9}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 1357
    invoke-virtual {p0, v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->getClientStateLocked(Lcom/android/server/accessibility/AccessibilityUserState;)I

    move-result p0

    iget p1, v9, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mLastSentRelevantEventTypes:I

    .line 1356
    invoke-static {p0, p1}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    .line 1360
    :cond_5e
    iget-object p2, v8, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {p2, p1, v9}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 1369
    iget p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-ne v1, p1, :cond_6c

    invoke-virtual {p0, v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->getClientStateLocked(Lcom/android/server/accessibility/AccessibilityUserState;)I

    move-result p0

    goto :goto_6d

    :cond_6c
    const/4 p0, 0x0

    :goto_6d
    iget p1, v9, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mLastSentRelevantEventTypes:I

    .line 1368
    invoke-static {p0, p1}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :catchall_75
    move-exception p0

    .line 1372
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_2d .. :try_end_77} :catchall_75

    throw p0
.end method

.method public final announceNewUserIfNeeded()V
    .registers 8

    .line 2148
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2149
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v1

    .line 2150
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityUserState;->isHandlingAccessibilityEventsLocked()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 2151
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 2153
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const v3, 0x1040ece

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 2154
    invoke-virtual {v1, v6}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object v1, v4, v5

    .line 2153
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4000

    .line 2155
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 2157
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2158
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-virtual {p0, v2, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 2160
    :cond_41
    monitor-exit v0

    return-void

    :catchall_43
    move-exception p0

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw p0
.end method

.method public final applyDaltonizerSettings()V
    .registers 10

    .line 7120
    const-class v0, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/color/DisplayTransformManager;

    .line 7121
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v1

    .line 7122
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v3, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string/jumbo v4, "user_setup_complete"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_20

    const/4 v2, 0x1

    goto :goto_21

    :cond_20
    move v2, v5

    .line 7126
    :goto_21
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 7128
    :try_start_25
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "accessibility_display_daltonizer_enabled"

    iget v8, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_47

    .line 7130
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v5, "accessibility_display_daltonizer"

    const/16 v7, 0xc

    iget v1, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-static {p0, v5, v7, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0
    :try_end_46
    .catchall {:try_start_25 .. :try_end_46} :catchall_5d

    goto :goto_48

    :cond_47
    move p0, v6

    .line 7134
    :goto_48
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v1, 0x0

    if-nez p0, :cond_51

    .line 7140
    sget-object v1, Lcom/android/server/accessibility/AccessibilityManagerService;->MATRIX_GRAYSCALE:[F

    goto :goto_52

    :cond_51
    move v6, p0

    :goto_52
    if-nez v2, :cond_5c

    const/16 p0, 0xc8

    .line 7144
    invoke-virtual {v0, p0, v1}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 7145
    invoke-virtual {v0, v6}, Lcom/android/server/display/color/DisplayTransformManager;->setDaltonizerMode(I)V

    :cond_5c
    return-void

    :catchall_5d
    move-exception p0

    .line 7134
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7135
    throw p0
.end method

.method public associateEmbeddedHierarchy(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 9

    .line 4478
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 4479
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v3, "AccessibilityManagerService.associateEmbeddedHierarchy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "host="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ";embedded="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 4483
    :cond_2b
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4484
    :try_start_2e
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->associateEmbeddedHierarchyLocked(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 4485
    monitor-exit v0

    return-void

    :catchall_35
    move-exception p0

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_35

    throw p0
.end method

.method public final bindAndStartInputForConnection(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V
    .registers 5

    .line 7315
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7316
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputBound:Z

    if-eqz v1, :cond_13

    .line 7317
    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->bindInputLocked()V

    .line 7318
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mRemoteInputConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mRestarting:Z

    invoke-virtual {p1, v1, v2, p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->startInputLocked(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 7320
    :cond_13
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public final bindInput()V
    .registers 5

    .line 7367
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 7369
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputBound:Z

    .line 7370
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p0

    .line 7371
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_11
    if-ltz v2, :cond_27

    .line 7372
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 7373
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->requestImeApis()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 7374
    invoke-virtual {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->bindInputLocked()V

    :cond_24
    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    .line 7377
    :cond_27
    monitor-exit v0

    return-void

    :catchall_29
    move-exception p0

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public final broadcastToClients(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/accessibility/AccessibilityUserState;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/accessibility/AccessibilityManagerService$Client;",
            ">;)V"
        }
    .end annotation

    .line 2635
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p2}, Landroid/os/RemoteCallbackList;->broadcastForEachCookie(Ljava/util/function/Consumer;)V

    .line 2636
    iget-object p0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p2}, Landroid/os/RemoteCallbackList;->broadcastForEachCookie(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final canRequestAndRequestsTouchExplorationLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 7

    .line 3598
    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->canReceiveEventsLocked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4c

    iget-boolean v0, p1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestTouchExplorationMode:Z

    if-nez v0, :cond_c

    goto :goto_4c

    .line 3601
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x11

    const/4 v3, 0x1

    if-gt v0, v2, :cond_43

    .line 3606
    iget-object p2, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    iget-object v0, p1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2a

    return v3

    .line 3608
    :cond_2a
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    if-eqz p2, :cond_34

    .line 3609
    invoke-virtual {p2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p2

    if-nez p2, :cond_4c

    .line 3610
    :cond_34
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda46;

    invoke-direct {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda46;-><init>()V

    invoke-static {v0, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4c

    .line 3618
    :cond_43
    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getCapabilities()I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_4c

    return v3

    :cond_4c
    :goto_4c
    return v1
.end method

.method public final changeAccessibilityComponentNameIfNeed()V
    .registers 16

    .line 6350
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.accessibility.talkback"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "AccessibilityManagerService"

    if-nez v0, :cond_12

    const-string p0, "Package com.samsung.android.accessibility.talkback is not installed"

    .line 6351
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6354
    :cond_12
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "enabled_accessibility_services"

    const/4 v3, -0x2

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 6356
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_shortcut_target_service"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    const-string v7, "com.samsung.accessibility/com.samsung.android.app.talkback.TalkBackService"

    const-string v8, "(?i).*com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService.*"

    const-string v9, "(?i).*com.samsung.accessibility/com.samsung.android.app.talkback.TalkBackService.*"

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-string v12, "com.samsung.android.accessibility.talkback/com.samsung.android.marvin.talkback.TalkBackService"

    if-eqz v0, :cond_7d

    .line 6359
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_7d

    .line 6362
    :try_start_3f
    invoke-virtual {v0, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4b

    .line 6363
    invoke-virtual {v0, v7, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move v13, v11

    goto :goto_4c

    :cond_4b
    move v13, v10

    .line 6368
    :goto_4c
    invoke-virtual {v0, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_57

    .line 6369
    invoke-virtual {v0, v6, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move v13, v11

    :cond_57
    if-eqz v13, :cond_7d

    const-string v13, "Change Accessibility ComponentName of ENABLED_ACCESSIBILITY_SERVICES"

    .line 6375
    invoke-static {v1, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6376
    iget-object v13, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-static {v13, v2, v0, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_67} :catch_68

    goto :goto_7d

    :catch_68
    move-exception v0

    .line 6380
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeAccessibilityComponentNameIfNeed() exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7d
    :goto_7d
    if-eqz v4, :cond_ac

    .line 6384
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ac

    .line 6387
    :try_start_85
    invoke-virtual {v4, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 6388
    invoke-virtual {v4, v7, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    move v10, v11

    .line 6393
    :cond_90
    invoke-virtual {v4, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 6394
    invoke-virtual {v4, v6, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto :goto_9c

    :cond_9b
    move v11, v10

    :goto_9c
    if-eqz v11, :cond_ac

    const-string v0, "Change Accessibility ComponentName of ACCESSIBILITY_SHORTCUT_TARGET_SERVICE"

    .line 6400
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6401
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v5, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_ac} :catch_ac

    :catch_ac
    :cond_ac
    return-void
.end method

.method public changeMagnificationMode(II)V
    .registers 6

    .line 508
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_9

    .line 510
    :try_start_5
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistMagnificationModeSettingsLocked(I)V

    goto :goto_19

    .line 512
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v1

    .line 513
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getMagnificationModeLocked(I)I

    move-result v2

    if-eq p2, v2, :cond_19

    .line 515
    invoke-virtual {v1, p1, p2}, Lcom/android/server/accessibility/AccessibilityUserState;->setMagnificationModeLocked(II)V

    .line 516
    invoke-virtual {p0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateMagnificationModeChangeSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;I)V

    .line 519
    :cond_19
    :goto_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public final checkTorchLight()V
    .registers 4

    .line 5536
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v0, :cond_38

    .line 5540
    :try_start_e
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCameraId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCameraId:Ljava/lang/String;
    :try_end_14
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_e .. :try_end_14} :catch_15

    goto :goto_30

    :catch_15
    move-exception v0

    .line 5542
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraAccessException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccessibilityManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5544
    :goto_30
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/camera2/CameraManager;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V

    :cond_38
    return-void
.end method

.method public final computeRelevantEventTypesLocked(Lcom/android/server/accessibility/AccessibilityUserState;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)I
    .registers 9

    .line 2541
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_9
    if-ge v2, v0, :cond_27

    .line 2543
    iget-object v4, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 2544
    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->isClientInPackageAllowlist(Landroid/accessibilityservice/AccessibilityServiceInfo;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 2545
    invoke-virtual {v4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getRelevantEventTypes()I

    move-result v4

    goto :goto_23

    :cond_22
    move v4, v1

    :goto_23
    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 2549
    :cond_27
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    .line 2550
    invoke-virtual {p1}, Lcom/android/server/accessibility/UiAutomationManager;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object p1

    .line 2549
    invoke-static {p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->isClientInPackageAllowlist(Landroid/accessibilityservice/AccessibilityServiceInfo;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)Z

    move-result p1

    if-eqz p1, :cond_39

    .line 2551
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {p0}, Lcom/android/server/accessibility/UiAutomationManager;->getRelevantEventTypes()I

    move-result v1

    :cond_39
    or-int p0, v3, v1

    return p0
.end method

.method public convertPixelToDpi(F)I
    .registers 3

    .line 5689
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 5691
    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p0, v0

    div-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public final createImeSession(Landroid/util/ArraySet;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 7436
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 7437
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputSessionRequested:Z

    .line 7438
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p0

    .line 7439
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_11
    if-ltz v2, :cond_33

    .line 7440
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 7441
    iget v3, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->requestImeApis()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 7442
    invoke-virtual {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->createImeSessionLocked()V

    :cond_30
    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    .line 7445
    :cond_33
    monitor-exit v0

    return-void

    :catchall_35
    move-exception p0

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_4 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public final createSessionForConnection(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V
    .registers 3

    .line 7307
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7308
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputSessionRequested:Z

    if-eqz p0, :cond_a

    .line 7309
    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->createImeSessionLocked()V

    .line 7311
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

.method public final darkScreenWarning(Ljava/lang/String;)V
    .registers 4

    .line 5608
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p0

    const/16 v0, 0x20

    .line 5609
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 5610
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p0, :cond_18

    .line 5612
    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_18
    return-void
.end method

.method public final disableAccessibilityServiceLocked(Landroid/content/ComponentName;I)V
    .registers 5

    .line 4328
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 4329
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    const-string v1, "enabled_accessibility_services"

    invoke-virtual {p0, v1, p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->readComponentNamesFromSettingLocked(Ljava/lang/String;ILjava/util/Set;)V

    .line 4331
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4332
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V

    return-void
.end method

.method public disassociateEmbeddedHierarchy(Landroid/os/IBinder;)V
    .registers 8

    .line 4490
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 4491
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v3, "AccessibilityManagerService.disassociateEmbeddedHierarchy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 4495
    :cond_23
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4496
    :try_start_26
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->disassociateEmbeddedHierarchyLocked(Landroid/os/IBinder;)V

    .line 4497
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p0

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public final dispatchAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    const/4 v0, 0x0

    .line 1501
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyAccessibilityServicesDelayedLocked(Landroid/view/accessibility/AccessibilityEvent;Z)V

    const/4 v0, 0x1

    .line 1502
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyAccessibilityServicesDelayedLocked(Landroid/view/accessibility/AccessibilityEvent;Z)V

    .line 1503
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/UiAutomationManager;->sendAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final doCameraFlashNotiOff()V
    .registers 3

    .line 6802
    sget-boolean v0, Lcom/android/server/accessibility/AccessibilityManagerService;->isLightFlashNotiEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 6803
    sget-boolean v0, Lcom/android/server/accessibility/AccessibilityManagerService;->bIsTorchOn:Z

    if-eqz v0, :cond_d

    sget-boolean v0, Lcom/android/server/accessibility/AccessibilityManagerService;->bIsFlashOn:Z

    if-eqz v0, :cond_18

    .line 6804
    :cond_d
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->doCameraLightNoti(Z)V

    goto :goto_18

    .line 6806
    :cond_11
    sget-boolean v0, Lcom/android/server/accessibility/AccessibilityManagerService;->bIsFlashOn:Z

    if-eqz v0, :cond_18

    .line 6807
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->doCameraLightNoti(Z)V

    .line 6809
    :cond_18
    :goto_18
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "doCameraFlashNotiOff: isLightFlashNotiEnabled: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/accessibility/AccessibilityManagerService;->isLightFlashNotiEnabled:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", bIsTorchOn: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/accessibility/AccessibilityManagerService;->bIsTorchOn:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", bIsFlashOn: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/accessibility/AccessibilityManagerService;->bIsFlashOn:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AccessibilityManagerService"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final doCameraFlashNotiOn()V
    .registers 2

    .line 6796
    sget-boolean v0, Lcom/android/server/accessibility/AccessibilityManagerService;->isLightFlashNotiEnabled:Z

    if-eqz v0, :cond_c

    sget-boolean v0, Lcom/android/server/accessibility/AccessibilityManagerService;->bIsTorchOn:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->doCameraLightNoti(Z)V

    .line 6797
    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "doCameraFlashNotiOn: isLightFlashNotiEnabled: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/accessibility/AccessibilityManagerService;->isLightFlashNotiEnabled:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", bIsTorchOn: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/accessibility/AccessibilityManagerService;->bIsTorchOn:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", bIsFlashOn: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/accessibility/AccessibilityManagerService;->bIsFlashOn:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AccessibilityManagerService"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final doCameraLightNoti(Z)V
    .registers 4

    .line 6831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doCameraLightNoti : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mCameraId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccessibilityManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6832
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v0, :cond_33

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCameraId:Ljava/lang/String;

    if-eqz p0, :cond_33

    .line 6834
    :try_start_28
    invoke-virtual {v0, p0, p1}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V

    .line 6835
    sput-boolean p1, Lcom/android/server/accessibility/AccessibilityManagerService;->bIsFlashOn:Z
    :try_end_2d
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_28 .. :try_end_2d} :catch_2e

    goto :goto_38

    :catch_2e
    move-exception p0

    .line 6837
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_38

    :cond_33
    const-string p0, "Can not use light notification please check CameraManager!"

    .line 6840
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_38
    return-void
.end method

.method public final doScreenFlashNotiOff()V
    .registers 3

    .line 6824
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->hideScreenNotificationOverlayView()V

    const/4 v0, 0x0

    .line 6825
    sput-boolean v0, Lcom/android/server/accessibility/AccessibilityManagerService;->bIsScreenOn:Z

    .line 6826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doScreenFlashNotiOff: isScreenFlashNotiEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/accessibility/AccessibilityManagerService;->isScreenFlashNotiEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isDozeMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6827
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->isDozeMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isDisplayOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->isDisplayOn()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AccessibilityManagerService"

    .line 6826
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final doScreenFlashNotiOn(I)V
    .registers 4

    .line 6814
    sget-boolean v0, Lcom/android/server/accessibility/AccessibilityManagerService;->isScreenFlashNotiEnabled:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->isDozeMode()Z

    move-result v0

    if-nez v0, :cond_10

    .line 6815
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->showScreenNotificationOverlayView(I)V

    const/4 v0, 0x1

    .line 6816
    sput-boolean v0, Lcom/android/server/accessibility/AccessibilityManagerService;->bIsScreenOn:Z

    .line 6818
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doScreenFlashNotiOn: isScreenFlashNotiEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/accessibility/AccessibilityManagerService;->isScreenFlashNotiEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isDozeMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6819
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->isDozeMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isDisplayOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->isDisplayOn()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", color: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6820
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", bIsScreenOn: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p0, Lcom/android/server/accessibility/AccessibilityManagerService;->bIsScreenOn:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AccessibilityManagerService"

    .line 6818
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11

    .line 4576
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "AccessibilityManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 4577
    :cond_b
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_e
    const-string v1, "ACCESSIBILITY MANAGER (dumpsys accessibility)"

    .line 4578
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4579
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4581
    invoke-static {p3}, Lcom/android/server/accessibility/SamsungWindowDumpUtils;->isCustomDumpCommands([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 4582
    invoke-static {p3}, Lcom/android/server/accessibility/SamsungWindowDumpUtils;->isPrintWindows([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 4583
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_47

    .line 4584
    :cond_28
    invoke-static {p3}, Lcom/android/server/accessibility/SamsungWindowDumpUtils;->isPrintNodes([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 4585
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getInteractionBridge()Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    move-result-object v1

    if-nez v1, :cond_3a

    const-string p0, "There are no enabled AccessibilityService"

    .line 4587
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_47

    .line 4589
    :cond_3a
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->-$$Nest$fgetmConnectionId(Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;)I

    move-result v1

    .line 4590
    invoke-static {p3, v1}, Lcom/android/server/accessibility/SamsungWindowDumpUtils;->createArgsWithConnectionId([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p3

    .line 4589
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4595
    :cond_47
    :goto_47
    monitor-exit v0

    return-void

    :cond_49
    const-string v1, "currentUserId="

    .line 4598
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 4599
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v1, "hasWindowMagnificationConnection="

    .line 4600
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    .line 4601
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->isConnected()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 4600
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 4602
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4603
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationProcessor:Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->dump(Ljava/io/PrintWriter;Ljava/util/ArrayList;)V

    .line 4604
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_85
    if-ge v3, v1, :cond_f2

    .line 4606
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accessibility/AccessibilityUserState;

    invoke-virtual {v4, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityUserState;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const-string v4, "  AccessibilityInputFilter:{"

    .line 4608
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 4609
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz v4, :cond_9e

    .line 4610
    invoke-virtual {v4, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityInputFilter;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4612
    :cond_9e
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v4, "  }]"

    .line 4613
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4614
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4616
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCallStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_ec

    const-string v4, "**** CallStack History ****\n"

    .line 4617
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move v4, v2

    .line 4618
    :goto_b7
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCallStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_e7

    .line 4619
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "history ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] : \n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCallStack:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    add-int/lit8 v4, v4, 0x1

    goto :goto_b7

    :cond_e7
    const-string v4, "**** End of CallStack History ****\n"

    .line 4621
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 4623
    :cond_ec
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_85

    .line 4626
    :cond_f2
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v1}, Lcom/android/server/accessibility/UiAutomationManager;->isUiAutomationRunningLocked()Z

    move-result v1

    if-eqz v1, :cond_102

    .line 4627
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/accessibility/UiAutomationManager;->dumpUiAutomationService(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4628
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4630
    :cond_102
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4631
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v1, :cond_112

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz v1, :cond_112

    .line 4632
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityInputFilter;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_112
    const-string p1, "Global client list info:{"

    .line 4634
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4635
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    const-string p3, "    Client list "

    invoke-virtual {p1, p2, p3}, Landroid/os/RemoteCallbackList;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string p1, "    Registered clients:{"

    .line 4636
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4637
    :goto_123
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p1

    if-ge v2, p1, :cond_13f

    .line 4638
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    .line 4639
    invoke-virtual {p1, v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;

    .line 4640
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mPackageNames:[Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_123

    .line 4642
    :cond_13f
    monitor-exit v0

    return-void

    :catchall_141
    move-exception p0

    monitor-exit v0
    :try_end_143
    .catchall {:try_start_e .. :try_end_143} :catchall_141

    throw p0
.end method

.method public final enableAccessibilityServiceLocked(Landroid/content/ComponentName;I)V
    .registers 5

    .line 4311
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 4312
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    const-string v1, "enabled_accessibility_services"

    invoke-virtual {p0, v1, p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->readComponentNamesFromSettingLocked(Ljava/lang/String;ILjava/util/Set;)V

    .line 4314
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4315
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-virtual {p0, v1, v0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V

    .line 4318
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p2

    .line 4319
    iget-object v0, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 4320
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    :cond_25
    return-void
.end method

.method public final fadeOutScreenNotificationOverlayViewInner()V
    .registers 3

    const-string v0, "AccessibilityManagerService"

    const-string v1, "fadeOutScreenNotificationOverlayViewInner"

    .line 6151
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6152
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->screenNotificationOverlayView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 6153
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->fadeScreenNotificationOverlayViewInner(Landroid/view/View;Z)V

    .line 6155
    :cond_f
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->coverScreenNotificationOverlayView:Landroid/view/View;

    if-eqz v0, :cond_16

    .line 6156
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->fadeScreenNotificationOverlayViewInner(Landroid/view/View;Z)V

    :cond_16
    return-void
.end method

.method public final fadeScreenNotificationOverlayViewInner(Landroid/view/View;Z)V
    .registers 7

    const/4 p0, 0x2

    new-array p0, p0, [F

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_a

    move v2, v0

    goto :goto_b

    :cond_a
    move v2, v1

    :goto_b
    const/4 v3, 0x0

    aput v2, p0, v3

    if-eqz p2, :cond_11

    move v0, v1

    :cond_11
    const/4 p2, 0x1

    aput v0, p0, p2

    const-string v0, "alpha"

    .line 6161
    invoke-static {p1, v0, p0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 6163
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6164
    invoke-virtual {p0, p2}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    const-wide/16 p1, 0xc8

    .line 6165
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 6166
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public final fallBackMagnificationModeSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;I)Z
    .registers 5

    .line 5425
    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/AccessibilityUserState;->isValidMagnificationModeLocked(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 5428
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", invalid magnification mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5429
    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/AccessibilityUserState;->getMagnificationModeLocked(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccessibilityManagerService"

    .line 5428
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5430
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getMagnificationCapabilitiesLocked()I

    move-result v0

    .line 5431
    invoke-virtual {p1, p2, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->setMagnificationModeLocked(II)V

    if-nez p2, :cond_36

    .line 5433
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistMagnificationModeSettingsLocked(I)V

    :cond_36
    const/4 p0, 0x1

    return p0
.end method

.method public getAccessibilityFocusClickPointInScreen(Landroid/graphics/Point;)Z
    .registers 2

    .line 2038
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getInteractionBridge()Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->getAccessibilityFocusClickPointInScreenNotLocked(Landroid/graphics/Point;)Z

    move-result p0

    return p0
.end method

.method public getAccessibilityShortcutTargets(I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4269
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 4270
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "shortcutType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AccessibilityManagerService.getAccessibilityShortcutTargets"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 4274
    :cond_23
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_ACCESSIBILITY"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_32

    .line 4279
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityShortcutTargetsInternal(I)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 4276
    :cond_32
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "getAccessibilityShortcutService requires the MANAGE_ACCESSIBILITY permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getAccessibilityShortcutTargetsInternal(I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4283
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4284
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p0

    .line 4285
    new-instance v1, Ljava/util/ArrayList;

    .line 4286
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getShortcutTargetsLocked(I)Ljava/util/LinkedHashSet;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz p1, :cond_14

    .line 4288
    monitor-exit v0

    return-object v1

    .line 4291
    :cond_14
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1c
    if-ltz p1, :cond_51

    .line 4292
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 4293
    iget-boolean v3, v2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    if-eqz v3, :cond_4e

    .line 4294
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1d

    if-le v3, v4, :cond_3d

    goto :goto_4e

    .line 4298
    :cond_3d
    invoke-virtual {v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    .line 4299
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4e

    .line 4300
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4e
    :goto_4e
    add-int/lit8 p1, p1, -0x1

    goto :goto_1c

    .line 4303
    :cond_51
    monitor-exit v0

    return-object v1

    :catchall_53
    move-exception p0

    .line 4304
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_53

    throw p0
.end method

.method public final getAccessibilityTargetLabel(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    .line 4136
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->getTargets(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p0

    const/4 p2, 0x0

    .line 4137
    :goto_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_2f

    .line 4138
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    invoke-virtual {v0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 4139
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getLabel()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2c
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    :cond_2f
    const-string p0, ""

    return-object p0
.end method

.method public getAccessibilityWindowId(Landroid/os/IBinder;)I
    .registers 8

    .line 4399
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 4400
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v3, "AccessibilityManagerService.getAccessibilityWindowId"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "windowToken="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 4404
    :cond_23
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4405
    :try_start_26
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_3c

    .line 4409
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-virtual {v1, p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findWindowIdLocked(ILandroid/os/IBinder;)I

    move-result p0

    monitor-exit v0

    return p0

    .line 4406
    :cond_3c
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only SYSTEM can call getAccessibilityWindowId"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_44
    move-exception p0

    .line 4410
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_26 .. :try_end_46} :catchall_44

    throw p0
.end method

.method public getActiveWindowId()I
    .registers 2

    .line 2086
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getActiveWindowId(I)I

    move-result p0

    return p0
.end method

.method public getBindInstantServiceAllowed(I)Z
    .registers 3

    .line 1037
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1038
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p0

    .line 1039
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityUserState;->getBindInstantServiceAllowedLocked()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_d
    move-exception p0

    .line 1040
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final getCameraFlashPreference(Ljava/lang/String;)Z
    .registers 4

    .line 6255
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "camera_flash_notification_app_list"

    const/4 v1, -0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2e

    const-string v0, "all"

    .line 6257
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_2e

    .line 6258
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3b

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_2e
    :goto_2e
    const/4 p0, 0x1

    return p0
.end method

.method public final getCameraId()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 5568
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    .line 5570
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_4d

    aget-object v3, v0, v2

    .line 5571
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v4, v3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    .line 5572
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    .line 5573
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v5, :cond_4a

    if-eqz v4, :cond_4a

    .line 5575
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4a

    .line 5576
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FlashNotification CameraId : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AccessibilityManagerService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_4d
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getClientStateLocked(Lcom/android/server/accessibility/AccessibilityUserState;)I
    .registers 3

    .line 2224
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    .line 2225
    invoke-virtual {v0}, Lcom/android/server/accessibility/UiAutomationManager;->isUiAutomationRunningLocked()Z

    move-result v0

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 2226
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityTraceManager;->getTraceStateForAccessibilityManagerClientState()I

    move-result p0

    .line 2224
    invoke-virtual {p1, v0, p0}, Lcom/android/server/accessibility/AccessibilityUserState;->getClientStateLocked(ZI)I

    move-result p0

    return p0
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .line 883
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final getCoverDisplayWindowManager()Landroid/view/WindowManager;
    .registers 8

    .line 6195
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const-string v1, "com.samsung.android.hardware.display.category.BUILTIN"

    .line 6196
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v0

    .line 6198
    array-length v1, v0

    const/4 v2, 0x0

    :goto_12
    const/4 v3, 0x0

    if-ge v2, v1, :cond_22

    aget-object v4, v0, v2

    .line 6199
    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1f

    goto :goto_23

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_22
    move-object v4, v3

    :goto_23
    const-string v0, "AccessibilityManagerService"

    if-nez v4, :cond_2d

    const-string p0, "coverDisplay is not found."

    .line 6205
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 6207
    :cond_2d
    invoke-virtual {v4}, Landroid/view/Display;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3a

    const-string p0, "coverDisplay is not STATE_ON"

    .line 6208
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 6211
    :cond_3a
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v0, "window"

    .line 6212
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    return-object p0
.end method

.method public getCurrentUserIdLocked()I
    .registers 1

    .line 937
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    return p0
.end method

.method public getCurrentUserState()Lcom/android/server/accessibility/AccessibilityUserState;
    .registers 2

    .line 1015
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1016
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_9
    move-exception p0

    .line 1017
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public final getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;
    .registers 2

    .line 483
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p0

    return-object p0
.end method

.method public final getCustomIntensityFromSettings(I)I
    .registers 5

    const/4 v0, 0x0

    if-ltz p1, :cond_2f

    const/4 v1, 0x2

    if-le p1, v1, :cond_7

    goto :goto_2f

    .line 5590
    :cond_7
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const-string/jumbo v2, "predefined_color_blind_intensity"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 5592
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2f

    const-string v1, ","

    .line 5593
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 5595
    :try_start_24
    array-length v1, p0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2f

    .line 5596
    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_2e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_24 .. :try_end_2e} :catch_2f

    return p0

    :catch_2f
    :cond_2f
    :goto_2f
    return v0
.end method

.method public final getDisplayId()I
    .registers 1

    .line 7609
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->isDexDualMonitorDisplay()Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x2

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public getEnabledAccessibilityServiceList(II)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .line 1591
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1592
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v3, "AccessibilityManagerService.getEnabledAccessibilityServiceList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "feedbackType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ";userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 1597
    :cond_2a
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1601
    :try_start_2d
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 1602
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result p2

    .line 1605
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p2

    .line 1606
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {p0}, Lcom/android/server/accessibility/UiAutomationManager;->suppressingAccessibilityServicesLocked()Z

    move-result p0

    if-eqz p0, :cond_45

    .line 1607
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 1610
    :cond_45
    iget-object p0, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 1611
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    .line 1612
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_51
    if-ge v2, p2, :cond_6b

    .line 1614
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 1615
    iget v4, v3, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFeedbackType:I

    and-int/2addr v4, p1

    if-nez v4, :cond_61

    const/4 v4, -0x1

    if-ne p1, v4, :cond_68

    .line 1617
    :cond_61
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_68
    add-int/lit8 v2, v2, 0x1

    goto :goto_51

    .line 1620
    :cond_6b
    monitor-exit v0

    return-object v1

    :catchall_6d
    move-exception p0

    .line 1621
    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_2d .. :try_end_6f} :catchall_6d

    throw p0
.end method

.method public getFingerprintGestureDispatcher()Lcom/android/server/accessibility/FingerprintGestureDispatcher;
    .registers 1

    .line 989
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mFingerprintGestureDispatcher:Lcom/android/server/accessibility/FingerprintGestureDispatcher;

    return-object p0
.end method

.method public getFocusColor()I
    .registers 5

    .line 4522
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4523
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v3, "AccessibilityManagerService.getFocusColor"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;J)V

    .line 4525
    :cond_11
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4526
    :try_start_14
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p0

    .line 4528
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityUserState;->getFocusColorLocked()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_1e
    move-exception p0

    .line 4529
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public getFocusStrokeWidth()I
    .registers 5

    .line 4506
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4507
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v3, "AccessibilityManagerService.getFocusStrokeWidth"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;J)V

    .line 4509
    :cond_11
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4510
    :try_start_14
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p0

    .line 4512
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityUserState;->getFocusStrokeWidthLocked()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_1e
    move-exception p0

    .line 4513
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public getInstalledAccessibilityServiceList(I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .line 1555
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1556
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v3, "AccessibilityManagerService.getInstalledAccessibilityServiceList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 1562
    :cond_23
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1566
    :try_start_26
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 1567
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result p1

    .line 1568
    new-instance v1, Ljava/util/ArrayList;

    .line 1569
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1570
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_26 .. :try_end_38} :catchall_70

    .line 1572
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p0

    sget v0, Lcom/android/server/accessibility/AccessibilityManagerService;->OWN_PROCESS_ID:I

    if-ne p0, v0, :cond_41

    return-object v1

    .line 1575
    :cond_41
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    .line 1577
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1578
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_53
    if-ltz v2, :cond_6f

    .line 1579
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 1580
    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0, p1}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 1582
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_6c
    add-int/lit8 v2, v2, -0x1

    goto :goto_53

    :cond_6f
    return-object v1

    :catchall_70
    move-exception p0

    .line 1570
    :try_start_71
    monitor-exit v0
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw p0
.end method

.method public final getInteractionBridge()Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;
    .registers 3

    .line 2230
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2231
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInteractionBridge:Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    if-nez v1, :cond_e

    .line 2232
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInteractionBridge:Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    .line 2234
    :cond_e
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInteractionBridge:Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    .line 2235
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public getKeyEventDispatcher()Lcom/android/server/accessibility/KeyEventDispatcher;
    .registers 6

    .line 3952
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mKeyEventDispatcher:Lcom/android/server/accessibility/KeyEventDispatcher;

    if-nez v0, :cond_13

    .line 3953
    new-instance v0, Lcom/android/server/accessibility/KeyEventDispatcher;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/accessibility/KeyEventDispatcher;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mKeyEventDispatcher:Lcom/android/server/accessibility/KeyEventDispatcher;

    .line 3957
    :cond_13
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mKeyEventDispatcher:Lcom/android/server/accessibility/KeyEventDispatcher;

    return-object p0
.end method

.method public getMagnificationController()Lcom/android/server/accessibility/magnification/MagnificationController;
    .registers 1

    .line 4473
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    return-object p0
.end method

.method public getMagnificationMode(I)I
    .registers 3

    .line 5458
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5459
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getMagnificationModeLocked(I)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_d
    move-exception p0

    .line 5460
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public getMagnificationProcessor()Lcom/android/server/accessibility/magnification/MagnificationProcessor;
    .registers 1

    .line 4689
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationProcessor:Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    return-object p0
.end method

.method public getMotionEventInjectorForDisplayLocked(I)Lcom/android/server/accessibility/MotionEventInjector;
    .registers 7

    .line 2012
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    .line 2014
    :catch_7
    :goto_7
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMotionEventInjectors:Landroid/util/SparseArray;

    if-nez v2, :cond_1f

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_1f

    .line 2016
    :try_start_13
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_1e} :catch_7

    goto :goto_7

    .line 2021
    :cond_1f
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMotionEventInjectors:Landroid/util/SparseArray;

    if-nez p0, :cond_2c

    const-string p0, "AccessibilityManagerService"

    const-string p1, "MotionEventInjector installation timed out"

    .line 2022
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto :goto_32

    .line 2024
    :cond_2c
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/MotionEventInjector;

    :goto_32
    return-object p0
.end method

.method public getPendingIntentActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .registers 5

    .line 3964
    invoke-static {p1, p2, p3, p4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public getRecommendedTimeoutMillis()J
    .registers 5

    .line 4421
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4422
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v3, "AccessibilityManagerService.getRecommendedTimeoutMillis"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;J)V

    .line 4426
    :cond_11
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4427
    :try_start_14
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v1

    .line 4428
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getRecommendedTimeoutMillisLocked(Lcom/android/server/accessibility/AccessibilityUserState;)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_1e
    move-exception p0

    .line 4429
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public final getRecommendedTimeoutMillisLocked(Lcom/android/server/accessibility/AccessibilityUserState;)J
    .registers 2

    .line 4433
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getInteractiveUiTimeoutLocked()I

    move-result p0

    .line 4434
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getNonInteractiveUiTimeoutLocked()I

    move-result p1

    .line 4433
    invoke-static {p0, p1}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public getSIPisShown()Z
    .registers 1

    .line 758
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mIsSIPshown:Z

    return p0
.end method

.method public final getScreenFlashColorPreference(Ljava/lang/String;)I
    .registers 8

    .line 6217
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_flash_notification_color_mode"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_d5

    .line 6221
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_flash_notification_color_apps"

    invoke-static {p0, v0, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "AccessibilityManagerService"

    if-nez p0, :cond_2a

    const-string p0, "Screen notification color setting string is null."

    .line 6224
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 6228
    :cond_2a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[^;]*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\\."

    const-string v5, "\\\\\\."

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "[^;]*;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 6229
    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 6231
    :cond_50
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_bb

    .line 6232
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    const-string v4, "#|;"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 6234
    array-length v4, v3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_50

    aget-object v4, v3, v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 6235
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "getScreenFlashColorPreference pkg: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, v3, v2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " color: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, v3, v1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " state: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x2

    aget-object v4, v3, p1

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6236
    aget-object p0, v3, p1

    const-string p1, "0"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ba

    .line 6237
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "#"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, v3, v1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_ba
    return v2

    .line 6244
    :cond_bb
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Screen notification color setting for "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not found."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 6248
    :cond_d5
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const p1, 0x66ffff00

    const-string/jumbo v0, "screen_flash_notification_color_global"

    invoke-static {p0, v0, p1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public final getScreenNotificationOverlayView(I)Landroid/view/View;
    .registers 3

    .line 6186
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 p0, 0x200

    .line 6187
    invoke-virtual {v0, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 6188
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 p0, 0x0

    .line 6189
    invoke-virtual {v0, p0}, Landroid/view/View;->setAlpha(F)V

    return-object v0
.end method

.method public getScreenReaderName()Ljava/lang/String;
    .registers 7

    .line 5648
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    const/4 v1, 0x1

    .line 5650
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    .line 5652
    :goto_12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_63

    .line 5653
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 5654
    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 5655
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->isScreenReaderEnabled()Z

    move-result v5

    if-eqz v5, :cond_60

    if-eqz v4, :cond_60

    const-string v5, "com.samsung.accessibility/com.samsung.android.app.talkback.TalkBackService"

    .line 5656
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_52

    const-string v5, "com.google.android.marvin.talkback/.TalkBackService"

    .line 5657
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_52

    const-string v5, "com.samsung.android.accessibility.talkback/com.samsung.android.marvin.talkback.TalkBackService"

    .line 5658
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 5659
    :cond_52
    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_60
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 5663
    :cond_63
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "getScreenReaderName : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AccessibilityManagerService"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public final getSystemActionPerformer()Lcom/android/server/accessibility/SystemActionPerformer;
    .registers 5

    .line 1546
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSystemActionPerformer:Lcom/android/server/accessibility/SystemActionPerformer;

    if-nez v0, :cond_10

    .line 1547
    new-instance v0, Lcom/android/server/accessibility/SystemActionPerformer;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/server/accessibility/SystemActionPerformer;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerInternal;Ljava/util/function/Supplier;Lcom/android/server/accessibility/SystemActionPerformer$SystemActionsChangedListener;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSystemActionPerformer:Lcom/android/server/accessibility/SystemActionPerformer;

    .line 1550
    :cond_10
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSystemActionPerformer:Lcom/android/server/accessibility/SystemActionPerformer;

    return-object p0
.end method

.method public getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;
    .registers 1

    .line 7356
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    return-object p0
.end method

.method public final getUserState(I)Lcom/android/server/accessibility/AccessibilityUserState;
    .registers 3

    .line 1021
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1022
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_9
    move-exception p0

    .line 1023
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public final getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;
    .registers 4

    .line 1028
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityUserState;

    if-nez v0, :cond_16

    .line 1030
    new-instance v0, Lcom/android/server/accessibility/AccessibilityUserState;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v1, p0}, Lcom/android/server/accessibility/AccessibilityUserState;-><init>(ILandroid/content/Context;Lcom/android/server/accessibility/AccessibilityUserState$ServiceInfoChangeListener;)V

    .line 1031
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_16
    return-object v0
.end method

.method public getValidDisplayList()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/Display;",
            ">;"
        }
    .end annotation

    .line 4854
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yDisplayListener:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->getValidDisplayList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getWindowBounds(ILandroid/graphics/Rect;)Z
    .registers 9

    .line 2071
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2072
    :try_start_3
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getWindowToken(II)Landroid/os/IBinder;

    move-result-object p1

    .line 2073
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_44

    .line 2074
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x200

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 2075
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v3, "WindowManagerInternal.getWindowFrame"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ";outBounds="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 2078
    :cond_35
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowManagerInternal;->getWindowFrame(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 2079
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_42

    const/4 p0, 0x1

    return p0

    :cond_42
    const/4 p0, 0x0

    return p0

    :catchall_44
    move-exception p0

    .line 2073
    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw p0
.end method

.method public getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
    .registers 2

    .line 4462
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4463
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 4464
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public getWindowToken(II)Landroid/os/IBinder;
    .registers 9

    .line 1799
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1800
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v3, "AccessibilityManagerService.getWindowToken"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "windowId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ";userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 1804
    :cond_2b
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    const-string v1, "android.permission.RETRIEVE_WINDOW_TOKEN"

    const-string/jumbo v2, "getWindowToken"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1807
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1811
    :try_start_38
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 1812
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v1

    .line 1813
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_45

    .line 1814
    monitor-exit v0

    return-object v3

    .line 1816
    :cond_45
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 1817
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findA11yWindowInfoByIdLocked(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object p1

    if-nez p1, :cond_4f

    .line 1819
    monitor-exit v0

    return-object v3

    .line 1827
    :cond_4f
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 1828
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result p1

    .line 1827
    invoke-virtual {p0, p2, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokenForUserAndWindowIdLocked(II)Landroid/os/IBinder;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_5b
    move-exception p0

    .line 1829
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_38 .. :try_end_5d} :catchall_5b

    throw p0
.end method

.method public getWindowTransformationMatrixAndMagnificationSpec(I)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "[F",
            "Landroid/view/MagnificationSpec;",
            ">;"
        }
    .end annotation

    .line 949
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 950
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findWindowInfoByIdLocked(I)Landroid/view/WindowInfo;

    move-result-object v1

    .line 951
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_5e

    if-eqz v1, :cond_1e

    .line 953
    new-instance p0, Landroid/view/MagnificationSpec;

    invoke-direct {p0}, Landroid/view/MagnificationSpec;-><init>()V

    .line 954
    iget-object p1, v1, Landroid/view/WindowInfo;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {p0, p1}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    .line 955
    new-instance p1, Landroid/util/Pair;

    iget-object v0, v1, Landroid/view/WindowInfo;->mTransformMatrix:[F

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 961
    :cond_1e
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 962
    :try_start_21
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-virtual {v0, v2, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokenForUserAndWindowIdLocked(II)Landroid/os/IBinder;

    move-result-object p1

    .line 964
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_5b

    .line 965
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 966
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerInternal;->getWindowTransformationMatrixAndMagnificationSpec(Landroid/os/IBinder;)Landroid/util/Pair;

    move-result-object p0

    const/16 p1, 0x9

    new-array p1, p1, [F

    .line 968
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Matrix;

    .line 969
    iget-object v1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/view/MagnificationSpec;

    .line 970
    invoke-virtual {v1}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v2

    if-nez v2, :cond_4e

    .line 971
    iget v2, v1, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 972
    iget v2, v1, Landroid/view/MagnificationSpec;->offsetX:F

    iget v1, v1, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 974
    :cond_4e
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 976
    new-instance v0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/view/MagnificationSpec;

    invoke-direct {v0, p1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :catchall_5b
    move-exception p0

    .line 964
    :try_start_5c
    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw p0

    :catchall_5e
    move-exception p0

    .line 951
    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw p0
.end method

.method public final hasPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 5704
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 p1, 0x80

    .line 5707
    :try_start_6
    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_9} :catch_b

    const/4 p0, 0x1

    goto :goto_c

    :catch_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public final hideScreenNotificationOverlayView()V
    .registers 4

    .line 6107
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x40

    .line 6108
    iput v1, v0, Landroid/os/Message;->what:I

    .line 6109
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6111
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x80

    .line 6112
    iput v1, v0, Landroid/os/Message;->what:I

    .line 6113
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    const-wide/16 v1, 0xd2

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final hideScreenNotificationOverlayViewInner()V
    .registers 5

    const-string v0, "AccessibilityManagerService"

    const-string/jumbo v1, "hideScreenNotificationOverlayViewInner"

    .line 6171
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6172
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->screenNotificationOverlayView:Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_24

    .line 6173
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6174
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->screenNotificationOverlayView:Landroid/view/View;

    invoke-interface {v0, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 6175
    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->screenNotificationOverlayView:Landroid/view/View;

    .line 6177
    :cond_24
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->coverScreenNotificationOverlayView:Landroid/view/View;

    if-eqz v0, :cond_38

    .line 6178
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6179
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCoverDisplayWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 6180
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->coverScreenNotificationOverlayView:Landroid/view/View;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 6181
    :cond_36
    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->coverScreenNotificationOverlayView:Landroid/view/View;

    :cond_38
    return-void
.end method

.method public final init()V
    .registers 8

    .line 642
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->setAccessibilityWindowManager(Lcom/android/server/accessibility/AccessibilityWindowManager;)V

    .line 643
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->registerBroadcastReceivers()V

    .line 644
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 645
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 644
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 648
    new-instance v0, Lcom/android/server/accessibility/CVDCalculator;

    invoke-direct {v0}, Lcom/android/server/accessibility/CVDCalculator;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->cvdCalculator:Lcom/android/server/accessibility/CVDCalculator;

    .line 651
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/accessibility/GestureWakeup;->getInstance(Landroid/content/Context;)Lcom/android/server/accessibility/GestureWakeup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;

    .line 652
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/GestureWakeup;->checkSettingCondition(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 653
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;

    invoke-virtual {v0}, Lcom/android/server/accessibility/GestureWakeup;->StartGestureWakeup()Z

    .line 659
    :cond_36
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "show_a11y_button"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_5d

    .line 661
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v5, "navigation_bar_gesture_while_hidden"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 662
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 665
    :cond_5d
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 667
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 668
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 670
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver-IA;)V

    invoke-virtual {v1, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 678
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "ResponseAxT9Info"

    .line 679
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 680
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService$SIPBroadcastReceiver;

    invoke-direct {v5, p0, v6}, Lcom/android/server/accessibility/AccessibilityManagerService$SIPBroadcastReceiver;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$SIPBroadcastReceiver-IA;)V

    invoke-virtual {v1, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 684
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "accessibility"

    invoke-virtual {v0, v4, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 688
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    sput-object v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mDisplay:Landroid/hardware/display/DisplayManager;

    .line 689
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$1;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 708
    sget-object v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mDisplay:Landroid/hardware/display/DisplayManager;

    if-eqz v1, :cond_ad

    .line 709
    invoke-virtual {v1, v0, v6}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 714
    :cond_ad
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->changeAccessibilityComponentNameIfNeed()V

    .line 717
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_magnification_activated"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 719
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 720
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mAodShowStateUri:Landroid/net/Uri;

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v2, v0, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v0, "AccessibilityManagerService"

    const-string/jumbo v1, "register AODStateContentObserver"

    .line 722
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_setup_complete"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_133

    .line 727
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$ColorInversionStateContentObserver;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$ColorInversionStateContentObserver;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mColorInversionStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$ColorInversionStateContentObserver;

    .line 728
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mColorInversionStateUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mColorInversionStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$ColorInversionStateContentObserver;

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 730
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$SetupCompleteStateContentObserver;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SetupCompleteStateContentObserver;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSetupCompleteStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$SetupCompleteStateContentObserver;

    .line 731
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSetupCompleteUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSetupCompleteStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$SetupCompleteStateContentObserver;

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 733
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$DaltonizerEnabledStateContentObserver;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$DaltonizerEnabledStateContentObserver;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mDaltonizerEnabledStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$DaltonizerEnabledStateContentObserver;

    .line 734
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mDisplayDaltonizerEnabledUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mDaltonizerEnabledStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$DaltonizerEnabledStateContentObserver;

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 736
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$DaltonizerStateContentObserver;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$DaltonizerStateContentObserver;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mDaltonizerStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$DaltonizerStateContentObserver;

    .line 737
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mDisplayDaltonizerUri:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mDaltonizerStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$DaltonizerStateContentObserver;

    invoke-virtual {v0, v1, v2, p0, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_133
    return-void
.end method

.method public injectInputEventToInputFilter(Landroid/view/InputEvent;I)V
    .registers 5

    .line 927
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 928
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v1, :cond_e

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz p0, :cond_e

    .line 929
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 931
    :cond_e
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public interrupt(I)V
    .registers 9

    .line 1626
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1627
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v3, "AccessibilityManagerService.interrupt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 1632
    :cond_23
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1636
    :try_start_26
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 1637
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result p1

    .line 1639
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-eq p1, v1, :cond_32

    .line 1640
    monitor-exit v0

    return-void

    .line 1643
    :cond_32
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 1644
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1645
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_43
    if-ge v4, v1, :cond_59

    .line 1647
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 1648
    iget-object v6, v5, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    .line 1649
    iget-object v5, v5, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-eqz v6, :cond_56

    if-eqz v5, :cond_56

    .line 1651
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_56
    add-int/lit8 v4, v4, 0x1

    goto :goto_43

    .line 1654
    :cond_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_26 .. :try_end_5a} :catchall_9a

    .line 1655
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    :goto_5e
    if-ge v3, p1, :cond_99

    .line 1657
    :try_start_60
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v4, 0x2

    invoke-virtual {v0, v4, v5}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 1659
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v1, "AccessibilityManagerService.IAccessibilityServiceClient.onInterrupt"

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;J)V

    .line 1662
    :cond_71
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onInterrupt()V
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_7a} :catch_7b

    goto :goto_96

    :catch_7b
    move-exception v0

    const-string v1, "AccessibilityManagerService"

    .line 1664
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error sending interrupt request to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1665
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1664
    invoke-static {v1, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_96
    add-int/lit8 v3, v3, 0x1

    goto :goto_5e

    :cond_99
    return-void

    :catchall_9a
    move-exception p0

    .line 1654
    :try_start_9b
    monitor-exit v0
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9a

    throw p0
.end method

.method public isAccessibilityButtonShown()Z
    .registers 1

    .line 942
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mIsAccessibilityButtonShown:Z

    return p0
.end method

.method public isActivatedMagnification()Z
    .registers 3

    .line 7687
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityUserState;->getMagnificationModeLocked(I)I

    move-result v0

    .line 7688
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationController()Lcom/android/server/accessibility/magnification/MagnificationController;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->isActivated(II)Z

    move-result p0

    return p0
.end method

.method public isAudioDescriptionByDefaultEnabled()Z
    .registers 5

    .line 4538
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4539
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v3, "AccessibilityManagerService.isAudioDescriptionByDefaultEnabled"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;J)V

    .line 4542
    :cond_11
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4543
    :try_start_14
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p0

    .line 4545
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityUserState;->isAudioDescriptionByDefaultEnabledLocked()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_1e
    move-exception p0

    .line 4546
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public final isDexDualMonitorDisplay()Z
    .registers 5

    const/4 v0, 0x0

    .line 7629
    :try_start_1
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "desktopmode"

    .line 7630
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 7631
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v1

    .line 7633
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p0

    iget p0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne p0, v2, :cond_1b

    move p0, v3

    goto :goto_1c

    :cond_1b
    move p0, v0

    .line 7634
    :goto_1c
    invoke-virtual {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v1
    :try_end_20
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_20} :catch_2c

    const/16 v2, 0x65

    if-ne v1, v2, :cond_26

    move v1, v3

    goto :goto_27

    :cond_26
    move v1, v0

    :goto_27
    if-eqz p0, :cond_2c

    if-nez v1, :cond_2c

    move v0, v3

    :catch_2c
    :cond_2c
    return v0
.end method

.method public final isDexMode()Z
    .registers 3

    const/4 v0, 0x0

    .line 7618
    :try_start_1
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "desktopmode"

    .line 7619
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 7621
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p0

    iget p0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I
    :try_end_11
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_11} :catch_15

    const/4 v1, 0x4

    if-ne p0, v1, :cond_15

    const/4 v0, 0x1

    :catch_15
    :cond_15
    return v0
.end method

.method public final isDisplayOn()Z
    .registers 2

    .line 6792
    sget p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mDisplayState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public final isDozeMode()Z
    .registers 2

    .line 6788
    sget p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mDisplayState:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_b

    const/4 v0, 0x4

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public isScreenReaderEnabled()Z
    .registers 4

    .line 5626
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    const-string v1, "enabled_accessibility_services"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_51

    const-string v1, "(?i).*com.samsung.accessibility/com.samsung.android.app.talkback.TalkBackService.*"

    .line 5629
    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_31

    const-string v1, "(?i).*com.google.android.marvin.talkback.TalkBackService.*"

    .line 5630
    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_31

    const-string v1, "(?i).*com.google.android.marvin.talkback/.TalkBackService.*"

    .line 5631
    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_31

    const-string v1, "(?i).*com.samsung.android.accessibility.talkback/com.samsung.android.marvin.talkback.TalkBackService.*"

    .line 5632
    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    :cond_31
    const/4 v0, 0x1

    .line 5633
    :cond_32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isScreenReaderEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", accesibilityService : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AccessibilityManagerService"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    return v0
.end method

.method public isSecDebugEnabled()Z
    .registers 1

    .line 918
    sget-boolean p0, Lcom/android/server/accessibility/AccessibilityManagerService;->SEC_DEBUG:Z

    return p0
.end method

.method public isSystemAudioCaptioningUiEnabled(I)Z
    .registers 2

    .line 4561
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCaptioningManagerImpl:Lcom/android/server/accessibility/CaptioningManagerImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/CaptioningManagerImpl;->isSystemAudioCaptioningUiEnabled(I)Z

    move-result p0

    return p0
.end method

.method public isTwoFingerGestureRecognitionEnabled()Z
    .registers 1

    .line 6493
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->shouldRecogniseTwoFingerGestures:Z

    return p0
.end method

.method public final launchShortcutTargetActivity(ILandroid/content/ComponentName;)V
    .registers 5

    .line 2332
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2333
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 2334
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 2335
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2337
    :try_start_19
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p2, v0, p1, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_24
    .catch Landroid/content/ActivityNotFoundException; {:try_start_19 .. :try_end_24} :catch_24

    :catch_24
    return-void
.end method

.method public final migrateAccessibilityButtonSettingsIfNecessaryLocked(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/lang/String;I)V
    .registers 11

    const/16 v0, 0x1d

    if-le p3, v0, :cond_5

    return-void

    :cond_5
    const/4 p3, 0x0

    .line 3803
    invoke-virtual {p1, p3}, Lcom/android/server/accessibility/AccessibilityUserState;->getShortcutTargetsLocked(I)Ljava/util/LinkedHashSet;

    move-result-object v0

    .line 3804
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    .line 3805
    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda48;

    invoke-direct {v2, p2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda48;-><init>(Ljava/lang/String;Lcom/android/server/accessibility/AccessibilityUserState;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 3836
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1f

    move v1, v3

    goto :goto_20

    :cond_1f
    move v1, p3

    .line 3837
    :goto_20
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    .line 3840
    invoke-virtual {p1, v3}, Lcom/android/server/accessibility/AccessibilityUserState;->getShortcutTargetsLocked(I)Ljava/util/LinkedHashSet;

    move-result-object v4

    .line 3841
    iget-object v5, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    new-instance v6, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda49;

    invoke-direct {v6, p2, p1, v0, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda49;-><init>(Ljava/lang/String;Lcom/android/server/accessibility/AccessibilityUserState;Ljava/util/Set;Ljava/util/Set;)V

    invoke-interface {v5, v6}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 3871
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p2

    if-eq v2, p2, :cond_39

    move p3, v3

    :cond_39
    or-int p2, v1, p3

    if-nez p2, :cond_3e

    return-void

    .line 3877
    :cond_3e
    iget p2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    new-instance p3, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda50;

    invoke-direct {p3}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda50;-><init>()V

    const-string v1, "accessibility_button_targets"

    invoke-virtual {p0, v1, p2, v0, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistColonDelimitedSetToSettingLocked(Ljava/lang/String;ILjava/util/Set;Ljava/util/function/Function;)V

    .line 3879
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    return-void
.end method

.method public notifyAccessibilityButtonClicked(ILjava/lang/String;)V
    .registers 9

    .line 1843
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1844
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v3, "AccessibilityManagerService.notifyAccessibilityButtonClicked"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ";targetName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 1851
    :cond_2a
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_enabled"

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3c

    return-void

    .line 1856
    :cond_3c
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6f

    if-nez p2, :cond_58

    .line 1862
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1863
    :try_start_4b
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p2

    .line 1864
    invoke-virtual {p2}, Lcom/android/server/accessibility/AccessibilityUserState;->getTargetAssignedToAccessibilityButton()Ljava/lang/String;

    move-result-object p2

    .line 1865
    monitor-exit v0

    goto :goto_58

    :catchall_55
    move-exception p0

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_4b .. :try_end_57} :catchall_55

    throw p0

    .line 1867
    :cond_58
    :goto_58
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda1;-><init>()V

    .line 1869
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1867
    invoke-static {v1, p0, p1, v2, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 1858
    :cond_6f
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller does not hold permission android.permission.STATUS_BAR_SERVICE"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public notifyAccessibilityButtonVisibilityChanged(Z)V
    .registers 8

    .line 1881
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1882
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v3, "AccessibilityManagerService.notifyAccessibilityButtonVisibilityChanged"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "shown="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 1886
    :cond_23
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->enforceCallingOrSelfPermission(Ljava/lang/String;)V

    .line 1888
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1889
    :try_start_2d
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyAccessibilityButtonVisibilityChangedLocked(Z)V

    .line 1890
    monitor-exit v0

    return-void

    :catchall_32
    move-exception p0

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_32

    throw p0
.end method

.method public final notifyAccessibilityButtonVisibilityChangedLocked(Z)V
    .registers 4

    .line 2344
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v0

    .line 2345
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mIsAccessibilityButtonShown:Z

    .line 2346
    iget-object p0, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_e
    if-ltz p0, :cond_26

    .line 2347
    iget-object p1, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 2348
    iget-boolean v1, p1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    if-eqz v1, :cond_23

    .line 2350
    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isAccessibilityButtonAvailableLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v1

    .line 2349
    invoke-virtual {p1, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyAccessibilityButtonAvailabilityChangedLocked(Z)V

    :cond_23
    add-int/lit8 p0, p0, -0x1

    goto :goto_e

    :cond_26
    return-void
.end method

.method public final notifyAccessibilityServicesDelayedLocked(Landroid/view/accessibility/AccessibilityEvent;Z)V
    .registers 7

    .line 2499
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p0

    const/4 v0, 0x0

    .line 2500
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_b
    if-ge v0, v1, :cond_1f

    .line 2501
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 2503
    iget-boolean v3, v2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mIsDefault:Z

    if-ne v3, p2, :cond_1c

    .line 2504
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    :try_end_1c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_1c} :catch_1f

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :catch_1f
    :cond_1f
    return-void
.end method

.method public final notifyClearAccessibilityCacheLocked()V
    .registers 3

    .line 2288
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p0

    .line 2289
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_c
    if-ltz v0, :cond_1c

    .line 2290
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 2291
    invoke-virtual {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyClearAccessibilityNodeInfoCache()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_1c
    return-void
.end method

.method public final notifyClientsOfServicesStateChange(Landroid/os/RemoteCallbackList;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/accessibility/IAccessibilityManagerClient;",
            ">;J)V"
        }
    .end annotation

    .line 2857
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2858
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uiTimeout="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AccessibilityManagerService.notifyClientsOfServicesStateChange"

    invoke-virtual {p0, v3, v1, v2, v0}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 2861
    :cond_23
    new-instance p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda25;

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda25;-><init>(J)V

    invoke-static {p0}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final notifyGestureLocked(Landroid/accessibilityservice/AccessibilityGestureEvent;Z)Z
    .registers 7

    .line 2248
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p0

    .line 2249
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_c
    if-ltz v0, :cond_25

    .line 2250
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 2251
    iget-boolean v3, v2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestTouchExplorationMode:Z

    if-eqz v3, :cond_22

    iget-boolean v3, v2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mIsDefault:Z

    if-ne v3, p2, :cond_22

    .line 2252
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    return v1

    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_25
    const/4 p0, 0x0

    return p0
.end method

.method public notifyKeyEvent(Landroid/view/KeyEvent;I)Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1952
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1954
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 1955
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 p0, 0x0

    .line 1956
    monitor-exit v0

    return p0

    .line 1958
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getKeyEventDispatcher()Lcom/android/server/accessibility/KeyEventDispatcher;

    move-result-object p0

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/accessibility/KeyEventDispatcher;->notifyKeyEventLocked(Landroid/view/KeyEvent;ILjava/util/List;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_1c
    move-exception p0

    .line 1959
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public notifyMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .registers 5

    .line 1989
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1990
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyClearAccessibilityCacheLocked()V

    .line 1991
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyMagnificationChangedLocked(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    .line 1992
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final notifyMagnificationChangedLocked(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .registers 6

    .line 2297
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p0

    .line 2298
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_c
    if-ltz v0, :cond_1c

    .line 2299
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 2300
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyMagnificationChangedLocked(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_1c
    return-void
.end method

.method public final notifyRefreshMagnificationModeToInputFilter(I)V
    .registers 7

    .line 2591
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2592
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-nez v1, :cond_9

    .line 2593
    monitor-exit v0

    return-void

    .line 2595
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    .line 2596
    :goto_e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2c

    .line 2597
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Display;

    if-eqz v3, :cond_29

    .line 2598
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    if-ne v4, p1, :cond_29

    .line 2599
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/AccessibilityInputFilter;->refreshMagnificationMode(Landroid/view/Display;)V

    .line 2600
    monitor-exit v0

    return-void

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 2603
    :cond_2c
    monitor-exit v0

    return-void

    :catchall_2e
    move-exception p0

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw p0
.end method

.method public notifySystemActionsChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1944
    iget-object p0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_8
    if-ltz p0, :cond_18

    .line 1945
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 1946
    invoke-virtual {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifySystemActionsChangedLocked()V

    add-int/lit8 p0, p0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method public final onBootPhase(I)V
    .registers 4

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_1b

    .line 994
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.app_widgets"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 995
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    const-class v1, Landroid/appwidget/AppWidgetManagerInternal;

    .line 996
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetManagerInternal;

    .line 995
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->setAppWidgetManager(Landroid/appwidget/AppWidgetManagerInternal;)V

    :cond_1b
    const/16 v0, 0x258

    if-ne p1, v0, :cond_22

    .line 1002
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->setNonA11yToolNotificationToMatchSafetyCenter()V

    :cond_22
    return-void
.end method

.method public onClientChangeLocked(Z)V
    .registers 3

    .line 4694
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v0

    .line 4695
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    if-eqz p1, :cond_e

    .line 4697
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    :cond_e
    return-void
.end method

.method public onDoubleTap(I)V
    .registers 4

    .line 7269
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda56;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda56;-><init>()V

    .line 7270
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 7269
    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onDoubleTapAndHold(I)V
    .registers 4

    .line 7287
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda2;-><init>()V

    .line 7289
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 7288
    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onDoubleTapAndHoldInternal(I)V
    .registers 4

    .line 7331
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7332
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v1, :cond_e

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz p0, :cond_e

    .line 7333
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->onDoubleTapAndHold(I)V

    .line 7335
    :cond_e
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public final onDoubleTapInternal(I)V
    .registers 4

    .line 7275
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7276
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v1, :cond_c

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz p0, :cond_c

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    .line 7279
    :goto_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_14

    if-eqz p0, :cond_13

    .line 7281
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->onDoubleTap(I)V

    :cond_13
    return-void

    :catchall_14
    move-exception p0

    .line 7279
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public onGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)Z
    .registers 4

    .line 1900
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1901
    :try_start_4
    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyGestureLocked(Landroid/accessibilityservice/AccessibilityGestureEvent;Z)Z

    move-result v1

    if-nez v1, :cond_f

    const/4 v1, 0x1

    .line 1903
    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyGestureLocked(Landroid/accessibilityservice/AccessibilityGestureEvent;Z)Z

    move-result v1

    .line 1905
    :cond_f
    monitor-exit v0

    return v1

    :catchall_11
    move-exception p0

    .line 1906
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public onMagnificationTransitionEndedLocked(IZ)V
    .registers 5

    .line 2575
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v0

    .line 2576
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getMagnificationModeLocked(I)I

    move-result v1

    xor-int/lit8 v1, v1, 0x3

    if-nez p2, :cond_17

    if-eqz v1, :cond_17

    .line 2579
    invoke-virtual {v0, p1, v1}, Lcom/android/server/accessibility/AccessibilityUserState;->setMagnificationModeLocked(II)V

    if-nez p1, :cond_29

    .line 2581
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistMagnificationModeSettingsLocked(I)V

    goto :goto_29

    .line 2584
    :cond_17
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda41;

    invoke-direct {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda41;-><init>()V

    .line 2586
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 2584
    invoke-static {v0, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_29
    :goto_29
    return-void
.end method

.method public onServiceInfoChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 5

    .line 982
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->onBoundServicesChangedLocked(ILjava/util/ArrayList;)V

    .line 984
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 4705
    new-instance v0, Lcom/android/server/accessibility/AccessibilityShellCommand;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSystemActionPerformer:Lcom/android/server/accessibility/SystemActionPerformer;

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/AccessibilityShellCommand;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/SystemActionPerformer;)V

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

.method public onSystemActionsChanged()V
    .registers 3

    .line 1936
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1937
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v1

    .line 1938
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifySystemActionsChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 1939
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public onTouchInteractionEnd()V
    .registers 1

    .line 2094
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->onTouchInteractionEnd()V

    return-void
.end method

.method public onTouchInteractionStart()V
    .registers 1

    .line 2090
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->onTouchInteractionStart()V

    return-void
.end method

.method public onTouchStateChanged(II)Z
    .registers 3

    .line 1928
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyTouchState(II)Z

    move-result p0

    return p0
.end method

.method public final onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 3

    const/4 v0, 0x1

    .line 3052
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInitialized:Z

    .line 3053
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateLegacyCapabilitiesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 3054
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateServicesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 3055
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateWindowsForAccessibilityCallbackLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 3056
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateFilterKeyEventsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 3057
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateTouchExplorationLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 3058
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updatePerformGesturesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 3059
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateMagnificationLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 3060
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleUpdateFingerprintGestureHandling(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 3061
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleUpdateInputFilter(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 3062
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateRelevantEventsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 3063
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleUpdateClientsIfNeededLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 3064
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateAccessibilityShortcutKeyTargetsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 3065
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateAccessibilityButtonTargetsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 3067
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateAccessibilityDirectAccessTargetsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 3071
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateMagnificationCapabilitiesSettingsChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 3072
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateMagnificationModeChangeSettingsForAllDisplaysLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 3073
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateFocusAppearanceDataLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    return-void
.end method

.method public performAccessibilityDirectAccess(Ljava/lang/String;)V
    .registers 6

    .line 7595
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_20

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_ACCESSIBILITY"

    .line 7596
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_17

    goto :goto_20

    .line 7598
    :cond_17
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "performAccessibilityDirectAccess requires the MANAGE_ACCESSIBILITY permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7601
    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda1;-><init>()V

    .line 7603
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getDisplayId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 7601
    invoke-static {v1, p0, v2, v3, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final performAccessibilityFrameworkFeature(Landroid/content/ComponentName;I)Z
    .registers 9

    .line 4149
    invoke-static {}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getFrameworkShortcutFeaturesMap()Ljava/util/Map;

    move-result-object v0

    .line 4150
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return v2

    .line 4154
    :cond_c
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;

    .line 4155
    new-instance v1, Landroid/provider/SettingsStringUtil$SettingStringHelper;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 4156
    invoke-virtual {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;->getSettingKey()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-direct {v1, v3, v4, v5}, Landroid/provider/SettingsStringUtil$SettingStringHelper;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 4158
    invoke-virtual {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;->getSettingOnValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->read()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_3f

    .line 4159
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2, v4}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityShortcutActivated(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    .line 4161
    invoke-virtual {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;->getSettingOnValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->write(Ljava/lang/String;)Z

    goto :goto_4b

    .line 4163
    :cond_3f
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2, v2}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityShortcutActivated(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    .line 4165
    invoke-virtual {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;->getSettingOffValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->write(Ljava/lang/String;)Z

    :goto_4b
    return v4
.end method

.method public performAccessibilityShortcut(Ljava/lang/String;)V
    .registers 7

    .line 3978
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 3979
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "targetName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AccessibilityManagerService.performAccessibilityShortcut"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 3983
    :cond_23
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_43

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_ACCESSIBILITY"

    .line 3984
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3a

    goto :goto_43

    .line 3986
    :cond_3a
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "performAccessibilityShortcut requires the MANAGE_ACCESSIBILITY permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3989
    :cond_43
    :goto_43
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda1;-><init>()V

    .line 3992
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getDisplayId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3989
    invoke-static {v1, p0, v2, v3, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final performAccessibilityShortcutInternal(IILjava/lang/String;)V
    .registers 11

    .line 4006
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityShortcutTargetsInternal(I)Ljava/util/List;

    move-result-object v0

    .line 4007
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, "AccessibilityManagerService"

    if-eqz v1, :cond_21

    .line 4008
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No target to perform shortcut, shortcutType="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_21
    const-string v1, "Perform shortcut failed, invalid target name:"

    if-eqz p3, :cond_3e

    .line 4012
    invoke-static {v0, p3}, Lcom/android/server/accessibility/AccessibilityUserState;->doesShortcutTargetsStringContain(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 4013
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x0

    .line 4017
    :cond_3e
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, -0x2

    const-string v5, "accessibility_button_mode"

    const/4 v6, 0x0

    invoke-static {v3, v5, v6, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_51

    move v3, v4

    goto :goto_52

    :cond_51
    move v3, v6

    :goto_52
    if-eqz v3, :cond_82

    .line 4021
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->isDexMode()Z

    move-result v3

    if-eqz v3, :cond_5b

    goto :goto_82

    :cond_5b
    if-nez p3, :cond_6d

    .line 4040
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    if-le p3, v4, :cond_67

    .line 4041
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->showAccessibilityTargetsSelection(II)V

    return-void

    .line 4044
    :cond_67
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 4047
    :cond_6d
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c6

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 4049
    invoke-virtual {p0, p3, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityTargetLabel(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 4048
    invoke-static {v0, p3, v3}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->makeToastForEmergencyMode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c6

    return-void

    .line 4022
    :cond_82
    :goto_82
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 4023
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v4, :cond_a3

    .line 4024
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 4025
    invoke-virtual {p0, p3, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityTargetLabel(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 4024
    invoke-static {v0, p3, v3}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->makeToastForEmergencyMode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c6

    return-void

    .line 4028
    :cond_a3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->isDexMode()Z

    move-result v3

    if-eqz v3, :cond_bc

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v4, :cond_bc

    .line 4029
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 4030
    invoke-virtual {p0, p3, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityTargetLabel(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 4029
    invoke-static {v0, p3, v3}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->makeToastForDexMode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c6

    return-void

    .line 4033
    :cond_bc
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_c6

    .line 4034
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->showAccessibilityTargetsSelection(II)V

    return-void

    .line 4055
    :cond_c6
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p3}, Landroid/view/accessibility/A11yLogger;->insertShortcutSaLog(Landroid/content/Context;ILjava/lang/String;)V

    const-string v0, "com.android.server.accessibility.MagnificationController"

    .line 4059
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_eb

    .line 4061
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationController()Lcom/android/server/accessibility/magnification/MagnificationController;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object p3

    .line 4062
    invoke-virtual {p3, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isMagnifying(I)Z

    move-result p3

    xor-int/2addr p3, v4

    .line 4063
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/accessibility/AccessibilityShortcutController;->MAGNIFICATION_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-static {v0, v1, p2, p3}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityShortcutActivated(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    .line 4065
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendAccessibilityButtonToInputFilter(I)V

    return-void

    .line 4068
    :cond_eb
    invoke-static {p3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_104

    .line 4070
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4074
    :cond_104
    invoke-virtual {p0, v0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->performAccessibilityFrameworkFeature(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_10b

    return-void

    .line 4078
    :cond_10b
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->performAccessibilityShortcutTargetActivity(ILandroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_11a

    .line 4079
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendComponentForUpdateProfile(Ljava/lang/String;)V

    .line 4080
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0, v0, p2}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityShortcutActivated(Landroid/content/Context;Landroid/content/ComponentName;I)V

    return-void

    .line 4084
    :cond_11a
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->performAccessibilityShortcutTargetService(IILandroid/content/ComponentName;)Z

    move-result p1

    if-eqz p1, :cond_123

    .line 4086
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendComponentForUpdateProfile(Ljava/lang/String;)V

    :cond_123
    return-void
.end method

.method public final performAccessibilityShortcutTargetActivity(ILandroid/content/ComponentName;)Z
    .registers 8

    .line 4172
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4173
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 4174
    :goto_9
    iget-object v4, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledShortcuts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2c

    .line 4175
    iget-object v4, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledShortcuts:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accessibilityservice/AccessibilityShortcutInfo;

    .line 4176
    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 4179
    :cond_26
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->launchShortcutTargetActivity(ILandroid/content/ComponentName;)V

    .line 4180
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    .line 4182
    :cond_2c
    monitor-exit v0

    return v2

    :catchall_2e
    move-exception p0

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw p0
.end method

.method public final performAccessibilityShortcutTargetService(IILandroid/content/ComponentName;)Z
    .registers 14

    .line 4206
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4207
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v1

    .line 4209
    invoke-virtual {v1, p3}, Lcom/android/server/accessibility/AccessibilityUserState;->getInstalledServiceInfoLocked(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_26

    const-string p0, "AccessibilityManagerService"

    .line 4211
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Perform shortcut failed, invalid component name:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4213
    monitor-exit v0

    return v3

    .line 4217
    :cond_26
    invoke-virtual {v1, p3}, Lcom/android/server/accessibility/AccessibilityUserState;->getServiceConnectionLocked(Landroid/content/ComponentName;)Lcom/android/server/accessibility/AccessibilityServiceConnection;

    move-result-object v4

    .line 4218
    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 4220
    iget v2, v2, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v2, v2, 0x100

    const/4 v6, 0x1

    if-eqz v2, :cond_3d

    move v2, v6

    goto :goto_3e

    :cond_3d
    move v2, v3

    :goto_3e
    const-string v7, "AccessibilityManagerService"

    .line 4225
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "performAccessibilityShortcutTargetService targetSdk : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", requestA11yButton : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x2

    const/16 v8, 0x1d

    if-gt v5, v8, :cond_66

    if-eq p2, v6, :cond_6a

    if-eq p2, v7, :cond_6a

    :cond_66
    if-le v5, v8, :cond_83

    if-nez v2, :cond_83

    :cond_6a
    if-nez v4, :cond_77

    .line 4230
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p2, v6}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityShortcutActivated(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    .line 4232
    iget p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->enableAccessibilityServiceLocked(Landroid/content/ComponentName;I)V

    goto :goto_81

    .line 4235
    :cond_77
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p2, v3}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityShortcutActivated(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    .line 4237
    iget p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->disableAccessibilityServiceLocked(Landroid/content/ComponentName;I)V

    .line 4239
    :goto_81
    monitor-exit v0

    return v6

    :cond_83
    if-eq p2, v6, :cond_87

    if-ne p2, v7, :cond_9c

    :cond_87
    if-le v5, v8, :cond_9c

    if-eqz v2, :cond_9c

    .line 4246
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityUserState;->getEnabledServicesLocked()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9c

    .line 4247
    iget p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->enableAccessibilityServiceLocked(Landroid/content/ComponentName;I)V

    .line 4248
    monitor-exit v0

    return v6

    :cond_9c
    if-eqz v4, :cond_b5

    .line 4252
    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 4253
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b5

    iget-boolean v1, v4, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    if-nez v1, :cond_ab

    goto :goto_b5

    .line 4260
    :cond_ab
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0, p3, p2, v6}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityShortcutActivated(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    .line 4262
    invoke-virtual {v4, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyAccessibilityButtonClickedLocked(I)V

    .line 4263
    monitor-exit v0

    return v6

    :cond_b5
    :goto_b5
    const-string p0, "AccessibilityManagerService"

    .line 4255
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Perform shortcut failed, service is not ready:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4257
    monitor-exit v0

    return v3

    :catchall_cd
    move-exception p0

    .line 4264
    monitor-exit v0
    :try_end_cf
    .catchall {:try_start_3 .. :try_end_cf} :catchall_cd

    throw p0
.end method

.method public performActionOnAccessibilityFocusedItem(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z
    .registers 2

    .line 2052
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getInteractionBridge()Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->performActionOnAccessibilityFocusedItemNotLocked(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    move-result p0

    return p0
.end method

.method public final persistColonDelimitedSetToSettingLocked(Ljava/lang/String;ILjava/util/Set;Ljava/util/function/Function;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "TT;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2712
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_9
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 2713
    invoke-interface {p4, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    .line 2714
    :goto_1d
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_9

    .line 2717
    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2f

    const/16 v2, 0x3a

    .line 2718
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2720
    :cond_2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 2722
    :cond_33
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p3

    .line 2724
    :try_start_37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2725
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, v0, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_44
    .catchall {:try_start_37 .. :try_end_44} :catchall_48

    .line 2731
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_48
    move-exception p0

    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2732
    throw p0
.end method

.method public persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;I)V"
        }
    .end annotation

    .line 2672
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda24;-><init>()V

    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistColonDelimitedSetToSettingLocked(Ljava/lang/String;ILjava/util/Set;Ljava/util/function/Function;)V

    return-void
.end method

.method public final persistMagnificationModeSettingsLocked(I)V
    .registers 4

    .line 5439
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda34;

    invoke-direct {v1, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda34;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final postponeWindowStateEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 6

    .line 7521
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7522
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 7523
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v2

    .line 7522
    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->resolveParentWindowIdLocked(I)I

    move-result v1

    .line 7524
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v2, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findWindowInfoByIdLocked(I)Landroid/view/WindowInfo;

    move-result-object v1

    if-eqz v1, :cond_18

    const/4 p0, 0x0

    .line 7525
    monitor-exit v0

    return p0

    .line 7527
    :cond_18
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$SendWindowStateChangedEventRunnable;

    new-instance v2, Landroid/view/accessibility/AccessibilityEvent;

    invoke-direct {v2, p1}, Landroid/view/accessibility/AccessibilityEvent;-><init>(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-direct {v1, p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SendWindowStateChangedEventRunnable;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 7529
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7531
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSendWindowStateChangedEventRunnables:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    .line 7532
    monitor-exit v0

    return p0

    :catchall_31
    move-exception p0

    .line 7533
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw p0
.end method

.method public final readAMActiveListSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 7

    .line 3293
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 3294
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v2, "assistant_menu"

    const/4 v3, 0x0

    .line 3293
    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    move v0, v1

    goto :goto_15

    :cond_14
    move v0, v3

    .line 3299
    :goto_15
    :try_start_15
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string v2, "assistant_menu_option_upperapps"

    invoke-static {p0, v2}, Landroid/view/accessibility/A11yRune;->readDataFromAccessibilityProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3301
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_35

    const-string v2, "FingerMouse"

    .line 3302
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_33

    const-string v2, "MagnifierWindow"

    .line 3303
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_35

    :cond_33
    move p0, v1

    goto :goto_36

    :cond_35
    move p0, v3

    :goto_36
    if-eqz v0, :cond_3c

    if-eqz p0, :cond_3c

    move v2, v1

    goto :goto_3d

    :cond_3c
    move v2, v3

    .line 3306
    :goto_3d
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isAMEnabledLocked()Z

    move-result v4

    if-eq v2, v4, :cond_4e

    if-eqz v0, :cond_49

    if-eqz p0, :cond_49

    move p0, v1

    goto :goto_4a

    :cond_49
    move p0, v3

    .line 3307
    :goto_4a
    invoke-virtual {p1, p0}, Lcom/android/server/accessibility/AccessibilityUserState;->setAMEnabledLocked(Z)V
    :try_end_4d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_4d} :catch_4e

    return v1

    :catch_4e
    :cond_4e
    return v3
.end method

.method public final readAMEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 5

    .line 3317
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 3318
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v1, "assistant_menu"

    const/4 v2, 0x0

    .line 3317
    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_14

    move p0, v0

    goto :goto_15

    :cond_14
    move p0, v2

    .line 3321
    :goto_15
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isAMEnabledLocked()Z

    move-result v1

    if-eq p0, v1, :cond_1f

    .line 3322
    invoke-virtual {p1, p0}, Lcom/android/server/accessibility/AccessibilityUserState;->setAMEnabledLocked(Z)V

    return v0

    :cond_1f
    return v2
.end method

.method public final readAccessibilityButtonTargetComponentLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 5

    .line 3516
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v1, "accessibility_button_target_component"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 3518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "componentId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " userState.getTargetAssignedToAccessibilityButton() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getTargetAssignedToAccessibilityButton()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccessibilityManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3519
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_44

    .line 3520
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getTargetAssignedToAccessibilityButton()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3f

    return v1

    :cond_3f
    const/4 p0, 0x0

    .line 3523
    invoke-virtual {p1, p0}, Lcom/android/server/accessibility/AccessibilityUserState;->setTargetAssignedToAccessibilityButton(Ljava/lang/String;)V

    return v2

    .line 3526
    :cond_44
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getTargetAssignedToAccessibilityButton()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    return v1

    .line 3529
    :cond_4f
    invoke-virtual {p1, p0}, Lcom/android/server/accessibility/AccessibilityUserState;->setTargetAssignedToAccessibilityButton(Ljava/lang/String;)V

    return v2
.end method

.method public final readAccessibilityButtonTargetsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 7

    .line 3498
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 3500
    iget v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda23;

    invoke-direct {v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda23;-><init>()V

    const-string v3, "accessibility_button_targets"

    invoke-virtual {p0, v3, v1, v2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->readColonDelimitedSettingToSet(Ljava/lang/String;ILjava/util/function/Function;Ljava/util/Set;)V

    const/4 v1, 0x0

    .line 3504
    invoke-virtual {p1, v1}, Lcom/android/server/accessibility/AccessibilityUserState;->getShortcutTargetsLocked(I)Ljava/util/LinkedHashSet;

    move-result-object v2

    .line 3505
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentTargets : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " targetsFromSetting : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AccessibilityManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3506
    invoke-interface {v0, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    return v1

    .line 3509
    :cond_3b
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 3510
    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 3511
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final readAccessibilityDirectAccessSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 7

    .line 7538
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v2, "accessibility_direct_access_target_service"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 7542
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 7544
    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda17;

    invoke-direct {v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda17;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->readColonDelimitedStringToSet(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/Set;Z)V

    const/4 v0, 0x2

    .line 7547
    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getShortcutTargetsLocked(I)Ljava/util/LinkedHashSet;

    move-result-object v0

    .line 7548
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readAccessibilityDirectAccessSettingLocked currentTargets : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " targetsFromSetting : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "AccessibilityManagerService"

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7550
    invoke-interface {v1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    return v3

    .line 7553
    :cond_47
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 7554
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 7555
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final readAccessibilityShortcutKeySettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 7

    .line 3466
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v2, "accessibility_shortcut_target_service"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 3470
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 3472
    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda40;

    invoke-direct {v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda40;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->readColonDelimitedStringToSet(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/Set;Z)V

    const/4 v0, 0x1

    .line 3485
    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getShortcutTargetsLocked(I)Ljava/util/LinkedHashSet;

    move-result-object v2

    .line 3486
    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    return v3

    .line 3489
    :cond_28
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 3490
    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 3491
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    return v0
.end method

.method public final readAudioDescriptionEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 5

    .line 3418
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 3419
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v1, "enabled_accessibility_audio_description_by_default"

    const/4 v2, 0x0

    .line 3418
    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_14

    move p0, v0

    goto :goto_15

    :cond_14
    move p0, v2

    .line 3423
    :goto_15
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isAudioDescriptionByDefaultEnabledLocked()Z

    move-result v1

    if-eq p0, v1, :cond_1f

    .line 3424
    invoke-virtual {p1, p0}, Lcom/android/server/accessibility/AccessibilityUserState;->setAudioDescriptionByDefaultEnabledLocked(Z)V

    return v0

    :cond_1f
    return v2
.end method

.method public final readAutoActionEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 5

    .line 3267
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 3268
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v1, "accessibility_auto_action_type"

    const/4 v2, 0x0

    .line 3267
    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_14

    move p0, v0

    goto :goto_15

    :cond_14
    move p0, v2

    .line 3271
    :goto_15
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isAutoActionEnabledLocked()Z

    move-result v1

    if-eq p0, v1, :cond_1f

    .line 3272
    invoke-virtual {p1, p0}, Lcom/android/server/accessibility/AccessibilityUserState;->setAutoActionEnabledLocked(Z)V

    return v0

    :cond_1f
    return v2
.end method

.method public final readAutoclickEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 5

    .line 3254
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 3255
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v1, "accessibility_autoclick_enabled"

    const/4 v2, 0x0

    .line 3254
    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_14

    move p0, v0

    goto :goto_15

    :cond_14
    move p0, v2

    .line 3258
    :goto_15
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isAutoclickEnabledLocked()Z

    move-result v1

    if-eq p0, v1, :cond_1f

    .line 3259
    invoke-virtual {p1, p0}, Lcom/android/server/accessibility/AccessibilityUserState;->setAutoclickEnabledLocked(Z)V

    return v0

    :cond_1f
    return v2
.end method

.method public final readBounceKeysEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 5

    .line 3381
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 3382
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v1, "bounce_keys_enabled"

    const/4 v2, 0x0

    .line 3381
    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_14

    move p0, v0

    goto :goto_15

    :cond_14
    move p0, v2

    .line 3385
    :goto_15
    iget-boolean v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsBounceKeysEnabled:Z

    if-eq p0, v1, :cond_1c

    .line 3386
    iput-boolean p0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsBounceKeysEnabled:Z

    return v0

    :cond_1c
    return v2
.end method

.method public final readColonDelimitedSettingToSet(Ljava/lang/String;ILjava/util/function/Function;Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "TT;>;",
            "Ljava/util/Set<",
            "TT;>;)V"
        }
    .end annotation

    .line 2683
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 2685
    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->readColonDelimitedStringToSet(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/Set;Z)V

    return-void
.end method

.method public final readColonDelimitedStringToSet(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/Set;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "TT;>;",
            "Ljava/util/Set<",
            "TT;>;Z)V"
        }
    .end annotation

    if-nez p4, :cond_5

    .line 2691
    invoke-interface {p3}, Ljava/util/Set;->clear()V

    .line 2693
    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_2b

    .line 2694
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 2695
    invoke-virtual {p0, p1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 2696
    :cond_10
    :goto_10
    invoke-virtual {p0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 2697
    invoke-virtual {p0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object p1

    .line 2698
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_21

    goto :goto_10

    .line 2701
    :cond_21
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 2703
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_2b
    return-void
.end method

.method public final readComponentNamesFromSettingLocked(Ljava/lang/String;ILjava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 2649
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda42;

    invoke-direct {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda42;-><init>()V

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->readColonDelimitedSettingToSet(Ljava/lang/String;ILjava/util/function/Function;Ljava/util/Set;)V

    return-void
.end method

.method public final readComponentNamesFromStringLocked(Ljava/lang/String;Ljava/util/Set;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;Z)V"
        }
    .end annotation

    .line 2665
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->readColonDelimitedStringToSet(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/Set;Z)V

    return-void
.end method

.method public final readConfigurationForUserStateLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 4

    .line 3173
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readInstalledAccessibilityServiceLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v0

    .line 3174
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readInstalledAccessibilityShortcutLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 3175
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readEnabledAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 3176
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readTouchExplorationGrantedAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 3177
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readTouchExplorationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 3178
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readHighTextContrastEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 3179
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAudioDescriptionEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 3180
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readMagnificationEnabledSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 3181
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAutoclickEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 3182
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityShortcutKeySettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 3183
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityButtonTargetsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 3184
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityButtonTargetComponentLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 3185
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readUserRecommendedUiTimeoutSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 3186
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readMagnificationModeForDefaultDisplayLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 3187
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readMagnificationCapabilitiesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 3188
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readMagnificationFollowTypingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 3190
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAutoActionEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 3191
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readCornerActionEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 3194
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readTapDurationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 3197
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readTouchBlockingEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 3200
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readStickyKeysEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 3201
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readBounceKeysEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 3202
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readSlowKeysEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 3205
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readGestureNaviBarModeSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 3208
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityDirectAccessSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 3211
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAMEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public final readCornerActionEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 5

    .line 3279
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 3280
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v1, "accessibility_corner_action_enabled"

    const/4 v2, 0x0

    .line 3279
    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_14

    move p0, v0

    goto :goto_15

    :cond_14
    move p0, v2

    .line 3283
    :goto_15
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isCornerActionEnabledLocked()Z

    move-result v1

    if-eq p0, v1, :cond_1f

    .line 3284
    invoke-virtual {p1, p0}, Lcom/android/server/accessibility/AccessibilityUserState;->setCornerActionEnabledLocked(Z)V

    return v0

    :cond_1f
    return v2
.end method

.method public final readEnabledAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 9

    .line 2422
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2423
    iget v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    const-string v2, "enabled_accessibility_services"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readComponentNamesFromSettingLocked(Ljava/lang/String;ILjava/util/Set;)V

    .line 2428
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2429
    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_89

    .line 2430
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 2431
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    .line 2433
    iget-object v4, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v5, v2

    :goto_2d
    if-ge v5, v4, :cond_46

    .line 2436
    iget-object v6, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v6

    .line 2437
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_43

    move v4, v3

    goto :goto_47

    :cond_43
    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    :cond_46
    move v4, v2

    :goto_47
    if-nez v4, :cond_14

    .line 2443
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " : unbound from accessibility service because it is not installed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AccessibilityManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2446
    iget-object v4, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    :goto_66
    if-ltz v4, :cond_83

    .line 2447
    iget-object v5, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 2448
    iget-object v6, v5, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 2450
    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_80

    .line 2451
    invoke-virtual {v5}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->unbindLocked()V

    move v2, v3

    :cond_80
    add-int/lit8 v4, v4, -0x1

    goto :goto_66

    :cond_83
    if-eqz v2, :cond_14

    .line 2456
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    goto :goto_14

    .line 2463
    :cond_89
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a5

    .line 2464
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2465
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2466
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return v3

    .line 2469
    :cond_a5
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return v2
.end method

.method public final readGestureNaviBarModeSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 5

    .line 3537
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 3538
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string/jumbo v1, "navigation_mode"

    const/4 v2, 0x0

    .line 3537
    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1a

    const/4 v1, 0x3

    if-ne p0, v1, :cond_18

    goto :goto_1a

    :cond_18
    move p0, v2

    goto :goto_1b

    :cond_1a
    :goto_1a
    move p0, v0

    .line 3543
    :goto_1b
    iget-boolean v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsGestureNaviBar:Z

    if-eq p0, v1, :cond_22

    .line 3544
    iput-boolean p0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsGestureNaviBar:Z

    return v0

    :cond_22
    return v2
.end method

.method public final readHighTextContrastEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 5

    .line 3406
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 3407
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string/jumbo v1, "high_text_contrast_enabled"

    const/4 v2, 0x0

    .line 3406
    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_15

    move p0, v0

    goto :goto_16

    :cond_15
    move p0, v2

    .line 3410
    :goto_16
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isTextHighContrastEnabledLocked()Z

    move-result v1

    if-eq p0, v1, :cond_20

    .line 3411
    invoke-virtual {p1, p0}, Lcom/android/server/accessibility/AccessibilityUserState;->setTextHighContrastEnabledLocked(Z)V

    return v0

    :cond_20
    return v2
.end method

.method public final readInstalledAccessibilityServiceLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 12

    const-string v0, "AccessibilityManagerService"

    .line 2356
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempAccessibilityServiceInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2364
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getBindInstantServiceAllowedLocked()Z

    move-result v1

    if-eqz v1, :cond_11

    const v1, 0x8c8084

    goto :goto_14

    :cond_11
    const v1, 0xc8084

    .line 2368
    :goto_14
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.accessibilityservice.AccessibilityService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 2371
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_29
    const/4 v5, 0x1

    if-ge v4, v2, :cond_89

    .line 2372
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 2373
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 2375
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v8, v7}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canRegisterService(Landroid/content/pm/ServiceInfo;)Z

    move-result v8

    if-nez v8, :cond_3d

    goto :goto_86

    .line 2381
    :cond_3d
    :try_start_3d
    new-instance v8, Landroid/accessibilityservice/AccessibilityServiceInfo;

    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v6, v9}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)V

    .line 2382
    invoke-virtual {v8}, Landroid/accessibilityservice/AccessibilityServiceInfo;->isWithinParcelableSize()Z

    move-result v6

    if-nez v6, :cond_6c

    .line 2383
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2384
    invoke-virtual {v8}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " because service info size is larger than safe parcelable limits."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2383
    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_86

    .line 2388
    :cond_6c
    iget-object v6, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mCrashedServices:Ljava/util/Set;

    invoke-virtual {v7}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7a

    .line 2390
    iput-boolean v5, v8, Landroid/accessibilityservice/AccessibilityServiceInfo;->crashed:Z

    .line 2392
    :cond_7a
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempAccessibilityServiceInfoList:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3d .. :try_end_7f} :catch_80
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_7f} :catch_80

    goto :goto_86

    :catch_80
    move-exception v5

    const-string v6, "Error while initializing AccessibilityServiceInfo"

    .line 2394
    invoke-static {v0, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_86
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 2398
    :cond_89
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempAccessibilityServiceInfoList:Ljava/util/List;

    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a5

    .line 2399
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2400
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempAccessibilityServiceInfoList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2401
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempAccessibilityServiceInfoList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return v5

    .line 2405
    :cond_a5
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempAccessibilityServiceInfoList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return v3
.end method

.method public final readInstalledAccessibilityShortcutLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 4

    .line 2410
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 2411
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-virtual {v0, v1, p0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityShortcutListAsUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p0

    .line 2413
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledShortcuts:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 2414
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledShortcuts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2415
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledShortcuts:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method public final readMagnificationCapabilitiesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 7

    .line 5478
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 5479
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v2, "accessibility_magnification_capability"

    const/4 v3, 0x1

    .line 5478
    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1e

    .line 5485
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 5486
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v4, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 5485
    invoke-static {v0, v2, v1, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move v0, v1

    .line 5493
    :cond_1e
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getMagnificationCapabilitiesLocked()I

    move-result v1

    if-eq v0, v1, :cond_2d

    .line 5494
    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->setMagnificationCapabilitiesLocked(I)V

    .line 5495
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->setMagnificationCapabilities(I)V

    return v3

    :cond_2d
    const/4 p0, 0x0

    return p0
.end method

.method public final readMagnificationEnabledSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 5

    .line 3242
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 3243
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v1, "accessibility_display_magnification_enabled"

    const/4 v2, 0x0

    .line 3242
    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_14

    move p0, v0

    goto :goto_15

    :cond_14
    move p0, v2

    .line 3246
    :goto_15
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isDisplayMagnificationEnabledLocked()Z

    move-result v1

    if-eq p0, v1, :cond_1f

    .line 3247
    invoke-virtual {p1, p0}, Lcom/android/server/accessibility/AccessibilityUserState;->setDisplayMagnificationEnabledLocked(Z)V

    return v0

    :cond_1f
    return v2
.end method

.method public readMagnificationFollowTypingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 6

    .line 5502
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 5503
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v2, "accessibility_magnification_follow_typing_enabled"

    const/4 v3, 0x1

    .line 5502
    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v3, :cond_14

    move v0, v3

    goto :goto_15

    :cond_14
    move v0, v1

    .line 5506
    :goto_15
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isMagnificationFollowTypingEnabled()Z

    move-result v2

    if-eq v0, v2, :cond_24

    .line 5507
    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->setMagnificationFollowTypingEnabled(Z)V

    .line 5508
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->setMagnificationFollowTypingEnabled(Z)V

    return v3

    :cond_24
    return v1
.end method

.method public final readMagnificationModeForDefaultDisplayLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 5

    .line 5466
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 5467
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v1, "accessibility_magnification_mode"

    const/4 v2, 0x1

    .line 5466
    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x0

    .line 5470
    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getMagnificationModeLocked(I)I

    move-result v1

    if-eq p0, v1, :cond_1a

    .line 5471
    invoke-virtual {p1, v0, p0}, Lcom/android/server/accessibility/AccessibilityUserState;->setMagnificationModeLocked(II)V

    return v2

    :cond_1a
    return v0
.end method

.method public final readOneHandModeActivateSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 4

    .line 3330
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 3331
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget p1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v0, "any_screen_running"

    const/4 v1, 0x0

    .line 3330
    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1
.end method

.method public final readSlowKeysEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 5

    .line 3393
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 3394
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string/jumbo v1, "slow_keys_enabled"

    const/4 v2, 0x0

    .line 3393
    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_15

    move p0, v0

    goto :goto_16

    :cond_15
    move p0, v2

    .line 3397
    :goto_16
    iget-boolean v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsSlowKeysEnabled:Z

    if-eq p0, v1, :cond_1d

    .line 3398
    iput-boolean p0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsSlowKeysEnabled:Z

    return v0

    :cond_1d
    return v2
.end method

.method public final readStickyKeysEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 5

    .line 3369
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 3370
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string/jumbo v1, "sticky_keys_enabled"

    const/4 v2, 0x0

    .line 3369
    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_15

    move p0, v0

    goto :goto_16

    :cond_15
    move p0, v2

    .line 3373
    :goto_16
    iget-boolean v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsStickyKeysEnabled:Z

    if-eq p0, v1, :cond_1d

    .line 3374
    iput-boolean p0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsStickyKeysEnabled:Z

    return v0

    :cond_1d
    return v2
.end method

.method public final readTapDurationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 5

    .line 3341
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 3342
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string/jumbo v1, "tap_duration_enabled"

    const/4 v2, 0x0

    .line 3341
    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_15

    move p0, v0

    goto :goto_16

    :cond_15
    move p0, v2

    .line 3345
    :goto_16
    iget-boolean v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTapDurationEnabled:Z

    if-eq p0, v1, :cond_1d

    .line 3346
    iput-boolean p0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTapDurationEnabled:Z

    return v0

    :cond_1d
    return v2
.end method

.method public final readTouchBlockingEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 5

    .line 3355
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 3356
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string/jumbo v1, "touch_blocking_enabled"

    const/4 v2, 0x0

    .line 3355
    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_15

    move p0, v0

    goto :goto_16

    :cond_15
    move p0, v2

    .line 3359
    :goto_16
    iget-boolean v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchBlockingEnabled:Z

    if-eq p0, v1, :cond_1d

    .line 3360
    iput-boolean p0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchBlockingEnabled:Z

    return v0

    :cond_1d
    return v2
.end method

.method public final readTouchExplorationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 5

    .line 3231
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 3232
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string/jumbo v1, "touch_exploration_enabled"

    const/4 v2, 0x0

    .line 3231
    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_15

    move p0, v0

    goto :goto_16

    :cond_15
    move p0, v2

    .line 3234
    :goto_16
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isTouchExplorationEnabledLocked()Z

    move-result v1

    if-eq p0, v1, :cond_20

    .line 3235
    invoke-virtual {p1, p0}, Lcom/android/server/accessibility/AccessibilityUserState;->setTouchExplorationEnabledLocked(Z)V

    return v0

    :cond_20
    return v2
.end method

.method public final readTouchExplorationGrantedAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 5

    .line 2475
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2476
    iget v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    const-string/jumbo v2, "touch_exploration_granted_accessibility_services"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readComponentNamesFromSettingLocked(Ljava/lang/String;ILjava/util/Set;)V

    .line 2479
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 2480
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2481
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2482
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    const/4 p0, 0x1

    return p0

    .line 2485
    :cond_2c
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    const/4 p0, 0x0

    return p0
.end method

.method public final readUserRecommendedUiTimeoutSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 7

    .line 3552
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 3553
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v2, "accessibility_non_interactive_ui_timeout_ms"

    const/4 v3, 0x0

    .line 3552
    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 3556
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 3557
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v4, "accessibility_interactive_ui_timeout_ms"

    .line 3556
    invoke-static {v1, v4, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 3560
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getUserNonInteractiveUiTimeoutLocked()I

    move-result v2

    if-ne v0, v2, :cond_2b

    .line 3561
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getUserInteractiveUiTimeoutLocked()I

    move-result v2

    if-eq v1, v2, :cond_2a

    goto :goto_2b

    :cond_2a
    return v3

    .line 3562
    :cond_2b
    :goto_2b
    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->setUserNonInteractiveUiTimeoutLocked(I)V

    .line 3563
    invoke-virtual {p1, v1}, Lcom/android/server/accessibility/AccessibilityUserState;->setUserInteractiveUiTimeoutLocked(I)V

    .line 3564
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    const/4 p0, 0x1

    return p0
.end method

.method public recognizeTwoFingerGestures()Z
    .registers 1

    .line 6489
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->shouldRecogniseTwoFingerGestures:Z

    return p0
.end method

.method public final registerBroadcastReceivers()V
    .registers 20

    move-object/from16 v0, p0

    .line 1057
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$2;

    invoke-direct {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$2;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 1209
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v4, v3, v5}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 1212
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 1213
    invoke-virtual {v9, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_UNLOCKED"

    .line 1214
    invoke-virtual {v9, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_REMOVED"

    .line 1215
    invoke-virtual {v9, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    .line 1216
    invoke-virtual {v9, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.os.action.SETTING_RESTORED"

    .line 1217
    invoke-virtual {v9, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1219
    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/server/accessibility/AccessibilityManagerService$3;

    invoke-direct {v7, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$3;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1272
    new-instance v15, Landroid/content/IntentFilter;

    invoke-direct {v15}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.safetycenter.action.SAFETY_CENTER_ENABLED_CHANGED"

    .line 1273
    invoke-virtual {v15, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1274
    new-instance v13, Lcom/android/server/accessibility/AccessibilityManagerService$4;

    invoke-direct {v13, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$4;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 1280
    iget-object v12, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    const/16 v16, 0x0

    const/16 v18, 0x2

    move-object/from16 v17, v0

    invoke-virtual/range {v12 .. v18}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method

.method public registerSystemAction(Landroid/app/RemoteAction;I)V
    .registers 8

    .line 1522
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1523
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ";actionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AccessibilityManagerService.registerSystemAction"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 1526
    :cond_2a
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    const-string v1, "android.permission.MANAGE_ACCESSIBILITY"

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->enforceCallingOrSelfPermission(Ljava/lang/String;)V

    .line 1527
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getSystemActionPerformer()Lcom/android/server/accessibility/SystemActionPerformer;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lcom/android/server/accessibility/SystemActionPerformer;->registerSystemAction(ILandroid/app/RemoteAction;)V

    return-void
.end method

.method public registerUiTestAutomationService(Landroid/os/IBinder;Landroid/accessibilityservice/IAccessibilityServiceClient;Landroid/accessibilityservice/AccessibilityServiceInfo;I)V
    .registers 23

    move-object/from16 v0, p0

    .line 1711
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v2, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 1712
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v4, "AccessibilityManagerService.registerUiTestAutomationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "owner="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ";serviceClient="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p2

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ";accessibilityServiceInfo="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p3

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ";flags="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p4

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v2, v3, v5}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_4e

    :cond_46
    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v14, p4

    .line 1718
    :goto_4e
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    const-string v2, "android.permission.RETRIEVE_WINDOW_CONTENT"

    const-string/jumbo v3, "registerUiTestAutomationService"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1721
    iget-object v15, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 1722
    :try_start_5b
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    add-int/lit8 v2, v9, 0x1

    sput v2, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    iget-object v10, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    iget-object v11, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 1724
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 1725
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getSystemActionPerformer()Lcom/android/server/accessibility/SystemActionPerformer;

    move-result-object v16

    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v17, v5

    move-object/from16 v5, p3

    move v6, v9

    move-object v7, v10

    move-object v8, v11

    move-object/from16 v9, p0

    move-object v10, v12

    move-object v11, v13

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    move/from16 v14, p4

    .line 1722
    invoke-virtual/range {v1 .. v14}, Lcom/android/server/accessibility/UiAutomationManager;->registerUiTestAutomationServiceLocked(Landroid/os/IBinder;Landroid/accessibilityservice/IAccessibilityServiceClient;Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Landroid/accessibilityservice/AccessibilityTrace;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/SystemActionPerformer;Lcom/android/server/accessibility/AccessibilityWindowManager;I)V

    .line 1726
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 1727
    monitor-exit v15

    return-void

    :catchall_96
    move-exception v0

    monitor-exit v15
    :try_end_98
    .catchall {:try_start_5b .. :try_end_98} :catchall_96

    throw v0
.end method

.method public removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V
    .registers 7

    .line 1687
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1688
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "window="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AccessibilityManagerService.removeAccessibilityInteractionConnection"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 1691
    :cond_23
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V

    return-void
.end method

.method public removeClient(Landroid/view/accessibility/IAccessibilityManagerClient;I)Z
    .registers 6

    .line 1379
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1380
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 1381
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v1

    .line 1383
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v1

    .line 1384
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v2, p2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->isCallerInteractingAcrossUsers(I)Z

    move-result p2

    if-eqz p2, :cond_1d

    .line 1385
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result p0

    .line 1391
    monitor-exit v0

    return p0

    .line 1393
    :cond_1d
    iget-object p0, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result p0

    .line 1398
    monitor-exit v0

    return p0

    :catchall_25
    move-exception p0

    .line 1400
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public final removeShortcutTargetForUnboundServiceLocked(Lcom/android/server/accessibility/AccessibilityUserState;Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .registers 7

    .line 3891
    iget-boolean v0, p2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    if-eqz v0, :cond_60

    .line 3892
    invoke-virtual {p2}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1d

    if-gt v0, v1, :cond_17

    goto :goto_60

    .line 3896
    :cond_17
    invoke-virtual {p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    const/4 v0, 0x1

    .line 3897
    invoke-virtual {p1, v0, p2}, Lcom/android/server/accessibility/AccessibilityUserState;->removeShortcutTargetLocked(ILandroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 3898
    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getShortcutTargetsLocked(I)Ljava/util/LinkedHashSet;

    move-result-object v0

    .line 3900
    iget v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda27;

    invoke-direct {v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda27;-><init>()V

    const-string v3, "accessibility_shortcut_target_service"

    invoke-virtual {p0, v3, v1, v0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistColonDelimitedSetToSettingLocked(Ljava/lang/String;ILjava/util/Set;Ljava/util/function/Function;)V

    :cond_32
    const/4 v0, 0x0

    .line 3904
    invoke-virtual {p1, v0, p2}, Lcom/android/server/accessibility/AccessibilityUserState;->removeShortcutTargetLocked(ILandroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 3905
    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getShortcutTargetsLocked(I)Ljava/util/LinkedHashSet;

    move-result-object v0

    .line 3907
    iget v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda28;

    invoke-direct {v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda28;-><init>()V

    const-string v3, "accessibility_button_targets"

    invoke-virtual {p0, v3, v1, v0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistColonDelimitedSetToSettingLocked(Ljava/lang/String;ILjava/util/Set;Ljava/util/function/Function;)V

    :cond_49
    const/4 v0, 0x2

    .line 3911
    invoke-virtual {p1, v0, p2}, Lcom/android/server/accessibility/AccessibilityUserState;->removeShortcutTargetLocked(ILandroid/content/ComponentName;)Z

    move-result p2

    if-eqz p2, :cond_60

    .line 3912
    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getShortcutTargetsLocked(I)Ljava/util/LinkedHashSet;

    move-result-object p2

    .line 3914
    iget p1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda29;-><init>()V

    const-string v1, "accessibility_direct_access_target_service"

    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistColonDelimitedSetToSettingLocked(Ljava/lang/String;ILjava/util/Set;Ljava/util/function/Function;)V

    :cond_60
    :goto_60
    return-void
.end method

.method public final removeUser(I)V
    .registers 4

    .line 2174
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2175
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2176
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_11

    .line 2177
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationController()Lcom/android/server/accessibility/magnification/MagnificationController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->onUserRemoved(I)V

    return-void

    :catchall_11
    move-exception p0

    .line 2176
    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public requestDelegating(I)V
    .registers 4

    .line 7254
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda38;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda38;-><init>()V

    .line 7256
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 7255
    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 7254
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final requestDelegatingInternal(I)V
    .registers 4

    .line 7260
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7261
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v1, :cond_e

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz p0, :cond_e

    .line 7262
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->requestDelegating(I)V

    .line 7264
    :cond_e
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public requestDragging(II)V
    .registers 5

    .line 7240
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda26;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda26;-><init>()V

    .line 7241
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 7240
    invoke-static {v1, p0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final requestDraggingInternal(II)V
    .registers 5

    .line 7245
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7246
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v1, :cond_e

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz p0, :cond_e

    .line 7247
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->requestDragging(II)V

    .line 7249
    :cond_e
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public requestImeLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V
    .registers 4

    .line 7294
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda52;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda52;-><init>()V

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 7296
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda53;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda53;-><init>()V

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public requestTouchExploration(I)V
    .registers 4

    .line 7226
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda33;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda33;-><init>()V

    .line 7227
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 7226
    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final requestTouchExplorationInternal(I)V
    .registers 4

    .line 7231
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7232
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v1, :cond_e

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz p0, :cond_e

    .line 7233
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->requestTouchExploration(I)V

    .line 7235
    :cond_e
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public restoreAccessibilityButtonTargetsLocked(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 2207
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 2208
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda9;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->readColonDelimitedStringToSet(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/Set;Z)V

    .line 2210
    new-instance p1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda10;

    invoke-direct {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda10;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, p2, p1, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readColonDelimitedStringToSet(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/Set;Z)V

    .line 2213
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p1

    .line 2214
    iget-object p2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityButtonTargets:Ljava/util/LinkedHashSet;

    invoke-virtual {p2}, Ljava/util/LinkedHashSet;->clear()V

    .line 2215
    iget-object p2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityButtonTargets:Ljava/util/LinkedHashSet;

    invoke-virtual {p2, v0}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 2216
    iget-object p2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityButtonTargets:Ljava/util/LinkedHashSet;

    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "accessibility_button_targets"

    invoke-virtual {p0, v1, v2, p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistColonDelimitedSetToSettingLocked(Ljava/lang/String;ILjava/util/Set;Ljava/util/function/Function;)V

    .line 2219
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 2220
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    return-void
.end method

.method public restoreEnabledAccessibilityServicesLocked(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 2184
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readComponentNamesFromStringLocked(Ljava/lang/String;Ljava/util/Set;Z)V

    .line 2185
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->readComponentNamesFromStringLocked(Ljava/lang/String;Ljava/util/Set;Z)V

    .line 2187
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p1

    .line 2188
    iget-object p2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->clear()V

    .line 2189
    iget-object p2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2190
    iget-object p2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    const-string v0, "enabled_accessibility_services"

    invoke-virtual {p0, v0, p2, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V

    .line 2194
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    const/4 p2, 0x0

    .line 2195
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->migrateAccessibilityButtonSettingsIfNecessaryLocked(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/lang/String;I)V

    return-void
.end method

.method public final restoreLegacyDisplayMagnificationNavBarIfNeededLocked(Ljava/lang/String;I)V
    .registers 7

    const/16 v0, 0x1e

    if-lt p2, v0, :cond_5

    return-void

    .line 1294
    :cond_5
    :try_start_5
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_9} :catch_47

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    goto :goto_f

    :cond_e
    move v0, p2

    .line 1300
    :goto_f
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p1

    .line 1301
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    .line 1302
    iget v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda13;

    invoke-direct {v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda13;-><init>()V

    const-string v3, "accessibility_button_targets"

    invoke-virtual {p0, v3, v1, v2, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->readColonDelimitedSettingToSet(Ljava/lang/String;ILjava/util/function/Function;Ljava/util/Set;)V

    const-string v1, "com.android.server.accessibility.MagnificationController"

    .line 1304
    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v0, :cond_2d

    return-void

    :cond_2d
    if-eqz v0, :cond_33

    .line 1311
    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 1313
    :cond_33
    invoke-interface {p2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1315
    :goto_36
    iget v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda14;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda14;-><init>()V

    invoke-virtual {p0, v3, v0, p2, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistColonDelimitedSetToSettingLocked(Ljava/lang/String;ILjava/util/Set;Ljava/util/function/Function;)V

    .line 1317
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityButtonTargetsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    .line 1318
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    return-void

    :catch_47
    move-exception p0

    .line 1296
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "number format is incorrect"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AccessibilityManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public scheduleBindInput()V
    .registers 3

    .line 7363
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda19;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda19;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public scheduleCreateImeSession(Landroid/util/ArraySet;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 7431
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 7

    .line 2843
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateRecommendedUiTimeoutLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 2844
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda30;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda30;-><init>()V

    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    .line 2846
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getRecommendedTimeoutMillisLocked(Lcom/android/server/accessibility/AccessibilityUserState;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 2844
    invoke-static {v1, p0, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final scheduleNotifyMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 2260
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2261
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p0

    .line 2262
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_f
    if-ltz v1, :cond_25

    .line 2263
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 2264
    iget-boolean v4, v3, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestTouchExplorationMode:Z

    if-eqz v4, :cond_22

    .line 2265
    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->notifyMotionEvent(Landroid/view/MotionEvent;)V

    .line 2266
    monitor-exit v0

    return v2

    :cond_22
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 2269
    :cond_25
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public final scheduleNotifyTouchState(II)Z
    .registers 8

    .line 2274
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2275
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p0

    .line 2276
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_f
    if-ltz v1, :cond_25

    .line 2277
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 2278
    iget-boolean v4, v3, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestTouchExplorationMode:Z

    if-eqz v4, :cond_22

    .line 2279
    invoke-virtual {v3, p1, p2}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->notifyTouchState(II)V

    .line 2280
    monitor-exit v0

    return v2

    :cond_22
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 2283
    :cond_25
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public scheduleSetImeSessionEnabled(Landroid/util/SparseArray;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;",
            ">;Z)V"
        }
    .end annotation

    .line 7456
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda51;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda51;-><init>()V

    .line 7457
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 7456
    invoke-static {v1, p0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public scheduleStartInput(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 6

    .line 7405
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda43;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda43;-><init>()V

    .line 7406
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 7405
    invoke-static {v1, p0, p1, p2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public scheduleUnbindInput()V
    .registers 3

    .line 7384
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda22;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda22;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public scheduleUpdateClientsIfNeeded(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 3

    .line 2805
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2806
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleUpdateClientsIfNeededLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 2807
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public scheduleUpdateClientsIfNeededLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 5

    .line 2811
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getClientStateLocked(Lcom/android/server/accessibility/AccessibilityUserState;)I

    move-result v0

    .line 2812
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getLastSentClientStateLocked()I

    move-result v1

    if-eq v1, v0, :cond_35

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    .line 2813
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-gtz v1, :cond_1a

    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    .line 2814
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-lez v1, :cond_35

    .line 2815
    :cond_1a
    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->setLastSentClientStateLocked(I)V

    .line 2816
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda57;

    invoke-direct {v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda57;-><init>()V

    .line 2818
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 2816
    invoke-static {v2, p0, v0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_35
    return-void
.end method

.method public final scheduleUpdateFingerprintGestureHandling(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 4

    .line 2871
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda18;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda18;-><init>()V

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final scheduleUpdateInputFilter(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 4

    .line 2866
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda37;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda37;-><init>()V

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public semCheckMdnieColorBlind([I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 5981
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->cvdCalculator:Lcom/android/server/accessibility/CVDCalculator;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/CVDCalculator;->setNum([I)Z

    move-result p1

    if-eqz p1, :cond_72

    .line 5984
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->cvdCalculator:Lcom/android/server/accessibility/CVDCalculator;

    invoke-virtual {p1}, Lcom/android/server/accessibility/CVDCalculator;->calculate()V

    .line 5985
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->cvdCalculator:Lcom/android/server/accessibility/CVDCalculator;

    invoke-virtual {p1}, Lcom/android/server/accessibility/CVDCalculator;->getCVDType()I

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCVDType:I

    .line 5986
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->cvdCalculator:Lcom/android/server/accessibility/CVDCalculator;

    invoke-virtual {p1}, Lcom/android/server/accessibility/CVDCalculator;->getCVDSeverity()D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCVDSeverity:F

    const/high16 p1, 0x3f000000    # 0.5f

    .line 5989
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCVDType:I

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    const-string v3, "color_blind_cvdtype"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 5990
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCVDSeverity:F

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    const-string v3, "color_blind_cvdseverity"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 5991
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const-string v2, "color_blind_user_parameter"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 5993
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 5994
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    const-string v1, "color_blind_test"

    const/4 v2, 0x1

    .line 5993
    invoke-static {p1, v1, v2, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_6c

    .line 5995
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCVDType:I

    const/4 p1, 0x3

    if-eq p0, p1, :cond_6a

    goto :goto_6b

    :cond_6a
    const/4 v2, 0x0

    :goto_6b
    return v2

    .line 5997
    :cond_6c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    .line 5982
    :cond_72
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public semDisableMdnieColorFilter()Z
    .registers 5

    const-string v0, "AccessibilityManagerService"

    const-string/jumbo v1, "semDisableMdnieColorFilter "

    .line 6047
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6048
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    const-string v2, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string/jumbo v3, "semDisableMdnieColorFilter"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6049
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "mDNIe"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/hardware/display/SemMdnieManager;

    const/4 v1, 0x0

    if-nez p0, :cond_26

    const-string p0, "SemMdnieManager is null."

    .line 6051
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 6054
    :cond_26
    invoke-virtual {p0, v1, v1, v1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setColorVision(ZII)Z

    move-result p0

    return p0
.end method

.method public final semDisableScreenNotificationEffect()Z
    .registers 4

    .line 6085
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    const-string v1, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string/jumbo v2, "semDisableScreenNotificationEffect"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6086
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "mDNIe"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/display/SemMdnieManager;

    const/4 v1, 0x0

    if-nez v0, :cond_20

    const-string p0, "AccessibilityManagerService"

    const-string v0, "SemMdnieManager is null."

    .line 6088
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 6091
    :cond_20
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurtainModeIsRunning:Z

    if-eqz p0, :cond_25

    return v1

    .line 6094
    :cond_25
    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setLightNotificationMode(Z)Z

    move-result p0

    return p0
.end method

.method public semDisableWindowMagnification()V
    .registers 3

    .line 7675
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->disableWindowMagnification(IZ)Z

    return-void
.end method

.method public semDumpCallStack(Ljava/lang/String;)V
    .registers 4

    .line 6986
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCallStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_10

    .line 6987
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCallStack:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6990
    :cond_10
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCallStack:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public semEnableMdnieColorFilter(II)Z
    .registers 7

    .line 6030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semEnableMdnieColorFilter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccessibilityManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6031
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    const-string v2, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string/jumbo v3, "semEnableMdnieColorFilter"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6032
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "mDNIe"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/hardware/display/SemMdnieManager;

    if-nez p0, :cond_3d

    const-string p0, "SemMdnieManager is null."

    .line 6034
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_3d
    const/4 v0, 0x1

    .line 6037
    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setColorVision(ZII)Z

    move-result p0

    return p0
.end method

.method public final semEnableScreenNotificationEffect()Z
    .registers 4

    .line 6066
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    const-string v1, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string/jumbo v2, "semEnableScreenNotificationEffect"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6067
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "mDNIe"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/display/SemMdnieManager;

    const/4 v1, 0x0

    if-nez v0, :cond_20

    const-string p0, "AccessibilityManagerService"

    const-string v0, "SemMdnieManager is null."

    .line 6069
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 6072
    :cond_20
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurtainModeIsRunning:Z

    if-eqz p0, :cond_25

    return v1

    :cond_25
    const/4 p0, 0x1

    .line 6075
    invoke-virtual {v0, p0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setLightNotificationMode(Z)Z

    move-result p0

    return p0
.end method

.method public semEnableWindowMagnification(II)V
    .registers 8

    .line 7653
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->getConnectionState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DISCONNECTED"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    .line 7654
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->requestConnection(Z)Z

    .line 7656
    :cond_18
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 7657
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    const-string v3, "accessibility_magnification_mode"

    const/4 v4, -0x2

    .line 7656
    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 7661
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "accessibility_am_magnification_mode"

    invoke-static {v0, v2, v1, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 7664
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_scale"

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    cmpg-float v1, v0, v2

    if-gez v1, :cond_43

    goto :goto_44

    :cond_43
    move v2, v0

    .line 7671
    :goto_44
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object p0

    const/4 v0, 0x0

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {p0, v0, v2, p1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->enableWindowMagnification(IFFF)Z

    return-void
.end method

.method public semGetWindowMagnificationBounds()Landroid/graphics/Rect;
    .registers 2

    .line 7645
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->getBounds(I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public semGetWindowMagnificationScale()F
    .registers 2

    .line 7649
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->getScale(I)F

    move-result p0

    return p0
.end method

.method public semIsAccessibilityButtonShown()Z
    .registers 2

    .line 6997
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->semIsAccessibilityButtonShown(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p0

    return p0
.end method

.method public final semIsAccessibilityButtonShown(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 4

    .line 7002
    iget-object p0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    :goto_8
    if-ltz p0, :cond_1a

    .line 7003
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 7004
    iget-boolean v1, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    if-eqz v1, :cond_17

    return v0

    :cond_17
    add-int/lit8 p0, p0, -0x1

    goto :goto_8

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public semIsAccessibilityServiceEnabled(I)Z
    .registers 12

    const-string v0, "AccessibilityManagerService"

    const-string/jumbo v1, "semIsAccessibilityServiceEnabled()"

    .line 5723
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v1, p1, 0x10

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_10

    move v1, v3

    goto :goto_11

    :cond_10
    move v1, v2

    :goto_11
    and-int/lit8 v4, p1, 0x20

    if-eqz v4, :cond_17

    move v4, v3

    goto :goto_18

    :cond_17
    move v4, v2

    :goto_18
    and-int/lit8 v5, p1, 0x40

    if-eqz v5, :cond_1e

    move v5, v3

    goto :goto_1f

    :cond_1e
    move v5, v2

    :goto_1f
    and-int/lit16 v6, p1, 0x800

    if-eqz v6, :cond_25

    move v6, v3

    goto :goto_26

    :cond_25
    move v6, v2

    :goto_26
    and-int/lit16 v7, p1, 0x1000

    if-eqz v7, :cond_2c

    move v7, v3

    goto :goto_2d

    :cond_2c
    move v7, v2

    :goto_2d
    and-int/lit16 p1, p1, 0x2000

    if-eqz p1, :cond_33

    move p1, v3

    goto :goto_34

    :cond_33
    move p1, v2

    .line 5731
    :goto_34
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    const-string v9, "enabled_accessibility_services"

    invoke-static {v8, v9, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4a

    const-string p0, "accesibilityService is null"

    .line 5734
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4a
    if-eqz v1, :cond_55

    const-string v0, "(?i).*com.google.android.marvin.talkback.TalkBackService.*"

    .line 5737
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    return v3

    :cond_55
    if-eqz v4, :cond_60

    const-string v0, "(?i).*com.samsung.android.accessibility.talkback/com.samsung.android.marvin.talkback.TalkBackService.*"

    .line 5740
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_60

    return v3

    :cond_60
    if-eqz v5, :cond_6b

    const-string v0, "(?i).*com.samsung.accessibility/com.samsung.accessibility.universalswitch.UniversalSwitchService.*"

    .line 5743
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6b

    return v3

    :cond_6b
    if-eqz v6, :cond_76

    const-string v0, "(?i).*com.google.android.accessibility.accessibilitymenu.AccessibilityMenuService.*"

    .line 5748
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_76

    return v3

    :cond_76
    if-eqz v7, :cond_81

    const-string v0, "(?i).*com.google.android.accessibility.selecttospeak.SelectToSpeakService.*"

    .line 5751
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_81

    return v3

    :cond_81
    if-eqz p1, :cond_8c

    const-string p1, "(?i).*com.samsung.accessibility/com.samsung.accessibility.assistantmenu.serviceframework.AssistantMenuService.*"

    .line 5755
    invoke-virtual {p0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8c

    return v3

    :cond_8c
    return v2
.end method

.method public semIsDarkScreenMode()Z
    .registers 4

    .line 6271
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    const-string v1, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string/jumbo v2, "semIsDarkScreenMode"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6272
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->isScreenReaderEnabled()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 p0, 0x0

    return p0

    .line 6275
    :cond_12
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurtainModeIsRunning:Z

    return p0
.end method

.method public semIsWindowMagnificationEnabled()Z
    .registers 2

    .line 7683
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->isWindowMagnifierEnabled(I)Z

    move-result p0

    return p0
.end method

.method public semLockNow()V
    .registers 3

    const-string/jumbo v0, "window"

    .line 6340
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 6341
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    .line 6342
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V

    .line 6343
    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 6344
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    const/4 p0, -0x1

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V

    return-void
.end method

.method public semMoveWindowMagnification(FF)V
    .registers 4

    .line 7679
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->moveWindowMagnification(IFF)V

    return-void
.end method

.method public semOnLightNotification(Ljava/lang/String;)Z
    .registers 7

    .line 6862
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "flash_notification"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    move v0, v1

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    sput-boolean v0, Lcom/android/server/accessibility/AccessibilityManagerService;->isLightFlashNotiEnabled:Z

    .line 6864
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "screen_notification"

    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_27

    move v0, v1

    goto :goto_28

    :cond_27
    move v0, v2

    :goto_28
    sput-boolean v0, Lcom/android/server/accessibility/AccessibilityManagerService;->isScreenFlashNotiEnabled:Z

    .line 6867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "semOnLightNotification("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), bIsTorchOn : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/accessibility/AccessibilityManagerService;->bIsTorchOn:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isLightFlashNotiEnabled :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/accessibility/AccessibilityManagerService;->isLightFlashNotiEnabled:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isScreenFlashNotiEnabled : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/accessibility/AccessibilityManagerService;->isScreenFlashNotiEnabled:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AccessibilityManagerService"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6869
    sget-boolean v0, Lcom/android/server/accessibility/AccessibilityManagerService;->isLightFlashNotiEnabled:Z

    if-nez v0, :cond_6d

    sget-boolean v0, Lcom/android/server/accessibility/AccessibilityManagerService;->isScreenFlashNotiEnabled:Z

    if-nez v0, :cond_6d

    const-string p0, "Can\'t use light notification"

    .line 6870
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 6874
    :cond_6d
    sget-boolean v0, Lcom/android/server/accessibility/AccessibilityManagerService;->bIsFlashOn:Z

    if-nez v0, :cond_de

    sget-boolean v0, Lcom/android/server/accessibility/AccessibilityManagerService;->bIsScreenOn:Z

    if-eqz v0, :cond_76

    goto :goto_de

    :cond_76
    if-eqz p1, :cond_9d

    const-string v0, "call"

    .line 6879
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_88

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 6880
    :cond_88
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not support light notification type is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 6884
    :cond_9d
    sput-boolean v1, Lcom/android/server/accessibility/AccessibilityManagerService;->bIsScreenOn:Z

    sput-boolean v1, Lcom/android/server/accessibility/AccessibilityManagerService;->bIsFlashOn:Z

    .line 6885
    sget-boolean p1, Lcom/android/server/accessibility/AccessibilityManagerService;->isLightFlashNotiEnabled:Z

    if-eqz p1, :cond_cc

    .line 6887
    sget-boolean p1, Lcom/android/server/accessibility/AccessibilityManagerService;->bIsTorchOn:Z

    if-eqz p1, :cond_c3

    .line 6888
    sput-boolean v2, Lcom/android/server/accessibility/AccessibilityManagerService;->bIsFlashOn:Z

    .line 6889
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "ignore camera light blinking while camera flash is working, bIsTorchOn: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/accessibility/AccessibilityManagerService;->bIsTorchOn:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ce

    .line 6891
    :cond_c3
    new-instance p1, Lcom/android/server/accessibility/AccessibilityManagerService$9;

    invoke-direct {p1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$9;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto :goto_ce

    .line 6913
    :cond_cc
    sput-boolean v2, Lcom/android/server/accessibility/AccessibilityManagerService;->bIsFlashOn:Z

    .line 6916
    :goto_ce
    sget-boolean p1, Lcom/android/server/accessibility/AccessibilityManagerService;->isScreenFlashNotiEnabled:Z

    if-eqz p1, :cond_db

    .line 6917
    new-instance p1, Lcom/android/server/accessibility/AccessibilityManagerService$10;

    invoke-direct {p1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$10;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto :goto_dd

    .line 6934
    :cond_db
    sput-boolean v2, Lcom/android/server/accessibility/AccessibilityManagerService;->bIsScreenOn:Z

    :goto_dd
    return v1

    .line 6875
    :cond_de
    :goto_de
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "ignore new flash noti while current one is working, bIsFlashOn: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/android/server/accessibility/AccessibilityManagerService;->bIsFlashOn:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", bIsScreenOn: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/android/server/accessibility/AccessibilityManagerService;->bIsScreenOn:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public semOpenDeviceOptions()V
    .registers 1

    .line 6469
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerInternal;->showGlobalActions()V

    return-void
.end method

.method public semPerformAccessibilityButtonClick(IILjava/lang/String;)V
    .registers 6

    const-string v0, "com.android.server.accessibility.MagnificationController"

    .line 4105
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 4107
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationController()Lcom/android/server/accessibility/magnification/MagnificationController;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object p3

    .line 4108
    invoke-virtual {p3, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isMagnifying(I)Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    .line 4109
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/accessibility/AccessibilityShortcutController;->MAGNIFICATION_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-static {v0, v1, p2, p3}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityShortcutActivated(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    .line 4111
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendAccessibilityButtonToInputFilter(I)V

    return-void

    .line 4114
    :cond_21
    invoke-static {p3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_3e

    .line 4116
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Perform shortcut failed, invalid target name:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AccessibilityManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4120
    :cond_3e
    invoke-virtual {p0, v0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->performAccessibilityFrameworkFeature(Landroid/content/ComponentName;I)Z

    move-result p3

    if-eqz p3, :cond_45

    return-void

    .line 4124
    :cond_45
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->performAccessibilityShortcutTargetActivity(ILandroid/content/ComponentName;)Z

    move-result p3

    if-eqz p3, :cond_51

    .line 4125
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0, v0, p2}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityShortcutActivated(Landroid/content/Context;Landroid/content/ComponentName;I)V

    return-void

    .line 4129
    :cond_51
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->performAccessibilityShortcutTargetService(IILandroid/content/ComponentName;)Z

    return-void
.end method

.method public semRegisterAssistantMenu(Landroid/os/IBinder;)V
    .registers 4

    const-string v0, "AccessibilityManagerService"

    const-string/jumbo v1, "semRegisterAssistantMenu Set the listener from AMS"

    .line 6435
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_12

    .line 6437
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mAssistantMenuMsgnr:Landroid/os/Messenger;

    goto :goto_15

    :cond_12
    const/4 p1, 0x0

    .line 6439
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mAssistantMenuMsgnr:Landroid/os/Messenger;

    :goto_15
    return-void
.end method

.method public final semRemoveFlashNotiLocked(Ljava/lang/String;)Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;
    .registers 5

    .line 6743
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mFlashNotifications:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 6744
    :cond_7
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 6745
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    if-eqz v1, :cond_7

    .line 6746
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->-$$Nest$fgetmPkgName(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 6747
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 6748
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->unlinkFlashNoti(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)V

    .line 6749
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "semRemoveFlashNotiLocked() pkgName="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->-$$Nest$fgetmPkgName(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AccessibilityManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 6754
    :cond_41
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    if-eqz v0, :cond_57

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->-$$Nest$fgetmPkgName(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_57

    .line 6755
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->unlinkFlashNoti(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)V

    .line 6756
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    return-object p0

    :cond_57
    const/4 p0, 0x0

    return-object p0
.end method

.method public semSetColorBlind(ZF)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5933
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "mDNIe"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/display/SemMdnieManager;

    const-string v1, "AccessibilityManagerService"

    const/4 v2, 0x0

    if-nez v0, :cond_16

    const-string p0, "SemMdnieManager is null."

    .line 5935
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 5938
    :cond_16
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    const-string v6, "color_adjustment_type"

    invoke-static {v3, v6, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 5939
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    const-string v6, "color_blind_test"

    invoke-static {v4, v6, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 5940
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "semSetColorBlind "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", userParameter : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", colorAdjustmentType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x4

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-eq v3, v5, :cond_63

    if-ne v3, v6, :cond_9b

    :cond_63
    if-ne v4, v7, :cond_9b

    .line 5943
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    const-string v4, "color_blind_cvdtype"

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCVDType:I

    .line 5944
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    const-string v4, "color_blind_cvdseverity"

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCVDSeverity:F

    .line 5947
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->cvdCalculator:Lcom/android/server/accessibility/CVDCalculator;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCVDType:I

    float-to-double v5, v1

    float-to-double v7, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/accessibility/CVDCalculator;->getRGBCMY(IIDD)[I

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setmDNIeColorBlind(Z[I)Z

    move-result p0

    return p0

    :cond_9b
    if-eqz v3, :cond_d7

    if-ne v3, v6, :cond_a0

    goto :goto_d7

    :cond_a0
    add-int/lit8 p2, v3, -0x1

    .line 5956
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCustomIntensityFromSettings(I)I

    move-result v4

    .line 5957
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "semSetColorBlind custom intensity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5959
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->cvdCalculator:Lcom/android/server/accessibility/CVDCalculator;

    invoke-virtual {v1, v4, v3}, Lcom/android/server/accessibility/CVDCalculator;->getPredefinedServerityAndUserParameter(II)[D

    move-result-object v1

    if-nez v1, :cond_c4

    return v2

    .line 5966
    :cond_c4
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->cvdCalculator:Lcom/android/server/accessibility/CVDCalculator;

    const/4 v3, 0x0

    aget-wide v4, v1, v2

    aget-wide v6, v1, v7

    move-object v1, p0

    move v2, v3

    move v3, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accessibility/CVDCalculator;->getRGBCMY(IIDD)[I

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setmDNIeColorBlind(Z[I)Z

    move-result p0

    return p0

    :cond_d7
    :goto_d7
    const-string/jumbo p0, "semSetColorBlind do nothing "

    .line 5953
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public semSetMdnieAccessibilityMode(IZ)Z
    .registers 5

    .line 6012
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semSetMdnieAccessibilityMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccessibilityManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6013
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "mDNIe"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/hardware/display/SemMdnieManager;

    if-nez p0, :cond_33

    const-string p0, "SemMdnieManager is null."

    .line 6015
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 6018
    :cond_33
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setmDNIeAccessibilityMode(IZ)Z

    move-result p0

    return p0
.end method

.method public semSetTwoFingerGestureRecognitionEnabled(Z)V
    .registers 2

    .line 6485
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->shouldRecogniseTwoFingerGestures:Z

    return-void
.end method

.method public final semStartFlashNotiLocked(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)V
    .registers 4

    .line 6781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semStartFlashNotiLocked() type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->-$$Nest$fgetmType(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pkgName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->-$$Nest$fgetmPkgName(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccessibilityManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6782
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    .line 6783
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread-IA;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mThread:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;

    .line 6784
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mThread:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public semStartFlashNotification(Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;)Z
    .registers 18

    move-object v8, p0

    const-string v9, "AccessibilityManagerService"

    const-string/jumbo v0, "semStartFlashNotification"

    .line 6644
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6647
    iget-object v0, v8, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "flash_notification"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v10, 0x1

    if-eqz v0, :cond_1c

    move v0, v10

    goto :goto_1d

    :cond_1c
    move v0, v2

    :goto_1d
    sput-boolean v0, Lcom/android/server/accessibility/AccessibilityManagerService;->isLightFlashNotiEnabled:Z

    .line 6649
    iget-object v0, v8, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_notification"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_30

    move v0, v10

    goto :goto_31

    :cond_30
    move v0, v2

    :goto_31
    sput-boolean v0, Lcom/android/server/accessibility/AccessibilityManagerService;->isScreenFlashNotiEnabled:Z

    .line 6651
    iget-object v0, v8, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "flash_notification_preview_mode"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    move/from16 v3, p3

    if-ne v3, v10, :cond_6d

    .line 6654
    sget-boolean v0, Lcom/android/server/accessibility/AccessibilityManagerService;->isScreenFlashNotiEnabled:Z

    if-eqz v0, :cond_6d

    .line 6655
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v11

    const/16 v0, 0x10

    .line 6656
    iput v0, v11, Landroid/os/Message;->what:I

    .line 6657
    new-instance v12, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    const/4 v7, 0x0

    move-object v0, v12

    move-object v1, p0

    move-object v2, p2

    move/from16 v3, p3

    move-object v4, p1

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ILcom/android/server/accessibility/AccessibilityManagerService$FlashNoti-IA;)V

    iput-object v12, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6658
    iget-object v0, v8, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v11, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string/jumbo v0, "semStartFlashNotification() give some delay for flash noti"

    .line 6659
    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    :cond_6d
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move v5, v6

    .line 6661
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->semStartFlashNotificationInner(Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;I)Z

    move-result v10

    :goto_79
    return v10
.end method

.method public final semStartFlashNotificationInner(Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;I)Z
    .registers 21

    move-object v9, p0

    move-object/from16 v0, p2

    move/from16 v10, p3

    const-string v1, "AccessibilityManagerService"

    .line 6667
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "semStartFlashNotificationInner() type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x1

    if-ne v10, v11, :cond_18

    const-string v3, "Default"

    goto :goto_1a

    :cond_18
    const-string v3, "Sequence"

    :goto_1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", pkgName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p1

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", sbnPkgName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p4

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", previewType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p5

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6672
    sget-boolean v1, Lcom/android/server/accessibility/AccessibilityManagerService;->isLightFlashNotiEnabled:Z

    const/4 v13, 0x0

    if-nez v1, :cond_5b

    sget-boolean v1, Lcom/android/server/accessibility/AccessibilityManagerService;->isScreenFlashNotiEnabled:Z

    if-nez v1, :cond_5b

    const-string v0, "AccessibilityManagerService"

    const-string v1, "Can not use light notification"

    .line 6673
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v13

    .line 6677
    :cond_5b
    new-instance v14, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    const/4 v8, 0x0

    move-object v1, v14

    move-object v2, p0

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p1

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ILcom/android/server/accessibility/AccessibilityManagerService$FlashNoti-IA;)V

    .line 6680
    :try_start_6d
    invoke-interface {v0, v14, v13}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_6d .. :try_end_70} :catch_ef

    .line 6685
    iget-object v0, v9, Lcom/android/server/accessibility/AccessibilityManagerService;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-nez v0, :cond_80

    .line 6686
    iget-object v0, v9, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, v9, Lcom/android/server/accessibility/AccessibilityManagerService;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 6689
    :cond_80
    iget-object v0, v9, Lcom/android/server/accessibility/AccessibilityManagerService;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v0, :cond_aa

    iget-object v0, v9, Lcom/android/server/accessibility/AccessibilityManagerService;->mCameraId:Ljava/lang/String;

    if-nez v0, :cond_aa

    .line 6691
    :try_start_88
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCameraId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/accessibility/AccessibilityManagerService;->mCameraId:Ljava/lang/String;
    :try_end_8e
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_88 .. :try_end_8e} :catch_8f

    goto :goto_aa

    :catch_8f
    move-exception v0

    const-string v1, "AccessibilityManagerService"

    .line 6693
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CameraAccessException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6697
    :cond_aa
    :goto_aa
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 6699
    :try_start_ae
    iget-object v3, v9, Lcom/android/server/accessibility/AccessibilityManagerService;->mFlashNotifications:Ljava/util/LinkedList;

    monitor-enter v3
    :try_end_b1
    .catchall {:try_start_ae .. :try_end_b1} :catchall_ea

    if-ne v10, v11, :cond_c5

    .line 6701
    :try_start_b3
    iget-object v0, v9, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    if-eqz v0, :cond_bf

    const-string v0, "AccessibilityManagerService"

    const-string v4, "Default type of flash noti can not work because previous flash noti is working"

    .line 6702
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e2

    .line 6705
    :cond_bf
    invoke-virtual {p0, v14}, Lcom/android/server/accessibility/AccessibilityManagerService;->semStartFlashNotiLocked(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)V

    goto :goto_e3

    :catchall_c3
    move-exception v0

    goto :goto_e8

    :cond_c5
    const/4 v0, 0x2

    if-ne v10, v0, :cond_db

    .line 6708
    iget-object v0, v9, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    if-eqz v0, :cond_d2

    .line 6709
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->semRemoveFlashNotiLocked(Ljava/lang/String;)Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    .line 6710
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->semStopFlashNotiLocked()V

    .line 6712
    :cond_d2
    iget-object v0, v9, Lcom/android/server/accessibility/AccessibilityManagerService;->mFlashNotifications:Ljava/util/LinkedList;

    invoke-virtual {v0, v14}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 6713
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->semStartNextFlashNotiLocked()V

    goto :goto_e3

    :cond_db
    const-string v0, "AccessibilityManagerService"

    const-string v4, "Unavailable Flash Notification Type"

    .line 6716
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e2
    move v11, v13

    .line 6718
    :goto_e3
    monitor-exit v3
    :try_end_e4
    .catchall {:try_start_b3 .. :try_end_e4} :catchall_c3

    .line 6720
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v11

    .line 6718
    :goto_e8
    :try_start_e8
    monitor-exit v3
    :try_end_e9
    .catchall {:try_start_e8 .. :try_end_e9} :catchall_c3

    :try_start_e9
    throw v0
    :try_end_ea
    .catchall {:try_start_e9 .. :try_end_ea} :catchall_ea

    :catchall_ea
    move-exception v0

    .line 6720
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6721
    throw v0

    :catch_ef
    return v13
.end method

.method public final semStartNextFlashNotiLocked()V
    .registers 3

    const-string v0, "AccessibilityManagerService"

    const-string/jumbo v1, "semStartNextFlashNotiLocked()"

    .line 6772
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6773
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mFlashNotifications:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gtz v0, :cond_14

    const/4 v0, 0x0

    .line 6774
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    return-void

    .line 6777
    :cond_14
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mFlashNotifications:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->semStartFlashNotiLocked(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)V

    return-void
.end method

.method public final semStopFlashNotiLocked()V
    .registers 3

    .line 6762
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mThread:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;

    if-eqz v0, :cond_2d

    .line 6763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semStopFlashNotiLocked() pkgName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mThread:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->-$$Nest$fgetmFlashNoti(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;)Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->-$$Nest$fgetmPkgName(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccessibilityManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6764
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mThread:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;->cancel()V

    const/4 v0, 0x0

    .line 6765
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mThread:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNotiThread;

    .line 6767
    :cond_2d
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->doCameraFlashNotiOff()V

    .line 6768
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->doScreenFlashNotiOff()V

    return-void
.end method

.method public semStopFlashNotification(Ljava/lang/String;)Z
    .registers 6

    const-string v0, "AccessibilityManagerService"

    .line 6726
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semStopFlashNotification() pkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6727
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6729
    :try_start_1b
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mFlashNotifications:Ljava/util/LinkedList;

    monitor-enter v2
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_37

    .line 6730
    :try_start_1e
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->semRemoveFlashNotiLocked(Ljava/lang/String;)Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    move-result-object p1

    .line 6731
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentFlashNoti:Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    if-eqz v3, :cond_2e

    if-ne p1, v3, :cond_2e

    .line 6732
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->semStopFlashNotiLocked()V

    .line 6733
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->semStartNextFlashNotiLocked()V

    .line 6735
    :cond_2e
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_1e .. :try_end_2f} :catchall_34

    .line 6737
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_34
    move-exception p0

    .line 6735
    :try_start_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    :try_start_36
    throw p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_37

    :catchall_37
    move-exception p0

    .line 6737
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6738
    throw p0
.end method

.method public semToggleDarkScreenMode()V
    .registers 7

    .line 6285
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    const-string v1, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string/jumbo v2, "semToggleDarkScreenMode"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AccessibilityManagerService"

    const-string/jumbo v1, "semToggleDarkScreenMode()"

    .line 6286
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6287
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->isScreenReaderEnabled()Z

    move-result v1

    if-nez v1, :cond_1d

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurtainModeIsRunning:Z

    if-nez v1, :cond_1d

    return-void

    .line 6290
    :cond_1d
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurtainModeIsRunning:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurtainModeIsRunning:Z

    .line 6292
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const v3, 0x1040bfc

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 6294
    iget-boolean v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurtainModeIsRunning:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_3f

    .line 6295
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const v5, 0x1040bfb

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v4

    invoke-virtual {v3, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4c

    .line 6297
    :cond_3f
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const v5, 0x1040bfa

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v4

    invoke-virtual {v3, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 6300
    :goto_4c
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->darkScreenWarning(Ljava/lang/String;)V

    .line 6301
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "mDNIe"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/display/SemMdnieManager;

    const-string v1, "For LCD model"

    .line 6331
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6332
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 6333
    invoke-virtual {p0}, Landroid/os/PowerManager;->switchForceLcdBacklightOffState()V

    return-void
.end method

.method public semTurnOffAccessibilityService(I)V
    .registers 12

    const-string v0, "AccessibilityManagerService"

    const-string/jumbo v1, "semTurnOffAccessibilityService()"

    .line 5767
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5769
    new-instance v1, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v2, 0x3a

    invoke-direct {v1, v2}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 5770
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    const-string v5, "enabled_accessibility_services"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_25

    const-string p0, "enabledServicesSetting is null"

    .line 5773
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5777
    :cond_25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 5780
    invoke-virtual {v1, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 5781
    :cond_2d
    :goto_2d
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 5782
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    .line 5783
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 5785
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_41
    and-int/lit8 v1, p1, 0x10

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_49

    move v1, v3

    goto :goto_4a

    :cond_49
    move v1, v4

    :goto_4a
    and-int/lit8 v6, p1, 0x20

    if-eqz v6, :cond_50

    move v6, v3

    goto :goto_51

    :cond_50
    move v6, v4

    :goto_51
    and-int/lit8 v7, p1, 0x40

    if-eqz v7, :cond_57

    move v7, v3

    goto :goto_58

    :cond_57
    move v7, v4

    :goto_58
    and-int/lit16 v8, p1, 0x800

    if-eqz v8, :cond_5e

    move v8, v3

    goto :goto_5f

    :cond_5e
    move v8, v4

    :goto_5f
    and-int/lit16 v9, p1, 0x1000

    if-eqz v9, :cond_65

    move v9, v3

    goto :goto_66

    :cond_65
    move v9, v4

    :goto_66
    and-int/lit16 p1, p1, 0x2000

    if-eqz p1, :cond_6c

    move p1, v3

    goto :goto_6d

    :cond_6c
    move p1, v4

    :goto_6d
    if-eqz v1, :cond_78

    const-string v1, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    .line 5798
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 5799
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_78
    if-eqz v6, :cond_83

    const-string v1, "com.samsung.android.accessibility.talkback/com.samsung.android.marvin.talkback.TalkBackService"

    .line 5802
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 5803
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_83
    if-eqz v7, :cond_8e

    const-string v1, "com.samsung.accessibility/com.samsung.accessibility.universalswitch.UniversalSwitchService"

    .line 5806
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 5807
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_8e
    if-eqz v8, :cond_99

    const-string v1, "com.google.android.marvin.talkback/com.google.android.accessibility.accessibilitymenu.AccessibilityMenuService"

    .line 5811
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 5812
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_99
    if-eqz v9, :cond_a4

    const-string v1, "com.google.android.marvin.talkback/com.google.android.accessibility.selecttospeak.SelectToSpeakService"

    .line 5816
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 5817
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_a4
    if-eqz p1, :cond_af

    const-string p1, "com.samsung.accessibility/com.samsung.accessibility.assistantmenu.serviceframework.AssistantMenuService"

    .line 5821
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 5822
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 5825
    :cond_af
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5826
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_cf

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 5827
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5828
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b8

    .line 5830
    :cond_cf
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_d9

    sub-int/2addr v1, v3

    .line 5832
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 5834
    :cond_d9
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5835
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-static {v1, v5, p1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 5836
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_fb

    .line 5837
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    const-string v0, "accessibility_enabled"

    invoke-static {p1, v0, v4, p0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_fb
    return-void
.end method

.method public semTurnOnAccessibilityService(I)V
    .registers 9

    const-string v0, "AccessibilityManagerService"

    const-string/jumbo v1, "semTurnOnAccessibilityService()"

    .line 5847
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5849
    new-instance v1, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v2, 0x3a

    invoke-direct {v1, v2}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 5850
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    const-string v5, "enabled_accessibility_services"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3d

    const-string v3, "enabledServicesSetting == null"

    .line 5853
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5854
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    const-string v6, ""

    invoke-static {v3, v5, v6, v4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 5855
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 5858
    :cond_3d
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->semIsAccessibilityServiceEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_49

    const-string p0, "The service is already enabled"

    .line 5859
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5863
    :cond_49
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    if-eqz v3, :cond_67

    .line 5866
    invoke-virtual {v1, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 5867
    :cond_53
    :goto_53
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_67

    .line 5868
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    .line 5869
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_53

    .line 5871
    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_53

    :cond_67
    const/16 v1, 0x10

    if-eq p1, v1, :cond_bc

    const/16 v1, 0x20

    if-eq p1, v1, :cond_b0

    const/16 v1, 0x40

    if-eq p1, v1, :cond_a4

    const/16 v1, 0x800

    if-eq p1, v1, :cond_98

    const/16 v1, 0x1000

    if-eq p1, v1, :cond_8c

    const/16 v1, 0x2000

    if-eq p1, v1, :cond_80

    return-void

    :cond_80
    const-string p1, "SEM_STATE_FLAG_ASSISTANT_MENU"

    .line 5901
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "com.samsung.accessibility/com.samsung.accessibility.assistantmenu.serviceframework.AssistantMenuService"

    .line 5902
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    goto :goto_c7

    :cond_8c
    const-string p1, "SEM_STATE_FLAG_SELECT_TO_SPEAK"

    .line 5896
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "com.google.android.marvin.talkback/com.google.android.accessibility.selecttospeak.SelectToSpeakService"

    .line 5897
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    goto :goto_c7

    :cond_98
    const-string p1, "SEM_STATE_FLAG_ACCESSIBILITY_MENU"

    .line 5892
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "com.google.android.marvin.talkback/com.google.android.accessibility.accessibilitymenu.AccessibilityMenuService"

    .line 5893
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    goto :goto_c7

    :cond_a4
    const-string p1, "SEM_STATE_FLAG_UNIVERSAL_SWITCH"

    .line 5887
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "com.samsung.accessibility/com.samsung.accessibility.universalswitch.UniversalSwitchService"

    .line 5888
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    goto :goto_c7

    :cond_b0
    const-string p1, "SEM_STATE_FLAG_VOICE_ASSISTANT"

    .line 5883
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "com.samsung.android.accessibility.talkback/com.samsung.android.marvin.talkback.TalkBackService"

    .line 5884
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    goto :goto_c7

    :cond_bc
    const-string p1, "SEM_STATE_FLAG_GOOGLE_TALKBACK"

    .line 5879
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    .line 5880
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 5907
    :goto_c7
    invoke-interface {v4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5909
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5910
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ea

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 5911
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5912
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_d3

    .line 5914
    :cond_ea
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_f5

    sub-int/2addr v0, v1

    .line 5916
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 5918
    :cond_f5
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5919
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-static {v0, v5, p1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 5920
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    const-string v0, "accessibility_enabled"

    invoke-static {p1, v0, v1, p0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public semUpdateAssitantMenu(Landroid/os/Bundle;)V
    .registers 9

    const-string v0, "AccessibilityManagerService"

    .line 6452
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mAssistantMenuMsgnr:Landroid/os/Messenger;

    if-eqz v1, :cond_69

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 6453
    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 6455
    :try_start_c
    invoke-virtual {v1, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 6456
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    .line 6457
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    .line 6458
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Thread name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Thread ID:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6459
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivityName"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "process ID:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6461
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mAssistantMenuMsgnr:Landroid/os/Messenger;

    invoke-virtual {p0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_62} :catch_63

    goto :goto_69

    :catch_63
    const-string/jumbo p0, "semUpdateAssitantMenu: err during get currentThread"

    .line 6463
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_69
    :goto_69
    return-void
.end method

.method public final sendAccessibilityButtonToInputFilter(I)V
    .registers 4

    .line 2305
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2306
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v1, :cond_e

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz p0, :cond_e

    .line 2307
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->notifyAccessibilityButtonClicked(I)V

    .line 2309
    :cond_e
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)V
    .registers 14

    .line 1405
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1406
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v3, "AccessibilityManagerService.sendAccessibilityEvent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "event="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ";userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 1410
    :cond_2a
    sget-boolean v0, Lcom/android/server/accessibility/AccessibilityManagerService;->SEC_DEBUG:Z

    if-eqz v0, :cond_49

    const-string v0, "AccessibilityManagerService"

    .line 1411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendAccessibilityEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    :cond_49
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1418
    :try_start_4c
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v1

    const/4 v2, -0x3

    if-ne v1, v2, :cond_62

    .line 1421
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getPictureInPictureWindowLocked()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v1

    if-eqz v1, :cond_62

    .line 1423
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v1

    .line 1424
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setWindowId(I)V

    .line 1431
    :cond_62
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result p2

    .line 1434
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 1435
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v3

    .line 1436
    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v4

    .line 1434
    invoke-virtual {v1, v2, v3, p2, v4}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveValidReportedPackageLocked(Ljava/lang/CharSequence;III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 1439
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p2, v1, :cond_c5

    .line 1440
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v4, v1, p1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canDispatchAccessibilityEventLocked(ILandroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 1441
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 1442
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v7

    .line 1443
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getAction()I

    move-result v10

    .line 1441
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/accessibility/AccessibilityWindowManager;->updateActiveAndAccessibilityFocusedWindowLocked(IIJII)V

    .line 1444
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->updateEventSourceLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    move v1, v2

    goto :goto_aa

    :cond_a9
    move v1, v3

    .line 1447
    :goto_aa
    iget-boolean v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v4, :cond_c6

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz v4, :cond_c6

    .line 1448
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v5}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda6;-><init>()V

    .line 1450
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v6

    .line 1448
    invoke-static {v5, p0, v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_c6

    :cond_c5
    move v1, v3

    .line 1453
    :cond_c6
    :goto_c6
    monitor-exit v0
    :try_end_c7
    .catchall {:try_start_4c .. :try_end_c7} :catchall_143

    if-eqz v1, :cond_137

    .line 1461
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1462
    :try_start_cc
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_dd

    .line 1464
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v5, p2, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getDisplayIdByUserIdAndWindowIdLocked(II)I

    move-result p2

    .line 1466
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setDisplayId(I)V

    goto :goto_de

    :cond_dd
    move p2, v4

    .line 1469
    :goto_de
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v5, 0x20

    if-ne v1, v5, :cond_f1

    if-eq p2, v4, :cond_f1

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 1471
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isTrackingWindowsLocked(I)Z

    move-result v1

    if-eqz v1, :cond_f1

    goto :goto_f2

    :cond_f1
    move v2, v3

    .line 1474
    :goto_f2
    monitor-exit v0
    :try_end_f3
    .catchall {:try_start_cc .. :try_end_f3} :catchall_134

    if-eqz v2, :cond_129

    .line 1476
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x200

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_117

    .line 1477
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v3, "WindowManagerInternal.computeWindowsForAccessibility"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "display="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 1480
    :cond_117
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    .line 1482
    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowManagerInternal;->computeWindowsForAccessibility(I)V

    .line 1485
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->postponeWindowStateEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p2

    if-eqz p2, :cond_129

    return-void

    .line 1490
    :cond_129
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1491
    :try_start_12c
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->dispatchAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1492
    monitor-exit p2

    goto :goto_137

    :catchall_131
    move-exception p0

    monitor-exit p2
    :try_end_133
    .catchall {:try_start_12c .. :try_end_133} :catchall_131

    throw p0

    :catchall_134
    move-exception p0

    .line 1474
    :try_start_135
    monitor-exit v0
    :try_end_136
    .catchall {:try_start_135 .. :try_end_136} :catchall_134

    throw p0

    .line 1495
    :cond_137
    :goto_137
    sget p0, Lcom/android/server/accessibility/AccessibilityManagerService;->OWN_PROCESS_ID:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    if-eq p0, p2, :cond_142

    .line 1496
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    :cond_142
    return-void

    :catchall_143
    move-exception p0

    .line 1453
    :try_start_144
    monitor-exit v0
    :try_end_145
    .catchall {:try_start_144 .. :try_end_145} :catchall_143

    throw p0
.end method

.method public sendAccessibilityEventForCurrentUserLocked(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 4345
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowChanges()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 4348
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendPendingWindowStateChangedEventsForAvailableWindowLocked(I)V

    .line 4350
    :cond_e
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;I)V

    return-void
.end method

.method public final sendAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;I)V
    .registers 5

    .line 4355
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEventTime(J)V

    .line 4356
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda20;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda20;-><init>()V

    .line 4358
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 4356
    invoke-static {v1, p0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendAccessibilityEventToInputFilter(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 1507
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1508
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v1, :cond_e

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz p0, :cond_e

    .line 1509
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1511
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    .line 1512
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    return-void

    :catchall_13
    move-exception p0

    .line 1511
    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public final sendComponentForUpdateProfile(Ljava/lang/String;)V
    .registers 5

    .line 4093
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " targetName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccessibilityManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4094
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.accessibility.action.UPDATE_PROFILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.accessibility"

    const-string v2, "com.samsung.accessibility.homepage.features.UpdateProfileReceiver"

    .line 4095
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "component"

    .line 4096
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "enabled"

    const/4 v1, 0x1

    .line 4097
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4098
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public sendFingerprintGesture(I)Z
    .registers 8

    .line 4371
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/32 v1, 0x20004

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 4373
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v3, "AccessibilityManagerService.sendFingerprintGesture"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gestureKeyCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 4378
    :cond_23
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4379
    :try_start_26
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_3e

    .line 4382
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_26 .. :try_end_33} :catchall_46

    .line 4383
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mFingerprintGestureDispatcher:Lcom/android/server/accessibility/FingerprintGestureDispatcher;

    if-nez p0, :cond_39

    const/4 p0, 0x0

    return p0

    .line 4386
    :cond_39
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->onFingerprintGesture(I)Z

    move-result p0

    return p0

    .line 4380
    :cond_3e
    :try_start_3e
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only SYSTEM can call sendFingerprintGesture"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_46
    move-exception p0

    .line 4382
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3e .. :try_end_48} :catchall_46

    throw p0
.end method

.method public sendMotionEventToListeningServices(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 1912
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 1916
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public sendPendingWindowStateChangedEventsForAvailableWindowLocked(I)V
    .registers 5

    .line 7502
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSendWindowStateChangedEventRunnables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_23

    .line 7504
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSendWindowStateChangedEventRunnables:Ljava/util/List;

    .line 7505
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService$SendWindowStateChangedEventRunnable;

    .line 7506
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SendWindowStateChangedEventRunnable;->-$$Nest$mgetWindowId(Lcom/android/server/accessibility/AccessibilityManagerService$SendWindowStateChangedEventRunnable;)I

    move-result v2

    if-ne v2, p1, :cond_20

    .line 7507
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7508
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SendWindowStateChangedEventRunnable;->-$$Nest$msendPendingEventLocked(Lcom/android/server/accessibility/AccessibilityManagerService$SendWindowStateChangedEventRunnable;)V

    :cond_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_23
    return-void
.end method

.method public final sendServicesStateChanged(Landroid/os/RemoteCallbackList;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/accessibility/IAccessibilityManagerClient;",
            ">;J)V"
        }
    .end annotation

    .line 2851
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyClientsOfServicesStateChange(Landroid/os/RemoteCallbackList;J)V

    .line 2852
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyClientsOfServicesStateChange(Landroid/os/RemoteCallbackList;J)V

    return-void
.end method

.method public final sendStateToAllClients(II)V
    .registers 4

    .line 2823
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendStateToClients(ILandroid/os/RemoteCallbackList;)V

    .line 2824
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendStateToClients(II)V

    return-void
.end method

.method public final sendStateToClients(II)V
    .registers 3

    .line 2828
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserState(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p2

    iget-object p2, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendStateToClients(ILandroid/os/RemoteCallbackList;)V

    return-void
.end method

.method public final sendStateToClients(ILandroid/os/RemoteCallbackList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/accessibility/IAccessibilityManagerClient;",
            ">;)V"
        }
    .end annotation

    .line 2833
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2834
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clientState="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AccessibilityManagerService.sendStateToClients"

    invoke-virtual {p0, v3, v1, v2, v0}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 2837
    :cond_22
    new-instance p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda36;

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda36;-><init>(I)V

    invoke-static {p0}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setBindInstantServiceAllowed(IZ)V
    .registers 6

    .line 1044
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_BIND_INSTANT_SERVICE"

    const-string/jumbo v2, "setBindInstantServiceAllowed"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1048
    :try_start_d
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p1

    .line 1049
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getBindInstantServiceAllowedLocked()Z

    move-result v1

    if-eq p2, v1, :cond_1d

    .line 1050
    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/AccessibilityUserState;->setBindInstantServiceAllowedLocked(Z)V

    .line 1051
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 1053
    :cond_1d
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public final setColorAdjustment(Landroid/content/Context;)V
    .registers 8

    .line 833
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_blind"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    move v0, v1

    goto :goto_12

    :cond_11
    move v0, v2

    .line 835
    :goto_12
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v4, 0x2

    const-string v5, "color_adjustment_type"

    invoke-static {p1, v5, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_2a

    if-eqz v0, :cond_26

    const/4 p1, 0x4

    .line 841
    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->semSetMdnieAccessibilityMode(IZ)Z

    goto :goto_45

    .line 843
    :cond_26
    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->semSetMdnieAccessibilityMode(IZ)Z

    goto :goto_45

    .line 847
    :cond_2a
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v4, 0x0

    const-string v5, "color_blind_user_parameter"

    invoke-static {p1, v5, v4, v3}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result p1

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr p1, v3

    .line 849
    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->semSetMdnieAccessibilityMode(IZ)Z

    .line 851
    :try_start_3d
    invoke-virtual {p0, v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->semSetColorBlind(ZF)Z
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_45

    :catch_41
    move-exception p0

    .line 853
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_45
    return-void
.end method

.method public final setColorLensState(Landroid/content/Context;)V
    .registers 7

    .line 859
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_lens_switch"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    goto :goto_11

    :cond_10
    move v1, v2

    .line 861
    :goto_11
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "color_lens_type"

    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 863
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v4, "color_lens_opacity"

    invoke-static {p1, v4, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz v1, :cond_2b

    .line 867
    invoke-virtual {p0, v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->semEnableMdnieColorFilter(II)Z

    goto :goto_2e

    .line 869
    :cond_2b
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->semDisableMdnieColorFilter()Z

    :goto_2e
    return-void
.end method

.method public setGestureDetectionPassthroughRegion(ILandroid/graphics/Region;)V
    .registers 5

    .line 7175
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda3;-><init>()V

    .line 7179
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 7176
    invoke-static {v1, p0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 7175
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final setGestureDetectionPassthroughRegionInternal(ILandroid/graphics/Region;)V
    .registers 5

    .line 7202
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7203
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v1, :cond_e

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz p0, :cond_e

    .line 7204
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->setGestureDetectionPassthroughRegion(ILandroid/graphics/Region;)V

    .line 7206
    :cond_e
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public final setImeSessionEnabled(Landroid/util/SparseArray;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;",
            ">;Z)V"
        }
    .end annotation

    .line 7462
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7463
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p0

    .line 7464
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_f
    if-ltz v1, :cond_35

    .line 7465
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 7466
    iget v3, v2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->requestImeApis()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 7467
    iget v3, v2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    invoke-virtual {v2, v3, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->setImeSessionEnabledLocked(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;Z)V

    :cond_32
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 7470
    :cond_35
    monitor-exit v0

    return-void

    :catchall_37
    move-exception p0

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw p0
.end method

.method public setMagnificationDisactivate()V
    .registers 3

    const-string v0, "AccessibilityManagerService"

    const-string/jumbo v1, "setMagnificationDisactivate"

    .line 1323
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1325
    :try_start_b
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v1, :cond_17

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz p0, :cond_17

    const/4 v1, 0x0

    .line 1326
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->magnificationDisactivate(I)V

    .line 1328
    :cond_17
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public setMotionEventInjectors(Landroid/util/SparseArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/MotionEventInjector;",
            ">;)V"
        }
    .end annotation

    .line 2003
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2004
    :try_start_3
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMotionEventInjectors:Landroid/util/SparseArray;

    .line 2006
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 2007
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public final setNonA11yToolNotificationToMatchSafetyCenter()V
    .registers 3

    .line 1007
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/safetycenter/SafetyCenterManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/safetycenter/SafetyCenterManager;

    .line 1008
    invoke-virtual {v0}, Landroid/safetycenter/SafetyCenterManager;->isSafetyCenterEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1009
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1010
    :try_start_13
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->setSendingNonA11yToolNotificationLocked(Z)V

    .line 1011
    monitor-exit v1

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public setPictureInPictureActionReplacingConnection(Landroid/view/accessibility/IAccessibilityInteractionConnection;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1697
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1698
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connection="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AccessibilityManagerService.setPictureInPictureActionReplacingConnection"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 1701
    :cond_22
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    const-string v1, "android.permission.MODIFY_ACCESSIBILITY_DATA"

    const-string/jumbo v2, "setPictureInPictureActionReplacingConnection"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1703
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->setPictureInPictureActionReplacingConnection(Landroid/view/accessibility/IAccessibilityInteractionConnection;)V

    return-void
.end method

.method public setScreenReaderEnabled(Z)V
    .registers 6

    .line 5673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Called AccessibilityManagerService setScreenReaderEnabled enable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccessibilityManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5674
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    const-string/jumbo v3, "setScreenReaderEnabled"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5676
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.accessibility.talkback"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    const-string/jumbo p0, "talkback package not installed"

    .line 5677
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_31
    const/16 v0, 0x20

    if-eqz p1, :cond_39

    .line 5682
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->semTurnOnAccessibilityService(I)V

    goto :goto_3c

    .line 5684
    :cond_39
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->semTurnOffAccessibilityService(I)V

    :goto_3c
    return-void
.end method

.method public setSecDebug(Z)V
    .registers 4

    .line 893
    sput-boolean p1, Lcom/android/server/accessibility/AccessibilityManagerService;->SEC_DEBUG:Z

    .line 894
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 895
    :try_start_5
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz v1, :cond_10

    .line 896
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->setSecDebug(Z)V

    .line 899
    :cond_10
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    if-eqz v1, :cond_35

    .line 900
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->setSecDebug(Z)V

    .line 901
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 902
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->setSecDebug(Z)V

    .line 904
    :cond_24
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 905
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setSecDebug(Z)V

    .line 908
    :cond_35
    monitor-exit v0

    return-void

    :catchall_37
    move-exception p0

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_5 .. :try_end_39} :catchall_37

    throw p0
.end method

.method public setServiceDetectsGesturesEnabled(IZ)V
    .registers 5

    .line 7211
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda39;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda39;-><init>()V

    .line 7213
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 7212
    invoke-static {v1, p0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 7211
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final setServiceDetectsGesturesInternal(IZ)V
    .registers 5

    .line 7217
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7218
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v1, :cond_e

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz p0, :cond_e

    .line 7219
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->setServiceDetectsGesturesEnabled(IZ)V

    .line 7221
    :cond_e
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public setSystemAudioCaptioningEnabled(ZI)V
    .registers 6
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.SET_SYSTEM_AUDIO_CAPTION"
    .end annotation

    .line 4552
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SET_SYSTEM_AUDIO_CAPTION"

    const-string/jumbo v2, "setSystemAudioCaptioningEnabled"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4556
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCaptioningManagerImpl:Lcom/android/server/accessibility/CaptioningManagerImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/CaptioningManagerImpl;->setSystemAudioCaptioningEnabled(ZI)V

    return-void
.end method

.method public setSystemAudioCaptioningUiEnabled(ZI)V
    .registers 6
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.SET_SYSTEM_AUDIO_CAPTION"
    .end annotation

    .line 4567
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SET_SYSTEM_AUDIO_CAPTION"

    const-string/jumbo v2, "setSystemAudioCaptioningUiEnabled"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4571
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCaptioningManagerImpl:Lcom/android/server/accessibility/CaptioningManagerImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/CaptioningManagerImpl;->setSystemAudioCaptioningUiEnabled(ZI)V

    return-void
.end method

.method public setTalkbackMode()V
    .registers 9

    const-string v0, "AccessibilityManagerService"

    const-string v1, "Called AccessibilityManagerService setTalkbackMode()"

    .line 6418
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6419
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string v3, "ASDA"

    const-string v4, "TB"

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/view/accessibility/A11yLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 6420
    new-instance v0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;-><init>(Landroid/content/Context;)V

    .line 6421
    invoke-virtual {v0}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->performAccessibilityDirectAccess()V

    return-void
.end method

.method public setTouchExplorationPassthroughRegion(ILandroid/graphics/Region;)V
    .registers 5

    .line 7185
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda47;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda47;-><init>()V

    .line 7189
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 7186
    invoke-static {v1, p0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 7185
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final setTouchExplorationPassthroughRegionInternal(ILandroid/graphics/Region;)V
    .registers 5

    .line 7194
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7195
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v1, :cond_e

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz p0, :cond_e

    .line 7196
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->setTouchExplorationPassthroughRegion(ILandroid/graphics/Region;)V

    .line 7198
    :cond_e
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public setWindowMagnificationConnection(Landroid/view/accessibility/IWindowMagnificationConnection;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4440
    sget-boolean v0, Lcom/android/server/accessibility/AccessibilityManagerService;->SEC_DEBUG:Z

    if-eqz v0, :cond_1b

    .line 4441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setWindowMagnificationConnection() connection = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccessibilityManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4443
    :cond_1b
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x84

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 4445
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connection="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AccessibilityManagerService.setWindowMagnificationConnection"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 4450
    :cond_3d
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->enforceCallingOrSelfPermission(Ljava/lang/String;)V

    .line 4453
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->setConnection(Landroid/view/accessibility/IWindowMagnificationConnection;)V

    return-void
.end method

.method public final showAccessibilityTargetsSelection(II)V
    .registers 6

    .line 2314
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.intent.action.CHOOSE_ACCESSIBILITY_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2316
    const-class v1, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    .line 2317
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "shortcutType"

    .line 2318
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p2, 0x30000000

    .line 2319
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2327
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 2328
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p2, v0, p1, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final showEnableTouchExplorationDialog(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .registers 9

    .line 2991
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2992
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 2993
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2995
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v2

    .line 2996
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityUserState;->isTouchExplorationEnabledLocked()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 2997
    monitor-exit v0

    return-void

    .line 2999
    :cond_25
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_31

    .line 3000
    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 3001
    monitor-exit v0

    return-void

    .line 3003
    :cond_31
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1010355

    .line 3004
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService$6;

    invoke-direct {v5, p0, v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$6;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;Lcom/android/server/accessibility/AccessibilityServiceConnection;)V

    .line 3005
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/server/accessibility/AccessibilityManagerService$5;

    invoke-direct {v3, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$5;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 3026
    invoke-virtual {p1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v2, 0x1040499

    .line 3032
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const v3, 0x1040498

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    .line 3033
    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 3035
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    .line 3036
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x7d3

    invoke-virtual {p1, v1}, Landroid/view/Window;->setType(I)V

    .line 3038
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 3040
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 3041
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 3042
    monitor-exit v0

    return-void

    :catchall_9b
    move-exception p0

    monitor-exit v0
    :try_end_9d
    .catchall {:try_start_3 .. :try_end_9d} :catchall_9b

    throw p0
.end method

.method public final showScreenNotificationOverlayView(I)V
    .registers 4

    .line 6100
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x20

    .line 6101
    iput v1, v0, Landroid/os/Message;->what:I

    .line 6102
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6103
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final showScreenNotificationOverlayViewInner(I)V
    .registers 10

    const-string v0, "AccessibilityManagerService"

    const-string/jumbo v1, "showScreenNotificationOverlayViewInner"

    .line 6119
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6120
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/16 v5, 0x7df

    const/16 v6, 0x538

    const/4 v7, -0x3

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 6130
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v1, 0x1

    .line 6131
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 6134
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->screenNotificationOverlayView:Landroid/view/View;

    if-nez v2, :cond_3d

    .line 6135
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getScreenNotificationOverlayView(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->screenNotificationOverlayView:Landroid/view/View;

    .line 6136
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->screenNotificationOverlayView:Landroid/view/View;

    invoke-interface {v2, v3, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6137
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->screenNotificationOverlayView:Landroid/view/View;

    invoke-virtual {p0, v2, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->fadeScreenNotificationOverlayViewInner(Landroid/view/View;Z)V

    .line 6141
    :cond_3d
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCoverDisplayWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    if-eqz v2, :cond_55

    .line 6142
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->coverScreenNotificationOverlayView:Landroid/view/View;

    if-nez v3, :cond_55

    .line 6143
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getScreenNotificationOverlayView(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->coverScreenNotificationOverlayView:Landroid/view/View;

    .line 6144
    invoke-interface {v2, p1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6145
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->coverScreenNotificationOverlayView:Landroid/view/View;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->fadeScreenNotificationOverlayViewInner(Landroid/view/View;Z)V

    :cond_55
    return-void
.end method

.method public final startInput(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 8

    .line 7411
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7413
    :try_start_3
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mRemoteInputConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    .line 7414
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 7415
    iput-boolean p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mRestarting:Z

    .line 7416
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p0

    .line 7417
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_15
    if-ltz v1, :cond_2b

    .line 7418
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 7419
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->requestImeApis()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 7420
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->startInputLocked(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    :cond_28
    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    .line 7423
    :cond_2b
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p0

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public final switchUser(I)V
    .registers 8

    .line 2098
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->updateUserIdIfNeeded(I)V

    .line 2099
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2100
    :try_start_8
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-ne v1, p1, :cond_12

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInitialized:Z

    if-eqz v1, :cond_12

    .line 2101
    monitor-exit v0

    return-void

    .line 2105
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v1

    .line 2106
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityUserState;->onSwitchToAnotherUserLocked()V

    .line 2109
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_3a

    .line 2110
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    new-instance v4, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda15;

    invoke-direct {v4}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda15;-><init>()V

    .line 2112
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v1, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2110
    invoke-static {v4, p0, v5, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2116
    :cond_3a
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 2117
    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_51

    goto :goto_52

    :cond_51
    move v2, v3

    .line 2120
    :goto_52
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 2121
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p1

    .line 2123
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readConfigurationForUserStateLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    .line 2124
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    iget-object v5, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    invoke-virtual {v1, v4, v5}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->onSwitchUserLocked(ILjava/util/Set;)V

    .line 2128
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    const/4 v1, 0x0

    .line 2135
    invoke-virtual {p0, p1, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->migrateAccessibilityButtonSettingsIfNecessaryLocked(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/lang/String;I)V

    if-eqz v2, :cond_7d

    .line 2140
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda16;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda16;-><init>()V

    .line 2141
    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v1, 0xbb8

    .line 2140
    invoke-virtual {p1, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2144
    :cond_7d
    monitor-exit v0

    return-void

    :catchall_7f
    move-exception p0

    monitor-exit v0
    :try_end_81
    .catchall {:try_start_8 .. :try_end_81} :catchall_7f

    throw p0
.end method

.method public temporaryEnableAccessibilityStateUntilKeyguardRemoved(Landroid/content/ComponentName;Z)V
    .registers 9

    .line 1744
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1745
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v3, "AccessibilityManagerService.temporaryEnableAccessibilityStateUntilKeyguardRemoved"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "service="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ";touchExplorationEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 1751
    :cond_2b
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    const-string v1, "android.permission.TEMPORARY_ENABLE_ACCESSIBILITY"

    const-string/jumbo v2, "temporaryEnableAccessibilityStateUntilKeyguardRemoved"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1754
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x200

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1755
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v3, "WindowManagerInternal.isKeyguardLocked"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;J)V

    .line 1758
    :cond_46
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_4f

    return-void

    .line 1761
    :cond_4f
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1763
    :try_start_52
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v1

    .line 1765
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/AccessibilityUserState;->setTouchExplorationEnabledLocked(Z)V

    const/4 p2, 0x0

    .line 1766
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/AccessibilityUserState;->setDisplayMagnificationEnabledLocked(Z)V

    .line 1767
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityUserState;->disableShortcutMagnificationLocked()V

    .line 1768
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/AccessibilityUserState;->setAutoclickEnabledLocked(Z)V

    .line 1769
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 1770
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1771
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityUserState;->getBindingServicesLocked()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 1772
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityUserState;->getCrashedServicesLocked()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 1773
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 1774
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1777
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/AccessibilityUserState;->setAutoActionEnabledLocked(Z)V

    .line 1778
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/AccessibilityUserState;->setCornerActionEnabledLocked(Z)V

    .line 1781
    iput-boolean p2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTapDurationEnabled:Z

    .line 1784
    iput-boolean p2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchBlockingEnabled:Z

    .line 1787
    iput-boolean p2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsStickyKeysEnabled:Z

    .line 1788
    iput-boolean p2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsBounceKeysEnabled:Z

    .line 1789
    iput-boolean p2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsSlowKeysEnabled:Z

    .line 1793
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 1794
    monitor-exit v0

    return-void

    :catchall_9a
    move-exception p0

    monitor-exit v0
    :try_end_9c
    .catchall {:try_start_52 .. :try_end_9c} :catchall_9a

    throw p0
.end method

.method public unbindImeLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V
    .registers 4

    .line 7302
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final unbindInput()V
    .registers 5

    .line 7388
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 7389
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputBound:Z

    .line 7390
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p0

    .line 7391
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_12
    if-ltz v1, :cond_28

    .line 7392
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 7393
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->requestImeApis()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 7394
    invoke-virtual {v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->unbindInputLocked()V

    :cond_25
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    .line 7397
    :cond_28
    monitor-exit v0

    return-void

    :catchall_2a
    move-exception p0

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_4 .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public final unbindInputForConnection(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V
    .registers 4

    .line 7324
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v0

    iget v1, p1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->unbindAccessibilityFromCurrentClient(I)V

    .line 7325
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 7326
    :try_start_c
    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->unbindInputLocked()V

    .line 7327
    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_11

    throw p1
.end method

.method public final unlinkFlashNoti(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)V
    .registers 3

    .line 6846
    :try_start_0
    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->-$$Nest$fgetmToken(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)Landroid/os/IBinder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_8

    :catch_8
    return-void
.end method

.method public final unlockUser(I)V
    .registers 4

    .line 2164
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2165
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveProfileParentLocked(I)I

    move-result p1

    .line 2166
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-ne p1, v1, :cond_14

    .line 2167
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p1

    .line 2168
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 2170
    :cond_14
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public unregisterSystemAction(I)V
    .registers 7

    .line 1537
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1538
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "actionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AccessibilityManagerService.unregisterSystemAction"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 1541
    :cond_22
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    const-string v1, "android.permission.MANAGE_ACCESSIBILITY"

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->enforceCallingOrSelfPermission(Ljava/lang/String;)V

    .line 1542
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getSystemActionPerformer()Lcom/android/server/accessibility/SystemActionPerformer;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SystemActionPerformer;->unregisterSystemAction(I)V

    return-void
.end method

.method public unregisterUiTestAutomationService(Landroid/accessibilityservice/IAccessibilityServiceClient;)V
    .registers 8

    .line 1732
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1733
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v3, "AccessibilityManagerService.unregisterUiTestAutomationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "serviceClient="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 1736
    :cond_23
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1737
    :try_start_26
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/UiAutomationManager;->unregisterUiTestAutomationServiceLocked(Landroid/accessibilityservice/IAccessibilityServiceClient;)V

    .line 1738
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p0

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public final updateAccessibilityButtonTargetsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 6

    .line 3754
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_20

    .line 3755
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 3756
    iget-boolean v2, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    if-eqz v2, :cond_1d

    .line 3758
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isAccessibilityButtonAvailableLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v2

    .line 3757
    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyAccessibilityButtonAvailabilityChangedLocked(Z)V

    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_20
    const/4 v0, 0x0

    .line 3763
    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getShortcutTargetsLocked(I)Ljava/util/LinkedHashSet;

    move-result-object v0

    .line 3764
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_2c

    return-void

    .line 3768
    :cond_2c
    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/accessibility/AccessibilityUserState;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 3770
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v1, v2, :cond_3b

    return-void

    .line 3775
    :cond_3b
    iget v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;-><init>()V

    const-string v3, "accessibility_button_targets"

    invoke-virtual {p0, v3, v1, v0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistColonDelimitedSetToSettingLocked(Ljava/lang/String;ILjava/util/Set;Ljava/util/function/Function;)V

    .line 3777
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    return-void
.end method

.method public final updateAccessibilityDirectAccessTargetsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 6

    const/4 v0, 0x2

    .line 7566
    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getShortcutTargetsLocked(I)Ljava/util/LinkedHashSet;

    move-result-object v0

    .line 7567
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_c

    return-void

    .line 7571
    :cond_c
    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda44;

    invoke-direct {v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda44;-><init>(Lcom/android/server/accessibility/AccessibilityUserState;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 7573
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v1, v2, :cond_1b

    return-void

    .line 7578
    :cond_1b
    iget v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda45;

    invoke-direct {v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda45;-><init>()V

    const-string v3, "accessibility_direct_access_target_service"

    invoke-virtual {p0, v3, v1, v0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistColonDelimitedSetToSettingLocked(Ljava/lang/String;ILjava/util/Set;Ljava/util/function/Function;)V

    .line 7581
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    return-void
.end method

.method public final updateAccessibilityEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 8

    .line 3217
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v0}, Lcom/android/server/accessibility/UiAutomationManager;->isUiAutomationRunningLocked()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_13

    .line 3218
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isHandlingAccessibilityEventsLocked()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    move v0, v1

    goto :goto_14

    :cond_13
    :goto_13
    move v0, v2

    .line 3219
    :goto_14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 3221
    :try_start_18
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v5, "accessibility_enabled"

    if-eqz v0, :cond_23

    move v1, v2

    .line 3223
    :cond_23
    iget p1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 3221
    invoke-static {p0, v5, v1, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_28
    .catchall {:try_start_18 .. :try_end_28} :catchall_2c

    .line 3226
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2c
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3227
    throw p0
.end method

.method public final updateAccessibilityShortcutKeyTargetsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 6

    const/4 v0, 0x1

    .line 3577
    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getShortcutTargetsLocked(I)Ljava/util/LinkedHashSet;

    move-result-object v0

    .line 3578
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_c

    return-void

    .line 3582
    :cond_c
    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda54;

    invoke-direct {v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda54;-><init>(Lcom/android/server/accessibility/AccessibilityUserState;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 3584
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v1, v2, :cond_1b

    return-void

    .line 3589
    :cond_1b
    iget v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda55;

    invoke-direct {v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda55;-><init>()V

    const-string v3, "accessibility_shortcut_target_service"

    invoke-virtual {p0, v3, v1, v0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistColonDelimitedSetToSettingLocked(Ljava/lang/String;ILjava/util/Set;Ljava/util/function/Function;)V

    .line 3592
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    return-void
.end method

.method public final updateFilterKeyEventsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 6

    .line 3158
    iget-object p0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, p0, :cond_26

    .line 3160
    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 3161
    iget-boolean v3, v2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestFilterKeyEvents:Z

    if-eqz v3, :cond_23

    .line 3162
    invoke-virtual {v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getCapabilities()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_23

    const/4 p0, 0x1

    .line 3165
    invoke-virtual {p1, p0}, Lcom/android/server/accessibility/AccessibilityUserState;->setFilterKeyEventsEnabledLocked(Z)V

    return-void

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 3169
    :cond_26
    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->setFilterKeyEventsEnabledLocked(Z)V

    return-void
.end method

.method public final updateFingerprintGestureHandling(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 8

    .line 3716
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3717
    :try_start_3
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 3718
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mFingerprintGestureDispatcher:Lcom/android/server/accessibility/FingerprintGestureDispatcher;

    if-nez v1, :cond_51

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.hardware.fingerprint"

    .line 3719
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 3721
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_51

    .line 3723
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isCapturingFingerprintGestures()Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 3725
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_5a

    :try_start_2a
    const-string v5, "fingerprint"

    .line 3728
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 3727
    invoke-static {v5}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v5
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_49

    .line 3730
    :try_start_34
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v5, :cond_4e

    .line 3733
    new-instance v1, Lcom/android/server/accessibility/FingerprintGestureDispatcher;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 3734
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    invoke-direct {v1, v5, v2, v3}, Lcom/android/server/accessibility/FingerprintGestureDispatcher;-><init>(Landroid/hardware/fingerprint/IFingerprintService;Landroid/content/res/Resources;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mFingerprintGestureDispatcher:Lcom/android/server/accessibility/FingerprintGestureDispatcher;

    goto :goto_51

    :catchall_49
    move-exception p0

    .line 3730
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3731
    throw p0

    :cond_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 3740
    :cond_51
    :goto_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_34 .. :try_end_52} :catchall_5a

    .line 3741
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mFingerprintGestureDispatcher:Lcom/android/server/accessibility/FingerprintGestureDispatcher;

    if-eqz p0, :cond_59

    .line 3742
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->updateClientList(Ljava/util/List;)V

    :cond_59
    return-void

    :catchall_5a
    move-exception p0

    .line 3740
    :try_start_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw p0
.end method

.method public final updateFocusAppearanceDataLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 7

    .line 7339
    iget v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-eq v0, v1, :cond_7

    return-void

    .line 7342
    :cond_7
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 7343
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "userState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AccessibilityManagerService.updateFocusAppearanceDataLocked"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 7346
    :cond_2a
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda32;

    invoke-direct {v1, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda32;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final updateInputFilter(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 8

    .line 2877
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v0}, Lcom/android/server/accessibility/UiAutomationManager;->suppressingAccessibilityServicesLocked()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 2881
    :cond_9
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2883
    :try_start_c
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isDisplayMagnificationEnabledLocked()Z

    move-result v1

    .line 2886
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isShortcutMagnificationEnabledLocked()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 2887
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isAMEnabledLocked()Z

    move-result v2

    if-eqz v2, :cond_1e

    :cond_1c
    or-int/lit8 v1, v1, 0x40

    .line 2890
    :cond_1e
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->userHasMagnificationServicesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v2

    if-eqz v2, :cond_26

    or-int/lit8 v1, v1, 0x20

    .line 2894
    :cond_26
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isHandlingAccessibilityEventsLocked()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 2895
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isTouchExplorationEnabledLocked()Z

    move-result v2

    if-eqz v2, :cond_4c

    or-int/lit8 v1, v1, 0x2

    .line 2897
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isServiceHandlesDoubleTapEnabledLocked()Z

    move-result v2

    if-eqz v2, :cond_3c

    or-int/lit16 v1, v1, 0x80

    .line 2900
    :cond_3c
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isMultiFingerGesturesEnabledLocked()Z

    move-result v2

    if-eqz v2, :cond_44

    or-int/lit16 v1, v1, 0x100

    .line 2903
    :cond_44
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isTwoFingerPassthroughEnabledLocked()Z

    move-result v2

    if-eqz v2, :cond_4c

    or-int/lit16 v1, v1, 0x200

    .line 2907
    :cond_4c
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isFilterKeyEventsEnabledLocked()Z

    move-result v2

    if-eqz v2, :cond_54

    or-int/lit8 v1, v1, 0x4

    .line 2910
    :cond_54
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isSendMotionEventsEnabled()Z

    move-result v2

    if-eqz v2, :cond_5c

    or-int/lit16 v1, v1, 0x400

    .line 2913
    :cond_5c
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isAutoclickEnabledLocked()Z

    move-result v2

    if-eqz v2, :cond_64

    or-int/lit8 v1, v1, 0x8

    .line 2917
    :cond_64
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isAutoActionEnabledLocked()Z

    move-result v2

    if-eqz v2, :cond_6c

    or-int/lit16 v1, v1, 0x800

    .line 2921
    :cond_6c
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isCornerActionEnabledLocked()Z

    move-result v2

    if-eqz v2, :cond_74

    or-int/lit16 v1, v1, 0x1000

    .line 2924
    :cond_74
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isPerformGesturesEnabledLocked()Z

    move-result v2

    if-eqz v2, :cond_7c

    or-int/lit8 v1, v1, 0x10

    .line 2928
    :cond_7c
    iget-boolean v2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTapDurationEnabled:Z

    if-eqz v2, :cond_83

    const/high16 v2, -0x80000000

    or-int/2addr v1, v2

    .line 2933
    :cond_83
    iget-boolean v2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchBlockingEnabled:Z

    if-eqz v2, :cond_8a

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    .line 2938
    :cond_8a
    iget-boolean v2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsStickyKeysEnabled:Z

    if-eqz v2, :cond_91

    const/high16 v2, 0x2000000

    or-int/2addr v1, v2

    .line 2941
    :cond_91
    iget-boolean v2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsBounceKeysEnabled:Z

    if-eqz v2, :cond_98

    const/high16 v2, 0x4000000

    or-int/2addr v1, v2

    .line 2944
    :cond_98
    iget-boolean v2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsSlowKeysEnabled:Z

    if-eqz v2, :cond_9f

    const/high16 v2, 0x8000000

    or-int/2addr v1, v2

    :cond_9f
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_c3

    .line 2949
    iget-boolean v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-nez v5, :cond_ba

    .line 2950
    iput-boolean v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    .line 2951
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-nez v2, :cond_b7

    .line 2961
    new-instance v2, Lcom/android/server/accessibility/AccessibilityInputFilter;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4, p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 2966
    :cond_b7
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    goto :goto_bb

    :cond_ba
    move v3, v4

    .line 2969
    :goto_bb
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    iget p1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-virtual {v4, p1, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->setUserAndEnabledFeatures(II)V

    goto :goto_d2

    .line 2971
    :cond_c3
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v1, :cond_d1

    .line 2972
    iput-boolean v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    .line 2973
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    iget p1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-virtual {v1, p1, v4}, Lcom/android/server/accessibility/AccessibilityInputFilter;->setUserAndEnabledFeatures(II)V

    goto :goto_d2

    :cond_d1
    move v3, v4

    .line 2978
    :goto_d2
    monitor-exit v0
    :try_end_d3
    .catchall {:try_start_c .. :try_end_d3} :catchall_fe

    if-eqz v3, :cond_fd

    .line 2980
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v0, 0x1200

    invoke-virtual {p1, v0, v1}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result p1

    if-eqz p1, :cond_f8

    .line 2982
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v3, "WindowManagerInternal.setInputFilter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "inputFilter="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v0, v1, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 2986
    :cond_f8
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowManagerInternal;->setInputFilter(Landroid/view/IInputFilter;)V

    :cond_fd
    return-void

    :catchall_fe
    move-exception p0

    .line 2978
    :try_start_ff
    monitor-exit v0
    :try_end_100
    .catchall {:try_start_ff .. :try_end_100} :catchall_fe

    throw p0
.end method

.method public final updateLegacyCapabilitiesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 7

    .line 3123
    iget-object p0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_7
    if-ge v0, p0, :cond_49

    .line 3125
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    if-nez v1, :cond_14

    goto :goto_46

    .line 3129
    :cond_14
    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 3130
    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_46

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x11

    if-gt v3, v4, :cond_46

    .line 3134
    new-instance v3, Landroid/content/ComponentName;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3136
    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 3137
    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v2

    or-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setCapabilities(I)V

    :cond_46
    :goto_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_49
    return-void
.end method

.method public final updateMagnificationCapabilitiesSettingsChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 7

    .line 5400
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 5401
    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_22

    .line 5402
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    .line 5403
    invoke-virtual {p0, p1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->fallBackMagnificationModeSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;I)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 5404
    invoke-virtual {p0, p1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateMagnificationModeChangeSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;I)V

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 5407
    :cond_22
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateWindowMagnificationConnectionIfNeeded(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 5410
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isDisplayMagnificationEnabledLocked()Z

    move-result v2

    if-nez v2, :cond_37

    .line 5411
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isShortcutMagnificationEnabledLocked()Z

    move-result v2

    if-nez v2, :cond_37

    .line 5412
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isAMEnabledLocked()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 5413
    :cond_37
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getMagnificationCapabilitiesLocked()I

    move-result p1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_58

    .line 5416
    :cond_3e
    :goto_3e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_58

    .line 5417
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    .line 5418
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->removeMagnificationButton(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    :cond_58
    return-void
.end method

.method public final updateMagnificationLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 6

    .line 3627
    iget v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-eq v0, v1, :cond_7

    return-void

    .line 3631
    :cond_7
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v0}, Lcom/android/server/accessibility/UiAutomationManager;->suppressingAccessibilityServicesLocked()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 3632
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->isFullScreenMagnificationControllerInitialized()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 3633
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationController()Lcom/android/server/accessibility/magnification/MagnificationController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->unregisterAll()V

    return-void

    .line 3640
    :cond_23
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 3641
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isDisplayMagnificationEnabledLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_74

    .line 3642
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isShortcutMagnificationEnabledLocked()Z

    move-result v1

    if-nez v1, :cond_74

    .line 3643
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isAMEnabledLocked()Z

    move-result v1

    if-eqz v1, :cond_3b

    goto :goto_74

    .line 3653
    :cond_3b
    :goto_3b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_73

    .line 3654
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Display;

    .line 3655
    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    .line 3656
    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->userHasListeningMagnificationServicesLocked(Lcom/android/server/accessibility/AccessibilityUserState;I)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 3657
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationController()Lcom/android/server/accessibility/magnification/MagnificationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->register(I)V

    goto :goto_70

    .line 3659
    :cond_5d
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {v3}, Lcom/android/server/accessibility/magnification/MagnificationController;->isFullScreenMagnificationControllerInitialized()Z

    move-result v3

    if-eqz v3, :cond_70

    .line 3660
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationController()Lcom/android/server/accessibility/magnification/MagnificationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->unregister(I)V

    :cond_70
    :goto_70
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_73
    return-void

    .line 3644
    :cond_74
    :goto_74
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_92

    .line 3645
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Display;

    .line 3646
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationController()Lcom/android/server/accessibility/magnification/MagnificationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v1

    .line 3647
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    .line 3646
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->register(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_74

    :cond_92
    return-void
.end method

.method public final updateMagnificationModeChangeSettingsForAllDisplaysLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 5

    .line 3078
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 3079
    :goto_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1b

    .line 3080
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    .line 3081
    invoke-virtual {p0, p1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateMagnificationModeChangeSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1b
    return-void
.end method

.method public final updateMagnificationModeChangeSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;I)V
    .registers 5

    .line 2558
    iget v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-eq v0, v1, :cond_7

    return-void

    .line 2562
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->fallBackMagnificationModeSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;I)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 2565
    :cond_e
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 2566
    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/AccessibilityUserState;->getMagnificationModeLocked(I)I

    move-result p1

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 2565
    invoke-virtual {v0, p2, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->transitionMagnificationModeLocked(IILcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;)V

    return-void
.end method

.method public final updatePerformGesturesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 5

    .line 3145
    iget-object p0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, p0, :cond_22

    .line 3147
    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 3148
    invoke-virtual {v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getCapabilities()I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_1f

    const/4 p0, 0x1

    .line 3150
    invoke-virtual {p1, p0}, Lcom/android/server/accessibility/AccessibilityUserState;->setPerformGesturesEnabledLocked(Z)V

    return-void

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 3154
    :cond_22
    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->setPerformGesturesEnabledLocked(Z)V

    return-void
.end method

.method public final updateRecommendedUiTimeoutLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 8

    .line 3922
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getUserNonInteractiveUiTimeoutLocked()I

    move-result p0

    .line 3923
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getUserInteractiveUiTimeoutLocked()I

    move-result v0

    if-eqz p0, :cond_c

    if-nez v0, :cond_42

    .line 3928
    :cond_c
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 3929
    :goto_11
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3c

    .line 3930
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    invoke-virtual {v5}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getInteractiveUiTimeoutMillis()I

    move-result v5

    if-ge v3, v5, :cond_28

    move v3, v5

    .line 3934
    :cond_28
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    invoke-virtual {v5}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getNonInteractiveUiTimeoutMillis()I

    move-result v5

    if-ge v4, v5, :cond_39

    move v4, v5

    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_3c
    if-nez p0, :cond_3f

    move p0, v4

    :cond_3f
    if-nez v0, :cond_42

    move v0, v3

    .line 3946
    :cond_42
    invoke-virtual {p1, p0}, Lcom/android/server/accessibility/AccessibilityUserState;->setNonInteractiveUiTimeoutLocked(I)V

    .line 3947
    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->setInteractiveUiTimeoutLocked(I)V

    return-void
.end method

.method public final updateRelevantEventsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 7

    .line 2515
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2516
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "userState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AccessibilityManagerService.updateRelevantEventsLocked"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 2519
    :cond_23
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final updateServicesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 26

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    .line 2736
    iget-object v13, v14, Lcom/android/server/accessibility/AccessibilityUserState;->mComponentNameToServiceMap:Ljava/util/Map;

    .line 2738
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iget v1, v14, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 2739
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result v16

    .line 2741
    iget-object v0, v14, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    const/16 v17, 0x0

    move/from16 v11, v17

    :goto_1e
    if-ge v11, v12, :cond_11e

    .line 2742
    iget-object v0, v14, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 2744
    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 2743
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 2746
    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    if-nez v16, :cond_7c

    .line 2749
    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->isDirectBootAware()Z

    move-result v1

    if-nez v1, :cond_7c

    .line 2750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring non-encryption-aware service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccessibilityManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2752
    iget-object v0, v14, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10c

    .line 2753
    iget-object v0, v14, Lcom/android/server/accessibility/AccessibilityUserState;->mBindingServices:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is removed in binding service"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10c

    .line 2761
    :cond_7c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getBindingServicesLocked()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10c

    .line 2762
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getCrashedServicesLocked()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_92

    goto/16 :goto_10c

    .line 2765
    :cond_92
    iget-object v1, v14, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f5

    iget-object v1, v15, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    .line 2766
    invoke-virtual {v1}, Lcom/android/server/accessibility/UiAutomationManager;->suppressingAccessibilityServicesLocked()Z

    move-result v1

    if-nez v1, :cond_f5

    if-nez v0, :cond_e1

    .line 2768
    new-instance v18, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    iget-object v2, v15, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    add-int/lit8 v0, v5, 0x1

    sput v0, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    iget-object v6, v15, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    iget-object v7, v15, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    iget-object v8, v15, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 2770
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v10

    iget-object v9, v15, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 2771
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getSystemActionPerformer()Lcom/android/server/accessibility/SystemActionPerformer;

    move-result-object v19

    iget-object v1, v15, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-object v0, v15, Lcom/android/server/accessibility/AccessibilityManagerService;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v21, v1

    move-object/from16 v1, p1

    move-object/from16 v22, v9

    move-object/from16 v9, p0

    move/from16 v23, v11

    move-object/from16 v11, v22

    move/from16 v22, v12

    move-object/from16 v12, v19

    move-object/from16 v19, v13

    move-object/from16 v13, v21

    move-object v15, v14

    move-object/from16 v14, v20

    invoke-direct/range {v0 .. v14}, Lcom/android/server/accessibility/AccessibilityServiceConnection;-><init>(Lcom/android/server/accessibility/AccessibilityUserState;Landroid/content/Context;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Landroid/accessibilityservice/AccessibilityTrace;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/SystemActionPerformer;Lcom/android/server/accessibility/AccessibilityWindowManager;Lcom/android/server/wm/ActivityTaskManagerInternal;)V

    goto :goto_f1

    :cond_e1
    move/from16 v23, v11

    move/from16 v22, v12

    move-object/from16 v19, v13

    move-object v15, v14

    .line 2773
    iget-object v1, v15, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f1

    goto :goto_108

    .line 2776
    :cond_f1
    :goto_f1
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->bindLocked()V

    goto :goto_108

    :cond_f5
    move/from16 v23, v11

    move/from16 v22, v12

    move-object/from16 v19, v13

    move-object v15, v14

    if-eqz v0, :cond_108

    .line 2779
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->unbindLocked()V

    move-object/from16 v1, p0

    move-object v2, v15

    .line 2780
    invoke-virtual {v1, v2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->removeShortcutTargetForUnboundServiceLocked(Lcom/android/server/accessibility/AccessibilityUserState;Lcom/android/server/accessibility/AccessibilityServiceConnection;)V

    goto :goto_114

    :cond_108
    :goto_108
    move-object/from16 v1, p0

    move-object v2, v15

    goto :goto_114

    :cond_10c
    :goto_10c
    move/from16 v23, v11

    move/from16 v22, v12

    move-object/from16 v19, v13

    move-object v2, v14

    move-object v1, v15

    :goto_114
    add-int/lit8 v11, v23, 0x1

    move-object v15, v1

    move-object v14, v2

    move-object/from16 v13, v19

    move/from16 v12, v22

    goto/16 :goto_1e

    :cond_11e
    move-object v2, v14

    move-object v1, v15

    .line 2785
    iget-object v0, v2, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2786
    iget-object v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempIntArray:Landroid/util/IntArray;

    invoke-virtual {v3}, Landroid/util/IntArray;->clear()V

    move/from16 v3, v17

    :goto_12d
    if-ge v3, v0, :cond_14d

    .line 2788
    iget-object v4, v2, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 2789
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    iget-object v4, v4, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_14a

    .line 2791
    iget-object v5, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempIntArray:Landroid/util/IntArray;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v4}, Landroid/util/IntArray;->add(I)V

    :cond_14a
    add-int/lit8 v3, v3, 0x1

    goto :goto_12d

    .line 2795
    :cond_14d
    const-class v0, Landroid/media/AudioManagerInternal;

    .line 2796
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManagerInternal;

    if-eqz v0, :cond_15c

    .line 2798
    iget-object v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempIntArray:Landroid/util/IntArray;

    invoke-virtual {v0, v3}, Landroid/media/AudioManagerInternal;->setAccessibilityServiceUids(Landroid/util/IntArray;)V

    .line 2800
    :cond_15c
    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempIntArray:Landroid/util/IntArray;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setAccessibilityServiceUids(Landroid/util/IntArray;)V

    .line 2801
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateAccessibilityEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    return-void
.end method

.method public final updateTouchExplorationLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 12

    .line 3431
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v0}, Lcom/android/server/accessibility/UiAutomationManager;->isTouchExplorationEnabledLocked()Z

    move-result v0

    .line 3436
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    const/4 v4, 0x1

    if-ge v3, v1, :cond_38

    .line 3438
    iget-object v5, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 3439
    invoke-virtual {p0, v5, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->canRequestAndRequestsTouchExplorationLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 3441
    invoke-virtual {v5}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isServiceHandlesDoubleTapEnabled()Z

    move-result v0

    .line 3442
    invoke-virtual {v5}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isMultiFingerGesturesEnabled()Z

    move-result v1

    .line 3443
    invoke-virtual {v5}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isTwoFingerPassthroughEnabled()Z

    move-result v3

    .line 3444
    invoke-virtual {v5}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isSendMotionEventsEnabled()Z

    move-result v5

    move v6, v5

    move v5, v3

    move v3, v1

    move v1, v0

    move v0, v4

    goto :goto_3c

    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_38
    move v1, v2

    move v3, v1

    move v5, v3

    move v6, v5

    .line 3448
    :goto_3c
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isTouchExplorationEnabledLocked()Z

    move-result v7

    if-eq v0, v7, :cond_63

    .line 3449
    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->setTouchExplorationEnabledLocked(Z)V

    .line 3450
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 3452
    :try_start_49
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v9, "touch_exploration_enabled"

    if-eqz v0, :cond_55

    move v2, v4

    .line 3453
    :cond_55
    iget v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 3452
    invoke-static {p0, v9, v2, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_5a
    .catchall {:try_start_49 .. :try_end_5a} :catchall_5e

    .line 3456
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_63

    :catchall_5e
    move-exception p0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3457
    throw p0

    .line 3459
    :cond_63
    :goto_63
    invoke-virtual {p1, v1}, Lcom/android/server/accessibility/AccessibilityUserState;->setServiceHandlesDoubleTapLocked(Z)V

    .line 3460
    invoke-virtual {p1, v3}, Lcom/android/server/accessibility/AccessibilityUserState;->setMultiFingerGesturesLocked(Z)V

    .line 3461
    invoke-virtual {p1, v5}, Lcom/android/server/accessibility/AccessibilityUserState;->setTwoFingerPassthroughLocked(Z)V

    .line 3462
    invoke-virtual {p1, v6}, Lcom/android/server/accessibility/AccessibilityUserState;->setSendMotionEventsEnabled(Z)V

    return-void
.end method

.method public final updateWindowMagnificationConnectionIfNeeded(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 4

    .line 3667
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->supportWindowMagnification()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 3670
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isShortcutMagnificationEnabledLocked()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1c

    .line 3671
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isDisplayMagnificationEnabledLocked()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 3672
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isAMEnabledLocked()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3673
    :cond_1c
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getMagnificationCapabilitiesLocked()I

    move-result v0

    if-ne v0, v1, :cond_2a

    .line 3675
    :cond_22
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->userHasMagnificationServicesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p1

    if-eqz p1, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    .line 3676
    :cond_2a
    :goto_2a
    sget-boolean p1, Lcom/android/server/accessibility/AccessibilityManagerService;->SEC_DEBUG:Z

    if-eqz p1, :cond_45

    .line 3677
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateWindowMagnificationConnectionIfNeeded connect : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AccessibilityManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3679
    :cond_45
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->requestConnection(Z)Z

    return-void
.end method

.method public final updateWindowsForAccessibilityCallbackLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 9

    .line 3092
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v0}, Lcom/android/server/accessibility/UiAutomationManager;->canRetrieveInteractiveWindowsLocked()Z

    move-result v0

    .line 3093
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 3094
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_e
    const/4 v5, 0x1

    if-nez v0, :cond_26

    if-ge v4, v2, :cond_26

    .line 3096
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 3097
    invoke-virtual {v6}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->canRetrieveInteractiveWindowsLocked()Z

    move-result v6

    if-eqz v6, :cond_23

    .line 3098
    invoke-virtual {p1, v3}, Lcom/android/server/accessibility/AccessibilityUserState;->setAccessibilityFocusOnlyInActiveWindow(Z)V

    move v0, v5

    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 3102
    :cond_26
    invoke-virtual {p1, v5}, Lcom/android/server/accessibility/AccessibilityUserState;->setAccessibilityFocusOnlyInActiveWindow(Z)V

    .line 3106
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 3107
    :goto_2d
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_53

    .line 3108
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Display;

    if-eqz v1, :cond_50

    if-eqz v0, :cond_47

    .line 3111
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->startTrackingWindows(I)V

    goto :goto_50

    .line 3113
    :cond_47
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->stopTrackingWindows(I)V

    :cond_50
    :goto_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    :cond_53
    return-void
.end method

.method public final userHasListeningMagnificationServicesLocked(Lcom/android/server/accessibility/AccessibilityUserState;I)Z
    .registers 8

    .line 3703
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 3704
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_23

    .line 3705
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 3706
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v4, v3}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 3707
    invoke-virtual {v3, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isMagnificationCallbackEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_23
    return v1
.end method

.method public final userHasMagnificationServicesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .registers 7

    .line 3687
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 3688
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_1d

    .line 3689
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 3690
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v4, v3}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1d
    return v1
.end method
