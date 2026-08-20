.class public Lcom/android/server/policy/PhoneWindowManager;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Lcom/android/server/policy/WindowManagerPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;,
        Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;,
        Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;,
        Lcom/android/server/policy/PhoneWindowManager$BackKeyRule;,
        Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;,
        Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;,
        Lcom/android/server/policy/PhoneWindowManager$HdmiControl;,
        Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;,
        Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;,
        Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;,
        Lcom/android/server/policy/PhoneWindowManager$DebugConfigTool;
    }
.end annotation


# static fields
.field public static final ACTION_VOICE_ASSIST_RETAIL:Ljava/lang/String; = "android.intent.action.VOICE_ASSIST_RETAIL"

.field public static final BRIGHTNESS_STEPS:I = 0xa

.field public static final BUGREPORT_TV_GESTURE_TIMEOUT_MILLIS:J = 0x3e8L

.field public static DEBUG_INPUT:Z = false

.field public static DEBUG_KEYGUARD:Z = false

.field public static DEBUG_WAKEUP:Z = false

.field public static final DOUBLE_PRESS_PRIMARY_NOTHING:I = 0x0

.field public static final DOUBLE_PRESS_PRIMARY_SWITCH_RECENT_APP:I = 0x1

.field public static final DOUBLE_TAP_HOME_NOTHING:I = 0x0

.field public static final DOUBLE_TAP_HOME_PIP_MENU:I = 0x2

.field public static final DOUBLE_TAP_HOME_RECENT_SYSTEM_UI:I = 0x1

.field public static final ENABLE_DESK_DOCK_HOME_CAPTURE:Z = false

.field public static final ENABLE_VR_HEADSET_HOME_CAPTURE:Z = true

.field public static final HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

.field public static final KEYGUARD_SCREENSHOT_CHORD_DELAY_MULTIPLIER:F = 2.5f

.field public static final LAST_LONG_PRESS_HOME_BEHAVIOR:I = 0x3

.field public static final LONG_PRESS_BACK_GO_TO_VOICE_ASSIST:I = 0x1

.field public static final LONG_PRESS_BACK_NOTHING:I = 0x0

.field public static final LONG_PRESS_HOME_ALL_APPS:I = 0x1

.field public static final LONG_PRESS_HOME_ASSIST:I = 0x2

.field public static final LONG_PRESS_HOME_NOTHING:I = 0x0

.field public static final LONG_PRESS_HOME_NOTIFICATION_PANEL:I = 0x3

.field public static final LONG_PRESS_POWER_ASSISTANT:I = 0x5

.field public static final LONG_PRESS_POWER_GLOBAL_ACTIONS:I = 0x1

.field public static final LONG_PRESS_POWER_GO_TO_VOICE_ASSIST:I = 0x4

.field public static final LONG_PRESS_POWER_NOTHING:I = 0x0

.field public static final LONG_PRESS_POWER_SHUT_OFF:I = 0x2

.field public static final LONG_PRESS_POWER_SHUT_OFF_NO_CONFIRM:I = 0x3

.field public static final LONG_PRESS_PRIMARY_LAUNCH_VOICE_ASSISTANT:I = 0x1

.field public static final LONG_PRESS_PRIMARY_NOTHING:I = 0x0

.field public static final MSG_ACCESSIBILITY_SHORTCUT:I = 0x11

.field public static final MSG_ACCESSIBILITY_TV:I = 0x13

.field public static final MSG_BUGREPORT_TV:I = 0x12

.field public static final MSG_DISPATCH_BACK_KEY_TO_AUTOFILL:I = 0x14

.field public static final MSG_DISPATCH_MEDIA_KEY_REPEAT_WITH_WAKE_LOCK:I = 0x4

.field public static final MSG_DISPATCH_MEDIA_KEY_WITH_WAKE_LOCK:I = 0x3

.field public static final MSG_DISPATCH_SHOW_GLOBAL_ACTIONS:I = 0xa

.field public static final MSG_DISPATCH_SHOW_RECENTS:I = 0x9

.field public static final MSG_HANDLE_ALL_APPS:I = 0x16

.field public static final MSG_HIDE_BOOT_MESSAGE:I = 0xb

.field public static final MSG_KEYGUARD_DRAWN_COMPLETE:I = 0x5

.field public static final MSG_KEYGUARD_DRAWN_TIMEOUT:I = 0x6

.field public static final MSG_LAUNCH_ASSIST:I = 0x17

.field public static final MSG_LAUNCH_VOICE_ASSIST_WITH_WAKE_LOCK:I = 0xc

.field public static final MSG_RINGER_TOGGLE_CHORD:I = 0x18

.field public static final MSG_SCREENSHOT_CHORD:I = 0x10

.field public static final MSG_SHOW_PICTURE_IN_PICTURE_MENU:I = 0xf

.field public static final MSG_SYSTEM_KEY_PRESS:I = 0x15

.field public static final MSG_WINDOW_MANAGER_DRAWN_COMPLETE:I = 0x7

.field public static final MULTI_PRESS_POWER_BRIGHTNESS_BOOST:I = 0x2

.field public static final MULTI_PRESS_POWER_LAUNCH_TARGET_ACTIVITY:I = 0x3

.field public static final MULTI_PRESS_POWER_NOTHING:I = 0x0

.field public static final MULTI_PRESS_POWER_THEATER_MODE:I = 0x1

.field public static final PENDING_KEY_NULL:I = -0x1

.field public static final PHYSICAL_EMULATION_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

.field public static final POWER_BUTTON_SUPPRESSION_DELAY_DEFAULT_MILLIS:I = 0x320

.field public static final POWER_VOLUME_UP_BEHAVIOR_GLOBAL_ACTIONS:I = 0x2

.field public static final POWER_VOLUME_UP_BEHAVIOR_MUTE:I = 0x1

.field public static final POWER_VOLUME_UP_BEHAVIOR_NOTHING:I = 0x0

.field public static final SHORT_PRESS_POWER_CLOSE_IME_OR_GO_HOME:I = 0x5

.field public static final SHORT_PRESS_POWER_GO_HOME:I = 0x4

.field public static final SHORT_PRESS_POWER_GO_TO_SLEEP:I = 0x1

.field public static final SHORT_PRESS_POWER_LOCK_OR_SLEEP:I = 0x6

.field public static final SHORT_PRESS_POWER_NOTHING:I = 0x0

.field public static final SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP:I = 0x2

.field public static final SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP_AND_GO_HOME:I = 0x3

.field public static final SHORT_PRESS_PRIMARY_LAUNCH_ALL_APPS:I = 0x1

.field public static final SHORT_PRESS_PRIMARY_NOTHING:I = 0x0

.field public static final SHORT_PRESS_SLEEP_GO_TO_SLEEP:I = 0x0

.field public static final SHORT_PRESS_SLEEP_GO_TO_SLEEP_AND_GO_HOME:I = 0x1

.field public static final SHORT_PRESS_WINDOW_NOTHING:I = 0x0

.field public static final SHORT_PRESS_WINDOW_PICTURE_IN_PICTURE:I = 0x1

.field public static final SYSTEM_DIALOG_REASON_ASSIST:Ljava/lang/String; = "assist"

.field public static final SYSTEM_DIALOG_REASON_GESTURE_NAV:Ljava/lang/String; = "gestureNav"

.field public static final SYSTEM_DIALOG_REASON_GLOBAL_ACTIONS:Ljava/lang/String; = "globalactions"

.field public static final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String; = "homekey"

.field public static final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"

.field public static final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String; = "recentapps"

.field public static final SYSTEM_DIALOG_REASON_SCREENSHOT:Ljava/lang/String; = "screenshot"

.field public static final TAG:Ljava/lang/String; = "WindowManager"

.field public static final TALKBACK_LABEL:Ljava/lang/String; = "TalkBack"

.field public static final TOAST_WINDOW_ANIM_BUFFER:I = 0x258

.field public static final TOAST_WINDOW_TIMEOUT:I = 0x1004

.field public static final TOUCH_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

.field public static final TRIPLE_PRESS_PRIMARY_NOTHING:I = 0x0

.field public static final TRIPLE_PRESS_PRIMARY_TOGGLE_ACCESSIBILITY:I = 0x1

.field public static final VERY_LONG_PRESS_POWER_GLOBAL_ACTIONS:I = 0x1

.field public static final VERY_LONG_PRESS_POWER_NOTHING:I = 0x0

.field public static final WAITING_FOR_DRAWN_TIMEOUT:I = 0x3e8

.field public static final WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

.field public static localLOGV:Z = false


# instance fields
.field public mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mAllowStartActivityForLongPressOnPowerDuringSetup:Z

.field public mAllowTheaterModeWakeFromCameraLens:Z

.field public mAllowTheaterModeWakeFromKey:Z

.field public mAllowTheaterModeWakeFromLidSwitch:Z

.field public mAllowTheaterModeWakeFromMotion:Z

.field public mAllowTheaterModeWakeFromMotionWhenNotDreaming:Z

.field public mAllowTheaterModeWakeFromPowerKey:Z

.field public mAllowTheaterModeWakeFromWakeGesture:Z

.field public mAppOpsManager:Landroid/app/AppOpsManager;

.field public mAudioManagerInternal:Landroid/media/AudioManagerInternal;

.field public mAutofillManagerInternal:Landroid/view/autofill/AutofillManagerInternal;

.field public volatile mBackKeyHandled:Z

.field public volatile mBootAnimationDismissable:Z

.field public mBootMessageNeedsHiding:Z

.field public mBootMsgDialog:Landroid/app/ProgressDialog;

.field public mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

.field public volatile mCameraGestureTriggered:Z

.field public volatile mCameraGestureTriggeredDuringGoingToSleep:Z

.field public mCameraLensCoverState:I

.field public mCarDockIntent:Landroid/content/Intent;

.field public mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public mDefaultDisplay:Landroid/view/Display;

.field public mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

.field public mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

.field public mDeskDockIntent:Landroid/content/Intent;

.field public volatile mDeviceGoingToSleep:Z

.field public mDexDisplay:Landroid/view/Display;

.field public volatile mDismissImeOnBackKeyPressed:Z

.field public mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

.field public final mDisplayHomeButtonHandlers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;",
            ">;"
        }
    .end annotation
.end field

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public mDockReceiver:Landroid/content/BroadcastReceiver;

.field public mDoublePressOnPowerBehavior:I

.field public mDoublePressOnStemPrimaryBehavior:I

.field public mDoubleTapOnHomeBehavior:I

.field public mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

.field public mDreamReceiver:Landroid/content/BroadcastReceiver;

.field public mEnableCarDockHomeCapture:Z

.field public mEnableShiftMenuBugReports:Z

.field public volatile mEndCallKeyHandled:Z

.field public final mEndCallLongPress:Ljava/lang/Runnable;

.field public mEndcallBehavior:I

.field public mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

.field public final mFallbackActions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/KeyCharacterMap$FallbackAction;",
            ">;"
        }
    .end annotation
.end field

.field public mGestureLauncherService:Lcom/android/server/GestureLauncherService;

.field public mGlobalActions:Lcom/android/server/policy/GlobalActions;

.field public mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

.field public mGoToSleepOnButtonPressTheaterMode:Z

.field public mHDMIObserver:Landroid/os/UEventObserver;

.field public mHandleVolumeKeysInWM:Z

.field public mHandler:Landroid/os/Handler;

.field public mHapticTextHandleEnabled:Z

.field public mHasFeatureAuto:Z

.field public mHasFeatureHdmiCec:Z

.field public mHasFeatureLeanback:Z

.field public mHasFeatureWatch:Z

.field public mHasSoftInput:Z

.field public mHaveBuiltInKeyboard:Z

.field public mHavePendingMediaKeyRepeatWithWakeLock:Z

.field public mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

.field public mHomeIntent:Landroid/content/Intent;

.field public mIncallBackBehavior:I

.field public mIncallPowerBehavior:I

.field public mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

.field public mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

.field public mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

.field public mKeyguardBound:Z

.field public mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

.field public final mKeyguardDrawnCallback:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

.field public mKeyguardDrawnOnce:Z

.field public mKeyguardOccludedChanged:Z

.field public mLidKeyboardAccessibility:I

.field public mLidNavigationAccessibility:I

.field public final mLock:Ljava/lang/Object;

.field public mLockNowPending:Z

.field public mLockScreenTimeout:I

.field public mLockScreenTimerActive:Z

.field public final mLogDecelerateInterpolator:Lcom/android/internal/policy/LogDecelerateInterpolator;

.field public mLogger:Lcom/android/internal/logging/MetricsLogger;

.field public mLongPressOnBackBehavior:I

.field public mLongPressOnHomeBehavior:I

.field public mLongPressOnPowerAssistantTimeoutMs:J

.field public mLongPressOnPowerBehavior:I

.field public mLongPressOnStemPrimaryBehavior:I

.field public mModifierShortcutManager:Lcom/android/server/policy/ModifierShortcutManager;

.field public mMultiuserReceiver:Landroid/content/BroadcastReceiver;

.field public volatile mNavBarVirtualKeyHapticFeedbackEnabled:Z

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mPendingCapsLockToggle:Z

.field public mPendingKeyguardOccluded:Z

.field public mPendingMetaAction:Z

.field public volatile mPendingWakeKey:I

.field public mPerDisplayFocusEnabled:Z

.field public final mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

.field public volatile mPictureInPictureVisible:Z

.field public mPowerButtonSuppressionDelayMillis:I

.field public mPowerDoublePressTargetActivity:Landroid/content/ComponentName;

.field public volatile mPowerKeyHandled:Z

.field public mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mPowerManager:Landroid/os/PowerManager;

.field public mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field public mPowerVolUpBehavior:I

.field public mPreloadedRecentApps:Z

.field public mRecentAppsHeldModifiers:I

.field public volatile mRecentsVisible:Z

.field public volatile mRequestedOrSleepingDefaultDisplay:Z

.field public mRingerToggleChord:I

.field public mSafeMode:Z

.field public mSafeModeEnabledVibePattern:[J

.field public final mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

.field public mScreenOffSleepTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

.field public final mScreenOnListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;",
            ">;"
        }
    .end annotation
.end field

.field public mSearchManager:Landroid/app/SearchManager;

.field public final mServiceAcquireLock:Ljava/lang/Object;

.field public mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

.field public mShortPressOnPowerBehavior:I

.field public mShortPressOnSleepBehavior:I

.field public mShortPressOnStemPrimaryBehavior:I

.field public mShortPressOnWindowBehavior:I

.field public mSideFpsEventHandler:Lcom/android/server/policy/SideFpsEventHandler;

.field public mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

.field public mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field public mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public mSupportLongPressPowerWhenNonInteractive:Z

.field public mSystemBooted:Z

.field public mSystemKeyRequested:Z

.field public mSystemNavigationKeysEnabled:Z

.field public mSystemReady:Z

.field public volatile mTopFocusedDisplayId:I

.field public mTriplePressOnPowerBehavior:I

.field public mTriplePressOnStemPrimaryBehavior:I

.field public mUiMode:I

.field public mUiModeManager:Landroid/app/IUiModeManager;

.field public mUseTvRouting:Z

.field public mVeryLongPressOnPowerBehavior:I

.field public mVibrator:Landroid/os/Vibrator;

.field public mVrHeadsetHomeIntent:Landroid/content/Intent;

.field public volatile mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

.field public mWakeGestureEnabledSetting:Z

.field public mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

.field public mWakeOnAssistKeyPress:Z

.field public mWakeOnBackKeyPress:Z

.field public mWakeOnDpadKeyPress:Z

.field public mWakeUpToLastStateTimeout:J

.field public mWindowManager:Landroid/view/IWindowManager;

.field public mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

.field public mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$60xktEWPfmz688aGJuMuMUj4ww8(Lcom/android/server/policy/PhoneWindowManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->lambda$screenTurningOn$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Nn3XcvsjqAobC86U_kx02k8SrpI(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->lambda$startedGoingToSleep$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$eloWGeEuJCr79RcNDFDs8LwnHc4(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->lambda$finishKeyguardDrawn$1()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAccessibilityShortcutController(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/internal/accessibility/AccessibilityShortcutController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAllowTheaterModeWakeFromWakeGesture(Lcom/android/server/policy/PhoneWindowManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromWakeGesture:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDoubleTapOnHomeBehavior(Lcom/android/server/policy/PhoneWindowManager;)I
    .registers 1

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/policy/PhoneWindowManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSupportLongPressPowerWhenNonInteractive(Lcom/android/server/policy/PhoneWindowManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportLongPressPowerWhenNonInteractive:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmLockNowPending(Lcom/android/server/policy/PhoneWindowManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockNowPending:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$maccessibilityShortcutActivated(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->accessibilityShortcutActivated()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mbackKeyPress(Lcom/android/server/policy/PhoneWindowManager;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->backKeyPress()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mbackLongPress(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->backLongPress()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelAccessibilityGestureTv(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelAccessibilityGestureTv()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelBugreportGestureTv(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelBugreportGestureTv()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelPendingAccessibilityShortcutAction(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingAccessibilityShortcutAction()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelPreloadRecentApps(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPreloadRecentApps()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfinishKeyguardDrawn(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishKeyguardDrawn()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfinishWindowsDrawn(Lcom/android/server/policy/PhoneWindowManager;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->finishWindowsDrawn(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetMaxMultiPressStemPrimaryCount(Lcom/android/server/policy/PhoneWindowManager;)I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressStemPrimaryCount()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetResolvedLongPressOnPowerBehavior(Lcom/android/server/policy/PhoneWindowManager;)I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getResolvedLongPressOnPowerBehavior()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhandleHideBootMessage(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->handleHideBootMessage()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleRingerChordGesture(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->handleRingerChordGesture()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleScreenShot(Lcom/android/server/policy/PhoneWindowManager;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->handleScreenShot(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minterceptAccessibilityGestureTv(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptAccessibilityGestureTv()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minterceptAccessibilityShortcutChord(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptAccessibilityShortcutChord()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minterceptBugreportGestureTv(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptBugreportGestureTv()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpowerLongPress(Lcom/android/server/policy/PhoneWindowManager;JLandroid/view/KeyEvent;I)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->powerLongPress(JLandroid/view/KeyEvent;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpowerPress(Lcom/android/server/policy/PhoneWindowManager;JIZLandroid/view/KeyEvent;)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/policy/PhoneWindowManager;->powerPress(JIZLandroid/view/KeyEvent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpowerVeryLongPress(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->powerVeryLongPress()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpreloadRecentApps(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->preloadRecentApps()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrequestBugreportForTv(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->requestBugreportForTv()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendSystemKeyToStatusBar(Lcom/android/server/policy/PhoneWindowManager;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBar(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshouldEnableWakeGestureLp(Lcom/android/server/policy/PhoneWindowManager;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldEnableWakeGestureLp()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mshowPictureInPictureMenuInternal(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->showPictureInPictureMenuInternal()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowRecentApps(Lcom/android/server/policy/PhoneWindowManager;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstemPrimaryLongPress(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->stemPrimaryLongPress()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstemPrimaryPress(Lcom/android/server/policy/PhoneWindowManager;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->stemPrimaryPress(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetWINDOW_TYPES_WHERE_HOME_DOESNT_WORK()[I
    .registers 1

    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 270
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_FACTORY_BINARY:Z

    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    const/4 v0, 0x1

    .line 272
    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    .line 274
    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    const/16 v0, 0x12

    .line 404
    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->TOUCH_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    const/16 v0, 0x22

    .line 406
    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->PHYSICAL_EMULATION_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    const/16 v0, 0x32

    .line 408
    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 3189
    fill-array-data v0, :array_2a

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    return-void

    :array_2a
    .array-data 4
        0x7d3
        0x7da
    .end array-data
.end method

.method public constructor <init>()V
    .registers 5

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 451
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListeners:Landroid/util/SparseArray;

    .line 471
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAcquireLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 496
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    const/4 v1, 0x1

    .line 505
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    .line 512
    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$1;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManager$1;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnCallback:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    .line 558
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarVirtualKeyHapticFeedbackEnabled:Z

    const/4 v1, -0x1

    .line 564
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    .line 568
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    .line 597
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    .line 623
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    .line 676
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    .line 695
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    .line 698
    new-instance v2, Lcom/android/internal/policy/LogDecelerateInterpolator;

    const/16 v3, 0x64

    invoke-direct {v2, v3, v0}, Lcom/android/internal/policy/LogDecelerateInterpolator;-><init>(II)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogDecelerateInterpolator:Lcom/android/internal/policy/LogDecelerateInterpolator;

    .line 701
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPerDisplayFocusEnabled:Z

    .line 702
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedDisplayId:I

    const/16 v1, 0x320

    .line 704
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonSuppressionDelayMillis:I

    .line 712
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockNowPending:Z

    .line 715
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemKeyRequested:Z

    .line 811
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$2;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    .line 892
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$3;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

    .line 1793
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$4;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    .line 2164
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    .line 5344
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$13;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$13;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    .line 5363
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$14;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$14;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamReceiver:Landroid/content/BroadcastReceiver;

    .line 5378
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$15;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$15;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    .line 6086
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    .line 6205
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    return-void
.end method

.method public static awakenDreams()V
    .registers 1

    .line 3153
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 3156
    :try_start_6
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_9

    :catch_9
    :cond_9
    return-void
.end method

.method public static doublePressOnStemPrimaryBehaviorToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_d

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    .line 7036
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    const-string p0, "DOUBLE_PRESS_PRIMARY_SWITCH_RECENT_APP"

    return-object p0

    :cond_d
    const-string p0, "DOUBLE_PRESS_PRIMARY_NOTHING"

    return-object p0
.end method

.method public static doubleTapOnHomeBehaviorToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_13

    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    .line 6891
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const-string p0, "DOUBLE_TAP_HOME_PIP_MENU"

    return-object p0

    :cond_10
    const-string p0, "DOUBLE_TAP_HOME_RECENT_SYSTEM_UI"

    return-object p0

    :cond_13
    const-string p0, "DOUBLE_TAP_HOME_NOTHING"

    return-object p0
.end method

.method public static endcallBehaviorToString(I)Ljava/lang/String;
    .registers 3

    .line 6823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_f

    const-string/jumbo v1, "home|"

    .line 6825
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_19

    const-string/jumbo p0, "sleep|"

    .line 6828
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6831
    :cond_19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_22

    const-string p0, "<nothing>"

    return-object p0

    :cond_22
    const/4 v1, 0x0

    add-int/lit8 p0, p0, -0x1

    .line 6836
    invoke-virtual {v0, v1, p0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAudioService()Landroid/media/IAudioService;
    .registers 3

    const-string v0, "audio"

    .line 3178
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3177
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    if-nez v0, :cond_13

    const-string v1, "WindowManager"

    const-string v2, "Unable to find IAudioService interface."

    .line 3180
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    return-object v0
.end method

.method public static getDreamManager()Landroid/service/dreams/IDreamManager;
    .registers 1

    const-string v0, "dreams"

    .line 3165
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3164
    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    return-object v0
.end method

.method public static getLongIntArray(Landroid/content/res/Resources;I)[J
    .registers 2

    .line 5992
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->convertToLongArray([I)[J

    move-result-object p0

    return-object p0
.end method

.method public static incallBackBehaviorToString(I)Ljava/lang/String;
    .registers 1

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_8

    const-string/jumbo p0, "hangup"

    return-object p0

    :cond_8
    const-string p0, "<nothing>"

    return-object p0
.end method

.method public static incallPowerBehaviorToString(I)Ljava/lang/String;
    .registers 1

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_8

    const-string/jumbo p0, "hangup"

    return-object p0

    :cond_8
    const-string/jumbo p0, "sleep"

    return-object p0
.end method

.method public static isLongPressToAssistantEnabled(Landroid/content/Context;)Z
    .registers 5

    .line 7076
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "clockwork_long_press_to_assistant_enabled"

    const/4 v1, 0x1

    const/4 v2, -0x2

    .line 7077
    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const-string v0, "WindowManager"

    const/4 v2, 0x3

    .line 7081
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 7082
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "longPressToAssistant = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    if-ne p0, v1, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    return v1
.end method

.method public static isValidGlobalKey(I)Z
    .registers 2

    const/16 v0, 0x1a

    if-eq p0, v0, :cond_e

    const/16 v0, 0xdf

    if-eq p0, v0, :cond_e

    const/16 v0, 0xe0

    if-eq p0, v0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$finishKeyguardDrawn$1()V
    .registers 4

    .line 5621
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_b

    const-string v0, "WindowManager"

    const-string v1, "All windows ready for every display"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5622
    :cond_b
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x7

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private synthetic lambda$screenTurningOn$2(I)V
    .registers 4

    .line 5709
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "All windows ready for display: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5710
    :cond_1a
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private synthetic lambda$startedGoingToSleep$0()V
    .registers 1

    .line 5423
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendScreenOffEvent()V

    return-void
.end method

.method public static lidBehaviorToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_13

    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    .line 7071
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const-string p0, "LID_BEHAVIOR_LOCK"

    return-object p0

    :cond_10
    const-string p0, "LID_BEHAVIOR_SLEEP"

    return-object p0

    :cond_13
    const-string p0, "LID_BEHAVIOR_NONE"

    return-object p0
.end method

.method public static longPressOnBackBehaviorToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_d

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    .line 6863
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    const-string p0, "LONG_PRESS_BACK_GO_TO_VOICE_ASSIST"

    return-object p0

    :cond_d
    const-string p0, "LONG_PRESS_BACK_NOTHING"

    return-object p0
.end method

.method public static longPressOnHomeBehaviorToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_19

    const/4 v0, 0x1

    if-eq p0, v0, :cond_16

    const/4 v0, 0x2

    if-eq p0, v0, :cond_13

    const/4 v0, 0x3

    if-eq p0, v0, :cond_10

    .line 6878
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_10
    const-string p0, "LONG_PRESS_HOME_NOTIFICATION_PANEL"

    return-object p0

    :cond_13
    const-string p0, "LONG_PRESS_HOME_ASSIST"

    return-object p0

    :cond_16
    const-string p0, "LONG_PRESS_HOME_ALL_APPS"

    return-object p0

    :cond_19
    const-string p0, "LONG_PRESS_HOME_NOTHING"

    return-object p0
.end method

.method public static longPressOnPowerBehaviorToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_33

    const/4 v0, 0x1

    if-eq p0, v0, :cond_30

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2d

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2a

    const/4 v0, 0x4

    if-eq p0, v0, :cond_27

    const/4 v0, 0x5

    if-eq p0, v0, :cond_24

    const/16 v0, 0x65

    if-eq p0, v0, :cond_21

    const/16 v0, 0x66

    if-eq p0, v0, :cond_1e

    .line 6937
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1e
    const-string p0, "LONG_PRESS_POWER_KEY_CUSTOMIZATION"

    return-object p0

    :cond_21
    const-string p0, "LONG_PRESS_POWER_WAKE_BIXBY"

    return-object p0

    :cond_24
    const-string p0, "LONG_PRESS_POWER_ASSISTANT"

    return-object p0

    :cond_27
    const-string p0, "LONG_PRESS_POWER_GO_TO_VOICE_ASSIST"

    return-object p0

    :cond_2a
    const-string p0, "LONG_PRESS_POWER_SHUT_OFF_NO_CONFIRM"

    return-object p0

    :cond_2d
    const-string p0, "LONG_PRESS_POWER_SHUT_OFF"

    return-object p0

    :cond_30
    const-string p0, "LONG_PRESS_POWER_GLOBAL_ACTIONS"

    return-object p0

    :cond_33
    const-string p0, "LONG_PRESS_POWER_NOTHING"

    return-object p0
.end method

.method public static longPressOnStemPrimaryBehaviorToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_d

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    .line 7058
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    const-string p0, "LONG_PRESS_PRIMARY_LAUNCH_VOICE_ASSISTANT"

    return-object p0

    :cond_d
    const-string p0, "LONG_PRESS_PRIMARY_NOTHING"

    return-object p0
.end method

.method public static multiPressOnPowerBehaviorToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_28

    const/4 v0, 0x1

    if-eq p0, v0, :cond_25

    const/4 v0, 0x2

    if-eq p0, v0, :cond_22

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1f

    packed-switch p0, :pswitch_data_2c

    .line 6992
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_13
    const-string p0, "MULTI_PRESS_POWER_SIDE_KEY_ACTION"

    return-object p0

    :pswitch_16
    const-string p0, "MULTI_PRESS_POWER_EMERGENCY_SOS"

    return-object p0

    :pswitch_19
    const-string p0, "MULTI_PRESS_POWER_PANIC_CALL"

    return-object p0

    :pswitch_1c
    const-string p0, "MULTI_PRESS_POWER_LAUNCH_CAMERA"

    return-object p0

    :cond_1f
    const-string p0, "MULTI_PRESS_POWER_LAUNCH_TARGET_ACTIVITY"

    return-object p0

    :cond_22
    const-string p0, "MULTI_PRESS_POWER_BRIGHTNESS_BOOST"

    return-object p0

    :cond_25
    const-string p0, "MULTI_PRESS_POWER_THEATER_MODE"

    return-object p0

    :cond_28
    const-string p0, "MULTI_PRESS_POWER_NOTHING"

    return-object p0

    nop

    :pswitch_data_2c
    .packed-switch 0x65
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
    .end packed-switch
.end method

.method public static powerVolumeUpBehaviorToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_13

    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    .line 6961
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const-string p0, "POWER_VOLUME_UP_BEHAVIOR_GLOBAL_ACTIONS"

    return-object p0

    :cond_10
    const-string p0, "POWER_VOLUME_UP_BEHAVIOR_MUTE"

    return-object p0

    :cond_13
    const-string p0, "POWER_VOLUME_UP_BEHAVIOR_NOTHING"

    return-object p0
.end method

.method public static shortPressOnPowerBehaviorToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_25

    const/4 v0, 0x1

    if-eq p0, v0, :cond_22

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1f

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x4

    if-eq p0, v0, :cond_19

    const/4 v0, 0x5

    if-eq p0, v0, :cond_16

    .line 6910
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    const-string p0, "SHORT_PRESS_POWER_CLOSE_IME_OR_GO_HOME"

    return-object p0

    :cond_19
    const-string p0, "SHORT_PRESS_POWER_GO_HOME"

    return-object p0

    :cond_1c
    const-string p0, "SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP_AND_GO_HOME"

    return-object p0

    :cond_1f
    const-string p0, "SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP"

    return-object p0

    :cond_22
    const-string p0, "SHORT_PRESS_POWER_GO_TO_SLEEP"

    return-object p0

    :cond_25
    const-string p0, "SHORT_PRESS_POWER_NOTHING"

    return-object p0
.end method

.method public static shortPressOnSleepBehaviorToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_d

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    .line 7003
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    const-string p0, "SHORT_PRESS_SLEEP_GO_TO_SLEEP_AND_GO_HOME"

    return-object p0

    :cond_d
    const-string p0, "SHORT_PRESS_SLEEP_GO_TO_SLEEP"

    return-object p0
.end method

.method public static shortPressOnStemPrimaryBehaviorToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_d

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    .line 7025
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    const-string p0, "SHORT_PRESS_PRIMARY_LAUNCH_ALL_APPS"

    return-object p0

    :cond_d
    const-string p0, "SHORT_PRESS_PRIMARY_NOTHING"

    return-object p0
.end method

.method public static shortPressOnWindowBehaviorToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_d

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    .line 7014
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    const-string p0, "SHORT_PRESS_WINDOW_PICTURE_IN_PICTURE"

    return-object p0

    :cond_d
    const-string p0, "SHORT_PRESS_WINDOW_NOTHING"

    return-object p0
.end method

.method public static triplePressOnStemPrimaryBehaviorToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_d

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    .line 7047
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    const-string p0, "TRIPLE_PRESS_PRIMARY_TOGGLE_ACCESSIBILITY"

    return-object p0

    :cond_d
    const-string p0, "TRIPLE_PRESS_PRIMARY_NOTHING"

    return-object p0
.end method

.method public static veryLongPressOnPowerBehaviorToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_d

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    .line 6948
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    const-string p0, "VERY_LONG_PRESS_POWER_GLOBAL_ACTIONS"

    return-object p0

    :cond_d
    const-string p0, "VERY_LONG_PRESS_POWER_NOTHING"

    return-object p0
.end method


# virtual methods
.method public final accessibilityShortcutActivated()V
    .registers 3

    const-string v0, "WindowManager"

    const-string v1, "Accessibility Shortcut Volup + Voldown is performed"

    .line 1485
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-virtual {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->performAccessibilityShortcut()V

    return-void
.end method

.method public adjustConfigurationLw(Landroid/content/res/Configuration;II)V
    .registers 7

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 3096
    :goto_8
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHaveBuiltInKeyboard:Z

    .line 3098
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->readConfigurationDependentBehaviors()V

    .line 3105
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->readLidState()V

    .line 3108
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1f

    if-ne p2, v1, :cond_27

    iget p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    .line 3110
    invoke-virtual {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isHidden(I)Z

    move-result p2

    if-eqz p2, :cond_27

    .line 3111
    :cond_1f
    iput v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 3112
    iget-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    if-nez p2, :cond_27

    .line 3113
    iput v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 3117
    :cond_27
    iget p2, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq p2, v1, :cond_35

    if-ne p3, v1, :cond_37

    iget p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    .line 3119
    invoke-virtual {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isHidden(I)Z

    move-result p2

    if-eqz p2, :cond_37

    .line 3120
    :cond_35
    iput v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    .line 3125
    :cond_37
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->adjustConfigurationLw(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public applyKeyguardOcclusionChange(Z)I
    .registers 5

    .line 3923
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    .line 3924
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "transition/occluded changed occluded="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WindowManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3926
    :cond_22
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(ZZZ)Z

    move-result p0

    if-eqz p0, :cond_2c

    const/4 p0, 0x5

    return p0

    :cond_2c
    return v1
.end method

.method public final applyLidSwitchState()V
    .registers 5

    .line 6289
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getLidState()I

    move-result v0

    if-nez v0, :cond_21

    .line 6291
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getLidBehavior()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    const/4 v1, 0x2

    if-eq v0, v1, :cond_13

    goto :goto_21

    .line 6294
    :cond_13
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->lockDeviceNow()V

    goto :goto_21

    .line 6297
    :cond_19
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v0, 0x3

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplay(JII)V

    .line 6308
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6309
    :try_start_24
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 6310
    monitor-exit v0

    return-void

    :catchall_29
    move-exception p0

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public final backKeyPress()Z
    .registers 5

    .line 942
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string/jumbo v1, "key_back_press"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 944
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    .line 946
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    if-eqz v1, :cond_30

    .line 947
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 950
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 953
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->silenceRinger()V

    const/4 p0, 0x0

    return p0

    .line 957
    :cond_20
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallBackBehavior:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_30

    .line 959
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 962
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result p0

    return p0

    .line 967
    :cond_30
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAutofillManagerInternal:Landroid/view/autofill/AutofillManagerInternal;

    if-eqz v1, :cond_3f

    .line 968
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3f
    return v0
.end method

.method public final backLongPress()V
    .registers 3

    const/4 v0, 0x1

    .line 1471
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    .line 1473
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    if-eq v1, v0, :cond_8

    goto :goto_c

    :cond_8
    const/4 v0, 0x0

    .line 1477
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->launchVoiceAssist(Z)V

    :goto_c
    return-void
.end method

.method public final bindKeyguard()V
    .registers 3

    .line 5996
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5997
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardBound:Z

    if-eqz v1, :cond_9

    .line 5998
    monitor-exit v0

    return-void

    :cond_9
    const/4 v1, 0x1

    .line 6000
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardBound:Z

    .line 6001
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_15

    .line 6002
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->bindService(Landroid/content/Context;)V

    return-void

    :catchall_15
    move-exception p0

    .line 6001
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public canDismissBootAnimation()Z
    .registers 2

    .line 6083
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardDrawComplete()Z

    move-result v0

    if-nez v0, :cond_f

    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootAnimationDismissable:Z

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public final cancelAccessibilityGestureTv()V
    .registers 2

    .line 3677
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final cancelBugreportGestureTv()V
    .registers 2

    .line 3663
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final cancelGlobalActionsAction()V
    .registers 2

    .line 1835
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final cancelPendingAccessibilityShortcutAction()V
    .registers 2

    .line 1786
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final cancelPendingRingerToggleChordAction()V
    .registers 2

    .line 1790
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final cancelPendingScreenshotChordAction()V
    .registers 2

    .line 1782
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final cancelPreloadRecentApps()V
    .registers 2

    .line 4062
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    .line 4063
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 4064
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 4066
    invoke-interface {p0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->cancelPreloadRecentApps()V

    :cond_10
    return-void
.end method

.method public checkAddPermission(IZLjava/lang/String;[I)I
    .registers 20

    move-object v0, p0

    move/from16 v1, p1

    const-string v2, "android.permission.INTERNAL_SYSTEM_WINDOW"

    const/4 v3, -0x8

    if-eqz p2, :cond_11

    .line 2969
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_11

    return v3

    :cond_11
    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 2974
    aput v4, p4, v5

    const/16 v4, 0xbb7

    const/16 v6, 0x7d0

    const/16 v7, 0x3e8

    const/4 v8, 0x1

    if-lt v1, v8, :cond_22

    const/16 v9, 0x63

    if-le v1, v9, :cond_2e

    :cond_22
    if-lt v1, v7, :cond_28

    const/16 v9, 0x7cf

    if-le v1, v9, :cond_2e

    :cond_28
    if-lt v1, v6, :cond_d0

    if-le v1, v4, :cond_2e

    goto/16 :goto_d0

    :cond_2e
    if-lt v1, v6, :cond_cf

    if-le v1, v4, :cond_34

    goto/16 :goto_cf

    .line 2987
    :cond_34
    invoke-static/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v4

    if-nez v4, :cond_65

    const/16 v4, 0x7d5

    if-eq v1, v4, :cond_60

    const/16 v4, 0x7db

    if-eq v1, v4, :cond_5f

    const/16 v4, 0x7dd

    if-eq v1, v4, :cond_5f

    const/16 v4, 0x7e8

    if-eq v1, v4, :cond_5f

    const/16 v4, 0x7f3

    if-eq v1, v4, :cond_5f

    const/16 v4, 0x7f5

    if-eq v1, v4, :cond_5f

    packed-switch v1, :pswitch_data_d4

    .line 3008
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5e

    move v3, v5

    :cond_5e
    return v3

    :cond_5f
    :pswitch_5f
    return v5

    :cond_60
    const/16 v0, 0x2d

    .line 2994
    aput v0, p4, v5

    return v5

    :cond_65
    const/16 v4, 0x18

    .line 3013
    aput v4, p4, v5

    .line 3015
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 3017
    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    if-ne v4, v7, :cond_74

    return v5

    .line 3023
    :cond_74
    :try_start_74
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 3026
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6
    :try_end_7a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_74 .. :try_end_7a} :catch_81

    move-object/from16 v7, p3

    .line 3023
    :try_start_7c
    invoke-virtual {v4, v7, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4
    :try_end_80
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7c .. :try_end_80} :catch_83

    goto :goto_84

    :catch_81
    move-object/from16 v7, p3

    :catch_83
    const/4 v4, 0x0

    :goto_84
    if-eqz v4, :cond_c5

    const/16 v6, 0x7f6

    if-eq v1, v6, :cond_91

    .line 3031
    iget v1, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0x1a

    if-lt v1, v6, :cond_91

    goto :goto_c5

    .line 3042
    :cond_91
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.SYSTEM_APPLICATION_OVERLAY"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_9c

    return v5

    .line 3050
    :cond_9c
    iget-object v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    aget v10, p4, v5

    const/4 v13, 0x0

    const-string v14, "check-add"

    move-object/from16 v12, p3

    invoke-virtual/range {v9 .. v14}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_c4

    if-eq v1, v8, :cond_c4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_bc

    .line 3067
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_bb

    move v3, v5

    :cond_bb
    return v3

    .line 3060
    :cond_bc
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_c3

    return v5

    :cond_c3
    return v3

    :cond_c4
    return v5

    .line 3038
    :cond_c5
    :goto_c5
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_ce

    move v3, v5

    :cond_ce
    return v3

    :cond_cf
    :goto_cf
    return v5

    :cond_d0
    :goto_d0
    const/16 v0, -0xa

    return v0

    nop

    :pswitch_data_d4
    .packed-switch 0x7ee
        :pswitch_5f
        :pswitch_5f
        :pswitch_5f
    .end packed-switch
.end method

.method public createHiddenByKeyguardExit(ZZZ)Landroid/view/animation/Animation;
    .registers 5

    .line 3138
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogDecelerateInterpolator:Lcom/android/internal/policy/LogDecelerateInterpolator;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/internal/policy/TransitionAnimation;->createHiddenByKeyguardExit(Landroid/content/Context;Lcom/android/internal/policy/LogDecelerateInterpolator;ZZZ)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method public createHomeDockIntent()Landroid/content/Intent;
    .registers 5

    .line 6357
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_d

    .line 6358
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    if-eqz v0, :cond_2b

    .line 6359
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    goto :goto_2c

    :cond_d
    const/4 v3, 0x2

    if-ne v0, v3, :cond_11

    goto :goto_2b

    :cond_11
    const/4 v3, 0x6

    if-ne v0, v3, :cond_25

    .line 6366
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getDockMode()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_22

    const/4 v3, 0x4

    if-eq v0, v3, :cond_22

    if-ne v0, v1, :cond_2b

    .line 6371
    :cond_22
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    goto :goto_2c

    :cond_25
    const/4 v1, 0x7

    if-ne v0, v1, :cond_2b

    .line 6375
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrHeadsetHomeIntent:Landroid/content/Intent;

    goto :goto_2c

    :cond_2b
    :goto_2b
    move-object v0, v2

    :goto_2c
    if-nez v0, :cond_2f

    return-object v2

    .line 6384
    :cond_2f
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const v3, 0x10080

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v1, v0, v3, p0}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_3f

    .line 6389
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_40

    :cond_3f
    move-object p0, v2

    :goto_40
    if-eqz p0, :cond_5b

    .line 6391
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_5b

    const-string v3, "android.dock_home"

    .line 6393
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 6394
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 6395
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0, p0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v1

    :cond_5b
    return-object v2
.end method

.method public createKeyguardWallpaperExit(Z)Landroid/view/animation/Animation;
    .registers 2

    if-eqz p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 3148
    :cond_4
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const p1, 0x10a0094

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method public createPolicyExtension(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;)Lcom/android/server/policy/WindowManagerPolicyExt;
    .registers 4

    .line 7127
    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-direct {v0, p1, p0, p2}, Lcom/android/server/policy/PhoneWindowManagerExt;-><init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;)V

    return-object v0
.end method

.method public dismissKeyboardShortcutsMenu()V
    .registers 1

    .line 4146
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 4148
    invoke-interface {p0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->dismissKeyboardShortcutsMenu()V

    :cond_9
    return-void
.end method

.method public dismissKeyguardLw(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .registers 5

    .line 5932
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    const-string v1, "WindowManager"

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 5933
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    if-eqz v0, :cond_15

    const-string v0, "PWM.dismissKeyguardLw"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5936
    :cond_15
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    goto :goto_27

    :cond_1b
    if-eqz p1, :cond_27

    .line 5939
    :try_start_1d
    invoke-interface {p1}, Lcom/android/internal/policy/IKeyguardDismissCallback;->onDismissError()V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_27

    :catch_21
    move-exception p0

    const-string p1, "Failed to call callback"

    .line 5941
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_27
    :goto_27
    return-void
.end method

.method public final dispatchDirectAudioEvent(Landroid/view/KeyEvent;)V
    .registers 5

    const-string v0, "WindowManager"

    .line 5245
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getHdmiControlManager()Landroid/hardware/hdmi/HdmiControlManager;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 5247
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiControlManager;->getSystemAudioMode()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 5248
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldCecAudioDeviceForwardVolumeKeysSystemAudioModeOff()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 5249
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiControlManager;->getAudioSystemClient()Landroid/hardware/hdmi/HdmiAudioSystemClient;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 5252
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_26

    const/4 p1, 0x1

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    .line 5251
    :goto_27
    invoke-virtual {v1, p0, p1}, Landroid/hardware/hdmi/HdmiAudioSystemClient;->sendKeyEvent(IZ)V

    return-void

    .line 5257
    :cond_2b
    :try_start_2b
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 5258
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    .line 5257
    invoke-interface {v1, p1, v2, p0, v0}, Landroid/media/IAudioService;->handleVolumeKey(Landroid/view/KeyEvent;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_3a} :catch_3b

    goto :goto_50

    :catch_3b
    move-exception p0

    .line 5260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error dispatching volume key in handleVolumeKey for event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_50
    return-void
.end method

.method public dispatchMediaKeyRepeatWithWakeLock(Landroid/view/KeyEvent;)V
    .registers 6

    const/4 v0, 0x0

    .line 5308
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 5311
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    or-int/lit16 v2, v2, 0x80

    const/4 v3, 0x1

    .line 5310
    invoke-static {p1, v0, v1, v3, v2}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    move-result-object p1

    .line 5312
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_2c

    .line 5313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchMediaKeyRepeatWithWakeLock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5316
    :cond_2c
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    .line 5317
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method public dispatchMediaKeyWithWakeLock(Landroid/view/KeyEvent;)V
    .registers 5

    .line 5278
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_1a

    .line 5279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchMediaKeyWithWakeLock: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5282
    :cond_1a
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    const/4 v2, 0x4

    if-eqz v0, :cond_35

    .line 5283
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_28

    const-string v0, "dispatchMediaKeyWithWakeLock: canceled repeat"

    .line 5284
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5287
    :cond_28
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 5288
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 5289
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5292
    :cond_35
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    .line 5294
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5b

    .line 5295
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_5b

    const/4 v0, 0x1

    .line 5296
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 5298
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 5300
    invoke-virtual {p1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 5301
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_60

    .line 5303
    :cond_5b
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :goto_60
    return-void
.end method

.method public dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V
    .registers 3

    .line 5321
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 5322
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    :cond_12
    return-void
.end method

.method public dispatchUnhandledKey(Landroid/os/IBinder;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 3699
    sget-boolean v3, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    const-string v4, "WindowManager"

    if-eqz v3, :cond_85

    .line 3700
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 3701
    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowManagerInternal;->getKeyInterceptionInfoFromToken(Landroid/os/IBinder;)Lcom/android/internal/policy/KeyInterceptionInfo;

    move-result-object v3

    if-nez v3, :cond_17

    const-string v3, "<unknown>"

    goto :goto_19

    .line 3702
    :cond_17
    iget-object v3, v3, Lcom/android/internal/policy/KeyInterceptionInfo;->windowTitle:Ljava/lang/String;

    .line 3703
    :goto_19
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unhandled key: inputToken="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", title="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", action="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3705
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", flags="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3706
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", keyCode="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3707
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", scanCode="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3708
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", metaState="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3709
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", repeatCount="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3710
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", policyFlags="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3703
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_85
    move-object/from16 v3, p2

    .line 3714
    invoke-virtual {v0, v3}, Lcom/android/server/policy/PhoneWindowManager;->interceptUnhandledKey(Landroid/view/KeyEvent;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_8f

    return-object v6

    .line 3719
    :cond_8f
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x400

    if-nez v5, :cond_143

    .line 3720
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v5

    .line 3721
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    .line 3722
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v8

    .line 3723
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_b1

    .line 3724
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v9

    if-nez v9, :cond_b1

    const/4 v9, 0x1

    goto :goto_b2

    :cond_b1
    const/4 v9, 0x0

    :goto_b2
    if-eqz v9, :cond_b9

    .line 3729
    invoke-virtual {v5, v7, v8}, Landroid/view/KeyCharacterMap;->getFallbackAction(II)Landroid/view/KeyCharacterMap$FallbackAction;

    move-result-object v5

    goto :goto_c1

    .line 3731
    :cond_b9
    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/KeyCharacterMap$FallbackAction;

    :goto_c1
    if-eqz v5, :cond_143

    .line 3735
    sget-boolean v8, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v8, :cond_eb

    .line 3736
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Fallback: keyCode="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v5, Landroid/view/KeyCharacterMap$FallbackAction;->keyCode:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " metaState="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v5, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    .line 3737
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3736
    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3740
    :cond_eb
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v8

    or-int/lit16 v8, v8, 0x400

    .line 3742
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v11

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v13

    .line 3743
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v15

    iget v6, v5, Landroid/view/KeyCharacterMap$FallbackAction;->keyCode:I

    .line 3744
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v17

    iget v10, v5, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    .line 3745
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v20

    .line 3746
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v23

    const/16 v24, 0x0

    move/from16 v16, v6

    move/from16 v18, v10

    move/from16 v21, v8

    .line 3741
    invoke-static/range {v11 .. v24}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v6

    .line 3748
    invoke-virtual {v0, v1, v6, v2}, Lcom/android/server/policy/PhoneWindowManager;->interceptFallback(Landroid/os/IBinder;Landroid/view/KeyEvent;I)Z

    move-result v1

    if-nez v1, :cond_12b

    .line 3749
    invoke-virtual {v6}, Landroid/view/KeyEvent;->recycle()V

    const/4 v6, 0x0

    :cond_12b
    if-eqz v9, :cond_133

    .line 3754
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    invoke-virtual {v0, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_144

    .line 3755
    :cond_133
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_144

    .line 3756
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->remove(I)V

    .line 3757
    invoke-virtual {v5}, Landroid/view/KeyCharacterMap$FallbackAction;->recycle()V

    goto :goto_144

    :cond_143
    const/4 v6, 0x0

    .line 3762
    :cond_144
    :goto_144
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_164

    if-nez v6, :cond_150

    const-string v0, "No fallback."

    .line 3764
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_164

    .line 3766
    :cond_150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Performing fallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_164
    :goto_164
    return-object v6
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 6700
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "mSafeMode="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeMode:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    const-string p3, " mSystemReady="

    .line 6701
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    const-string p3, " mSystemBooted="

    .line 6702
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 6703
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "mCameraLensCoverState="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6704
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    invoke-static {p3}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->cameraLensStateToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6705
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "mWakeGestureEnabledSetting="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6706
    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 6708
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "mUiMode="

    .line 6709
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6710
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    invoke-static {p3}, Landroid/content/res/Configuration;->uiModeToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "mEnableCarDockHomeCapture="

    .line 6711
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 6712
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "mLidKeyboardAccessibility="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6713
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(I)V

    const-string p3, " mLidNavigationAccessibility="

    .line 6714
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(I)V

    const-string p3, " getLidBehavior="

    .line 6715
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getLidBehavior()I

    move-result p3

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->lidBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6716
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "mLongPressOnBackBehavior="

    .line 6717
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6718
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->longPressOnBackBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6719
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "mLongPressOnHomeBehavior="

    .line 6720
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6721
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->longPressOnHomeBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6722
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "mDoubleTapOnHomeBehavior="

    .line 6723
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6724
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->doubleTapOnHomeBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6725
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "mShortPressOnPowerBehavior="

    .line 6726
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6727
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->shortPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6728
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "mLongPressOnPowerBehavior="

    .line 6729
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6730
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->longPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6731
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "mLongPressOnPowerAssistantTimeoutMs="

    .line 6732
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6733
    iget-wide v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerAssistantTimeoutMs:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 6734
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "mVeryLongPressOnPowerBehavior="

    .line 6735
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6736
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->veryLongPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6737
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "mDoublePressOnPowerBehavior="

    .line 6738
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6739
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->multiPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6740
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "mTriplePressOnPowerBehavior="

    .line 6741
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6742
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->multiPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6743
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "mPowerVolUpBehavior="

    .line 6744
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6745
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerVolUpBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->powerVolumeUpBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6746
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "mShortPressOnSleepBehavior="

    .line 6747
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6748
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->shortPressOnSleepBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6749
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "mShortPressOnWindowBehavior="

    .line 6750
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6751
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->shortPressOnWindowBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6752
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "mShortPressOnStemPrimaryBehavior="

    .line 6753
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6754
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnStemPrimaryBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->shortPressOnStemPrimaryBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6756
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "mDoublePressOnStemPrimaryBehavior="

    .line 6757
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6758
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnStemPrimaryBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->doublePressOnStemPrimaryBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6760
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "mTriplePressOnStemPrimaryBehavior="

    .line 6761
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6762
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnStemPrimaryBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->triplePressOnStemPrimaryBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6764
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "mLongPressOnStemPrimaryBehavior="

    .line 6765
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6766
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnStemPrimaryBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->longPressOnStemPrimaryBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6768
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "mAllowStartActivityForLongPressOnPowerDuringSetup="

    .line 6769
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6770
    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowStartActivityForLongPressOnPowerDuringSetup:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 6771
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "mHasSoftInput="

    .line 6772
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    const-string p3, " mHapticTextHandleEnabled="

    .line 6773
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHapticTextHandleEnabled:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 6774
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "mDismissImeOnBackKeyPressed="

    .line 6775
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissImeOnBackKeyPressed:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    const-string p3, " mIncallPowerBehavior="

    .line 6776
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6777
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->incallPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6778
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "mIncallBackBehavior="

    .line 6779
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6780
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallBackBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->incallBackBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, " mEndcallBehavior="

    .line 6781
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6782
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->endcallBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6783
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "mDisplayHomeButtonHandlers="

    .line 6785
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 6786
    :goto_20f
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p3, v0, :cond_229

    .line 6787
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 6788
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_20f

    .line 6790
    :cond_229
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "mKeyguardOccluded="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    const-string p3, " mKeyguardOccludedChanged="

    .line 6791
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    const-string p3, " mPendingKeyguardOccluded="

    .line 6792
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 6793
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "mAllowLockscreenWhenOnDisplays="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6794
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    invoke-virtual {p3}, Ljava/util/HashSet;->isEmpty()Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    const-string p3, " mLockScreenTimeout="

    .line 6795
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(I)V

    const-string p3, " mLockScreenTimerActive="

    .line 6796
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 6798
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/policy/GlobalKeyManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 6799
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/policy/KeyCombinationManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 6800
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/policy/SingleKeyGestureDetector;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 6802
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    if-eqz p3, :cond_28b

    .line 6803
    invoke-virtual {p3, p2, p1}, Lcom/android/server/policy/WakeGestureListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6805
    :cond_28b
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

    if-eqz p3, :cond_292

    .line 6806
    invoke-virtual {p3, p1, p2}, Lcom/android/server/policy/BurnInProtectionHelper;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 6808
    :cond_292
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz p3, :cond_299

    .line 6809
    invoke-virtual {p3, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 6812
    :cond_299
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "Looper state:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6813
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 6817
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManagerExt;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 6681
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 6682
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getUserRotationMode()I

    move-result v0

    const-wide v1, 0x10e00000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6683
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getUserRotation()I

    move-result v0

    const-wide v1, 0x10e00000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6684
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getCurrentAppOrientation()I

    move-result v0

    const-wide v1, 0x10e00000004L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6685
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnFully()Z

    move-result v0

    const-wide v1, 0x10800000005L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6686
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardDrawComplete()Z

    move-result v0

    const-wide v1, 0x10800000006L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6687
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 6688
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isWindowManagerDrawComplete()Z

    move-result v0

    const-wide v1, 0x10800000007L

    .line 6687
    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6689
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    move-result v0

    const-wide v1, 0x1080000000cL

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6690
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    const-wide v1, 0x1080000000dL

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6691
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    const-wide v1, 0x1080000000eL

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6692
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz p0, :cond_84

    const-wide v0, 0x10b00000014L

    .line 6693
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 6695
    :cond_84
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public enableKeyguard(Z)V
    .registers 2

    .line 5866
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz p0, :cond_7

    .line 5867
    invoke-virtual {p0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setKeyguardEnabled(Z)V

    :cond_7
    return-void
.end method

.method public final enableScreen(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;Z)V
    .registers 8

    .line 5792
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isAwake()Z

    move-result v0

    .line 5793
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5796
    :try_start_9
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1d

    if-eqz v0, :cond_1d

    .line 5797
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    .line 5799
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    if-eqz v0, :cond_1e

    .line 5800
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    .line 5801
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->hideBootMessages()V

    goto :goto_1e

    :cond_1d
    move v3, v4

    .line 5806
    :cond_1e
    :goto_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_2e

    if-eqz p2, :cond_26

    if-eqz p1, :cond_26

    .line 5810
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;->onScreenOn()V

    :cond_26
    if-eqz v3, :cond_2d

    .line 5816
    :try_start_28
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {p0}, Landroid/view/IWindowManager;->enableScreenIfNeeded()V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2d} :catch_2d

    :catch_2d
    :cond_2d
    return-void

    :catchall_2e
    move-exception p0

    .line 5806
    :try_start_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw p0
.end method

.method public enableScreenAfterBoot()V
    .registers 2

    .line 6283
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->readLidState()V

    .line 6284
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->applyLidSwitchState()V

    const/4 v0, 0x1

    .line 6285
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    return-void
.end method

.method public exitKeyguardSecurely(Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;)V
    .registers 2

    .line 5874
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz p0, :cond_7

    .line 5875
    invoke-virtual {p0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->verifyUnlock(Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;)V

    :cond_7
    return-void
.end method

.method public final finishKeyguardDrawn()V
    .registers 5

    .line 5608
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->finishKeyguardDrawn()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 5612
    :cond_9
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5613
    :try_start_c
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_16

    .line 5614
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 5616
    :cond_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_25

    .line 5620
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    const-wide/16 v2, 0x3e8

    const/4 p0, -0x1

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/server/wm/WindowManagerInternal;->waitForAllWindowsDrawn(Ljava/lang/Runnable;JI)V

    return-void

    :catchall_25
    move-exception p0

    .line 5616
    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public final finishPowerKeyPress()V
    .registers 2

    const/4 v0, 0x0

    .line 1074
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1075
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1076
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_10
    return-void
.end method

.method public final finishScreenTurningOn()V
    .registers 6

    .line 5779
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    .line 5781
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getScreenOnListener()Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    move-result-object v0

    .line 5782
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->finishScreenTurningOn()Z

    move-result v1

    if-nez v1, :cond_14

    return-void

    :cond_14
    const-wide/16 v1, 0x20

    const/4 v3, 0x0

    const-string/jumbo v4, "screenTurningOn"

    .line 5785
    invoke-static {v1, v2, v4, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    const/4 v1, 0x1

    .line 5787
    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->enableScreen(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;Z)V

    return-void
.end method

.method public final finishWindowsDrawn(I)V
    .registers 3

    if-eqz p1, :cond_13

    const/4 v0, -0x1

    if-eq p1, v0, :cond_13

    .line 5762
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    if-eqz p0, :cond_12

    .line 5764
    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;->onScreenOn()V

    :cond_12
    return-void

    .line 5769
    :cond_13
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->finishWindowsDrawn()Z

    move-result p1

    if-nez p1, :cond_1c

    return-void

    .line 5773
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishScreenTurningOn()V

    return-void
.end method

.method public finishedGoingToSleep(I)V
    .registers 6

    const/4 v0, 0x0

    .line 5431
    invoke-static {v0}, Lcom/android/server/policy/EventLogTags;->writeScreenToggled(I)V

    .line 5432
    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v1, :cond_2b

    const-string v1, "WindowManager"

    .line 5433
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finished going to sleep... (why="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5435
    invoke-static {p1}, Landroid/view/WindowManagerPolicyConstants;->translateSleepReasonToOffReason(I)I

    move-result v3

    .line 5434
    invoke-static {v3}, Landroid/view/WindowManagerPolicyConstants;->offReasonToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5433
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5438
    :cond_2b
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "screen_timeout"

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    div-int/lit16 v3, v3, 0x3e8

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 5440
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeviceGoingToSleep:Z

    .line 5441
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedOrSleepingDefaultDisplay:Z

    .line 5442
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayPolicy;->setAwake(Z)V

    .line 5446
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5447
    :try_start_43
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 5448
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 5449
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_43 .. :try_end_4a} :catchall_6d

    .line 5450
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    .line 5452
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_58

    .line 5453
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraGestureTriggeredDuringGoingToSleep:Z

    invoke-virtual {v1, p1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onFinishedGoingToSleep(IZ)V

    .line 5456
    :cond_58
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz p1, :cond_5f

    .line 5457
    invoke-virtual {p1}, Lcom/android/server/policy/DisplayFoldController;->finishedGoingToSleep()V

    .line 5459
    :cond_5f
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraGestureTriggeredDuringGoingToSleep:Z

    .line 5460
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraGestureTriggered:Z

    .line 5462
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_APPLOCK:Z

    if-eqz p1, :cond_6c

    .line 5463
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->clearAppLockedUnLockedApp()V

    :cond_6c
    return-void

    :catchall_6d
    move-exception p0

    .line 5449
    :try_start_6e
    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw p0
.end method

.method public finishedWakingUp(I)V
    .registers 4

    .line 5525
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_27

    .line 5526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finished waking up... (why="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5528
    invoke-static {p1}, Landroid/view/WindowManagerPolicyConstants;->translateWakeReasonToOnReason(I)I

    move-result p1

    .line 5527
    invoke-static {p1}, Landroid/view/WindowManagerPolicyConstants;->onReasonToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WindowManager"

    .line 5526
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5532
    :cond_27
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz p1, :cond_2e

    .line 5533
    invoke-virtual {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onFinishedWakingUp()V

    .line 5535
    :cond_2e
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz p0, :cond_35

    .line 5536
    invoke-virtual {p0}, Lcom/android/server/policy/DisplayFoldController;->finishedWakingUp()V

    :cond_35
    return-void
.end method

.method public final getAccessibilityShortcutTimeout()J
    .registers 6

    .line 1745
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 1746
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    const-string v3, "accessibility_shortcut_dialog_shown"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 1748
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1749
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    const-string/jumbo v2, "skip_accessibility_shortcut_dialog_timeout_restriction"

    invoke-static {v1, v2, v4, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 1755
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getAccessibilityShortcutKeyTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAudioManagerInternal()Landroid/media/AudioManagerInternal;
    .registers 3

    .line 931
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAcquireLock:Ljava/lang/Object;

    monitor-enter v0

    .line 932
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    if-nez v1, :cond_11

    .line 933
    const-class v1, Landroid/media/AudioManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManagerInternal;

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    .line 935
    :cond_11
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    monitor-exit v0

    return-object p0

    :catchall_15
    move-exception p0

    .line 936
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public getFoldedArea()Landroid/graphics/Rect;
    .registers 1

    .line 3873
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz p0, :cond_9

    .line 3874
    invoke-virtual {p0}, Lcom/android/server/policy/DisplayFoldController;->getFoldedArea()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 3876
    :cond_9
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0
.end method

.method public final getHdmiControl()Lcom/android/server/policy/PhoneWindowManager$HdmiControl;
    .registers 4

    .line 1891
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    if-nez v0, :cond_24

    .line 1892
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureHdmiCec:Z

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 1895
    :cond_a
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "hdmi_control"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v0, :cond_1c

    .line 1899
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlManager;->getPlaybackClient()Landroid/hardware/hdmi/HdmiPlaybackClient;

    move-result-object v0

    goto :goto_1d

    :cond_1c
    move-object v0, v1

    .line 1901
    :goto_1d
    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    invoke-direct {v2, v0, v1}, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;-><init>(Landroid/hardware/hdmi/HdmiPlaybackClient;Lcom/android/server/policy/PhoneWindowManager$HdmiControl-IA;)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    .line 1903
    :cond_24
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    return-object p0
.end method

.method public final getHdmiControlManager()Landroid/hardware/hdmi/HdmiControlManager;
    .registers 2

    .line 5267
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureHdmiCec:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 5270
    :cond_6
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/hdmi/HdmiControlManager;

    return-object p0
.end method

.method public final getKeyguardDrawnTimeout()J
    .registers 3

    .line 5656
    const-class p0, Lcom/android/server/SystemServiceManager;

    .line 5657
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/SystemServiceManager;

    invoke-virtual {p0}, Lcom/android/server/SystemServiceManager;->isBootCompleted()Z

    move-result p0

    if-eqz p0, :cond_11

    const-wide/16 v0, 0x3e8

    goto :goto_13

    :cond_11
    const-wide/16 v0, 0x1388

    :goto_13
    return-wide v0
.end method

.method public getLidBehavior()I
    .registers 3

    .line 1339
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "lid_behavior"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getMaxMultiPressPowerCount()I
    .registers 4

    .line 1346
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_FACTORY_BINARY:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 1369
    :cond_6
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuintuplePressOnPowerBehavior:I

    if-eqz v2, :cond_14

    .line 1370
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isQuintuplePressPower()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 p0, 0x5

    return p0

    .line 1373
    :cond_14
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuadruplePressOnPowerBehavior:I

    if-eqz v2, :cond_22

    .line 1374
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isQuadruplePressPower()Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 p0, 0x4

    return p0

    .line 1379
    :cond_22
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1381
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isTriplePressPower()Z

    move-result v0

    if-eqz v0, :cond_30

    const/4 p0, 0x3

    return p0

    .line 1385
    :cond_30
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    if-eqz v0, :cond_3e

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1387
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isDoublePressPower()Z

    move-result p0

    if-eqz p0, :cond_3e

    const/4 p0, 0x2

    return p0

    :cond_3e
    return v1
.end method

.method public final getMaxMultiPressStemPrimaryCount()I
    .registers 6

    .line 1684
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnStemPrimaryBehavior:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_19

    .line 1688
    :cond_6
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1689
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, -0x2

    const-string/jumbo v4, "wear_accessibility_gesture_enabled"

    .line 1688
    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_19

    const/4 p0, 0x3

    return p0

    .line 1698
    :cond_19
    :goto_19
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnStemPrimaryBehavior:I

    if-eqz p0, :cond_1f

    const/4 p0, 0x2

    return p0

    :cond_1f
    return v1
.end method

.method public getNotificationService()Landroid/app/NotificationManager;
    .registers 2

    .line 3173
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    return-object p0
.end method

.method public final getResolvedLongPressOnPowerBehavior()I
    .registers 4

    .line 1510
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_FACTORY_BINARY:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isBlockedPowerKey()Z

    move-result v0

    if-eqz v0, :cond_e

    return v1

    .line 1515
    :cond_e
    invoke-static {}, Landroid/os/FactoryTest;->isLongPressOnPowerOffEnabled()Z

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1517
    invoke-static {v0}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_3b

    .line 1524
    :cond_1d
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2a

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_2a

    const/4 p0, 0x1

    return p0

    .line 1529
    :cond_2a
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_38

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1530
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->isLongPressToAssistantEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_38

    return v1

    .line 1534
    :cond_38
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    return p0

    :cond_3b
    :goto_3b
    const/4 p0, 0x3

    return p0
.end method

.method public final getRingerToggleChordDelay()J
    .registers 3

    .line 1778
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public final getScreenshotChordLongPressDelay()J
    .registers 5

    .line 1766
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1768
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScreenshotChordKeyTimeout()J

    move-result-wide v0

    const-string/jumbo v2, "systemui"

    const-string/jumbo v3, "screenshot_keychord_delay"

    .line 1766
    invoke-static {v2, v3, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    .line 1769
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_21

    const/high16 p0, 0x40200000    # 2.5f

    long-to-float v0, v0

    mul-float/2addr v0, p0

    float-to-long v0, v0

    :cond_21
    return-wide v0
.end method

.method public final getSearchManager()Landroid/app/SearchManager;
    .registers 3

    .line 4047
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    if-nez v0, :cond_11

    .line 4048
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    .line 4050
    :cond_11
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    return-object p0
.end method

.method public getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;
    .registers 3

    .line 921
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAcquireLock:Ljava/lang/Object;

    monitor-enter v0

    .line 922
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-nez v1, :cond_11

    .line 923
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 924
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 926
    :cond_11
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    monitor-exit v0

    return-object p0

    :catchall_15
    move-exception p0

    .line 927
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .registers 3

    .line 911
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAcquireLock:Ljava/lang/Object;

    monitor-enter v0

    .line 912
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v1, :cond_14

    const-string/jumbo v1, "statusbar"

    .line 914
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 913
    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 916
    :cond_14
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v0

    return-object p0

    :catchall_18
    move-exception p0

    .line 917
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public final getTalkbackComponent()Landroid/content/ComponentName;
    .registers 4

    .line 1632
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 1635
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v0

    .line 1637
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 1638
    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 1639
    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->isTalkback(Landroid/content/pm/ServiceInfo;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1640
    new-instance p0, Landroid/content/ComponentName;

    iget-object v0, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_34
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTelecommService()Landroid/telecom/TelecomManager;
    .registers 2

    .line 3169
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "telecom"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    return-object p0
.end method

.method public getUiMode()I
    .registers 1

    .line 6326
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    return p0
.end method

.method public getVibrationAttributes(I)Landroid/os/VibrationAttributes;
    .registers 2

    const/16 p0, 0xe

    if-eq p1, p0, :cond_19

    const/16 p0, 0xf

    if-eq p1, p0, :cond_19

    const/16 p0, 0x2712

    if-eq p1, p0, :cond_16

    const/16 p0, 0x2713

    if-eq p1, p0, :cond_16

    packed-switch p1, :pswitch_data_1c

    .line 6632
    sget-object p0, Lcom/android/server/policy/PhoneWindowManager;->TOUCH_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    return-object p0

    .line 6630
    :cond_16
    :pswitch_16
    sget-object p0, Lcom/android/server/policy/PhoneWindowManager;->HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    return-object p0

    .line 6624
    :cond_19
    sget-object p0, Lcom/android/server/policy/PhoneWindowManager;->PHYSICAL_EMULATION_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    return-object p0

    :pswitch_data_1c
    .packed-switch 0x12
        :pswitch_16
        :pswitch_16
        :pswitch_16
    .end packed-switch
.end method

.method public final getVibrationEffect(I)Landroid/os/VibrationEffect;
    .registers 7

    const/4 v0, 0x5

    if-eqz p1, :cond_75

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_70

    const/4 v3, 0x2

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_7a

    packed-switch p1, :pswitch_data_9c

    return-object v4

    .line 6593
    :pswitch_10
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    new-array p1, v1, [I

    const/4 v1, 0x4

    aput v1, p1, v2

    invoke-virtual {p0, p1}, Landroid/os/Vibrator;->areAllPrimitivesSupported([I)Z

    move-result p0

    if-eqz p0, :cond_35

    .line 6596
    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object p0

    const/high16 p1, 0x3e800000    # 0.25f

    .line 6597
    invoke-virtual {p0, v1, p1}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IF)Landroid/os/VibrationEffect$Composition;

    move-result-object p0

    const/4 p1, 0x7

    const/high16 v0, 0x3f800000    # 1.0f

    const/16 v1, 0x32

    .line 6598
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    move-result-object p0

    .line 6599
    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    .line 6602
    :cond_35
    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    .line 6589
    :pswitch_3a
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    .line 6607
    array-length p1, p0

    if-nez p1, :cond_40

    return-object v4

    .line 6610
    :cond_40
    array-length p1, p0

    const/4 v0, -0x1

    if-ne p1, v1, :cond_4b

    .line 6612
    aget-wide p0, p0, v2

    invoke-static {p0, p1, v0}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    .line 6615
    :cond_4b
    invoke-static {p0, v0}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    .line 6584
    :pswitch_50
    invoke-static {v1}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    .line 6562
    :pswitch_55
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHapticTextHandleEnabled:Z

    if-nez p0, :cond_69

    return-object v4

    .line 6572
    :pswitch_5a
    invoke-static {v3, v2}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    .line 6560
    :pswitch_5f
    invoke-static {v3}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    .line 6587
    :pswitch_64
    invoke-static {v2}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    :cond_69
    :pswitch_69
    const/16 p0, 0x15

    .line 6567
    invoke-static {p0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    .line 6578
    :cond_70
    :pswitch_70
    invoke-static {v2}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    .line 6582
    :cond_75
    :pswitch_75
    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    :pswitch_data_7a
    .packed-switch 0x3
        :pswitch_70
        :pswitch_69
        :pswitch_64
        :pswitch_5f
        :pswitch_5a
        :pswitch_5a
        :pswitch_55
        :pswitch_5a
        :pswitch_5a
        :pswitch_70
        :pswitch_5f
        :pswitch_75
        :pswitch_70
        :pswitch_70
        :pswitch_50
    .end packed-switch

    :pswitch_data_9c
    .packed-switch 0x2711
        :pswitch_3a
        :pswitch_10
        :pswitch_75
    .end packed-switch
.end method

.method public goHome()Z
    .registers 18

    move-object/from16 v0, p0

    .line 6468
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v1

    const-string v2, "WindowManager"

    const/4 v3, 0x0

    if-nez v1, :cond_11

    const-string v0, "Not going home because user setup is in progress."

    .line 6469
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_11
    const/4 v1, 0x1

    :try_start_12
    const-string/jumbo v4, "persist.sys.uts-test-mode"

    .line 6479
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_21

    const-string v4, "UTS-TEST-MODE"

    .line 6481
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    .line 6483
    :cond_21
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->stopAppSwitches()V

    .line 6484
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows()V

    .line 6485
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v8

    if-eqz v8, :cond_5b

    .line 6487
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 6488
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 6489
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v7

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 6490
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x2

    .line 6488
    invoke-interface/range {v4 .. v16}, Landroid/app/IActivityTaskManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v2

    if-ne v2, v1, :cond_5b

    return v3

    .line 6499
    :cond_5b
    :goto_5b
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 6500
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 6501
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 6502
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x2

    .line 6500
    invoke-interface/range {v4 .. v16}, Landroid/app/IActivityTaskManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0
    :try_end_84
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_84} :catch_87

    if-ne v0, v1, :cond_87

    return v3

    :catch_87
    :cond_87
    return v1
.end method

.method public final handleCameraGesture(Landroid/view/KeyEvent;Z)Z
    .registers 5

    .line 5046
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGestureLauncherService:Lcom/android/server/GestureLauncherService;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 5049
    :cond_6
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraGestureTriggered:Z

    .line 5050
    new-instance v0, Landroid/util/MutableBoolean;

    invoke-direct {v0, v1}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 5051
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGestureLauncherService:Lcom/android/server/GestureLauncherService;

    .line 5052
    invoke-virtual {v1, p1, p2, v0}, Lcom/android/server/GestureLauncherService;->interceptPowerKeyDown(Landroid/view/KeyEvent;ZLandroid/util/MutableBoolean;)Z

    move-result p1

    .line 5053
    iget-boolean p2, v0, Landroid/util/MutableBoolean;->value:Z

    if-nez p2, :cond_18

    return p1

    :cond_18
    const/4 p1, 0x1

    .line 5059
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraGestureTriggered:Z

    .line 5060
    iget-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedOrSleepingDefaultDisplay:Z

    if-eqz p2, :cond_21

    .line 5061
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraGestureTriggeredDuringGoingToSleep:Z

    :cond_21
    return p1
.end method

.method public final handleHideBootMessage()V
    .registers 3

    .line 5823
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5824
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    if-nez v1, :cond_c

    const/4 v1, 0x1

    .line 5825
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    .line 5826
    monitor-exit v0

    return-void

    .line 5828
    :cond_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_26

    .line 5830
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_25

    .line 5831
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_1d

    const-string v0, "WindowManager"

    const-string/jumbo v1, "handleHideBootMessage: dismissing"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5832
    :cond_1d
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 5833
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    :cond_25
    return-void

    :catchall_26
    move-exception p0

    .line 5828
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public final handleKeyGesture(Landroid/view/KeyEvent;Z)I
    .registers 4

    const/4 v0, 0x0

    .line 4979
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/policy/PhoneWindowManager;->handleKeyGesture(Landroid/view/KeyEvent;ZI)I

    move-result p0

    return p0
.end method

.method public final handleKeyGesture(Landroid/view/KeyEvent;ZI)I
    .registers 10

    .line 4986
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 4987
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_10

    move v2, v3

    goto :goto_11

    :cond_10
    move v2, v4

    .line 4988
    :goto_11
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    .line 4986
    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasRequestedActionBlockKeyEvent(IZI)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1d

    return v0

    .line 4994
    :cond_1d
    sget-object v0, Lcom/android/server/policy/PhoneWindowManagerExt;->KEYCODE_KEY_COMBINATION_ALLOWLIST:Ljava/util/Set;

    .line 4995
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 4997
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/KeyCombinationManager;->interceptKey(Landroid/view/KeyEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 4999
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {v0}, Lcom/android/server/policy/SingleKeyGestureDetector;->reset()V

    goto :goto_3c

    :cond_3b
    move v3, v4

    .line 5026
    :goto_3c
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0, p1, p2, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->checkPolicyBeforeInterceptKey(Landroid/view/KeyEvent;ZZ)I

    move-result v0

    if-eq v0, v1, :cond_45

    return v0

    .line 5034
    :cond_45
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/SingleKeyGestureDetector;->interceptKey(Landroid/view/KeyEvent;ZI)V

    return v4
.end method

.method public final handleRingerChordGesture()V
    .registers 4

    .line 901
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    if-nez v0, :cond_5

    return-void

    .line 904
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getAudioManagerInternal()Landroid/media/AudioManagerInternal;

    .line 905
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    const-string/jumbo v1, "volume_hush"

    invoke-virtual {v0, v1}, Landroid/media/AudioManagerInternal;->silenceRingerModeInternal(Ljava/lang/String;)V

    .line 906
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string/jumbo v2, "hush_gesture_used"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 907
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0x5a0

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    return-void
.end method

.method public final handleScreenShot(II)V
    .registers 3
    .param p1    # I
        .annotation build Landroid/view/WindowManager$ScreenshotType;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/view/WindowManager$ScreenshotSource;
        .end annotation
    .end param

    .line 1805
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayPolicy;->takeScreenshot(II)V

    return-void
.end method

.method public handleShortPressOnHome(I)V
    .registers 3

    .line 1868
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getHdmiControl()Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1870
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;->turnOnTv()V

    .line 1875
    :cond_9
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1876
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    return-void

    .line 1881
    :cond_1a
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(I)V

    return-void
.end method

.method public handleStartTransitionForKeyguardLw(ZZJ)I
    .registers 5

    .line 3937
    invoke-virtual {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->applyKeyguardOcclusionChange(Z)I

    move-result p2

    if-eqz p2, :cond_7

    return p2

    :cond_7
    if-eqz p1, :cond_2c

    .line 3942
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Starting keyguard exit animation, caller="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x9

    .line 3943
    invoke-static {p2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WindowManager"

    .line 3942
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3948
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->startKeyguardExitAnimation(JJ)V

    :cond_2c
    const/4 p0, 0x0

    return p0
.end method

.method public final hasLongPressOnBackBehavior()Z
    .registers 1

    .line 1713
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public final hasLongPressOnPowerBehavior()Z
    .registers 1

    .line 1705
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getResolvedLongPressOnPowerBehavior()I

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public final hasLongPressOnStemPrimaryBehavior()Z
    .registers 1

    .line 1717
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnStemPrimaryBehavior:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public hasNavigationBar()Z
    .registers 1

    .line 6651
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result p0

    return p0
.end method

.method public final hasStemPrimaryBehavior()Z
    .registers 3

    .line 1721
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressStemPrimaryCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_13

    .line 1722
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnStemPrimaryBehavior()Z

    move-result v0

    if-nez v0, :cond_13

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnStemPrimaryBehavior:I

    if-eqz p0, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :cond_13
    :goto_13
    return v1
.end method

.method public final hasVeryLongPressOnPowerBehavior()Z
    .registers 1

    .line 1709
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public hideBootMessages()V
    .registers 2

    .line 6152
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final hideRecentApps(ZZ)V
    .registers 4

    const/4 v0, 0x0

    .line 4154
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/policy/PhoneWindowManager;->hideRecentApps(ZZI)V

    return-void
.end method

.method public final hideRecentApps(ZZI)V
    .registers 4

    const/4 p3, 0x0

    .line 4158
    iput-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 4159
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 4167
    invoke-interface {p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->hideRecentApps(ZZ)V

    :cond_c
    return-void
.end method

.method public inKeyguardRestrictedKeyInputMode()Z
    .registers 1

    .line 5920
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 5921
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isInputRestricted()Z

    move-result p0

    return p0
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
    .registers 15

    .line 2189
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2190
    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    .line 2191
    iput-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 2192
    const-class p2, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/WindowManagerInternal;

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 2193
    const-class p2, Landroid/app/ActivityManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManagerInternal;

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 2194
    const-class p2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2195
    const-class p2, Landroid/hardware/input/InputManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/input/InputManagerInternal;

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    .line 2196
    const-class p2, Landroid/service/dreams/DreamManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/service/dreams/DreamManagerInternal;

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    .line 2197
    const-class p2, Landroid/os/PowerManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManagerInternal;

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 2198
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class p3, Landroid/app/AppOpsManager;

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AppOpsManager;

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 2199
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class p3, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/DisplayManager;

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 2200
    const-class p2, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/DisplayManagerInternal;

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 2201
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string p3, "android.hardware.type.watch"

    .line 2202
    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    .line 2203
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string p3, "android.software.leanback"

    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    .line 2204
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string p3, "android.hardware.type.automotive"

    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureAuto:Z

    .line 2205
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string p3, "android.hardware.hdmi.cec"

    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureHdmiCec:Z

    .line 2206
    new-instance p2, Lcom/android/internal/accessibility/AccessibilityShortcutController;

    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-direct {p2, p3, v0, v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    .line 2208
    new-instance p2, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p2}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 2210
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-string p3, "ScreenOff"

    .line 2211
    invoke-virtual {p2, p3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->createSleepTokenAcquirer(Ljava/lang/String;)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

    .line 2213
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x1110207

    .line 2215
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnDpadKeyPress:Z

    const p3, 0x1110205

    .line 2217
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnAssistKeyPress:Z

    const p3, 0x1110206

    .line 2219
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnBackKeyPress:Z

    .line 2222
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x1110131

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    const-string/jumbo p3, "persist.debug.force_burn_in"

    const/4 v0, 0x0

    .line 2226
    invoke-static {p3, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-nez p2, :cond_eb

    if-eqz p3, :cond_135

    :cond_eb
    const/4 p2, -0x8

    if-eqz p3, :cond_100

    const/16 p3, 0x8

    const/4 v1, -0x4

    .line 2238
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isRoundWindow()Z

    move-result v2

    if-eqz v2, :cond_f9

    const/4 v2, 0x6

    goto :goto_fa

    :cond_f9
    const/4 v2, -0x1

    :goto_fa
    move v6, p2

    move v8, v6

    move v7, p3

    move v9, v1

    move v10, v2

    goto :goto_12c

    .line 2240
    :cond_100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x10e0045

    .line 2241
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    const v1, 0x10e0042

    .line 2243
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const v2, 0x10e0046

    .line 2245
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const v3, 0x10e0044

    .line 2247
    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const v4, 0x10e0043

    .line 2249
    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    move v10, p2

    move v6, p3

    move v7, v1

    move v8, v2

    move v9, v3

    .line 2252
    :goto_12c
    new-instance p2, Lcom/android/server/policy/BurnInProtectionHelper;

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/server/policy/BurnInProtectionHelper;-><init>(Landroid/content/Context;IIIII)V

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

    .line 2256
    :cond_135
    new-instance p2, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;-><init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$PolicyHandler-IA;)V

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 2257
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p2}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    .line 2258
    new-instance p2, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {p2, p0, v1}, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    .line 2259
    invoke-virtual {p2}, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;->observe()V

    .line 2260
    new-instance p2, Lcom/android/server/policy/ModifierShortcutManager;

    invoke-direct {p2, p1}, Lcom/android/server/policy/ModifierShortcutManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mModifierShortcutManager:Lcom/android/server/policy/ModifierShortcutManager;

    .line 2261
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x10e0070

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    .line 2263
    new-instance p2, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {p2, v1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const-string v2, "android.intent.category.HOME"

    .line 2264
    invoke-virtual {p2, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2265
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const/high16 v2, 0x10200000

    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2267
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x1110132

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    .line 2269
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    const-string v3, "android.intent.category.CAR_DOCK"

    .line 2270
    invoke-virtual {p2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2271
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2273
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    const-string v3, "android.intent.category.DESK_DOCK"

    .line 2274
    invoke-virtual {p2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2275
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2277
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrHeadsetHomeIntent:Landroid/content/Intent;

    const-string p3, "android.intent.category.VR_HOME"

    .line 2278
    invoke-virtual {p2, p3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2279
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrHeadsetHomeIntent:Landroid/content/Intent;

    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo p2, "power"

    .line 2282
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 p3, 0x1

    const-string v1, "PhoneWindowManager.mBroadcastWakeLock"

    .line 2283
    invoke-virtual {p2, p3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2285
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "PhoneWindowManager.mPowerKeyWakeLock"

    invoke-virtual {p2, p3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2289
    invoke-virtual {p2, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const-string/jumbo p2, "ro.debuggable"

    .line 2292
    invoke-static {p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "1"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 2293
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x10e00ae

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    .line 2295
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x10e00af

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    .line 2298
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x111001f

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    if-nez p2, :cond_22c

    .line 2300
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2301
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x1110023

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-eqz p2, :cond_22a

    goto :goto_22c

    :cond_22a
    move p2, v0

    goto :goto_22d

    :cond_22c
    :goto_22c
    move p2, p3

    :goto_22d
    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromPowerKey:Z

    .line 2303
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x1110021

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotion:Z

    .line 2305
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x1110022

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotionWhenNotDreaming:Z

    .line 2307
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x111001c

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromCameraLens:Z

    .line 2309
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x1110020

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromLidSwitch:Z

    .line 2311
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x111001e

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromWakeGesture:Z

    .line 2314
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x1110163

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoToSleepOnButtonPressTheaterMode:Z

    .line 2317
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x11101ca

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportLongPressPowerWhenNonInteractive:Z

    .line 2329
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x10e011c

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    .line 2331
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x10e00b5

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 2333
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x10e00b6

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long v1, p2

    iput-wide v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerAssistantTimeoutMs:J

    .line 2335
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x10e0134

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    .line 2337
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x10e0081

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    .line 2339
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2340
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x104033f

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 2339
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerDoublePressTargetActivity:Landroid/content/ComponentName;

    .line 2342
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x10e012c

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    .line 2346
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p2, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuintuplePressOnPowerBehavior:I

    .line 2350
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x10e011d

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    .line 2352
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x111001b

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowStartActivityForLongPressOnPowerDuringSetup:Z

    .line 2355
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x111013a

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHapticTextHandleEnabled:Z

    .line 2358
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/media/AudioSystem;->getPlatformType(Landroid/content/Context;)I

    move-result p2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_34e

    goto :goto_34f

    :cond_34e
    move p3, v0

    :goto_34f
    iput-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    .line 2360
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x1110167

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    .line 2363
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x1110004

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPerDisplayFocusEnabled:Z

    .line 2366
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x10e013a

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeUpToLastStateTimeout:J

    .line 2369
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->readConfigurationDependentBehaviors()V

    .line 2371
    invoke-static {p1, v0}, Lcom/android/server/policy/DisplayFoldController;->create(Landroid/content/Context;I)Lcom/android/server/policy/DisplayFoldController;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    const-string p2, "accessibility"

    .line 2373
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 2377
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 2378
    sget-object p3, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2379
    sget-object p3, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2380
    sget-object p3, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2381
    sget-object p3, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.intent.action.DOCK_EVENT"

    .line 2382
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2383
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_3c3

    .line 2386
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    const-string v2, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p3, p2}, Lcom/android/server/wm/DisplayPolicy;->setDockMode(I)V

    .line 2391
    :cond_3c3
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "android.intent.action.DREAMING_STARTED"

    .line 2392
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.intent.action.DREAMING_STOPPED"

    .line 2393
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2394
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2397
    new-instance p2, Landroid/content/IntentFilter;

    const-string p3, "android.intent.action.USER_SWITCHED"

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2398
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo p2, "vibrator"

    .line 2400
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    .line 2401
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1070111

    invoke-static {p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    .line 2404
    new-instance p1, Lcom/android/server/policy/GlobalKeyManager;

    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/server/policy/GlobalKeyManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    .line 2407
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->initializeHdmiState()V

    .line 2410
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-nez p1, :cond_417

    .line 2411
    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startedGoingToSleep(I)V

    .line 2412
    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->finishedGoingToSleep(I)V

    .line 2415
    :cond_417
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    new-instance p2, Lcom/android/server/policy/PhoneWindowManager$5;

    invoke-direct {p2, p0}, Lcom/android/server/policy/PhoneWindowManager$5;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowManagerInternal;->registerAppTransitionListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 2436
    new-instance p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance p3, Lcom/android/server/policy/PhoneWindowManager$6;

    invoke-direct {p3, p0}, Lcom/android/server/policy/PhoneWindowManager$6;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-direct {p1, p2, p3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;-><init>(Landroid/content/Context;Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;)V

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 2448
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->initKeyCombinationRules()V

    .line 2451
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    new-instance p2, Lcom/android/server/policy/KeyCustomizationManager;

    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3, p1}, Lcom/android/server/policy/KeyCustomizationManager;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object p2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 2454
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->initSingleKeyGestureRules()V

    .line 2455
    new-instance p1, Lcom/android/server/policy/SideFpsEventHandler;

    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-direct {p1, p2, p3, v0}, Lcom/android/server/policy/SideFpsEventHandler;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/PowerManager;)V

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSideFpsEventHandler:Lcom/android/server/policy/SideFpsEventHandler;

    return-void
.end method

.method public final initKeyCombinationRules()V
    .registers 5

    .line 2459
    new-instance v0, Lcom/android/server/policy/KeyCombinationManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/android/server/policy/KeyCombinationManager;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    .line 2460
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110146

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2465
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->initKeyCombinationRules()V

    const/16 v1, 0x19

    if-eqz v0, :cond_2b

    .line 2470
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$7;

    const/16 v3, 0x1a

    invoke-direct {v2, p0, v1, v3}, Lcom/android/server/policy/PhoneWindowManager$7;-><init>(Lcom/android/server/policy/PhoneWindowManager;II)V

    invoke-virtual {v0, v2}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    .line 2528
    :cond_2b
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$8;

    const/16 v3, 0x18

    invoke-direct {v2, p0, v1, v3}, Lcom/android/server/policy/PhoneWindowManager$8;-><init>(Lcom/android/server/policy/PhoneWindowManager;II)V

    invoke-virtual {v0, v2}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    .line 2606
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v0, :cond_54

    .line 2607
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$10;

    const/16 v2, 0x14

    const/4 v3, 0x4

    invoke-direct {v1, p0, v3, v2}, Lcom/android/server/policy/PhoneWindowManager$10;-><init>(Lcom/android/server/policy/PhoneWindowManager;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    .line 2630
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$11;

    const/16 v2, 0x17

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/policy/PhoneWindowManager$11;-><init>(Lcom/android/server/policy/PhoneWindowManager;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    :cond_54
    return-void
.end method

.method public final initSingleKeyGestureRules()V
    .registers 5

    .line 2800
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    invoke-static {v0, v1}, Lcom/android/server/policy/SingleKeyGestureDetector;->get(Landroid/content/Context;Lcom/android/server/policy/KeyCustomizationManager;)Lcom/android/server/policy/SingleKeyGestureDetector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 2806
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasVeryLongPressOnPowerBehavior()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    const/4 v0, 0x4

    goto :goto_16

    :cond_15
    move v0, v1

    .line 2809
    :goto_16
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_LONG_PRESS_SIDE_KEY:Z

    if-nez v2, :cond_24

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_LONG_PRESS_POWER_KEY:Z

    if-nez v2, :cond_24

    .line 2812
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnPowerBehavior()Z

    move-result v2

    if-eqz v2, :cond_26

    :cond_24
    or-int/lit8 v0, v0, 0x2

    .line 2815
    :cond_26
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;

    invoke-direct {v3, p0, v0}, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;-><init>(Lcom/android/server/policy/PhoneWindowManager;I)V

    invoke-virtual {v2, v3}, Lcom/android/server/policy/SingleKeyGestureDetector;->addRule(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)V

    .line 2826
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasStemPrimaryBehavior()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 2828
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnStemPrimaryBehavior()Z

    move-result v0

    if-eqz v0, :cond_3d

    const/4 v1, 0x2

    .line 2831
    :cond_3d
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;

    invoke-direct {v2, p0, v1}, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;-><init>(Lcom/android/server/policy/PhoneWindowManager;I)V

    invoke-virtual {v0, v2}, Lcom/android/server/policy/SingleKeyGestureDetector;->addRule(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)V

    :cond_47
    return-void
.end method

.method public initializeHdmiState()V
    .registers 2

    .line 4346
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReadsMask()I

    move-result v0

    .line 4348
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->initializeHdmiStateInternal()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_b

    .line 4350
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    return-void

    :catchall_b
    move-exception p0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 4351
    throw p0
.end method

.method public initializeHdmiStateInternal()V
    .registers 10

    const-string v0, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    const-string v1, "WindowManager"

    .line 4357
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/devices/virtual/switch/hdmi/state"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_7d

    .line 4358
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    const-string v5, "DEVPATH=/devices/virtual/switch/hdmi"

    invoke-virtual {v2, v5}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 4363
    :try_start_1b
    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/sys/class/switch/hdmi/state"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_22} :catch_5c
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_22} :catch_43
    .catchall {:try_start_1b .. :try_end_22} :catchall_41

    const/16 v2, 0xf

    :try_start_24
    new-array v2, v2, [C

    .line 4365
    invoke-virtual {v5, v2}, Ljava/io/FileReader;->read([C)I

    move-result v6

    if-le v6, v4, :cond_39

    .line 4367
    new-instance v7, Ljava/lang/String;

    sub-int/2addr v6, v4

    invoke-direct {v7, v2, v3, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_36} :catch_3f
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_36} :catch_3d
    .catchall {:try_start_24 .. :try_end_36} :catchall_75

    if-eqz v0, :cond_39

    move v3, v4

    .line 4376
    :cond_39
    :goto_39
    :try_start_39
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_90

    goto :goto_90

    :catch_3d
    move-exception v2

    goto :goto_47

    :catch_3f
    move-exception v2

    goto :goto_60

    :catchall_41
    move-exception p0

    goto :goto_77

    :catch_43
    move-exception v5

    move-object v8, v5

    move-object v5, v2

    move-object v2, v8

    .line 4372
    :goto_47
    :try_start_47
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_90

    goto :goto_39

    :catch_5c
    move-exception v5

    move-object v8, v5

    move-object v5, v2

    move-object v2, v8

    .line 4370
    :goto_60
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catchall {:try_start_47 .. :try_end_72} :catchall_75

    if-eqz v5, :cond_90

    goto :goto_39

    :catchall_75
    move-exception p0

    move-object v2, v5

    :goto_77
    if-eqz v2, :cond_7c

    .line 4376
    :try_start_79
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_7c

    .line 4380
    :catch_7c
    :cond_7c
    throw p0

    .line 4384
    :cond_7d
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDrmEventObserver:Landroid/os/UEventObserver;

    const-string/jumbo v1, "mdss_mdp/drm/card"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 4385
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mExtEventObserver:Landroid/os/UEventObserver;

    const-string v1, "displayport/extcon/extcon"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 4404
    :catch_90
    :cond_90
    :goto_90
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/DisplayPolicy;->setHdmiPlugged(ZZ)V

    return-void
.end method

.method public final interceptAccessibilityGestureTv()V
    .registers 5

    .line 3671
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3672
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 3673
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3674
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getAccessibilityShortcutTimeout()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final interceptAccessibilityShortcutChord()V
    .registers 5

    .line 1733
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1734
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1735
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getAccessibilityShortcutTimeout()J

    move-result-wide v2

    .line 1734
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final interceptBugreportGestureTv()V
    .registers 4

    .line 3655
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3657
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 3658
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3659
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final interceptFallback(Landroid/os/IBinder;Landroid/view/KeyEvent;I)Z
    .registers 10

    .line 3834
    invoke-virtual {p0, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_19

    .line 3836
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_19

    .line 3838
    invoke-virtual {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->interceptUnhandledKey(Landroid/view/KeyEvent;)Z

    move-result p0

    if-nez p0, :cond_19

    return v1

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J
    .registers 30

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 3199
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v2

    .line 3200
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 3201
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    .line 3202
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    .line 3203
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v7

    .line 3204
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    const/4 v10, 0x0

    if-nez v8, :cond_23

    const/4 v8, 0x1

    goto :goto_24

    :cond_23
    move v8, v10

    .line 3205
    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v11

    .line 3210
    sget-boolean v12, Lcom/samsung/android/rune/CoreRune;->FW_FLIP_SUPPORT_SUB_HOME:Z

    if-eqz v12, :cond_36

    iget-object v12, v6, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v12}, Lcom/android/server/policy/PhoneWindowManagerExt;->isFolded()Z

    move-result v12

    if-eqz v12, :cond_36

    const/4 v12, 0x1

    goto :goto_3a

    .line 3215
    :cond_36
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v12

    .line 3221
    :goto_3a
    sget-boolean v13, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    const-string v14, "WindowManager"

    if-nez v13, :cond_4c

    sget-object v13, Lcom/android/server/policy/PhoneWindowManagerExt;->KEYCODE_DEBUG_LOG_ALLOWLIST:Ljava/util/Set;

    .line 3224
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v13, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_81

    .line 3226
    :cond_4c
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "interceptKeyTi keyCode="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " down="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, " repeatCount="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " keyguardOn="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, " canceled="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3230
    :cond_81
    iget-object v13, v6, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    invoke-virtual {v13, v1}, Lcom/android/server/policy/KeyCombinationManager;->isKeyConsumed(Landroid/view/KeyEvent;)Z

    move-result v13

    const-wide/16 v15, -0x1

    if-eqz v13, :cond_8c

    return-wide v15

    :cond_8c
    and-int/lit16 v7, v7, 0x400

    if-nez v7, :cond_a1

    .line 3235
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    .line 3236
    iget-object v7, v6, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    invoke-virtual {v7, v3}, Lcom/android/server/policy/KeyCombinationManager;->getKeyInterceptTimeout(I)J

    move-result-wide v19

    cmp-long v7, v17, v19

    if-gez v7, :cond_a1

    sub-long v19, v19, v17

    return-wide v19

    .line 3244
    :cond_a1
    iget-boolean v7, v6, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    if-eqz v7, :cond_ad

    invoke-static {v3}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    move-result v7

    if-nez v7, :cond_ad

    .line 3245
    iput-boolean v10, v6, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    .line 3248
    :cond_ad
    iget-boolean v7, v6, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    if-eqz v7, :cond_bf

    invoke-static {v3}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    move-result v7

    if-nez v7, :cond_bf

    invoke-static {v3}, Landroid/view/KeyEvent;->isAltKey(I)Z

    move-result v7

    if-nez v7, :cond_bf

    .line 3249
    iput-boolean v10, v6, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    .line 3254
    :cond_bf
    iget-object v7, v6, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    move/from16 v13, p3

    invoke-virtual {v7, v0, v1, v13}, Lcom/android/server/policy/PhoneWindowManagerExt;->interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J

    move-result-wide v9

    cmp-long v7, v9, v15

    if-ltz v7, :cond_e1

    .line 3257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "interceptKeyTi interceptKeyResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v9

    .line 3263
    :cond_e1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v7

    if-eqz v7, :cond_102

    if-nez v2, :cond_102

    iget-object v7, v6, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 3265
    invoke-virtual {v7}, Lcom/android/server/policy/PhoneWindowManagerExt;->isMetaKeyEventRequested()Z

    move-result v7

    if-nez v7, :cond_102

    .line 3267
    iget-object v7, v6, Lcom/android/server/policy/PhoneWindowManager;->mModifierShortcutManager:Lcom/android/server/policy/ModifierShortcutManager;

    invoke-virtual {v7, v1}, Lcom/android/server/policy/ModifierShortcutManager;->interceptKey(Landroid/view/KeyEvent;)Z

    move-result v7

    if-eqz v7, :cond_102

    .line 3268
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V

    const/4 v0, 0x0

    .line 3269
    iput-boolean v0, v6, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    .line 3270
    iput-boolean v0, v6, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    return-wide v15

    :cond_102
    const/4 v7, 0x3

    if-eq v3, v7, :cond_397

    const/16 v0, 0x2a

    const-wide/16 v9, 0x0

    if-eq v3, v0, :cond_365

    const/16 v0, 0x2f

    const/4 v7, 0x2

    const/4 v13, -0x1

    if-eq v3, v0, :cond_335

    const/16 v0, 0x4c

    if-eq v3, v0, :cond_321

    const/16 v0, 0xa4

    if-eq v3, v0, :cond_2ff

    const/16 v0, 0xbb

    if-eq v3, v0, :cond_2e7

    const/16 v0, 0xcc

    if-eq v3, v0, :cond_377

    const/16 v0, 0xe7

    if-eq v3, v0, :cond_2e1

    const/16 v0, 0x11c

    if-eq v3, v0, :cond_2ca

    const/16 v0, 0x3e9

    if-eq v3, v0, :cond_2e7

    const/16 v0, 0x18

    if-eq v3, v0, :cond_2ff

    const/16 v0, 0x19

    if-eq v3, v0, :cond_2ff

    const/16 v0, 0x39

    if-eq v3, v0, :cond_28c

    const/16 v0, 0x3a

    if-eq v3, v0, :cond_28c

    const/16 v0, 0x3d

    if-eq v3, v0, :cond_24d

    const/16 v0, 0x3e

    if-eq v3, v0, :cond_247

    const/16 v0, 0x52

    if-eq v3, v0, :cond_21b

    const/16 v0, 0x53

    if-eq v3, v0, :cond_215

    const/16 v0, 0x75

    if-eq v3, v0, :cond_1c4

    const/16 v0, 0x76

    if-eq v3, v0, :cond_1c4

    packed-switch v3, :pswitch_data_3b2

    packed-switch v3, :pswitch_data_3bc

    goto/16 :goto_377

    :pswitch_15d
    const-string v0, "KEYCODE_APP_X should be handled in interceptKeyBeforeQueueing"

    .line 3407
    invoke-static {v14, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v15

    :pswitch_163
    if-eqz v8, :cond_1bd

    const/16 v0, 0xdd

    if-ne v3, v0, :cond_16a

    const/4 v13, 0x1

    .line 3415
    :cond_16a
    iget-object v0, v6, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 3416
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness_mode"

    const/4 v2, -0x3

    const/4 v3, 0x0

    .line 3415
    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_184

    .line 3421
    iget-object v0, v6, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3426
    :cond_184
    iget-object v0, v6, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, v3}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v0

    .line 3428
    iget-object v1, v6, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v1

    sub-float v2, v1, v0

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    int-to-float v3, v13

    mul-float/2addr v2, v3

    if-gez v12, :cond_19c

    const/4 v10, 0x0

    goto :goto_19d

    :cond_19c
    move v10, v12

    .line 3432
    :goto_19d
    iget-object v3, v6, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3, v10}, Landroid/hardware/display/DisplayManager;->getBrightness(I)F

    move-result v3

    add-float/2addr v3, v2

    .line 3435
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 3436
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 3438
    iget-object v1, v6, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v10, v0}, Landroid/hardware/display/DisplayManager;->setBrightness(IF)V

    .line 3448
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.intent.action.SHOW_BRIGHTNESS_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v6, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_1bd
    return-wide v15

    :pswitch_1be
    const-string v0, "KEYCODE_ASSIST should be handled in interceptKeyBeforeQueueing"

    .line 3385
    invoke-static {v14, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v15

    .line 3556
    :cond_1c4
    iget-object v0, v6, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isMetaKeyEventRequested()Z

    move-result v0

    if-eqz v0, :cond_1ce

    goto/16 :goto_377

    :cond_1ce
    if-eqz v8, :cond_1e4

    .line 3561
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    if-eqz v0, :cond_1dd

    const/4 v0, 0x1

    .line 3562
    iput-boolean v0, v6, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    const/4 v2, 0x0

    .line 3563
    iput-boolean v2, v6, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    goto :goto_214

    :cond_1dd
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 3565
    iput-boolean v2, v6, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    .line 3566
    iput-boolean v0, v6, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    goto :goto_214

    :cond_1e4
    const/4 v2, 0x0

    .line 3570
    iget-boolean v0, v6, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    if-eqz v0, :cond_1f5

    .line 3571
    iget-object v0, v6, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManagerInternal;->toggleCapsLock(I)V

    .line 3572
    iput-boolean v2, v6, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    goto :goto_214

    .line 3573
    :cond_1f5
    iget-boolean v0, v6, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    if-eqz v0, :cond_214

    iget-object v0, v6, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPendingPermissionController:Z

    if-nez v0, :cond_214

    if-nez v11, :cond_211

    .line 3580
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    .line 3581
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    const/4 v5, 0x0

    const-string v1, "android.intent.extra.ASSIST_INPUT_HINT_KEYBOARD"

    move-object/from16 v0, p0

    .line 3579
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;IJI)V

    :cond_211
    const/4 v0, 0x0

    .line 3583
    iput-boolean v0, v6, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    :cond_214
    :goto_214
    return-wide v15

    :cond_215
    if-nez v8, :cond_21a

    .line 3528
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleNotificationPanel()V

    :cond_21a
    return-wide v15

    :cond_21b
    if-eqz v8, :cond_377

    if-nez v4, :cond_377

    .line 3292
    iget-boolean v0, v6, Lcom/android/server/policy/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    if-eqz v0, :cond_377

    and-int/lit8 v0, v5, 0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_377

    .line 3293
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BUG_REPORT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3294
    iget-object v1, v6, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v19, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v17, v1

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v25}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-wide v15

    :cond_247
    const/high16 v0, 0x70000

    and-int/2addr v0, v5

    if-nez v0, :cond_377

    return-wide v9

    .line 3475
    :cond_24d
    iget-object v0, v6, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isMetaKeyEventRequested()Z

    move-result v0

    if-eqz v0, :cond_257

    goto/16 :goto_377

    .line 3479
    :cond_257
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_25e

    return-wide v9

    :cond_25e
    if-eqz v8, :cond_377

    if-nez v4, :cond_377

    .line 3485
    iget v0, v6, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    if-nez v0, :cond_377

    if-nez v2, :cond_377

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_377

    .line 3487
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, -0xc2

    .line 3488
    invoke-static {v0, v7}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v2

    if-nez v2, :cond_282

    const/16 v2, 0x1002

    .line 3492
    invoke-static {v0, v2}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v2

    if-eqz v2, :cond_377

    .line 3497
    :cond_282
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V

    .line 3505
    iput v0, v6, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    const/4 v0, 0x1

    .line 3511
    invoke-virtual {v6, v0}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(Z)V

    return-wide v15

    .line 3590
    :cond_28c
    iget-object v0, v6, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isMetaKeyEventRequested()Z

    move-result v0

    if-eqz v0, :cond_296

    goto/16 :goto_377

    :cond_296
    if-eqz v8, :cond_2ab

    .line 3595
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_2a6

    const/4 v0, 0x1

    .line 3596
    iput-boolean v0, v6, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    const/4 v2, 0x0

    .line 3597
    iput-boolean v2, v6, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    goto/16 :goto_377

    :cond_2a6
    const/4 v2, 0x0

    .line 3599
    iput-boolean v2, v6, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    goto/16 :goto_377

    :cond_2ab
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 3603
    iget v4, v6, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    if-eqz v4, :cond_2ba

    and-int/2addr v4, v5

    if-nez v4, :cond_2ba

    .line 3605
    iput v2, v6, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    .line 3611
    invoke-virtual {v6, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->hideRecentApps(ZZ)V

    return-wide v15

    .line 3617
    :cond_2ba
    iget-boolean v0, v6, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    if-eqz v0, :cond_377

    .line 3618
    iget-object v0, v6, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManagerInternal;->toggleCapsLock(I)V

    .line 3619
    iput-boolean v2, v6, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    return-wide v15

    :cond_2ca
    if-nez v8, :cond_2e0

    .line 3520
    iget-object v0, v6, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3521
    iget-object v0, v6, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 3522
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3523
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_2e0
    return-wide v15

    :cond_2e1
    const-string v0, "KEYCODE_VOICE_ASSIST should be handled in interceptKeyBeforeQueueing"

    .line 3388
    invoke-static {v14, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v15

    :cond_2e7
    if-nez v2, :cond_2fe

    if-eqz v8, :cond_2f1

    if-nez v4, :cond_2f1

    .line 3310
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->preloadRecentApps()V

    goto :goto_2fe

    :cond_2f1
    if-nez v8, :cond_2fe

    if-nez v11, :cond_2fe

    .line 3313
    iget-object v0, v6, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAppSwitchKeyConsumed:Z

    if-nez v0, :cond_2fe

    .line 3318
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    :cond_2fe
    :goto_2fe
    return-wide v15

    .line 3456
    :cond_2ff
    iget-boolean v0, v6, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    if-nez v0, :cond_31d

    iget-boolean v0, v6, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    if-eqz v0, :cond_308

    goto :goto_31d

    .line 3466
    :cond_308
    iget-object v0, v6, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isPersistentVrModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_377

    .line 3467
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_377

    .line 3468
    invoke-virtual {v0}, Landroid/view/InputDevice;->isExternal()Z

    move-result v0

    if-nez v0, :cond_377

    return-wide v15

    .line 3459
    :cond_31d
    :goto_31d
    invoke-virtual {v6, v1}, Lcom/android/server/policy/PhoneWindowManager;->dispatchDirectAudioEvent(Landroid/view/KeyEvent;)V

    return-wide v15

    :cond_321
    if-eqz v8, :cond_377

    if-nez v4, :cond_377

    .line 3373
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_377

    if-nez v2, :cond_377

    .line 3379
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/android/server/policy/PhoneWindowManager;->toggleKeyboardShortcutsMenu(I)V

    return-wide v15

    :cond_335
    const/4 v2, 0x0

    if-eqz v8, :cond_377

    .line 3345
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_377

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-nez v0, :cond_34a

    .line 3347
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-eqz v0, :cond_377

    :cond_34a
    if-nez v4, :cond_377

    const/4 v0, 0x1

    if-ne v12, v0, :cond_351

    :cond_34f
    move v9, v0

    goto :goto_358

    .line 3357
    :cond_351
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v1

    if-eqz v1, :cond_34f

    move v9, v7

    .line 3363
    :goto_358
    iget-object v0, v6, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;

    if-ne v12, v13, :cond_360

    move v10, v2

    goto :goto_361

    :cond_360
    move v10, v12

    :goto_361
    invoke-interface {v0, v9, v10}, Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;->sendTakeScreenshotRunnable(II)V

    return-wide v15

    :cond_365
    if-eqz v8, :cond_377

    .line 3325
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_377

    .line 3326
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    if-eqz v0, :cond_377

    .line 3335
    :try_start_373
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V
    :try_end_376
    .catch Landroid/os/RemoteException; {:try_start_373 .. :try_end_376} :catch_376

    :catch_376
    return-wide v15

    .line 3626
    :cond_377
    :goto_377
    invoke-static {v3}, Lcom/android/server/policy/PhoneWindowManager;->isValidGlobalKey(I)Z

    move-result v0

    if-eqz v0, :cond_388

    iget-object v0, v6, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    iget-object v2, v6, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 3627
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/policy/GlobalKeyManager;->handleGlobalKey(Landroid/content/Context;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_388

    return-wide v15

    :cond_388
    const/high16 v0, 0x10000

    and-int/2addr v0, v5

    if-eqz v0, :cond_396

    .line 3632
    iget-object v0, v6, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 3635
    invoke-virtual {v0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->shouldDispatchMetaCombos(I)Z

    move-result v0

    if-nez v0, :cond_396

    return-wide v15

    :cond_396
    return-wide v9

    .line 3281
    :cond_397
    iget-object v2, v6, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    invoke-virtual {v2, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    if-nez v2, :cond_3ab

    .line 3283
    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    invoke-direct {v2, v6, v12}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;-><init>(Lcom/android/server/policy/PhoneWindowManager;I)V

    .line 3284
    iget-object v3, v6, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    invoke-virtual {v3, v12, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3286
    :cond_3ab
    invoke-virtual {v2, v0, v1}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->handleHomeButton(Landroid/os/IBinder;Landroid/view/KeyEvent;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    nop

    :pswitch_data_3b2
    .packed-switch 0xdb
        :pswitch_1be
        :pswitch_163
        :pswitch_163
    .end packed-switch

    :pswitch_data_3bc
    .packed-switch 0x121
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
    .end packed-switch
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .registers 33

    move-object/from16 v7, p0

    move-object/from16 v1, p1

    move/from16 v0, p2

    .line 4411
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 4412
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v8, 0x0

    if-nez v3, :cond_13

    const/4 v3, 0x1

    goto :goto_14

    :cond_13
    move v3, v8

    :goto_14
    and-int/lit8 v5, v0, 0x1

    if-nez v5, :cond_21

    .line 4414
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isWakeKey()Z

    move-result v5

    if-eqz v5, :cond_1f

    goto :goto_21

    :cond_1f
    move v5, v8

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v5, 0x1

    .line 4416
    :goto_22
    iget-boolean v6, v7, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    const/16 v9, 0x1a

    const/16 v10, 0xb1

    if-nez v6, :cond_58

    if-eqz v3, :cond_39

    if-eq v2, v9, :cond_30

    if-ne v2, v10, :cond_39

    .line 4424
    :cond_30
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromPowerKey(J)V

    :goto_37
    const/4 v4, 0x1

    goto :goto_4c

    :cond_39
    if-eqz v3, :cond_4b

    if-nez v5, :cond_41

    const/16 v0, 0xe0

    if-ne v2, v0, :cond_4b

    .line 4427
    :cond_41
    invoke-virtual {v7, v2}, Lcom/android/server/policy/PhoneWindowManager;->isWakeKeyWhenScreenOff(I)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 4428
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromWakeKey(Landroid/view/KeyEvent;)V

    goto :goto_37

    :cond_4b
    move v4, v8

    :goto_4c
    if-eqz v4, :cond_57

    .line 4432
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getHdmiControl()Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 4434
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;->turnOnTv()V

    :cond_57
    return v8

    :cond_58
    const/high16 v6, 0x20000000

    and-int/2addr v6, v0

    if-eqz v6, :cond_5f

    const/4 v6, 0x1

    goto :goto_60

    :cond_5f
    move v6, v8

    .line 4441
    :goto_60
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v11

    .line 4442
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v12

    const/high16 v13, 0x1000000

    and-int/2addr v13, v0

    if-eqz v13, :cond_6f

    const/4 v13, 0x1

    goto :goto_70

    :cond_6f
    move v13, v8

    .line 4445
    :goto_70
    sget-boolean v14, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    const-string v15, "WindowManager"

    if-nez v14, :cond_82

    sget-object v14, Lcom/android/server/policy/PhoneWindowManagerExt;->KEYCODE_DEBUG_LOG_ALLOWLIST:Ljava/util/Set;

    .line 4448
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v14, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c9

    .line 4454
    :cond_82
    iget-object v4, v7, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v4, :cond_97

    if-eqz v6, :cond_8f

    .line 4455
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v4

    if-eqz v4, :cond_97

    goto :goto_95

    .line 4456
    :cond_8f
    invoke-virtual {v4}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_97

    :goto_95
    const/4 v4, 0x1

    goto :goto_98

    :cond_97
    move v4, v8

    .line 4457
    :goto_98
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "interceptKeyTq keycode="

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " interactive="

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " keyguardActive="

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " policyFlags="

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4459
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4457
    invoke-static {v15, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c9
    const/4 v9, -0x1

    if-nez v6, :cond_ed

    if-eqz v13, :cond_d1

    if-nez v5, :cond_d1

    goto :goto_ed

    .line 4479
    :cond_d1
    invoke-virtual {v7, v12, v2}, Lcom/android/server/policy/PhoneWindowManager;->shouldDispatchInputWhenNonInteractive(II)Z

    move-result v4

    if-eqz v4, :cond_da

    .line 4486
    iput v9, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    goto :goto_fd

    :cond_da
    if-eqz v5, :cond_e5

    if-eqz v3, :cond_e4

    .line 4491
    invoke-virtual {v7, v2}, Lcom/android/server/policy/PhoneWindowManager;->isWakeKeyWhenScreenOff(I)Z

    move-result v4

    if-nez v4, :cond_e5

    :cond_e4
    move v5, v8

    :cond_e5
    if-eqz v5, :cond_eb

    if-eqz v3, :cond_eb

    .line 4496
    iput v2, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    :cond_eb
    move v4, v8

    goto :goto_fe

    :cond_ed
    :goto_ed
    if-eqz v6, :cond_fc

    .line 4473
    iget v4, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    if-ne v2, v4, :cond_f7

    if-nez v3, :cond_f7

    move v4, v8

    goto :goto_f8

    :cond_f7
    const/4 v4, 0x1

    .line 4477
    :goto_f8
    iput v9, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    move v5, v8

    goto :goto_fe

    :cond_fc
    move v5, v8

    :goto_fd
    const/4 v4, 0x1

    .line 4502
    :goto_fe
    iget-object v13, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v13, v1, v6}, Lcom/android/server/policy/PhoneWindowManagerExt;->isWakeKey(Landroid/view/KeyEvent;Z)I

    move-result v13

    and-int/lit8 v14, v13, 0x20

    if-eqz v14, :cond_10a

    move v5, v8

    goto :goto_10f

    :cond_10a
    and-int/lit8 v14, v13, 0x10

    if-eqz v14, :cond_10f

    const/4 v5, 0x1

    :cond_10f
    :goto_10f
    const/4 v14, 0x2

    and-int/2addr v13, v14

    if-eqz v13, :cond_13e

    if-eqz v5, :cond_137

    .line 4511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.policy:KEY("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4512
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    iget-boolean v4, v7, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    const/4 v5, 0x6

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZILjava/lang/String;)Z

    :cond_137
    const-string/jumbo v0, "interceptKeyTq : return condition of policyExt wakeKey"

    .line 4515
    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    .line 4523
    :cond_13e
    invoke-static {v2}, Lcom/android/server/policy/PhoneWindowManager;->isValidGlobalKey(I)Z

    move-result v13

    if-eqz v13, :cond_168

    iget-object v13, v7, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    .line 4524
    invoke-virtual {v13, v2}, Lcom/android/server/policy/GlobalKeyManager;->shouldHandleGlobalKey(I)Z

    move-result v13

    if-eqz v13, :cond_168

    if-nez v6, :cond_162

    if-eqz v5, :cond_162

    if-eqz v3, :cond_162

    .line 4526
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    .line 4527
    invoke-virtual {v0, v2}, Lcom/android/server/policy/GlobalKeyManager;->shouldDispatchFromNonInteractive(I)Z

    move-result v0

    if-eqz v0, :cond_162

    .line 4528
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalKeyManager;->setBeganFromNonInteractive()V

    .line 4531
    iput v9, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    const/4 v4, 0x1

    :cond_162
    if-eqz v5, :cond_167

    .line 4535
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromWakeKey(Landroid/view/KeyEvent;)V

    :cond_167
    return v4

    .line 4541
    :cond_168
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getHdmiControlManager()Landroid/hardware/hdmi/HdmiControlManager;

    move-result-object v13

    if-ne v2, v10, :cond_1af

    .line 4542
    iget-boolean v9, v7, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v9, :cond_1af

    if-eqz v13, :cond_17a

    .line 4543
    invoke-virtual {v13}, Landroid/hardware/hdmi/HdmiControlManager;->shouldHandleTvPowerKey()Z

    move-result v9

    if-nez v9, :cond_1af

    .line 4545
    :cond_17a
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v18

    .line 4546
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v20

    const/16 v21, 0x1a

    .line 4547
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v23

    .line 4548
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v24

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v25

    .line 4549
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v26

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v27

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v28

    const/16 v29, 0x0

    .line 4544
    invoke-static/range {v16 .. v29}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v1

    .line 4550
    invoke-virtual {v7, v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v0

    return v0

    .line 4555
    :cond_1af
    iget-object v9, v7, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplay:Landroid/view/Display;

    .line 4559
    invoke-virtual {v9}, Landroid/view/Display;->getState()I

    move-result v9

    .line 4555
    invoke-static {v9}, Landroid/view/Display;->isOnState(I)Z

    move-result v9

    if-eqz v6, :cond_1bf

    if-eqz v9, :cond_1bf

    const/4 v9, 0x1

    goto :goto_1c0

    :cond_1bf
    move v9, v8

    .line 4561
    :goto_1c0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v10

    and-int/lit16 v10, v10, 0x400

    if-nez v10, :cond_1d6

    .line 4564
    invoke-virtual {v7, v1, v9, v0}, Lcom/android/server/policy/PhoneWindowManager;->handleKeyGesture(Landroid/view/KeyEvent;ZI)I

    move-result v10

    and-int/2addr v10, v14

    if-eqz v10, :cond_1d6

    const-string/jumbo v0, "interceptKeyTq : return condition of policyExt handleKeyGesture"

    .line 4566
    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    .line 4577
    :cond_1d6
    iget-object v10, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v10, v1, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v10

    .line 4578
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "interceptKeyTq interceptKeyResult="

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4579
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4578
    invoke-static {v15, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v8, v10, 0x2

    if-eqz v8, :cond_201

    const-string/jumbo v0, "interceptKeyTq : return condition of policyExt"

    .line 4581
    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_201
    and-int/lit8 v8, v10, 0x4

    if-eqz v8, :cond_208

    or-int/lit8 v4, v4, 0x1

    goto :goto_20e

    :cond_208
    and-int/lit8 v8, v10, 0x8

    if-eqz v8, :cond_20e

    and-int/lit8 v4, v4, -0x2

    .line 4594
    :cond_20e
    :goto_20e
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v8

    and-int/lit8 v8, v8, 0x40

    if-eqz v8, :cond_218

    const/4 v8, 0x1

    goto :goto_219

    :cond_218
    const/4 v8, 0x0

    :goto_219
    if-eqz v3, :cond_236

    .line 4597
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v10

    if-nez v10, :cond_224

    if-eqz v6, :cond_236

    goto :goto_228

    :cond_224
    const/4 v10, 0x2

    and-int/2addr v0, v10

    if-eqz v0, :cond_236

    :goto_228
    if-eqz v8, :cond_22e

    iget-boolean v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mNavBarVirtualKeyHapticFeedbackEnabled:Z

    if-eqz v0, :cond_236

    .line 4601
    :cond_22e
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_236

    const/4 v8, 0x1

    goto :goto_237

    :cond_236
    const/4 v8, 0x0

    :goto_237
    const/4 v0, 0x4

    if-eq v2, v0, :cond_48e

    const/4 v10, 0x5

    if-eq v2, v10, :cond_475

    const/4 v10, 0x6

    if-eq v2, v10, :cond_41d

    const/16 v0, 0x4f

    const/4 v6, 0x3

    if-eq v2, v0, :cond_3f2

    const/16 v0, 0x82

    if-eq v2, v0, :cond_3f2

    const/16 v0, 0xa4

    if-eq v2, v0, :cond_33a

    const/16 v0, 0xab

    if-eq v2, v0, :cond_32a

    const/16 v0, 0xb1

    if-eq v2, v0, :cond_31d

    const/16 v0, 0xdb

    if-eq v2, v0, :cond_2f2

    const/16 v0, 0xe7

    if-eq v2, v0, :cond_2db

    const/16 v0, 0x114

    if-eq v2, v0, :cond_2d1

    const/16 v0, 0x7e

    if-eq v2, v0, :cond_3f2

    const/16 v0, 0x7f

    if-eq v2, v0, :cond_3f2

    packed-switch v2, :pswitch_data_50c

    packed-switch v2, :pswitch_data_516

    packed-switch v2, :pswitch_data_528

    packed-switch v2, :pswitch_data_532

    packed-switch v2, :pswitch_data_53e

    goto/16 :goto_4a9

    :cond_27a
    :goto_27a
    :pswitch_27a
    and-int/lit8 v4, v4, -0x2

    goto/16 :goto_4a9

    :pswitch_27e
    and-int/lit8 v4, v4, -0x2

    .line 4793
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->interceptSystemNavigationKey(Landroid/view/KeyEvent;)V

    goto/16 :goto_4a9

    :pswitch_285
    and-int/lit8 v4, v4, -0x2

    move v0, v4

    const/4 v5, 0x1

    goto/16 :goto_4aa

    :pswitch_28b
    and-int/lit8 v4, v4, -0x2

    .line 4800
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_296

    const/4 v8, 0x0

    :cond_296
    if-eqz v3, :cond_29d

    .line 4804
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->sleepPress()V

    goto/16 :goto_326

    .line 4806
    :cond_29d
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {v7, v5, v6}, Lcom/android/server/policy/PhoneWindowManager;->sleepRelease(J)V

    goto/16 :goto_326

    .line 4761
    :pswitch_2a6
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v0

    .line 4762
    iget-boolean v5, v7, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    iget-object v6, v7, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    const/16 v10, 0x1a

    .line 4763
    invoke-virtual {v6, v10}, Lcom/android/server/policy/SingleKeyGestureDetector;->getKeyPressCounter(I)I

    move-result v6

    .line 4760
    invoke-static {v0, v5, v6}, Lcom/android/server/policy/EventLogTags;->writeInterceptPower(Ljava/lang/String;II)V

    if-eqz v3, :cond_2c1

    .line 4772
    invoke-virtual {v7, v1, v9}, Lcom/android/server/policy/PhoneWindowManager;->interceptPowerKeyDown(Landroid/view/KeyEvent;Z)V

    goto :goto_2c4

    .line 4774
    :cond_2c1
    invoke-virtual {v7, v1, v11}, Lcom/android/server/policy/PhoneWindowManager;->interceptPowerKeyUp(Landroid/view/KeyEvent;Z)V

    .line 4777
    :goto_2c4
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FOLD_SA_LOGGING:Z

    if-eqz v0, :cond_326

    .line 4778
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string v5, "PowerKey Click"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendFoldSaLoggingCanceledIfNeeded(Ljava/lang/String;Z)V

    goto :goto_326

    :cond_2d1
    and-int/lit8 v4, v4, -0x2

    if-nez v3, :cond_326

    .line 4815
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->setUserInactiveOverrideFromWindowManager()V

    goto :goto_326

    :cond_2db
    if-nez v3, :cond_27a

    .line 4888
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4889
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v6, 0x1

    .line 4890
    invoke-virtual {v0, v6}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4891
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_27a

    .line 4876
    :cond_2f2
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_2fa

    const/4 v0, 0x1

    goto :goto_2fb

    :cond_2fa
    const/4 v0, 0x0

    :goto_2fb
    if-eqz v3, :cond_27a

    if-nez v0, :cond_27a

    .line 4878
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x17

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v9

    .line 4879
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x0

    .line 4878
    invoke-virtual {v0, v6, v9, v11, v10}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const/4 v6, 0x1

    .line 4880
    invoke-virtual {v0, v6}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4881
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_27a

    :cond_31d
    and-int/lit8 v4, v4, -0x2

    if-eqz v3, :cond_326

    if-eqz v13, :cond_326

    .line 4754
    invoke-virtual {v13}, Landroid/hardware/hdmi/HdmiControlManager;->toggleAndFollowTvPower()V

    :cond_326
    :goto_326
    move v0, v4

    const/4 v5, 0x0

    goto/16 :goto_4aa

    .line 4897
    :cond_32a
    iget v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    const/4 v6, 0x1

    if-ne v0, v6, :cond_4a9

    .line 4898
    iget-boolean v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mPictureInPictureVisible:Z

    if-eqz v0, :cond_4a9

    if-nez v3, :cond_27a

    .line 4903
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->showPictureInPictureMenu(Landroid/view/KeyEvent;)V

    goto/16 :goto_27a

    :cond_33a
    :pswitch_33a
    const/high16 v9, -0x80000000

    if-eqz v3, :cond_3c9

    .line 4624
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(I)V

    .line 4626
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getNotificationService()Landroid/app/NotificationManager;

    move-result-object v0

    if-eqz v0, :cond_352

    .line 4627
    iget-boolean v10, v7, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    if-nez v10, :cond_352

    .line 4628
    invoke-virtual {v0}, Landroid/app/NotificationManager;->silenceNotificationSound()V

    .line 4631
    :cond_352
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v10

    if-eqz v10, :cond_39a

    .line 4632
    iget-boolean v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    if-nez v0, :cond_39a

    .line 4635
    invoke-virtual {v10}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_39a

    const/16 v0, 0x18

    if-ne v2, v0, :cond_384

    .line 4637
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 4639
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isVolumeKeyAnswerCallMode()Z

    move-result v0

    if-eqz v0, :cond_384

    const-string/jumbo v0, "ringing: Accept the call (volume up)"

    .line 4640
    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4641
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SA_LOGGING:Z

    if-eqz v0, :cond_37f

    .line 4642
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->acceptRingingCall(I)V

    goto/16 :goto_27a

    .line 4644
    :cond_37f
    invoke-virtual {v10}, Landroid/telecom/TelecomManager;->acceptRingingCall()V

    goto/16 :goto_27a

    :cond_384
    const-string/jumbo v0, "interceptKeyBeforeQueueing: VOLUME key-down while ringing: Silence ringer!"

    .line 4656
    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4662
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SA_LOGGING:Z

    if-eqz v0, :cond_395

    .line 4663
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->silenceRinger(I)V

    goto/16 :goto_27a

    .line 4666
    :cond_395
    invoke-virtual {v10}, Landroid/telecom/TelecomManager;->silenceRinger()V

    goto/16 :goto_27a

    .line 4677
    :cond_39a
    :try_start_39a
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getMode()I

    move-result v0
    :try_end_3a2
    .catch Ljava/lang/Exception; {:try_start_39a .. :try_end_3a2} :catch_3a3

    goto :goto_3aa

    :catch_3a3
    move-exception v0

    const-string v11, "Error getting AudioService in interceptKeyBeforeQueueing."

    .line 4679
    invoke-static {v15, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_3aa
    if-eqz v10, :cond_3b2

    .line 4681
    invoke-virtual {v10}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v10

    if-nez v10, :cond_3b4

    :cond_3b2
    if-ne v0, v6, :cond_3b6

    :cond_3b4
    const/4 v0, 0x1

    goto :goto_3b7

    :cond_3b6
    const/4 v0, 0x0

    :goto_3b7
    if-eqz v0, :cond_3c9

    and-int/lit8 v0, v4, 0x1

    if-nez v0, :cond_3c9

    .line 4686
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v9, v6}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    goto/16 :goto_4a9

    .line 4691
    :cond_3c9
    iget-boolean v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    if-nez v0, :cond_3ee

    iget-boolean v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    if-eqz v0, :cond_3d2

    goto :goto_3ee

    :cond_3d2
    and-int/lit8 v0, v4, 0x1

    if-nez v0, :cond_4a9

    .line 4697
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 4698
    invoke-virtual {v0, v6, v2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastAction(II)I

    move-result v0

    const/4 v6, 0x2

    if-ne v0, v6, :cond_3e2

    goto :goto_3ee

    .line 4707
    :cond_3e2
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    const/4 v6, 0x1

    invoke-virtual {v0, v1, v9, v6}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    goto/16 :goto_4a9

    :cond_3ee
    :goto_3ee
    or-int/lit8 v4, v4, 0x1

    goto/16 :goto_4a9

    .line 4838
    :cond_3f2
    :pswitch_3f2
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaSessionLegacyHelper;->isGlobalPriorityActive()Z

    move-result v0

    if-eqz v0, :cond_400

    and-int/lit8 v4, v4, -0x2

    :cond_400
    and-int/lit8 v0, v4, 0x1

    if-nez v0, :cond_4a9

    .line 4849
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4850
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v9, Landroid/view/KeyEvent;

    invoke-direct {v9, v1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    invoke-virtual {v0, v6, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const/4 v6, 0x1

    .line 4852
    invoke-virtual {v0, v6}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4853
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_4a9

    :cond_41d
    and-int/lit8 v4, v4, -0x2

    if-eqz v3, :cond_44b

    .line 4716
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v0

    if-eqz v0, :cond_42c

    .line 4719
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v0

    goto :goto_42d

    :cond_42c
    const/4 v0, 0x0

    :goto_42d
    if-eqz v6, :cond_447

    if-nez v0, :cond_447

    const/4 v6, 0x0

    .line 4722
    iput-boolean v6, v7, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    .line 4723
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v6, v7, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    iget-object v9, v7, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 4724
    invoke-static {v9}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v9

    .line 4723
    invoke-virtual {v0, v6, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v6, 0x1

    goto :goto_4a9

    :cond_447
    const/4 v6, 0x1

    .line 4726
    iput-boolean v6, v7, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    goto :goto_4a9

    :cond_44b
    const/4 v6, 0x1

    .line 4729
    iget-boolean v9, v7, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    if-nez v9, :cond_4a9

    .line 4730
    iget-object v9, v7, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v10, v7, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez v11, :cond_4a9

    .line 4732
    iget v9, v7, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    and-int/2addr v9, v6

    if-eqz v9, :cond_465

    .line 4734
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->goHome()Z

    move-result v6

    if-eqz v6, :cond_465

    goto :goto_4a9

    .line 4738
    :cond_465
    iget v6, v7, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    const/4 v9, 0x2

    and-int/2addr v6, v9

    if-eqz v6, :cond_4a9

    .line 4740
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    const/4 v9, 0x0

    invoke-virtual {v7, v5, v6, v0, v9}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplay(JII)V

    goto/16 :goto_326

    :cond_475
    if-eqz v3, :cond_4a9

    .line 4860
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v0

    if-eqz v0, :cond_4a9

    .line 4862
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v6

    if-eqz v6, :cond_4a9

    const-string/jumbo v6, "interceptKeyBeforeQueueing: CALL key-down while ringing: Answer the call!"

    .line 4863
    invoke-static {v15, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4865
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->acceptRingingCall()V

    goto/16 :goto_27a

    :cond_48e
    if-eqz v3, :cond_494

    const/4 v6, 0x0

    .line 4607
    iput-boolean v6, v7, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    goto :goto_4a9

    .line 4609
    :cond_494
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnBackBehavior()Z

    move-result v0

    if-nez v0, :cond_4a3

    .line 4610
    iget-boolean v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->backKeyPress()Z

    move-result v6

    or-int/2addr v0, v6

    iput-boolean v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    .line 4613
    :cond_4a3
    iget-boolean v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    if-eqz v0, :cond_4a9

    goto/16 :goto_27a

    :cond_4a9
    :goto_4a9
    move v0, v4

    :goto_4aa
    if-eqz v8, :cond_4bf

    .line 4934
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v4

    if-nez v4, :cond_4b8

    .line 4935
    iget-object v4, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v4, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->performSystemKeyFeedback(Landroid/view/KeyEvent;)V

    goto :goto_4bf

    :cond_4b8
    const-string v4, "Virtual Key - Press"

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 4938
    invoke-virtual {v7, v6, v8, v4}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    :cond_4bf
    :goto_4bf
    if-eqz v5, :cond_4de

    .line 4945
    iget-object v4, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v4, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->isDoubleTapToWakeUp(I)Z

    move-result v2

    if-eqz v2, :cond_4db

    if-eqz v3, :cond_4de

    .line 4947
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    iget-boolean v4, v7, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    const/16 v5, 0x71

    const-string v6, "android.policy:KEY"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZILjava/lang/String;)Z

    goto :goto_4de

    .line 4952
    :cond_4db
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromWakeKey(Landroid/view/KeyEvent;)V

    :cond_4de
    :goto_4de
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_50b

    .line 4959
    iget-boolean v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mPerDisplayFocusEnabled:Z

    if-nez v1, :cond_50b

    const/4 v1, -0x1

    if-eq v12, v1, :cond_50b

    iget v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedDisplayId:I

    if-eq v12, v1, :cond_50b

    .line 4967
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Moving non-focused display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to top because a key is targeting it"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4969
    iget-object v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v1, v12}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->moveDisplayToTop(I)V

    :cond_50b
    return v0

    :pswitch_data_50c
    .packed-switch 0x18
        :pswitch_33a
        :pswitch_33a
        :pswitch_2a6
    .end packed-switch

    :pswitch_data_516
    .packed-switch 0x55
        :pswitch_3f2
        :pswitch_3f2
        :pswitch_3f2
        :pswitch_3f2
        :pswitch_3f2
        :pswitch_3f2
        :pswitch_3f2
    .end packed-switch

    :pswitch_data_528
    .packed-switch 0xde
        :pswitch_3f2
        :pswitch_28b
        :pswitch_285
    .end packed-switch

    :pswitch_data_532
    .packed-switch 0x118
        :pswitch_27e
        :pswitch_27e
        :pswitch_27e
        :pswitch_27e
    .end packed-switch

    :pswitch_data_53e
    .packed-switch 0x121
        :pswitch_27a
        :pswitch_27a
        :pswitch_27a
        :pswitch_27a
        :pswitch_27a
        :pswitch_27a
        :pswitch_27a
        :pswitch_27a
        :pswitch_27a
        :pswitch_27a
        :pswitch_27a
        :pswitch_27a
        :pswitch_27a
        :pswitch_27a
        :pswitch_27a
        :pswitch_27a
    .end packed-switch
.end method

.method public interceptMotionBeforeQueueingNonInteractive(IJI)I
    .registers 15

    const/4 v0, 0x1

    and-int/2addr p4, v0

    const-wide/32 v1, 0xf4240

    const/4 v3, 0x0

    if-eqz p4, :cond_17

    .line 5171
    div-long v5, p2, v1

    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotion:Z

    const/4 v8, 0x7

    const-string v9, "android.policy:MOTION"

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    return v3

    .line 5177
    :cond_17
    invoke-virtual {p0, p1, v3}, Lcom/android/server/policy/PhoneWindowManager;->shouldDispatchInputWhenNonInteractive(II)Z

    move-result p1

    if-eqz p1, :cond_1e

    return v0

    .line 5184
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTheaterModeEnabled()Z

    move-result p1

    if-eqz p1, :cond_31

    if-eqz p4, :cond_31

    .line 5185
    div-long v5, p2, v1

    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotionWhenNotDreaming:Z

    const/4 v8, 0x7

    const-string v9, "android.policy:MOTION"

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZILjava/lang/String;)Z

    :cond_31
    return v3
.end method

.method public final interceptPowerKeyDown(Landroid/view/KeyEvent;Z)V
    .registers 8

    .line 975
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 978
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 979
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v1

    const-wide/16 v3, 0x2

    mul-long/2addr v1, v3

    .line 978
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 986
    :cond_1a
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0, p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->onPowerKeyDown(Z)V

    .line 1012
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0, p1}, Landroid/os/PowerManagerInternal;->interceptPowerKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1016
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPowerKeyHandledByProximityInCall:Z

    .line 1021
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(I)V

    .line 1025
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    invoke-virtual {v1}, Lcom/android/server/policy/KeyCombinationManager;->isPowerKeyIntercepted()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1033
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v1, :cond_4e

    if-nez p2, :cond_45

    .line 1035
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromPowerKey(J)V

    :cond_45
    if-eqz v0, :cond_5d

    .line 1039
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/server/policy/SingleKeyGestureDetector;->setBeganFromNonInteractive(Z)V

    goto :goto_5d

    .line 1044
    :cond_4e
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    const/16 p2, 0x1a

    invoke-virtual {p1, p2}, Lcom/android/server/policy/SingleKeyGestureDetector;->isKeyIntercepted(I)Z

    move-result p1

    if-nez p1, :cond_5d

    .line 1045
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {p1}, Lcom/android/server/policy/SingleKeyGestureDetector;->reset()V

    .line 1050
    :cond_5d
    :goto_5d
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendPowerKeyToCover()V

    return-void
.end method

.method public final interceptPowerKeyUp(Landroid/view/KeyEvent;Z)V
    .registers 4

    if-nez p2, :cond_9

    .line 1056
    iget-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    if-eqz p2, :cond_7

    goto :goto_9

    :cond_7
    const/4 p2, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 p2, 0x1

    :goto_a
    if-nez p2, :cond_24

    .line 1059
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-nez p1, :cond_33

    .line 1061
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_33

    .line 1065
    :cond_24
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    const/16 p2, 0x1a

    invoke-virtual {p1, p2}, Lcom/android/server/policy/SingleKeyGestureDetector;->isKeyIntercepted(I)Z

    move-result p1

    if-nez p1, :cond_33

    .line 1066
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {p1}, Lcom/android/server/policy/SingleKeyGestureDetector;->reset()V

    .line 1070
    :cond_33
    :goto_33
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishPowerKeyPress()V

    return-void
.end method

.method public final interceptRingerToggleChord()V
    .registers 5

    .line 1739
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1740
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1741
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getRingerToggleChordDelay()J

    move-result-wide v2

    .line 1740
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final interceptScreenshotChord(IIJ)V
    .registers 7

    .line 1727
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1728
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final interceptSystemNavigationKey(Landroid/view/KeyEvent;)V
    .registers 4

    .line 5071
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    .line 5072
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 5073
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendFingerprintGesture(I)Z

    move-result v0

    if-nez v0, :cond_26

    .line 5074
    :cond_1b
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemNavigationKeysEnabled:Z

    if-eqz v0, :cond_26

    .line 5075
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(I)V

    :cond_26
    return-void
.end method

.method public final interceptUnhandledKey(Landroid/view/KeyEvent;)Z
    .registers 10

    .line 3773
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 3774
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    .line 3775
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_12

    move v2, v4

    goto :goto_13

    :cond_12
    move v2, v3

    .line 3776
    :goto_13
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v5

    .line 3779
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v6, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->interceptUnhandledKey(Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 3780
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Handled key. keyCode="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_36
    const/16 v6, 0x36

    if-eq v0, v6, :cond_81

    const/16 v6, 0x3e

    const/4 v7, -0x1

    if-eq v0, v6, :cond_65

    const/16 v5, 0x78

    if-eq v0, v5, :cond_44

    goto :goto_a3

    :cond_44
    if-eqz v2, :cond_64

    if-nez v1, :cond_64

    .line 3811
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result p1

    .line 3812
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FLIP_SUPPORT_SUB_HOME:Z

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isFolded()Z

    move-result v0

    if-eqz v0, :cond_59

    move p1, v4

    .line 3817
    :cond_59
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;

    if-ne p1, v7, :cond_60

    goto :goto_61

    :cond_60
    move v3, p1

    :goto_61
    invoke-interface {p0, v4, v3}, Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;->sendTakeScreenshotRunnable(II)V

    :cond_64
    return v4

    :cond_65
    if-eqz v2, :cond_a3

    if-nez v1, :cond_a3

    const/16 v0, 0x1000

    .line 3789
    invoke-static {v5, v0}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    if-eqz v0, :cond_a3

    and-int/lit16 v0, v5, 0xc1

    if-eqz v0, :cond_76

    goto :goto_77

    :cond_76
    move v7, v4

    .line 3791
    :goto_77
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p1

    invoke-interface {p0, p1, v7}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->switchKeyboardLayout(II)V

    return v4

    :cond_81
    if-eqz v2, :cond_a3

    const/16 p1, 0x1002

    .line 3797
    invoke-static {v5, p1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result p1

    if-eqz p1, :cond_a3

    .line 3800
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    .line 3801
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->isAccessibilityShortcutAvailable(Z)Z

    move-result p1

    if-eqz p1, :cond_a3

    .line 3802
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return v4

    :cond_a3
    :goto_a3
    return v3
.end method

.method public final isAutoUserSetupComplete()Z
    .registers 4

    .line 1856
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android.car.SETUP_WIZARD_IN_PROGRESS"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1
.end method

.method public isDeviceProvisioned()Z
    .registers 3

    .line 1839
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1840
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "device_provisioned"

    const/4 v1, 0x0

    .line 1839
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method public final isHidden(I)Z
    .registers 5

    .line 3081
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getLidState()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_12

    const/4 v2, 0x2

    if-eq p1, v2, :cond_e

    return v0

    :cond_e
    if-ne p0, v1, :cond_11

    move v0, v1

    :cond_11
    return v0

    :cond_12
    if-nez p0, :cond_15

    move v0, v1

    :cond_15
    return v0
.end method

.method public final isInRetailMode()Z
    .registers 3

    .line 4024
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "device_demo_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_11

    move v1, v0

    :cond_11
    return v1
.end method

.method public isKeyguardDrawnLw()Z
    .registers 2

    .line 5948
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5949
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 5950
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 2

    .line 3132
    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 p1, 0x7f8

    if-ne p0, p1, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isKeyguardLocked()Z
    .registers 1

    .line 5900
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result p0

    return p0
.end method

.method public isKeyguardOccluded()Z
    .registers 1

    .line 5913
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 5914
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isOccluded()Z

    move-result p0

    return p0
.end method

.method public isKeyguardSecure(I)Z
    .registers 2

    .line 5906
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 5907
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure(I)Z

    move-result p0

    return p0
.end method

.method public isKeyguardShowing()Z
    .registers 1

    .line 5881
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 5882
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result p0

    return p0
.end method

.method public isKeyguardShowingAndNotOccluded()Z
    .registers 3

    .line 5887
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 5888
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    move-result p0

    if-nez p0, :cond_13

    const/4 v1, 0x1

    :cond_13
    return v1
.end method

.method public isKeyguardTrustedLw()Z
    .registers 1

    .line 5893
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 5894
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isTrusted()Z

    move-result p0

    return p0
.end method

.method public isKeyguardUnoccluding()Z
    .registers 2

    .line 5927
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->isAppTransitionStateIdle()Z

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public final isRoundWindow()Z
    .registers 1

    .line 2168
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result p0

    return p0
.end method

.method public isScreenOn()Z
    .registers 1

    .line 5845
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnEarly()Z

    move-result p0

    return p0
.end method

.method public isScreenOn(I)Z
    .registers 2

    .line 5854
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result p0

    return p0
.end method

.method public final isTalkback(Landroid/content/pm/ServiceInfo;)Z
    .registers 2

    .line 1647
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, p0}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TalkBack"

    .line 1648
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isTheaterModeEnabled()Z
    .registers 3

    .line 6517
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "theater_mode_on"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_12

    move v1, v0

    :cond_12
    return v1
.end method

.method public final isTvUserSetupComplete()Z
    .registers 4

    .line 1861
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "tv_user_setup_complete"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1
.end method

.method public isUserSetupComplete()Z
    .registers 5

    .line 1845
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v2, 0x1

    .line 1847
    :cond_12
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v0, :cond_1c

    .line 1848
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTvUserSetupComplete()Z

    move-result p0

    :goto_1a
    and-int/2addr v2, p0

    goto :goto_25

    .line 1849
    :cond_1c
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureAuto:Z

    if-eqz v0, :cond_25

    .line 1850
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isAutoUserSetupComplete()Z

    move-result p0

    goto :goto_1a

    :cond_25
    :goto_25
    return v2
.end method

.method public final isWakeKeyWhenScreenOff(I)Z
    .registers 5

    const/4 v0, 0x4

    if-eq p1, v0, :cond_38

    const/16 v0, 0x4f

    const/4 v1, 0x0

    if-eq p1, v0, :cond_37

    const/16 v0, 0x82

    if-eq p1, v0, :cond_37

    const/16 v0, 0xa4

    const/4 v2, 0x1

    if-eq p1, v0, :cond_2e

    const/16 v0, 0xdb

    if-eq p1, v0, :cond_2b

    const/16 v0, 0xde

    if-eq p1, v0, :cond_37

    const/16 v0, 0x7e

    if-eq p1, v0, :cond_37

    const/16 v0, 0x7f

    if-eq p1, v0, :cond_37

    packed-switch p1, :pswitch_data_3c

    packed-switch p1, :pswitch_data_4e

    return v2

    .line 5153
    :pswitch_28
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnDpadKeyPress:Z

    return p0

    .line 5156
    :cond_2b
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnAssistKeyPress:Z

    return p0

    .line 5132
    :cond_2e
    :pswitch_2e
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getDockMode()I

    move-result p0

    if-eqz p0, :cond_37

    move v1, v2

    :cond_37
    :pswitch_37
    return v1

    .line 5159
    :cond_38
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnBackKeyPress:Z

    return p0

    nop

    :pswitch_data_3c
    .packed-switch 0x13
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_2e
        :pswitch_2e
    .end packed-switch

    :pswitch_data_4e
    .packed-switch 0x55
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_37
    .end packed-switch
.end method

.method public keepScreenOnStartedLw()V
    .registers 1

    return-void
.end method

.method public keepScreenOnStoppedLw()V
    .registers 4

    .line 6642
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 6643
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_10
    return-void
.end method

.method public keyguardOn()Z
    .registers 2

    .line 3186
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->inKeyguardRestrictedKeyInputMode()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public launchAllAppsAction()V
    .registers 6

    .line 1930
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ALL_APPS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1931
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v1, :cond_2a

    .line 1932
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    .line 1933
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1934
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v3, 0x100000

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 1938
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1941
    :cond_2a
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public launchAssistAction(Ljava/lang/String;IJI)V
    .registers 8

    const-string v0, "assist"

    .line 3960
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 3961
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 3968
    :cond_c
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/high16 v1, -0x80000000

    if-le p2, v1, :cond_1a

    const-string v1, "android.intent.extra.ASSIST_INPUT_DEVICE_ID"

    .line 3970
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1a
    if-eqz p1, :cond_20

    const/4 p2, 0x1

    .line 3973
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_20
    const-string p1, "android.intent.extra.TIME"

    .line 3975
    invoke-virtual {v0, p1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo p1, "invocation_type"

    .line 3976
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3978
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    const-string/jumbo p1, "search"

    .line 3979
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/SearchManager;

    invoke-virtual {p0, v0}, Landroid/app/SearchManager;->launchAssist(Landroid/os/Bundle;)V

    return-void
.end method

.method public launchHomeFromHotKey(I)V
    .registers 3

    const/4 v0, 0x1

    .line 4173
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(IZZ)V

    return-void
.end method

.method public launchHomeFromHotKey(IZZ)V
    .registers 6

    .line 4183
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/4 v1, 0x3

    .line 4184
    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->isInteractionControlEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string p0, "WindowManager"

    const-string/jumbo p1, "launchHomeFromHotKey : Key was blocked by interaction control"

    .line 4185
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    if-eqz p3, :cond_36

    .line 4191
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 4192
    invoke-virtual {p3, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->isKeyguardShowingAndNotOccluded(I)Z

    move-result p3

    if-eqz p3, :cond_1d

    return-void

    .line 4200
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    move-result p3

    if-nez p3, :cond_36

    .line 4202
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 4205
    invoke-virtual {p3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isInputRestricted()Z

    move-result p3

    if-eqz p3, :cond_36

    .line 4208
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager$12;-><init>(Lcom/android/server/policy/PhoneWindowManager;IZ)V

    invoke-virtual {p3, v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->verifyUnlock(Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;)V

    return-void

    .line 4221
    :cond_36
    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mRecentsVisible:Z

    const/4 v0, 0x1

    if-eqz p3, :cond_4c

    .line 4223
    :try_start_3b
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_42} :catch_42

    :catch_42
    if-eqz p2, :cond_47

    .line 4228
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->awakenDreams()V

    :cond_47
    const/4 p1, 0x0

    .line 4236
    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/PhoneWindowManager;->hideRecentApps(ZZ)V

    goto :goto_4f

    .line 4240
    :cond_4c
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/policy/PhoneWindowManager;->startDockOrHome(IZZ)V

    :goto_4f
    return-void
.end method

.method public final launchRetailVoiceAssist(Z)V
    .registers 6

    .line 4001
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VOICE_ASSIST_RETAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4002
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 4005
    new-instance v2, Landroid/content/ComponentName;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 4008
    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;Z)V

    goto :goto_33

    :cond_29
    const-string v0, "WindowManager"

    const-string v1, "Couldn\'t find an app to process android.intent.action.VOICE_ASSIST_RETAIL. Fall back to start android.intent.action.VOICE_ASSIST"

    .line 4011
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4013
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->startVoiceAssistIntent(Z)V

    :goto_33
    return-void
.end method

.method public final launchTargetActivityOnMultiPressPower()V
    .registers 5

    .line 1311
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_b

    const-string v0, "Executing the double press power action."

    .line 1312
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    :cond_b
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerDoublePressTargetActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_63

    .line 1315
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1316
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerDoublePressTargetActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1317
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_44

    .line 1320
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_31

    .line 1321
    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_31

    const/4 v3, 0x1

    :cond_31
    const/high16 v1, 0x10200000

    .line 1322
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-nez v3, :cond_3e

    .line 1325
    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_63

    .line 1327
    :cond_3e
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {p0, v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->dismissKeyguardToLaunch(Landroid/content/Intent;)V

    goto :goto_63

    .line 1330
    :cond_44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not resolve activity with : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerDoublePressTargetActivity:Landroid/content/ComponentName;

    .line 1331
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " name."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1330
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_63
    :goto_63
    return-void
.end method

.method public final launchVoiceAssist(Z)V
    .registers 3

    .line 3987
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_c

    .line 3988
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    if-nez v0, :cond_21

    .line 3990
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isInRetailMode()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 3991
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->launchRetailVoiceAssist(Z)V

    goto :goto_2d

    .line 3993
    :cond_1d
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->startVoiceAssistIntent(Z)V

    goto :goto_2d

    .line 3996
    :cond_21
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VOICE_ASSIST"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->dismissKeyguardToLaunch(Landroid/content/Intent;)V

    :goto_2d
    return-void
.end method

.method public launchVoiceAssistWithWakeLock()V
    .registers 4

    const-string v0, "assist"

    .line 5327
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 5330
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    if-nez v0, :cond_13

    .line 5331
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_32

    .line 5333
    :cond_13
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/DeviceIdleManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DeviceIdleManager;

    if-eqz v0, :cond_25

    const-string/jumbo v1, "voice-search"

    .line 5335
    invoke-virtual {v0, v1}, Landroid/os/DeviceIdleManager;->endIdle(Ljava/lang/String;)V

    .line 5337
    :cond_25
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    const-string v2, "android.speech.extras.EXTRA_SECURE"

    .line 5338
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5340
    :goto_32
    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5341
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method public lockNow(Landroid/os/Bundle;)V
    .registers 5

    .line 6209
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6210
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_16

    .line 6214
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;->setLockOptions(Landroid/os/Bundle;)V

    .line 6216
    :cond_16
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string p1, "WindowManager"

    .line 6218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "lockNow, pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , uid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6221
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter p1

    const/4 v0, 0x1

    .line 6222
    :try_start_48
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockNowPending:Z

    .line 6223
    monitor-exit p1

    return-void

    :catchall_4c
    move-exception p0

    monitor-exit p1
    :try_end_4e
    .catchall {:try_start_48 .. :try_end_4e} :catchall_4c

    throw p0
.end method

.method public notifyCameraLensCoverSwitchChanged(JZ)V
    .registers 13

    .line 4321
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    if-ne v0, p3, :cond_5

    return-void

    .line 4324
    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110176

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_15

    return-void

    .line 4328
    :cond_15
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4a

    if-nez p3, :cond_4a

    .line 4331
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_22

    const/4 v0, 0x0

    goto :goto_26

    .line 4332
    :cond_22
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    :goto_26
    if-eqz v0, :cond_30

    .line 4334
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_37

    .line 4336
    :cond_30
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_37
    const-wide/32 v1, 0xf4240

    .line 4338
    div-long v4, p1, v1

    iget-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromCameraLens:Z

    const/4 v7, 0x5

    const-string v8, "android.policy:CAMERA_COVER"

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZILjava/lang/String;)Z

    .line 4340
    sget-object p1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4342
    :cond_4a
    iput p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    return-void
.end method

.method public notifyLidSwitchChanged(JZ)V
    .registers 10

    .line 4292
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->getLidState()I

    move-result p1

    if-ne p3, p1, :cond_9

    return-void

    .line 4296
    :cond_9
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p1, p3}, Lcom/android/server/wm/DisplayPolicy;->setLidState(I)V

    .line 4307
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->applyLidSwitchState()V

    const/4 p1, 0x1

    .line 4308
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    if-eqz p3, :cond_26

    .line 4311
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromLidSwitch:Z

    const/16 v4, 0x9

    const-string v5, "android.policy:LID"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZILjava/lang/String;)Z

    goto :goto_36

    .line 4313
    :cond_26
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getLidBehavior()I

    move-result p2

    if-eq p2, p1, :cond_36

    .line 4314
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_36
    :goto_36
    return-void
.end method

.method public okToAnimate(Z)Z
    .registers 2

    if-nez p1, :cond_8

    .line 5860
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result p1

    if-eqz p1, :cond_e

    :cond_8
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeviceGoingToSleep:Z

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public onDefaultDisplayFocusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .registers 2

    .line 3881
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz p0, :cond_f

    if-eqz p1, :cond_b

    .line 3883
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    .line 3882
    :goto_c
    invoke-virtual {p0, p1}, Lcom/android/server/policy/DisplayFoldController;->onDefaultDisplayFocusChanged(Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public onKeyguardOccludedChangedLw(Z)Z
    .registers 5

    .line 3901
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->sEnableShellTransitions:Z

    if-nez v0, :cond_14

    .line 3903
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    .line 3904
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    return v1

    .line 3910
    :cond_14
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    if-eq v0, p1, :cond_1e

    goto :goto_1f

    :cond_1e
    move v1, v2

    .line 3913
    :goto_1f
    invoke-virtual {p0, p1, v2, v2}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(ZZZ)Z

    return v1
.end method

.method public onPowerGroupWakefulnessChanged(IIII)V
    .registers 5

    .line 5474
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManagerExt;->onPowerGroupWakefulnessChanged(IIII)V

    return-void
.end method

.method public onSystemUiStarted()V
    .registers 1

    .line 6007
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->bindKeyguard()V

    return-void
.end method

.method public performHapticFeedback(ILjava/lang/String;IZLjava/lang/String;)Z
    .registers 12

    .line 6534
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/PhoneWindowManagerExt;->performHapticFeedbackLw(ILjava/lang/String;IZLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public performHapticFeedback(IZLjava/lang/String;)Z
    .registers 10

    .line 6525
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;IZLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final powerLongPress(JLandroid/view/KeyEvent;I)V
    .registers 13

    .line 1398
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getResolvedLongPressOnPowerBehavior()I

    move-result v0

    .line 1399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "powerLongPress: eventTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " mLongPressOnPowerBehavior="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " behavior="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1407
    invoke-virtual {v1, v0, p3, p4}, Lcom/android/server/policy/PhoneWindowManagerExt;->powerLongPress(ILandroid/view/KeyEvent;I)Z

    move-result p3

    const/4 p4, 0x1

    if-eqz p3, :cond_39

    .line 1408
    iput-boolean p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    return-void

    :cond_39
    const/16 p3, 0x2713

    const/4 v1, 0x0

    if-eq v0, p4, :cond_82

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6b

    const/4 v3, 0x3

    if-eq v0, v3, :cond_6b

    const/4 v2, 0x4

    if-eq v0, v2, :cond_5e

    const/4 p3, 0x5

    if-eq v0, p3, :cond_4b

    goto :goto_94

    .line 1447
    :cond_4b
    iput-boolean p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    const/16 p3, 0x2712

    const-string p4, "Power - Long Press - Go To Assistant"

    .line 1448
    invoke-virtual {p0, p3, v1, p4}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    const/4 v7, 0x6

    move-object v2, p0

    move-wide v5, p1

    .line 1451
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;IJI)V

    goto :goto_94

    .line 1438
    :cond_5e
    iput-boolean p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    const-string p1, "Power - Long Press - Go To Voice Assist"

    .line 1439
    invoke-virtual {p0, p3, v1, p1}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    .line 1444
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowStartActivityForLongPressOnPowerDuringSetup:Z

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->launchVoiceAssist(Z)V

    goto :goto_94

    .line 1431
    :cond_6b
    iput-boolean p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    const-string p1, "Power - Long Press - Shut Off"

    .line 1432
    invoke-virtual {p0, p3, v1, p1}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    const-string/jumbo p1, "globalactions"

    .line 1434
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 1435
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    if-ne v0, v2, :cond_7d

    goto :goto_7e

    :cond_7d
    move p4, v1

    :goto_7e
    invoke-interface {p0, p4}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    goto :goto_94

    .line 1417
    :cond_82
    iput-boolean p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    const-string p1, "Power - Long Press - Global Actions"

    .line 1418
    invoke-virtual {p0, p3, v1, p1}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    .line 1421
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_LONG_PRESS_SIDE_KEY:Z

    if-eqz p1, :cond_91

    .line 1422
    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal(I)V

    goto :goto_94

    .line 1426
    :cond_91
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal()V

    :goto_94
    return-void
.end method

.method public final powerMultiPressAction(JZI)V
    .registers 12

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    .line 1257
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZILandroid/view/KeyEvent;I)V

    return-void
.end method

.method public final powerMultiPressAction(JZILandroid/view/KeyEvent;I)V
    .registers 9

    .line 1264
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1265
    invoke-virtual {v0, p3, p4, p5, p6}, Lcom/android/server/policy/PhoneWindowManagerExt;->powerMultiPressAction(ZILandroid/view/KeyEvent;I)Z

    move-result p5

    if-eqz p5, :cond_9

    return-void

    :cond_9
    const/4 p5, 0x1

    const-string p6, "WindowManager"

    if-eq p4, p5, :cond_29

    const/4 p5, 0x2

    if-eq p4, p5, :cond_19

    const/4 p1, 0x3

    if-eq p4, p1, :cond_15

    goto :goto_6b

    .line 1305
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchTargetActivityOnMultiPressPower()V

    goto :goto_6b

    :cond_19
    const-string p4, "Starting brightness boost."

    .line 1298
    invoke-static {p6, p4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_23

    .line 1300
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromPowerKey(J)V

    .line 1302
    :cond_23
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0, p1, p2}, Landroid/os/PowerManager;->boostScreenBrightness(J)V

    goto :goto_6b

    .line 1274
    :cond_29
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result p4

    if-nez p4, :cond_35

    const-string p0, "Ignoring toggling theater mode - device not setup."

    .line 1275
    invoke-static {p6, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    .line 1279
    :cond_35
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTheaterModeEnabled()Z

    move-result p4

    const/4 v0, 0x0

    const-string/jumbo v1, "theater_mode_on"

    if-eqz p4, :cond_53

    const-string p4, "Toggling theater mode off."

    .line 1280
    invoke-static {p6, p4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    iget-object p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    invoke-static {p4, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-nez p3, :cond_6b

    .line 1284
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromPowerKey(J)V

    goto :goto_6b

    :cond_53
    const-string p4, "Toggling theater mode on."

    .line 1287
    invoke-static {p6, p4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    iget-object p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    invoke-static {p4, v1, p5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1291
    iget-boolean p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoToSleepOnButtonPressTheaterMode:Z

    if-eqz p4, :cond_6b

    if-eqz p3, :cond_6b

    const/4 p3, 0x4

    .line 1292
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplay(JII)V

    :cond_6b
    :goto_6b
    return-void
.end method

.method public final powerPress(JIZ)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    .line 1082
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/PhoneWindowManager;->powerPress(JIZLandroid/view/KeyEvent;)V

    return-void
.end method

.method public final powerPress(JIZLandroid/view/KeyEvent;)V
    .registers 15

    .line 1087
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnEarly()Z

    move-result v0

    const-string v1, "WindowManager"

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnFully()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1089
    invoke-virtual {v0, p3}, Lcom/android/server/policy/PhoneWindowManagerExt;->skipPowerPress(I)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string p0, "Suppressed redundant power key press while already in the process of turning the screen on."

    .line 1091
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1096
    :cond_20
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplay:Landroid/view/Display;

    .line 1100
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    .line 1096
    invoke-static {v0}, Landroid/view/Display;->isOnState(I)Z

    move-result v5

    const-string v0, " beganFromNonInteractive="

    const/4 v2, 0x1

    if-ne p3, v2, :cond_52

    .line 1103
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1104
    invoke-virtual {v3, p5, v5, p4}, Lcom/android/server/policy/PhoneWindowManagerExt;->powerPress(Landroid/view/KeyEvent;ZZ)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 1105
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "consumed by powerPress, interactive="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1111
    :cond_52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "powerPress: eventTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " interactive="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mShortPressOnPowerBehavior="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " systemKeyRequested="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemKeyRequested:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-ne p3, v0, :cond_ae

    .line 1120
    iget-object p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p4}, Lcom/android/server/policy/PhoneWindowManagerExt;->canRequestBugReport()Z

    move-result p4

    if-eqz p4, :cond_a3

    .line 1121
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->requestCustomFullBugreport()V

    goto/16 :goto_172

    .line 1124
    :cond_a3
    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    move-object v2, p0

    move-wide v3, p1

    move-object v7, p5

    move v8, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZILandroid/view/KeyEvent;I)V

    goto/16 :goto_172

    :cond_ae
    const/4 v0, 0x3

    if-ne p3, v0, :cond_bc

    .line 1130
    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    move-object v2, p0

    move-wide v3, p1

    move-object v7, p5

    move v8, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZILandroid/view/KeyEvent;I)V

    goto/16 :goto_172

    :cond_bc
    const/4 v0, 0x4

    if-ne p3, v0, :cond_cc

    .line 1137
    iget-object p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget v6, p4, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuadruplePressOnPowerBehavior:I

    move-object v2, p0

    move-wide v3, p1

    move-object v7, p5

    move v8, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZILandroid/view/KeyEvent;I)V

    goto/16 :goto_172

    :cond_cc
    const/4 v0, 0x5

    if-ne p3, v0, :cond_dc

    .line 1143
    iget-object p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget v6, p4, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuintuplePressOnPowerBehavior:I

    move-object v2, p0

    move-wide v3, p1

    move-object v7, p5

    move v8, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZILandroid/view/KeyEvent;I)V

    goto/16 :goto_172

    :cond_dc
    if-le p3, v0, :cond_fa

    .line 1149
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressPowerCount()I

    move-result p5

    if-gt p3, p5, :cond_fa

    .line 1150
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No behavior defined for power press count "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_172

    :cond_fa
    if-ne p3, v2, :cond_172

    if-eqz v5, :cond_172

    if-nez p4, :cond_172

    .line 1151
    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemKeyRequested:Z

    if-nez p3, :cond_172

    .line 1155
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mSideFpsEventHandler:Lcom/android/server/policy/SideFpsEventHandler;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/policy/SideFpsEventHandler;->onSinglePressDetected(J)Z

    move-result p3

    if-eqz p3, :cond_112

    const-string p0, "Suppressing power key because the user is interacting with the fingerprint sensor"

    .line 1156
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1160
    :cond_112
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    const/4 p4, 0x0

    packed-switch p3, :pswitch_data_174

    goto :goto_172

    .line 1195
    :pswitch_119
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz p3, :cond_139

    invoke-virtual {p3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->hasKeyguard()Z

    move-result p3

    if-eqz p3, :cond_139

    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget p5, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 1196
    invoke-virtual {p3, p5}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure(I)Z

    move-result p3

    if-eqz p3, :cond_139

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result p3

    if-eqz p3, :cond_134

    goto :goto_139

    :cond_134
    const/4 p1, 0x0

    .line 1199
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->lockNow(Landroid/os/Bundle;)V

    goto :goto_172

    .line 1197
    :cond_139
    :goto_139
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplayFromPowerButton(JI)Z

    goto :goto_172

    .line 1180
    :pswitch_13d
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissImeOnBackKeyPressed:Z

    if-eqz p1, :cond_159

    .line 1181
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    if-nez p1, :cond_14f

    .line 1182
    const-class p1, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 1183
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 1185
    :cond_14f
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    if-eqz p0, :cond_172

    const/16 p1, 0x10

    .line 1186
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod(I)V

    goto :goto_172

    .line 1190
    :cond_159
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->shortPressPowerGoHome()V

    goto :goto_172

    .line 1177
    :pswitch_15d
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->shortPressPowerGoHome()V

    goto :goto_172

    .line 1171
    :pswitch_161
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplayFromPowerButton(JI)Z

    move-result p1

    if-eqz p1, :cond_172

    .line 1173
    invoke-virtual {p0, p4}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(I)V

    goto :goto_172

    .line 1167
    :pswitch_16b
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplayFromPowerButton(JI)Z

    goto :goto_172

    .line 1164
    :pswitch_16f
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplayFromPowerButton(JI)Z

    :cond_172
    :goto_172
    return-void

    nop

    :pswitch_data_174
    .packed-switch 0x1
        :pswitch_16f
        :pswitch_16b
        :pswitch_161
        :pswitch_15d
        :pswitch_13d
        :pswitch_119
    .end packed-switch
.end method

.method public final powerVeryLongPress()V
    .registers 4

    .line 1458
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_13

    .line 1462
    :cond_6
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    const/16 v0, 0x2713

    const/4 v1, 0x0

    const-string v2, "Power - Very Long Press - Show Global Actions"

    .line 1463
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    .line 1465
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActions()V

    :goto_13
    return-void
.end method

.method public final preloadRecentApps()V
    .registers 2

    const/4 v0, 0x1

    .line 4054
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 4055
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 4057
    invoke-interface {p0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->preloadRecentApps()V

    :cond_c
    return-void
.end method

.method public final readCameraLensCoverState()V
    .registers 2

    .line 3077
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getCameraLensCoverState()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    return-void
.end method

.method public final readConfigurationDependentBehaviors()V
    .registers 5

    .line 2841
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00b4

    .line 2843
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v2, 0x0

    if-ltz v1, :cond_15

    const/4 v3, 0x3

    if-le v1, v3, :cond_17

    .line 2847
    :cond_15
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    :cond_17
    const v1, 0x10e0083

    .line 2850
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-ltz v0, :cond_25

    const/4 v1, 0x2

    if-le v0, v1, :cond_27

    .line 2854
    :cond_25
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 2857
    :cond_27
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    .line 2858
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.picture_in_picture"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x1

    .line 2859
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    .line 2861
    :cond_36
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e011e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnStemPrimaryBehavior:I

    .line 2863
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnStemPrimaryBehavior:I

    .line 2865
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnStemPrimaryBehavior:I

    .line 2867
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e012d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnStemPrimaryBehavior:I

    return-void
.end method

.method public readLidState()V
    .registers 2

    .line 3073
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getLidState()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayPolicy;->setLidState(I)V

    return-void
.end method

.method public registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    .registers 2

    .line 3852
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz p0, :cond_7

    .line 3853
    invoke-virtual {p0, p1}, Lcom/android/server/policy/DisplayFoldController;->registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V

    :cond_7
    return-void
.end method

.method public registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3890
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3891
    :try_start_3
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mModifierShortcutManager:Lcom/android/server/policy/ModifierShortcutManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/ModifierShortcutManager;->registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V

    .line 3892
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final reportScreenStateToVrManager(Z)V
    .registers 3

    .line 5754
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    if-nez v0, :cond_5

    return-void

    .line 5757
    :cond_5
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/vr/VrManagerInternal;->onScreenStateChanged(Z)V

    return-void
.end method

.method public final requestBugreportForTv()V
    .registers 3

    const-string/jumbo v0, "ro.debuggable"

    .line 3681
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 3682
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "development_settings_enabled"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_39

    .line 3685
    :cond_1f
    :try_start_1f
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IActivityManager;->launchBugReportHandlerApp()Z

    move-result p0

    if-nez p0, :cond_39

    .line 3686
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IActivityManager;->requestInteractiveBugReport()V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_30} :catch_31

    goto :goto_39

    :catch_31
    move-exception p0

    const-string v0, "WindowManager"

    const-string v1, "Error taking bugreport"

    .line 3689
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_39
    :goto_39
    return-void
.end method

.method public screenTurnedOff(I)V
    .registers 8

    .line 5630
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_1f

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " turned off..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    if-nez p1, :cond_55

    const/4 p1, 0x1

    .line 5633
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->updateScreenOffSleepToken(Z)V

    const/4 p1, 0x0

    .line 5634
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedOrSleepingDefaultDisplay:Z

    .line 5635
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->screenTurnedOff()V

    .line 5636
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5637
    :try_start_30
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_37

    .line 5638
    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurnedOff()V

    .line 5640
    :cond_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_30 .. :try_end_38} :catchall_52

    .line 5641
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    .line 5642
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->reportScreenStateToVrManager(Z)V

    .line 5643
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraGestureTriggeredDuringGoingToSleep:Z

    if-eqz p1, :cond_55

    .line 5644
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromPowerKey:Z

    const/4 v4, 0x5

    const-string v5, "com.android.systemui:CAMERA_GESTURE_PREVENT_LOCK"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZILjava/lang/String;)Z

    goto :goto_55

    :catchall_52
    move-exception p0

    .line 5640
    :try_start_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw p0

    :cond_55
    :goto_55
    return-void
.end method

.method public screenTurnedOn(I)V
    .registers 5

    .line 5719
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_1f

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " turned on..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    if-eqz p1, :cond_22

    return-void

    .line 5725
    :cond_22
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 5726
    :try_start_25
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_2c

    .line 5727
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurnedOn()V

    .line 5729
    :cond_2c
    monitor-exit p1
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_39

    const/4 p1, 0x1

    .line 5730
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->reportScreenStateToVrManager(Z)V

    .line 5733
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;

    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;->postRotationInfoForAudioManager()V

    return-void

    :catchall_39
    move-exception p0

    .line 5729
    :try_start_3a
    monitor-exit p1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public screenTurningOff(ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .registers 4

    .line 5740
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->screenTurningOff(ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    if-eqz p1, :cond_8

    return-void

    :cond_8
    const/4 p1, 0x1

    .line 5745
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedOrSleepingDefaultDisplay:Z

    .line 5746
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 5747
    :try_start_e
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz p0, :cond_15

    .line 5748
    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurningOff()V

    .line 5750
    :cond_15
    monitor-exit p1

    return-void

    :catchall_17
    move-exception p0

    monitor-exit p1
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_17

    throw p0
.end method

.method public screenTurningOn(ILcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V
    .registers 6

    .line 5665
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_1f

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " turning on..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    if-nez p1, :cond_7f

    const-wide/16 v0, 0x20

    const-string/jumbo p1, "screenTurningOn"

    const/4 v2, 0x0

    .line 5668
    invoke-static {v0, v1, p1, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 5670
    invoke-virtual {p0, v2}, Lcom/android/server/policy/PhoneWindowManager;->updateScreenOffSleepToken(Z)V

    .line 5671
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/DisplayPolicy;->screenTurnedOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V

    .line 5672
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootAnimationDismissable:Z

    .line 5674
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5675
    :try_start_37
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz p1, :cond_68

    invoke-virtual {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->hasKeyguard()Z

    move-result p1

    if-eqz p1, :cond_68

    .line 5676
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 5677
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 5678
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getKeyguardDrawnTimeout()J

    move-result-wide v1

    .line 5677
    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string p1, "WindowManager"

    const-string/jumbo p2, "screenTurningOn(+), before calling onScreenTurningOn to KeyguardDelegate"

    .line 5681
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5684
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnCallback:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    invoke-virtual {p1, p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurningOn(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;)V

    const-string p0, "WindowManager"

    const-string/jumbo p1, "screenTurningOn(-), after calling onScreenTurningOn to KeyguardDelegate"

    .line 5687
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    .line 5691
    :cond_68
    sget-boolean p1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz p1, :cond_74

    const-string p1, "WindowManager"

    const-string/jumbo p2, "null mKeyguardDelegate: setting mKeyguardDrawComplete."

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5693
    :cond_74
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5695
    :goto_7a
    monitor-exit v0

    goto :goto_90

    :catchall_7c
    move-exception p0

    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_37 .. :try_end_7e} :catchall_7c

    throw p0

    .line 5707
    :cond_7f
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5708
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManager;I)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p2, v0, v1, v2, p1}, Lcom/android/server/wm/WindowManagerInternal;->waitForAllWindowsDrawn(Ljava/lang/Runnable;JI)V

    :goto_90
    return-void
.end method

.method public sendCloseSystemWindows()V
    .registers 2

    .line 5969
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public sendCloseSystemWindows(Ljava/lang/String;)V
    .registers 2

    .line 5973
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public sendCloseSystemWindowsInDisplay(Ljava/lang/String;I)V
    .registers 3

    .line 5978
    invoke-static {p1, p2}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindowsInDisplay(Ljava/lang/String;I)V

    return-void
.end method

.method public final sendSystemKeyToStatusBar(I)V
    .registers 2

    .line 5085
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 5088
    :try_start_6
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->handleSystemKey(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_9

    :catch_9
    :cond_9
    return-void
.end method

.method public final sendSystemKeyToStatusBarAsync(I)V
    .registers 5

    .line 5099
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x1

    .line 5100
    invoke-virtual {p1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 5101
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setAllowLockscreenWhenOn(IZ)V
    .registers 3

    if-eqz p2, :cond_c

    .line 6230
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 6232
    :cond_c
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 6234
    :goto_15
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V

    return-void
.end method

.method public setCurrentUserLw(I)V
    .registers 3

    .line 6661
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 6662
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_9

    .line 6663
    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setCurrentUser(I)V

    .line 6665
    :cond_9
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    if-eqz v0, :cond_10

    .line 6666
    invoke-virtual {v0, p1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->setCurrentUser(I)V

    .line 6668
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 6670
    invoke-interface {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setCurrentUser(I)V

    :cond_19
    return-void
.end method

.method public setDefaultDisplay(Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;)V
    .registers 3

    .line 2173
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplay:Landroid/view/Display;

    .line 2174
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 2175
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayRotation;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    return-void
.end method

.method public setDexDisplay(Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;)V
    .registers 2

    .line 2181
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;->getDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDexDisplay:Landroid/view/Display;

    return-void
.end method

.method public setDismissImeOnBackKeyPressed(Z)V
    .registers 2

    .line 6656
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissImeOnBackKeyPressed:Z

    return-void
.end method

.method public final setKeyguardOccludedLw(ZZZ)Z
    .registers 8

    .line 4270
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setKeyguardOccluded occluded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    const/4 v0, 0x0

    .line 4271
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    .line 4272
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    move-result v1

    if-ne v1, p1, :cond_27

    if-nez p2, :cond_27

    return v0

    .line 4276
    :cond_27
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {p2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_34

    if-nez p1, :cond_34

    move v2, v1

    goto :goto_35

    :cond_34
    move v2, v0

    .line 4281
    :goto_35
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->sEnableRemoteKeyguardOccludeAnimation:Z

    if-eqz v3, :cond_3b

    if-nez p3, :cond_3c

    :cond_3b
    move v0, v1

    .line 4283
    :cond_3c
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(ZZZ)V

    return p2
.end method

.method public setNavBarVirtualKeyHapticFeedbackEnabledLw(Z)V
    .registers 2

    .line 4256
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarVirtualKeyHapticFeedbackEnabled:Z

    return-void
.end method

.method public setOverrideFoldedArea(Landroid/graphics/Rect;)V
    .registers 2

    .line 3866
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz p0, :cond_7

    .line 3867
    invoke-virtual {p0, p1}, Lcom/android/server/policy/DisplayFoldController;->setOverrideFoldedArea(Landroid/graphics/Rect;)V

    :cond_7
    return-void
.end method

.method public setPipVisibilityLw(Z)V
    .registers 2

    .line 4251
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPictureInPictureVisible:Z

    return-void
.end method

.method public setRecentsVisibilityLw(Z)V
    .registers 2

    .line 4246
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mRecentsVisible:Z

    return-void
.end method

.method public setSafeMode(Z)V
    .registers 4

    .line 5984
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeMode:Z

    if-eqz p1, :cond_c

    const/16 p1, 0x2711

    const/4 v0, 0x1

    const-string v1, "Safe Mode Enabled"

    .line 5986
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    :cond_c
    return-void
.end method

.method public setSamsungPolicy(Lcom/android/server/policy/PhoneWindowManagerExt;)V
    .registers 2

    .line 7131
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    return-void
.end method

.method public setSwitchingUser(Z)V
    .registers 2

    .line 6676
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setSwitchingUser(Z)V

    return-void
.end method

.method public setTopFocusedDisplay(I)V
    .registers 2

    .line 3847
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedDisplayId:I

    return-void
.end method

.method public final shortPressPowerGoHome()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1246
    invoke-virtual {p0, v0, v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(IZZ)V

    .line 1248
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1251
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onShortPowerPressedGoHome()V

    :cond_10
    return-void
.end method

.method public final shouldCecAudioDeviceForwardVolumeKeysSystemAudioModeOff()Z
    .registers 1

    .line 5274
    sget-boolean p0, Lcom/android/internal/os/RoSystemProperties;->CEC_AUDIO_DEVICE_FORWARD_VOLUME_KEYS_SYSTEM_AUDIO_MODE_OFF:Z

    return p0
.end method

.method public final shouldDispatchInputWhenNonInteractive(II)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_a

    const/4 v2, -0x1

    if-ne p1, v2, :cond_8

    goto :goto_a

    :cond_8
    move v2, v0

    goto :goto_b

    :cond_a
    :goto_a
    move v2, v1

    :goto_b
    if-eqz v2, :cond_10

    .line 5197
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplay:Landroid/view/Display;

    goto :goto_16

    .line 5198
    :cond_10
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    :goto_16
    if-eqz p1, :cond_21

    .line 5200
    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    move-result p1

    if-ne p1, v1, :cond_1f

    goto :goto_21

    :cond_1f
    move p1, v0

    goto :goto_22

    :cond_21
    :goto_21
    move p1, v1

    :goto_22
    if-eqz p1, :cond_29

    .line 5202
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    if-nez v3, :cond_29

    return v0

    .line 5207
    :cond_29
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v3

    if-eqz v3, :cond_32

    if-nez p1, :cond_32

    return v1

    .line 5212
    :cond_32
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    if-eqz p0, :cond_4a

    const/4 p0, 0x4

    if-eq p2, p0, :cond_49

    const/16 p0, 0x108

    if-eq p2, p0, :cond_49

    const/16 p0, 0x109

    if-eq p2, p0, :cond_49

    const/16 p0, 0x10a

    if-eq p2, p0, :cond_49

    const/16 p0, 0x10b

    if-ne p2, p0, :cond_4a

    :cond_49
    return v0

    :cond_4a
    if-eqz v2, :cond_61

    .line 5224
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object p0

    if-eqz p0, :cond_61

    .line 5227
    :try_start_52
    invoke-interface {p0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result p0
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_56} :catch_59

    if-eqz p0, :cond_61

    return v1

    :catch_59
    move-exception p0

    const-string p1, "WindowManager"

    const-string p2, "RemoteException when checking if dreaming"

    .line 5231
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_61
    return v0
.end method

.method public final shouldEnableWakeGestureLp()Z
    .registers 3

    .line 2959
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isAwake()Z

    move-result v0

    if-nez v0, :cond_24

    .line 2960
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getLidBehavior()I

    move-result v0

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 2961
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getLidState()I

    move-result v0

    if-eqz v0, :cond_24

    :cond_1b
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    .line 2962
    invoke-virtual {p0}, Lcom/android/server/policy/WakeGestureListener;->isSupported()Z

    move-result p0

    if-eqz p0, :cond_24

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    :goto_25
    return v1
.end method

.method public final shouldWakeUpWithHomeIntent()Z
    .registers 7

    .line 5541
    iget-wide v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeUpToLastStateTimeout:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gtz v0, :cond_a

    return v1

    .line 5545
    :cond_a
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->getLastWakeup()Landroid/os/PowerManager$WakeData;

    move-result-object v0

    iget-wide v2, v0, Landroid/os/PowerManager$WakeData;->sleepDuration:J

    .line 5546
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_37

    .line 5547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "shouldWakeUpWithHomeIntent: sleepDuration= "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " mWakeUpToLastStateTimeout= "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeUpToLastStateTimeout:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "WindowManager"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5550
    :cond_37
    iget-wide v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeUpToLastStateTimeout:J

    cmp-long p0, v2, v4

    if-lez p0, :cond_3e

    const/4 v1, 0x1

    :cond_3e
    return v1
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .registers 4

    .line 6091
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$17;

    invoke-direct {v0, p0, p1}, Lcom/android/server/policy/PhoneWindowManager$17;-><init>(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showGlobalActions()V
    .registers 3

    .line 1810
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1811
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public showGlobalActionsInternal()V
    .registers 2

    const/4 v0, -0x1

    .line 1816
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal(I)V

    return-void
.end method

.method public showGlobalActionsInternal(I)V
    .registers 5

    .line 1821
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    if-nez v0, :cond_f

    .line 1822
    new-instance v0, Lcom/android/server/policy/GlobalActions;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/GlobalActions;-><init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    .line 1824
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    .line 1825
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    invoke-virtual {v1, v0, v2, p1}, Lcom/android/server/policy/GlobalActions;->showDialog(ZZI)V

    .line 1831
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/os/PowerManager;->userActivity(JZ)V

    return-void
.end method

.method public final showPictureInPictureMenu(Landroid/view/KeyEvent;)V
    .registers 4

    .line 1957
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showPictureInPictureMenu event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WindowManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    :cond_1b
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1959
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    const/4 p1, 0x1

    .line 1960
    invoke-virtual {p0, p1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1961
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final showPictureInPictureMenuInternal()V
    .registers 1

    .line 1965
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 1967
    invoke-interface {p0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showPictureInPictureMenu()V

    :cond_9
    return-void
.end method

.method public showRecentApps()V
    .registers 3

    .line 4097
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4098
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final showRecentApps(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 4103
    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(ZI)V

    return-void
.end method

.method public final showRecentApps(ZI)V
    .registers 3

    const/4 p2, 0x0

    .line 4108
    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 4109
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 4117
    invoke-interface {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showRecentApps(Z)V

    :cond_c
    return-void
.end method

.method public sleepDefaultDisplay(JII)V
    .registers 6

    const/4 v0, 0x1

    .line 1241
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedOrSleepingDefaultDisplay:Z

    .line 1242
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/PowerManager;->goToSleep(JII)V

    return-void
.end method

.method public final sleepDefaultDisplayFromPowerButton(JI)Z
    .registers 13

    .line 1219
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->getLastWakeup()Landroid/os/PowerManager$WakeData;

    move-result-object v0

    const/4 v1, 0x4

    if-eqz v0, :cond_4c

    .line 1220
    iget v2, v0, Landroid/os/PowerManager$WakeData;->wakeReason:I

    if-ne v2, v1, :cond_4c

    .line 1221
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/16 v3, 0x320

    const-string/jumbo v4, "power_button_suppression_delay_after_gesture_wake"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 1224
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1225
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonSuppressionDelayMillis:I

    if-lez v4, :cond_4c

    iget-wide v5, v0, Landroid/os/PowerManager$WakeData;->wakeTime:J

    int-to-long v7, v4

    add-long/2addr v5, v7

    cmp-long v4, v2, v5

    if-gez v4, :cond_4c

    .line 1227
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Sleep from power button suppressed. Time since gesture: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, v0, Landroid/os/PowerManager$WakeData;->wakeTime:J

    sub-long/2addr v2, p1

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 1233
    :cond_4c
    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplay(JII)V

    const/4 p0, 0x1

    return p0
.end method

.method public final sleepPress()V
    .registers 3

    .line 1492
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    .line 1493
    invoke-virtual {p0, v0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(IZZ)V

    :cond_9
    return-void
.end method

.method public final sleepRelease(J)V
    .registers 5

    .line 1499
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    goto :goto_15

    :cond_8
    const-string v0, "WindowManager"

    const-string/jumbo v1, "sleepRelease() calling goToSleep(GO_TO_SLEEP_REASON_SLEEP_BUTTON)"

    .line 1502
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 1503
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplay(JII)V

    :goto_15
    return-void
.end method

.method public final startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 5

    const/4 v0, 0x0

    .line 4034
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method public final startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;Z)V
    .registers 5

    if-nez p4, :cond_20

    .line 4039
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result p4

    if-eqz p4, :cond_9

    goto :goto_20

    .line 4042
    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Not starting activity because user setup is in progress: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 4040
    :cond_20
    :goto_20
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    :goto_25
    return-void
.end method

.method public startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 4

    const/4 v0, 0x0

    .line 4030
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

.method public startDockOrHome(IZZ)V
    .registers 5

    const-string/jumbo v0, "startDockOrHome"

    .line 6459
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/policy/PhoneWindowManager;->startDockOrHome(IZZLjava/lang/String;)V

    return-void
.end method

.method public startDockOrHome(IZZLjava/lang/String;)V
    .registers 12

    .line 6405
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_7

    :catch_7
    const-string/jumbo v0, "homekey"

    .line 6409
    invoke-virtual {p0, v0, p1}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindowsInDisplay(Ljava/lang/String;I)V

    if-eqz p3, :cond_12

    .line 6416
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->awakenDreams()V

    .line 6419
    :cond_12
    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureAuto:Z

    const-string v0, "WindowManager"

    if-nez p3, :cond_24

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result p3

    if-nez p3, :cond_24

    const-string p0, "Not going home because user setup is in progress."

    .line 6420
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6426
    :cond_24
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p3}, Lcom/android/server/policy/PhoneWindowManagerExt;->onHomeChangedBooster()V

    .line 6432
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p3}, Lcom/android/server/policy/PhoneWindowManagerExt;->startDockOrHome()V

    .line 6437
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object p3

    if-eqz p3, :cond_41

    if-eqz p2, :cond_3b

    :try_start_36
    const-string v1, "android.intent.extra.FROM_HOME_KEY"

    .line 6441
    invoke-virtual {p3, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6443
    :cond_3b
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p3, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_40
    .catch Landroid/content/ActivityNotFoundException; {:try_start_36 .. :try_end_40} :catch_41

    return-void

    .line 6449
    :catch_41
    :cond_41
    sget-boolean p3, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz p3, :cond_5a

    .line 6450
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startDockOrHome: startReason= "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6454
    :cond_5a
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    const/4 v5, 0x1

    move-object v3, p4

    move v4, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startHomeOnDisplay(ILjava/lang/String;IZZ)Z

    return-void
.end method

.method public startKeyguardExitAnimation(JJ)V
    .registers 7

    .line 5955
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_27

    .line 5958
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PWM.startKeyguardExitAnimation, startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", fadeoutDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5964
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->startKeyguardExitAnimation(JJ)V

    :cond_27
    return-void
.end method

.method public final startVoiceAssistIntent(Z)V
    .registers 5

    .line 4018
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VOICE_ASSIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4019
    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1, p1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method public startedEarlyWakingUp(I)V
    .registers 2

    .line 7138
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->startedEarlyWakingUp(I)V

    return-void
.end method

.method public startedGoingToSleep(I)V
    .registers 4

    .line 5402
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_27

    .line 5403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Started going to sleep... (why="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5405
    invoke-static {p1}, Landroid/view/WindowManagerPolicyConstants;->translateSleepReasonToOffReason(I)I

    move-result v1

    .line 5404
    invoke-static {v1}, Landroid/view/WindowManagerPolicyConstants;->offReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    .line 5403
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    const/4 v0, 0x1

    .line 5409
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeviceGoingToSleep:Z

    .line 5410
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedOrSleepingDefaultDisplay:Z

    .line 5412
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_33

    .line 5413
    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onStartedGoingToSleep(I)V

    .line 5417
    :cond_33
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_TSP_STATE_CONTROLLER:Z

    if-eqz p1, :cond_3c

    .line 5418
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->startedGoingToSleep()V

    .line 5423
    :cond_3c
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startedWakingUp(I)V
    .registers 6

    const/4 v0, 0x1

    .line 5489
    invoke-static {v0}, Lcom/android/server/policy/EventLogTags;->writeScreenToggled(I)V

    .line 5490
    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v1, :cond_2b

    const-string v1, "WindowManager"

    .line 5491
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Started waking up... (why="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5493
    invoke-static {p1}, Landroid/view/WindowManagerPolicyConstants;->translateWakeReasonToOnReason(I)I

    move-result v3

    .line 5492
    invoke-static {v3}, Landroid/view/WindowManagerPolicyConstants;->onReasonToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5491
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5497
    :cond_2b
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->notifyWakingUp()V

    .line 5498
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayPolicy;->setAwake(Z)V

    .line 5504
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5505
    :try_start_38
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 5506
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 5507
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_56

    .line 5508
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    .line 5510
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_4d

    .line 5511
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraGestureTriggered:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onStartedWakingUp(IZ)V

    .line 5516
    :cond_4d
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->startedWakingUp(I)V

    const/4 p1, 0x0

    .line 5519
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraGestureTriggered:Z

    return-void

    :catchall_56
    move-exception p0

    .line 5507
    :try_start_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw p0
.end method

.method public final stemPrimaryDoublePressAction(I)V
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    goto :goto_1e

    .line 1578
    :cond_4
    sget-boolean p1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz p1, :cond_f

    const-string p1, "WindowManager"

    const-string v0, "Executing stem primary double press action behavior."

    .line 1579
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    :cond_f
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez p1, :cond_15

    const/4 p1, 0x0

    goto :goto_19

    .line 1583
    :cond_15
    invoke-virtual {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result p1

    :goto_19
    if-nez p1, :cond_1e

    .line 1585
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->switchRecentTask()V

    :cond_1e
    :goto_1e
    return-void
.end method

.method public final stemPrimaryLongPress()V
    .registers 3

    .line 1605
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_b

    const-string v0, "WindowManager"

    const-string v1, "Executing stem primary long press action behavior."

    .line 1606
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    :cond_b
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnStemPrimaryBehavior:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_11

    goto :goto_15

    :cond_11
    const/4 v0, 0x0

    .line 1613
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->launchVoiceAssist(Z)V

    :goto_15
    return-void
.end method

.method public final stemPrimaryPress(I)V
    .registers 4

    .line 1538
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_1b

    .line 1539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stemPrimaryPress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    const/4 v0, 0x3

    if-ne p1, v0, :cond_24

    .line 1542
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnStemPrimaryBehavior:I

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->stemPrimaryTriplePressAction(I)V

    goto :goto_35

    :cond_24
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2d

    .line 1544
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnStemPrimaryBehavior:I

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->stemPrimaryDoublePressAction(I)V

    goto :goto_35

    :cond_2d
    const/4 v0, 0x1

    if-ne p1, v0, :cond_35

    .line 1546
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnStemPrimaryBehavior:I

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->stemPrimarySinglePressAction(I)V

    :cond_35
    :goto_35
    return-void
.end method

.method public final stemPrimarySinglePressAction(I)V
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    goto :goto_36

    .line 1555
    :cond_4
    sget-boolean p1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz p1, :cond_f

    const-string p1, "WindowManager"

    const-string v1, "Executing stem primary short press action behavior."

    .line 1556
    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    :cond_f
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz p1, :cond_1a

    .line 1559
    invoke-virtual {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    if-nez v0, :cond_2f

    .line 1561
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.ALL_APPS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10200000

    .line 1562
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1564
    sget-object v0, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_36

    .line 1567
    :cond_2f
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    const/16 p1, 0x108

    invoke-virtual {p0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onSystemKeyPressed(I)V

    :goto_36
    return-void
.end method

.method public final stemPrimaryTriplePressAction(I)V
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    goto :goto_12

    .line 1596
    :cond_4
    sget-boolean p1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz p1, :cond_f

    const-string p1, "WindowManager"

    const-string v0, "Executing stem primary triple press action behavior."

    .line 1597
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleTalkBack()V

    :goto_12
    return-void
.end method

.method public final switchRecentTask()V
    .registers 5

    .line 1655
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getMostRecentTaskFromBackground()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v0

    const-string v1, "WindowManager"

    if-nez v0, :cond_17

    .line 1657
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_13

    const-string v0, "No recent task available! Show watch face."

    .line 1658
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->goHome()Z

    return-void

    .line 1664
    :cond_17
    sget-boolean p0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz p0, :cond_4f

    .line 1665
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting task from recents. id="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", persistentId="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", topActivity="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", baseIntent="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    :cond_4f
    :try_start_4f
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    iget v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_59} :catch_5a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4f .. :try_end_59} :catch_5a

    goto :goto_76

    :catch_5a
    move-exception p0

    .line 1679
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to start task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " from recents"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_76
    return-void
.end method

.method public systemBooted()V
    .registers 5

    .line 6052
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->bindKeyguard()V

    .line 6053
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 6054
    :try_start_7
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    .line 6055
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    if-eqz v2, :cond_12

    .line 6056
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onBootCompleted()V

    .line 6058
    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_53

    .line 6059
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSideFpsEventHandler:Lcom/android/server/policy/SideFpsEventHandler;

    invoke-virtual {v0}, Lcom/android/server/policy/SideFpsEventHandler;->onFingerprintSensorReady()V

    const/4 v0, 0x0

    .line 6060
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->startedWakingUp(I)V

    .line 6061
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->finishedWakingUp(I)V

    .line 6063
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2e

    move v2, v1

    goto :goto_2f

    :cond_2e
    move v2, v0

    .line 6065
    :goto_2f
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->getScreenOnListener()Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    move-result-object v3

    if-eqz v3, :cond_39

    move v3, v1

    goto :goto_3a

    :cond_39
    move v3, v0

    :goto_3a
    if-nez v2, :cond_46

    if-eqz v3, :cond_3f

    goto :goto_46

    .line 6074
    :cond_3f
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootAnimationDismissable:Z

    const/4 v1, 0x0

    .line 6075
    invoke-virtual {p0, v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->enableScreen(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;Z)V

    goto :goto_52

    .line 6069
    :cond_46
    :goto_46
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getScreenOnListener()Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->screenTurningOn(ILcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V

    .line 6070
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurnedOn(I)V

    :goto_52
    return-void

    :catchall_53
    move-exception p0

    .line 6058
    :try_start_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw p0
.end method

.method public systemReady()V
    .registers 4

    .line 6015
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onSystemReady()V

    .line 6017
    const-class v0, Lcom/android/server/vr/VrManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vr/VrManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    .line 6018
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    if-eqz v0, :cond_1a

    .line 6019
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

    invoke-virtual {v0, v1}, Lcom/android/server/vr/VrManagerInternal;->addPersistentVrModeStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V

    .line 6022
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->readCameraLensCoverState()V

    .line 6023
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateUiMode()V

    .line 6024
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    .line 6025
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 6026
    :try_start_29
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    .line 6027
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$16;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManager$16;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6040
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    if-eqz v1, :cond_3e

    .line 6041
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onBootCompleted()V

    .line 6043
    :cond_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_29 .. :try_end_3f} :catchall_54

    .line 6045
    const-class v0, Landroid/view/autofill/AutofillManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAutofillManagerInternal:Landroid/view/autofill/AutofillManagerInternal;

    .line 6046
    const-class v0, Lcom/android/server/GestureLauncherService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/GestureLauncherService;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGestureLauncherService:Lcom/android/server/GestureLauncherService;

    return-void

    :catchall_54
    move-exception p0

    .line 6043
    :try_start_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw p0
.end method

.method public final toggleKeyboardShortcutsMenu(I)V
    .registers 3

    const/4 v0, 0x0

    .line 4124
    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/PhoneWindowManager;->toggleKeyboardShortcutsMenu(II)V

    return-void
.end method

.method public final toggleKeyboardShortcutsMenu(II)V
    .registers 3

    .line 4129
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 4137
    invoke-interface {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleKeyboardShortcutsMenu(I)V

    :cond_9
    return-void
.end method

.method public toggleNotificationPanel()V
    .registers 1

    .line 1946
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 1949
    :try_start_6
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBarService;->togglePanel()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_9

    :catch_9
    :cond_9
    return-void
.end method

.method public toggleRecentApps()V
    .registers 2

    const/4 v0, 0x0

    .line 4073
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps(I)V

    return-void
.end method

.method public toggleRecentApps(I)V
    .registers 4

    const/4 v0, 0x0

    .line 4078
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 4079
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 4083
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "toggleRecentApps displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WindowManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4090
    invoke-interface {p0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleRecentApps()V

    :cond_23
    return-void
.end method

.method public final toggleTalkBack()V
    .registers 4

    .line 1619
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getTalkbackComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 1624
    :cond_7
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 1625
    invoke-static {v1, v2}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;I)Ljava/util/Set;

    move-result-object v1

    .line 1627
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1628
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 1627
    invoke-static {p0, v0, v1}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->setAccessibilityServiceState(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    return-void
.end method

.method public unregisterDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    .registers 2

    .line 3859
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz p0, :cond_7

    .line 3860
    invoke-virtual {p0, p1}, Lcom/android/server/policy/DisplayFoldController;->unregisterDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V

    :cond_7
    return-void
.end method

.method public final updateLockScreenTimeout()V
    .registers 7

    .line 6238
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter v0

    .line 6239
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockNowPending:Z

    if-eqz v1, :cond_11

    const-string p0, "WindowManager"

    const-string/jumbo v1, "lockNow pending, ignore updating lockscreen timeout"

    .line 6240
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6241
    monitor-exit v0

    return-void

    .line 6243
    :cond_11
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2f

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 6244
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->isAwake()Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_2f

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 6245
    invoke-virtual {v1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_2f

    const/4 v1, 0x1

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    .line 6246
    :goto_30
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eq v2, v1, :cond_68

    if-eqz v1, :cond_54

    .line 6248
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->localLOGV:Z

    if-eqz v2, :cond_42

    const-string v2, "WindowManager"

    const-string/jumbo v3, "setting lockscreen timer"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6249
    :cond_42
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6250
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_66

    .line 6252
    :cond_54
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->localLOGV:Z

    if-eqz v2, :cond_5f

    const-string v2, "WindowManager"

    const-string v3, "clearing lockscreen timer"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6253
    :cond_5f
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6255
    :goto_66
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    .line 6257
    :cond_68
    monitor-exit v0

    return-void

    :catchall_6a
    move-exception p0

    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_3 .. :try_end_6c} :catchall_6a

    throw p0
.end method

.method public updateRotation(Z)V
    .registers 3

    .line 6332
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method

.method public updateScreenOffSleepToken(Z)V
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 6264
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

    invoke-interface {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;->acquire(I)V

    goto :goto_e

    .line 6266
    :cond_9
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

    invoke-interface {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;->release(I)V

    :goto_e
    return-void
.end method

.method public final updateScreenOffSleepToken(ZI)V
    .registers 3

    if-eqz p1, :cond_8

    .line 6273
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

    invoke-interface {p0, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;->acquire(I)V

    goto :goto_d

    .line 6275
    :cond_8
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

    invoke-interface {p0, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;->release(I)V

    :goto_d
    return-void
.end method

.method public updateSettings()V
    .registers 9

    .line 2872
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2874
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_9
    const-string v2, "end_button_behavior"

    const/4 v3, 0x2

    const/4 v4, -0x2

    .line 2875
    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    const-string/jumbo v2, "incall_power_button_behavior"

    const/4 v3, 0x1

    .line 2879
    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    const-string/jumbo v2, "incall_back_button_behavior"

    const/4 v5, 0x0

    .line 2883
    invoke-static {v0, v2, v5, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallBackBehavior:I

    const-string/jumbo v2, "system_navigation_keys_enabled"

    .line 2887
    invoke-static {v0, v2, v5, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v3, :cond_32

    move v2, v3

    goto :goto_33

    :cond_32
    move v2, v5

    :goto_33
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemNavigationKeysEnabled:Z

    const-string/jumbo v2, "volume_hush_gesture"

    .line 2890
    invoke-static {v0, v2, v5, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    const-string/jumbo v2, "power_button_suppression_delay_after_gesture_wake"

    const/16 v6, 0x320

    .line 2893
    invoke-static {v0, v2, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonSuppressionDelayMillis:I

    .line 2896
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x1110204

    .line 2897
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_5a

    .line 2898
    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    :cond_5a
    const-string/jumbo v2, "wake_gesture_enabled"

    .line 2902
    invoke-static {v0, v2, v5, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_65

    move v2, v3

    goto :goto_66

    :cond_65
    move v2, v5

    .line 2905
    :goto_66
    iget-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    if-eq v6, v2, :cond_6f

    .line 2906
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    .line 2907
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    :cond_6f
    const-string/jumbo v2, "screen_off_timeout"

    .line 2911
    invoke-static {v0, v2, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    const-string v2, "default_input_method"

    .line 2913
    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_88

    .line 2915
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_88

    move v2, v3

    goto :goto_89

    :cond_88
    move v2, v5

    .line 2916
    :goto_89
    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    if-eq v4, v2, :cond_90

    .line 2917
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    move v5, v3

    .line 2922
    :cond_90
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_LONG_PRESS_SIDE_KEY:Z

    if-eqz v2, :cond_95

    goto :goto_ab

    :cond_95
    const-string/jumbo v2, "power_button_long_press"

    .line 2926
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2928
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x10e00b5

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 2926
    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 2931
    :goto_ab
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2932
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "power_button_long_press_duration_ms"

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2934
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e00b6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    .line 2931
    invoke-static {v2, v4, v6, v7}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerAssistantTimeoutMs:J

    const-string/jumbo v2, "power_button_very_long_press"

    .line 2936
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2938
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x10e0134

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 2936
    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    const-string/jumbo v2, "key_chord_power_volume_up"

    .line 2940
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2942
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x10e00a9

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 2940
    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerVolUpBehavior:I

    .line 2944
    monitor-exit v1
    :try_end_f5
    .catchall {:try_start_9 .. :try_end_f5} :catchall_fb

    if-eqz v5, :cond_fa

    .line 2946
    invoke-virtual {p0, v3}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    :cond_fa
    return-void

    :catchall_fb
    move-exception p0

    .line 2944
    :try_start_fc
    monitor-exit v1
    :try_end_fd
    .catchall {:try_start_fc .. :try_end_fd} :catchall_fb

    throw p0
.end method

.method public updateUiMode()V
    .registers 2

    .line 6314
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    if-nez v0, :cond_11

    const-string/jumbo v0, "uimode"

    .line 6316
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 6315
    invoke-static {v0}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    .line 6319
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    invoke-interface {v0}, Landroid/app/IUiModeManager;->getCurrentModeType()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_19} :catch_19

    :catch_19
    return-void
.end method

.method public final updateWakeGestureListenerLp()V
    .registers 2

    .line 2951
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldEnableWakeGestureLp()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2952
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    invoke-virtual {p0}, Lcom/android/server/policy/WakeGestureListener;->requestWakeUpTrigger()V

    goto :goto_11

    .line 2954
    :cond_c
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    invoke-virtual {p0}, Lcom/android/server/policy/WakeGestureListener;->cancelWakeUpTrigger()V

    :goto_11
    return-void
.end method

.method public userActivity()V
    .registers 6

    .line 6169
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter v0

    .line 6170
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eqz v1, :cond_18

    .line 6172
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6173
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v3, p0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6175
    :cond_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public wakeUp(JZILjava/lang/String;)Z
    .registers 8

    .line 5587
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTheaterModeEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez p3, :cond_a

    if-eqz v0, :cond_a

    return v1

    :cond_a
    if-eqz v0, :cond_18

    .line 5593
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string/jumbo v0, "theater_mode_on"

    invoke-static {p3, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5599
    :cond_18
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p3}, Lcom/android/server/policy/PhoneWindowManagerExt;->boostWakeUp()V

    .line 5603
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0, p1, p2, p4, p5}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final wakeUpFromPowerKey(J)V
    .registers 9

    .line 5554
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromPowerKey:Z

    const/4 v4, 0x1

    const-string v5, "android.policy:POWER"

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 5557
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldWakeUpWithHomeIntent()Z

    move-result p1

    if-eqz p1, :cond_1c

    const/4 p1, 0x1

    .line 5559
    invoke-static {p1}, Landroid/os/PowerManager;->wakeReasonToString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 5558
    invoke-virtual {p0, v0, v0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->startDockOrHome(IZZLjava/lang/String;)V

    :cond_1c
    return-void
.end method

.method public final wakeUpFromWakeKey(Landroid/view/KeyEvent;)V
    .registers 10

    .line 5568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.policy:KEY("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 5571
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    const/4 v6, 0x6

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 5577
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldWakeUpWithHomeIntent()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3f

    const/4 p1, 0x0

    const/4 v0, 0x6

    .line 5579
    invoke-static {v0}, Landroid/os/PowerManager;->wakeReasonToString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 5578
    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->startDockOrHome(IZZLjava/lang/String;)V

    :cond_3f
    return-void
.end method
