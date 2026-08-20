.class public Lcom/android/server/policy/PhoneWindowManagerExt;
.super Ljava/lang/Object;
.source "PhoneWindowManagerExt.java"

# interfaces
.implements Lcom/android/server/policy/WindowManagerPolicyExt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;,
        Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;,
        Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;,
        Lcom/android/server/policy/PhoneWindowManagerExt$QuickSwitch;,
        Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;,
        Lcom/android/server/policy/PhoneWindowManagerExt$OpeningTorch;,
        Lcom/android/server/policy/PhoneWindowManagerExt$QuickLaunchCamera;,
        Lcom/android/server/policy/PhoneWindowManagerExt$OpeningSamsungPay;,
        Lcom/android/server/policy/PhoneWindowManagerExt$OpeningApps;,
        Lcom/android/server/policy/PhoneWindowManagerExt$BixbyService;,
        Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;,
        Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;,
        Lcom/android/server/policy/PhoneWindowManagerExt$UserTopKeyRule;,
        Lcom/android/server/policy/PhoneWindowManagerExt$UserKeyRule;,
        Lcom/android/server/policy/PhoneWindowManagerExt$HeadsetHookKeyRule;,
        Lcom/android/server/policy/PhoneWindowManagerExt$VolumeDownKeyRule;,
        Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;,
        Lcom/android/server/policy/PhoneWindowManagerExt$BackKeyRule;,
        Lcom/android/server/policy/PhoneWindowManagerExt$RecentKeyRule;,
        Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;,
        Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;,
        Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;
    }
.end annotation


# static fields
.field public static final ACTION_FOLD_LOGGING:Ljava/lang/String; = "com.samsung.android.intent.action.WINNER_LOGGING"

.field public static final ADD_PASS:I = 0x4

.field public static final ADD_WAKEUP:I = 0x10

.field public static final AFTER_KEYGUARD_GONE:Ljava/lang/String; = "afterKeyguardGone"

.field public static final BLOCK_WAKEUP_TIMEOUT_MS:I = 0x3e8

.field public static final CAMERA_TOGGLE_ENABLED:Ljava/lang/String; = "camera_toggle_enabled"

.field public static final CLOSE_DICTATION:Ljava/lang/String; = "close_dictation"

.field public static final COMBINE_KEY_DELAY_MILLIS:J = 0x96L

.field public static final CONSUME:I = 0x2

.field public static final DEVICE_ACTION_PRESS:Ljava/lang/String; = "PRESS"

.field public static final DISMISS_IF_INSECURE:Ljava/lang/String; = "dismissIfInsecure"

.field public static final DISPATCHING:I = 0x0

.field public static final DISPATCHING_UNKNOWN:I = -0x2

.field public static final DOUBLE_PRESS_HOME_DISABLED:I = 0x0

.field public static final DOUBLE_PRESS_HOME_ENABLED:I = 0x1

.field public static final DOUBLE_PRESS_POWER_DISABLED:I = 0x2

.field public static final DOUBLE_PRESS_POWER_ENABLED:I = 0x3

.field public static final DUMPSTATE_RUNNING:Ljava/lang/String; = "1"

.field public static final DUMPSTATE_RUNNING_SYSTEM_PROPERTY_KEY:Ljava/lang/String; = "dumpstate.is_running"

.field public static final FACTORY_UI_HARD_KEY:Ljava/lang/String; = "com.sec.facuifunction.app.ui.UIHardKey"

.field public static final FOLD_FOLDING_TIME_LOG_MARGIN_MS:J = 0x2710L

.field public static final FOLD_OPEN_MAX_COUNT:I = 0x3

.field public static final FORWARD:I = 0x1

.field public static final GLOBAL_ACTION_DELAY_MILLIS:I = 0x3e8

.field public static final IGNORE_KEYGUARD_STATE:Ljava/lang/String; = "ignoreKeyguardState"

.field public static final IGNORE_UNLOCK:Ljava/lang/String; = "ignoreUnlock"

.field public static final INDEX_FORCE_FADE_OUT_ICON:I = 0x2

.field public static final KEYCODE_DEBUG_LOG_ALLOWLIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEYCODE_KEY_COMBINATION_ALLOWLIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEYGUARD_TIMEOUT_DELAY:I = 0x3e8

.field public static final KEY_POWER:I = 0x1

.field public static final KEY_VOLUME_DOWN:I = 0x0

.field public static final LAUNCHER_ACTION_ALL_APPS:Ljava/lang/String; = "com.android.launcher2.ALL_APPS"

.field public static final LOCK_TASK_MODE_TIMEOUT:I = 0x1f4

.field public static final LONG_PRESS_POWER_KEY_CUSTOMIZATION:I = 0x66

.field public static final LONG_PRESS_POWER_WAKE_BIXBY:I = 0x65

.field public static final METADATA_KEY_TOGGLE_MENU:Ljava/lang/String; = "Feature.External.Action"

.field public static final METADATA_VALUE_TOGGLE_MENU:Ljava/lang/String; = "togglemenu"

.field public static final MIC_TOGGLE_ENABLED:Ljava/lang/String; = "mic_toggle_enabled"

.field public static final MULTI_PRESS_POWER_EMERGENCY_SOS:I = 0x67

.field public static final MULTI_PRESS_POWER_KEY_CUSTOMIZATION:I = 0x6a

.field public static final MULTI_PRESS_POWER_LAUNCH_CAMERA:I = 0x65

.field public static final MULTI_PRESS_POWER_LAUNCH_TV_MODE:I = 0x69

.field public static final MULTI_PRESS_POWER_PANIC_CALL:I = 0x66

.field public static final MULTI_PRESS_POWER_SIDE_KEY_ACTION:I = 0x68

.field public static final NO_DISPATCHING:I = -0x1

.field public static final OMC_PEN_ATTACH_VIBRATION_INDEX:I = 0x3f

.field public static final OMC_PEN_DETACH_VIBRATION_INDEX:I = 0x3e

.field public static final OPEN_DICTATION:Ljava/lang/String; = "open_dictation"

.field public static final PEN_ATTACH_VIBRATION_INDEX:I = 0x5

.field public static final PEN_DETACH_VIBRATION_INDEX:I = 0x1

.field public static final PEN_TYPE_ATTACH:I = 0x2

.field public static final PEN_TYPE_INBOX:I = 0x5

.field public static final PEN_TYPE_INSERT:I = 0x0

.field public static final PEN_TYPE_NOT_SUPPORTED:I = -0x1

.field public static final QUICK_ACCESS_AOD_DOUBLE_TAP:I = 0xb

.field public static final QUICK_ACCESS_AOD_LONG_PRESS:I = 0xa

.field public static final QUICK_ACCESS_AOD_PRESS:I = 0x9

.field public static final QUICK_ACCESS_FINGER_ICON_SHOW:I = 0x8

.field public static final QUICK_ACCESS_FINGER_ON_DISPLAY_OUT:I = 0x11

.field public static final QUICK_ACCESS_FINGER_ON_DISPLAY_PRESS:I = 0xf

.field public static final QUICK_ACCESS_FINGER_ON_DISPLAY_RELEASE:I = 0x10

.field public static final QUICK_ACCESS_SAMSUNG_PAY:I = 0x4

.field public static final QUICK_ACCESS_TSP_SCAN_BLOCK:I = 0xe2

.field public static final QUICK_ACCESS_TSP_SCAN_UNBLOCK:I = 0xe1

.field public static final RELEASE_VOLUME_UP_KEY_PRESSED_TIMEOUT:I = 0xbb8

.field public static final REMOVE_PASS:I = 0x8

.field public static final REMOVE_WAKEUP:I = 0x20

.field public static final SHOW_COVER_TOAST:Ljava/lang/String; = "showCoverToast"

.field public static final SIDE_KEY_COMBINATION_GLOBAL_ACTION_SA_LOGGING_TYPE:I = 0x1

.field public static final SIDE_KEY_DEFAULT_SA_LOGGING_TYPE:I = -0x1

.field public static final SIDE_KEY_LONG_PRESS_GLOBAL_ACTION_SA_LOGGING_TYPE:I = 0x0

.field public static final SIDE_KEY_SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x3e7L

.field public static final SPC_REMOTE_CONTROLLER:Ljava/lang/String; = "SPC_Remote_Controller"

.field public static final TAG:Ljava/lang/String; = "PhoneWindowManagerExt"

.field public static final TRIGGER_RESTART_MIN_FRAMEWORK:Ljava/lang/String; = "trigger_restart_min_framework"

.field public static final TYPE_OPEN_QUICK_SETTINGS:I = 0x6

.field public static final TYPE_SHOW_THE_APPS_SCREEN:I = 0x1

.field public static final TYPE_VIEW_NOTIFICATION:I = 0x5

.field public static final UNKNOWN:I = -0x1

.field public static final VALUE_PEN_ATTACH:Ljava/lang/String; = "pen_attach"

.field public static final VALUE_PEN_DETACH:Ljava/lang/String; = "pen_detach"

.field public static final VALUE_PEN_DOUBLETAB:Ljava/lang/String; = "pen_doubletab"

.field public static final VIBRATION_REASON_SPEN_ATTACHED:Ljava/lang/String; = "SPEN_ATTACHED"

.field public static final VIBRATION_REASON_SPEN_DETACHED:Ljava/lang/String; = "SPEN_DETACHED"

.field public static final VOLD_DECRYPT:Ljava/lang/String;

.field public static final WAKE_AND_UNFOLDED_DELAY_TIME:I = 0x1f4

.field public static final WAKE_AND_UNLOCK_DELAY_TIME:I = 0x3e8

.field public static sdhmsBinder:Landroid/os/IBinder;


# instance fields
.field public accessibilityDirectAccessController:Lcom/android/internal/accessibility/AccessibilityDirectAccessController;

.field public mAcceptCallHomeConsumed:Z

.field public mAlarmPendingIntent:Landroid/app/PendingIntent;

.field public mAppOpsManager:Landroid/app/AppOpsManager;

.field public mAppSwitchKeyConsumed:Z

.field public mAudioManager:Landroid/media/AudioManager;

.field public final mBatteryChangeReceiver:Landroid/content/BroadcastReceiver;

.field public mBixbyService:Lcom/android/server/policy/PhoneWindowManagerExt$BixbyService;

.field public mBoldFontEnabled:I

.field public final mBoosterLock:Ljava/lang/Object;

.field public mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

.field public mBootCompleted:Z

.field public mButtonShapeEnabled:I

.field public mCarLifeDisplay:Landroid/view/Display;

.field public mCarLifeDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

.field public mContext:Landroid/content/Context;

.field public mCoverDisplay:Landroid/view/Display;

.field public mDeviceStateManagerInternal:Landroid/hardware/devicestate/DeviceStateManagerInternal;

.field public volatile mDexKeyguardOccluded:Z

.field public mDexKeyguardOccludedChanged:Z

.field public mDoublePressLaunchComponentConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mDoublePressLaunchComponentName:Landroid/content/ComponentName;

.field public mDrmEventObserver:Landroid/os/UEventObserver;

.field public mEmergencySosConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mEmergencySosEnabled:Z

.field public mEnableReserveBatteryMode:Z

.field public mExtEventObserver:Landroid/os/UEventObserver;

.field public mFlashLight:Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;

.field public mFoldOpenCount:I

.field public mFoldSaLock:Ljava/lang/Object;

.field public mFoldSaLoggingCanceled:Z

.field public mFoldSaLoggingReceiver:Landroid/content/BroadcastReceiver;

.field public mFoldedTime:J

.field public final mGlobalActionChord:Ljava/lang/Runnable;

.field public mHandler:Landroid/os/Handler;

.field public mHotKey:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;

.field public mIntentEmergencySos:Landroid/content/Intent;

.field public mIsAccessibilityShortcutVolupPower:Z

.field public mIsAnyKeyMode:Z

.field public mIsAssistHapticEnabled:Z

.field public mIsCallOpenDictation:Z

.field public mIsCameraSensorToggleSupported:Z

.field public mIsCustomBugreportWriterEnabled:Z

.field public mIsDoubleTapPremiumWatchOn:Z

.field public mIsDoubleTapToWakeUp:Z

.field public mIsDoubleTapToWakeUpSupported:Z

.field public mIsHapticsEnabled:Z

.field public mIsHapticsSupported:Z

.field public mIsInteractionControlEnabled:Z

.field public mIsMicSensorToggleSupported:Z

.field public mIsPalmTouchDownToSleep:Z

.field public mIsPogoKeyboardConnected:Z

.field public mIsPowerKeyBlocked:Z

.field public mIsPremiumWatchOn:Z

.field public mIsSamsungKeyboard:Z

.field public mIsScreenshotTriggered:Z

.field public mIsSktPhoneRelaxMode:Z

.field public mIsVolumeKeyBlocked:Z

.field public mIsVolumeUpKeyMode:Z

.field public mIsVolumeUpKeyPressed:Z

.field public mIssueTrackerLoggedIn:Z

.field public mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

.field public mKeyEventInjectionThread:Ljava/lang/Thread;

.field public mKeyUpTime:[J

.field public mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

.field public mLastDexMode:I

.field public final mLock:Ljava/lang/Object;

.field public mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mLockTaskFeatures:Landroid/util/SparseIntArray;

.field public mLockTaskModeState:I

.field public mMissingPhoneLock:Ljava/lang/String;

.field public mMultiFingerGestureListener:Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;

.field public mMultiuserReceiver:Landroid/content/BroadcastReceiver;

.field public mNavBarImeBtnEnabled:Z

.field public mOneHandOpConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

.field public mPalmTouchReceiver:Landroid/content/BroadcastReceiver;

.field public mPenDetachNotiConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mPenInsertIntent:Landroid/content/Intent;

.field public mPenInsertIntentUserSwitch:Landroid/content/Intent;

.field public mPenSoundEnabled:Z

.field public mPenSoundFilePath:Ljava/lang/String;

.field public mPenSoundInfo:Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

.field public mPenState:I

.field public final mPenType:I

.field public mPenVibrationEnabled:Z

.field public mPendingDexKeyguardOccluded:Z

.field public mPendingPermissionController:Z

.field public mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

.field public mPolicy:Lcom/android/server/policy/PhoneWindowManager;

.field public mPowerKeyHandledByProximityInCall:Z

.field public mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

.field public mProximityChangeReceiver:Landroid/content/BroadcastReceiver;

.field public mQuadruplePressOnPowerBehavior:I

.field public mQuickLaunchCameraBehavior:I

.field public mQuickLaunchCameraConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mQuintuplePressOnPowerBehavior:I

.field public mReserveBatteryMode:Z

.field public mScreenOffMemoEnabled:Z

.field public mScreenOffMemoIntent:Landroid/content/Intent;

.field public mScreenshotEnabled:Z

.field public mScreenshotTriggeredTime:J

.field public mSemFoldingBooster:Lcom/samsung/android/os/SemDvfsManager;

.field public mSemRotationBooster:Lcom/samsung/android/os/SemDvfsManager;

.field public mSemWakeUpBooster:Lcom/samsung/android/os/SemDvfsManager;

.field public final mServiceAcquireLock:Ljava/lang/Object;

.field public mSettingsObserver:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

.field public mSetupWizardGlobalActionReceiver:Landroid/content/BroadcastReceiver;

.field public mShortcutLaunchPolicy:Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;

.field public mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

.field public final mStopLockTaskModePinnedChordLongPress:Ljava/lang/Runnable;

.field public mSubBootMsgDialog:Landroid/app/ProgressDialog;

.field public mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

.field public mToast:Landroid/widget/Toast;

.field public mTspStateController:Lcom/android/server/wm/TspStateController;

.field public mTvModeDoublePressEnabled:Z

.field public mTvModeEnabled:Z

.field public mTvModeStateConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mTvModeStateDoublePressConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mUnionLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

.field public mVibrator:Landroid/os/Vibrator;

.field public mWakeAndUnfoldedRunning:Ljava/lang/Runnable;

.field public mWakeAndUnfoldedTriggered:Z

.field public mWakeAndUnlockRunning:Ljava/lang/Runnable;

.field public mWakeAndUnlockTriggered:Z

.field public mWakingUpReason:I

.field public final mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;


# direct methods
.method public static synthetic $r8$lambda$1Y7ypMn3CYXYxB1uUTFPBgiu-tc(Lcom/android/server/policy/PhoneWindowManagerExt;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->lambda$onDeviceFoldedStateChanged$28(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$2W_Znt4oiSTghy0xBOqTFbNZLOA(Lcom/android/server/policy/PhoneWindowManagerExt;Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManagerExt;->lambda$showToast$5(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2o_qXOnpairKM2IrbJzNsYXGG4U(Lcom/android/server/policy/PhoneWindowManagerExt;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->lambda$checkPolicyBeforeDispatching$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$69DfsBLbMHeMpG06jI2tLOq8JYs(Lcom/android/server/policy/PhoneWindowManagerExt;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManagerExt;->lambda$showBootMessage$22(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$6UA_Gpou-Qd1gIZNR3hHrECCAcQ(ILcom/samsung/android/telecom/SemTelecomManager;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->lambda$silenceRinger$25(ILcom/samsung/android/telecom/SemTelecomManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7qFDqs3OMKBLnNH3WEJT9h8_Z_8(ILcom/samsung/android/telecom/SemTelecomManager;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->lambda$endCall$26(ILcom/samsung/android/telecom/SemTelecomManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8IABaIw-DF3_WQdv7n4ETALvBPk()V
    .registers 0

    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerExt;->lambda$requestCustomFullBugreport$20()V

    return-void
.end method

.method public static synthetic $r8$lambda$9Vs-s-5BfjpZgOiqo0H3-O80qUg(III)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManagerExt;->lambda$injectionKeyEvent$6(III)V

    return-void
.end method

.method public static synthetic $r8$lambda$ENZ67cG45xVhJqHSQ5L_9jaPxjo(Lcom/android/server/policy/PhoneWindowManagerExt;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->lambda$new$12(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JTS8z4e3ao3c_CVHFjIjxWG8Aps(Lcom/android/server/policy/PhoneWindowManagerExt;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->lambda$new$10(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PNG9dlEjlnlhSyfSqJwDdNddaYs(Lcom/android/server/policy/PhoneWindowManagerExt;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->lambda$interceptKeyBeforeDispatching$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$PV5rFKeapfWwzgZszhSVQwGkH7I(Lcom/android/server/policy/PhoneWindowManagerExt;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->lambda$onUserSwitch$4(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$SETPK6aP-DNoHogZSLZEUKu9zL8(Lcom/android/server/policy/PhoneWindowManagerExt;ZLandroid/app/AlarmManager;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManagerExt;->lambda$sendFoldSaLogging$23(ZLandroid/app/AlarmManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Sk3EG3iFYzbwFHnAbzQ-SsdsIIE(Lcom/android/server/policy/PhoneWindowManagerExt;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->lambda$new$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$TFyTkNRlQmh_Yr5hKIySouZ7fuk(Lcom/android/server/policy/PhoneWindowManagerExt;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->lambda$new$14(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U4YXybVJykoVtVVK2v_QY_6iWNs(Landroid/telephony/TelephonyManager;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->lambda$launchPremiumWatch$19(Landroid/telephony/TelephonyManager;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$UaY8KXvbmmkcF0qxM2h8iz0K6UU(Lcom/android/server/policy/PhoneWindowManagerExt;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->lambda$new$21(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$V62lfUFGIl8YJHQhyQjn8vwutE4(Lcom/android/server/policy/PhoneWindowManagerExt;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->lambda$new$11(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W4D9fIm3nk61E6zPESsBu8uIS1k(Landroid/view/inputmethod/InputMethodManager;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->lambda$isSamsungKeyboardShown$9(Landroid/view/inputmethod/InputMethodManager;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$XRRDrTg--YTbppdYflmkgcj4l5I(Lcom/android/server/policy/PhoneWindowManagerExt;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->lambda$new$17()V

    return-void
.end method

.method public static synthetic $r8$lambda$YRyJyOgvekMs0CyXjKWmtS1Gz8U(Lcom/android/server/policy/PhoneWindowManagerExt;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->lambda$init$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZvKtmGC-oqcF7XoArSnZElSDVa8(Lcom/android/server/policy/PhoneWindowManagerExt;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->lambda$new$18()V

    return-void
.end method

.method public static synthetic $r8$lambda$aHMMO_FQHWJtDJRTisQgJyw6A0c(Lcom/android/server/policy/PhoneWindowManagerExt;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->lambda$new$27(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$drcpe3BF_M726SZa5MTq7Hmsj9A(Lcom/android/server/policy/PhoneWindowManagerExt;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->lambda$new$13(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kqss4OIS_tfoKJ5BNZrZncV7IA8()V
    .registers 0

    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerExt;->lambda$new$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$pcdR4GKuYqGtzzmLxhYpvsVwyco(Lcom/android/server/policy/PhoneWindowManagerExt;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->lambda$performHomeBroadcast$15()V

    return-void
.end method

.method public static synthetic $r8$lambda$yNfd9PJVUuHSW8XrqfWx1ibIWI0(ILcom/samsung/android/telecom/SemTelecomManager;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->lambda$acceptRingingCall$24(ILcom/samsung/android/telecom/SemTelecomManager;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmBoldFontEnabled(Lcom/android/server/policy/PhoneWindowManagerExt;)I
    .registers 1

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBoldFontEnabled:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmButtonShapeEnabled(Lcom/android/server/policy/PhoneWindowManagerExt;)I
    .registers 1

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mButtonShapeEnabled:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCarLifeDisplayPolicy(Lcom/android/server/policy/PhoneWindowManagerExt;)Lcom/android/server/wm/DisplayPolicy;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mCarLifeDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDoublePressLaunchComponentConsumer(Lcom/android/server/policy/PhoneWindowManagerExt;)Ljava/util/function/Consumer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDoublePressLaunchComponentConsumer:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEmergencySosConsumer(Lcom/android/server/policy/PhoneWindowManagerExt;)Ljava/util/function/Consumer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mEmergencySosConsumer:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFlashLight(Lcom/android/server/policy/PhoneWindowManagerExt;)Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mFlashLight:Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFoldOpenCount(Lcom/android/server/policy/PhoneWindowManagerExt;)I
    .registers 1

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mFoldOpenCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsPalmTouchDownToSleep(Lcom/android/server/policy/PhoneWindowManagerExt;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPalmTouchDownToSleep:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmKeyguardDelegate(Lcom/android/server/policy/PhoneWindowManagerExt;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/policy/PhoneWindowManagerExt;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOneHandOpConsumer(Lcom/android/server/policy/PhoneWindowManagerExt;)Ljava/util/function/Consumer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mOneHandOpConsumer:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPenDetachNotiConsumer(Lcom/android/server/policy/PhoneWindowManagerExt;)Ljava/util/function/Consumer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenDetachNotiConsumer:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPenState(Lcom/android/server/policy/PhoneWindowManagerExt;)I
    .registers 1

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPenType(Lcom/android/server/policy/PhoneWindowManagerExt;)I
    .registers 1

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenType:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmQuickLaunchCameraBehavior(Lcom/android/server/policy/PhoneWindowManagerExt;)I
    .registers 1

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuickLaunchCameraBehavior:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmQuickLaunchCameraConsumer(Lcom/android/server/policy/PhoneWindowManagerExt;)Ljava/util/function/Consumer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuickLaunchCameraConsumer:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmShortcutLaunchPolicy(Lcom/android/server/policy/PhoneWindowManagerExt;)Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mShortcutLaunchPolicy:Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTvModeStateConsumer(Lcom/android/server/policy/PhoneWindowManagerExt;)Ljava/util/function/Consumer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeStateConsumer:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTvModeStateDoublePressConsumer(Lcom/android/server/policy/PhoneWindowManagerExt;)Ljava/util/function/Consumer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeStateDoublePressConsumer:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmBoldFontEnabled(Lcom/android/server/policy/PhoneWindowManagerExt;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBoldFontEnabled:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmButtonShapeEnabled(Lcom/android/server/policy/PhoneWindowManagerExt;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mButtonShapeEnabled:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEnableReserveBatteryMode(Lcom/android/server/policy/PhoneWindowManagerExt;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mEnableReserveBatteryMode:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmFoldOpenCount(Lcom/android/server/policy/PhoneWindowManagerExt;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mFoldOpenCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsAnyKeyMode(Lcom/android/server/policy/PhoneWindowManagerExt;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAnyKeyMode:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsCustomBugreportWriterEnabled(Lcom/android/server/policy/PhoneWindowManagerExt;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsCustomBugreportWriterEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsDoubleTapPremiumWatchOn(Lcom/android/server/policy/PhoneWindowManagerExt;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapPremiumWatchOn:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsDoubleTapToWakeUp(Lcom/android/server/policy/PhoneWindowManagerExt;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapToWakeUp:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsHapticsEnabled(Lcom/android/server/policy/PhoneWindowManagerExt;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsHapticsEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsInteractionControlEnabled(Lcom/android/server/policy/PhoneWindowManagerExt;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsInteractionControlEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsPalmTouchDownToSleep(Lcom/android/server/policy/PhoneWindowManagerExt;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPalmTouchDownToSleep:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsPowerKeyBlocked(Lcom/android/server/policy/PhoneWindowManagerExt;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPowerKeyBlocked:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsPremiumWatchOn(Lcom/android/server/policy/PhoneWindowManagerExt;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPremiumWatchOn:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsSktPhoneRelaxMode(Lcom/android/server/policy/PhoneWindowManagerExt;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSktPhoneRelaxMode:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsVolumeKeyBlocked(Lcom/android/server/policy/PhoneWindowManagerExt;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsVolumeKeyBlocked:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsVolumeUpKeyMode(Lcom/android/server/policy/PhoneWindowManagerExt;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsVolumeUpKeyMode:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsVolumeUpKeyPressed(Lcom/android/server/policy/PhoneWindowManagerExt;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsVolumeUpKeyPressed:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIssueTrackerLoggedIn(Lcom/android/server/policy/PhoneWindowManagerExt;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIssueTrackerLoggedIn:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmMissingPhoneLock(Lcom/android/server/policy/PhoneWindowManagerExt;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mMissingPhoneLock:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNavBarImeBtnEnabled(Lcom/android/server/policy/PhoneWindowManagerExt;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mNavBarImeBtnEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPenSoundEnabled(Lcom/android/server/policy/PhoneWindowManagerExt;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPenVibrationEnabled(Lcom/android/server/policy/PhoneWindowManagerExt;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenVibrationEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmReserveBatteryMode(Lcom/android/server/policy/PhoneWindowManagerExt;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mReserveBatteryMode:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmScreenOffMemoEnabled(Lcom/android/server/policy/PhoneWindowManagerExt;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenOffMemoEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mbindKeyguardOnPkgChanged(Lcom/android/server/policy/PhoneWindowManagerExt;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->bindKeyguardOnPkgChanged()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleLongPressOnRecent(Lcom/android/server/policy/PhoneWindowManagerExt;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->handleLongPressOnRecent(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleStartTransitionForKeyguardLw(Lcom/android/server/policy/PhoneWindowManagerExt;ZZJI)I
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/policy/PhoneWindowManagerExt;->handleStartTransitionForKeyguardLw(ZZJI)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhandleThreeFingerTap(Lcom/android/server/policy/PhoneWindowManagerExt;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManagerExt;->handleThreeFingerTap(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misActivitiesAvailable(Lcom/android/server/policy/PhoneWindowManagerExt;Landroid/content/Intent;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->isActivitiesAvailable(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misCarrierLocked(Lcom/android/server/policy/PhoneWindowManagerExt;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isCarrierLocked()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misDomesticOtaStart(Lcom/android/server/policy/PhoneWindowManagerExt;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isDomesticOtaStart()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misMissingPhoneLockEnabled(Lcom/android/server/policy/PhoneWindowManagerExt;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isMissingPhoneLockEnabled()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misReserveBatteryMode(Lcom/android/server/policy/PhoneWindowManagerExt;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isReserveBatteryMode()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mlaunchSecureFolder(Lcom/android/server/policy/PhoneWindowManagerExt;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->launchSecureFolder()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 8

    .line 1711
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManagerExt;->KEYCODE_DEBUG_LOG_ALLOWLIST:Ljava/util/Set;

    const/16 v1, 0x1a

    .line 1714
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x3

    .line 1715
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v3, 0xbb

    .line 1716
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x4

    .line 1717
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v5, 0x18

    .line 1718
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v6, 0x19

    .line 1719
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v7, 0x3f7

    .line 1720
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v7, 0x437

    .line 1721
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v7, 0x436

    .line 1722
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v7, 0x55

    .line 1723
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v7, 0x4f

    .line 1724
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2632
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManagerExt;->KEYCODE_KEY_COMBINATION_ALLOWLIST:Ljava/util/Set;

    .line 2635
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2636
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2637
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2638
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2639
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2640
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x14

    .line 2641
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x17

    .line 2642
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "vold.decrypt"

    .line 4619
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/PhoneWindowManagerExt;->VOLD_DECRYPT:Ljava/lang/String;

    const/4 v0, 0x0

    .line 6381
    sput-object v0, Lcom/android/server/policy/PhoneWindowManagerExt;->sdhmsBinder:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;)V
    .registers 9

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 268
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuadruplePressOnPowerBehavior:I

    .line 347
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPowerKeyHandledByProximityInCall:Z

    .line 351
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSktPhoneRelaxMode:Z

    .line 356
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLastDexMode:I

    .line 372
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIssueTrackerLoggedIn:Z

    const/4 v1, 0x0

    .line 387
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    .line 1920
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBootCompleted:Z

    .line 1921
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$1;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$1;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 1940
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$2;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$2;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 2063
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mToast:Landroid/widget/Toast;

    .line 2540
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyEventInjectionThread:Ljava/lang/Thread;

    .line 2690
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsInteractionControlEnabled:Z

    .line 2691
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPowerKeyBlocked:Z

    .line 2692
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsVolumeKeyBlocked:Z

    .line 2741
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mGlobalActionChord:Ljava/lang/Runnable;

    .line 2749
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAccessibilityShortcutVolupPower:Z

    .line 2750
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->accessibilityDirectAccessController:Lcom/android/internal/accessibility/AccessibilityDirectAccessController;

    const/4 v2, 0x2

    new-array v3, v2, [J

    .line 2793
    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyUpTime:[J

    .line 2794
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsScreenshotTriggered:Z

    const-wide/16 v3, 0x0

    .line 2795
    iput-wide v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenshotTriggeredTime:J

    const/4 v3, 0x1

    .line 2799
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenshotEnabled:Z

    .line 2898
    new-instance v4, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda2;-><init>()V

    iput-object v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mStopLockTaskModePinnedChordLongPress:Ljava/lang/Runnable;

    .line 2918
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskModeState:I

    .line 2919
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    .line 2966
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsVolumeUpKeyMode:Z

    .line 2977
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAnyKeyMode:Z

    .line 2978
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAcceptCallHomeConsumed:Z

    .line 3126
    new-instance v4, Lcom/android/server/policy/PhoneWindowManagerExt$5;

    invoke-direct {v4, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$5;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSetupWizardGlobalActionReceiver:Landroid/content/BroadcastReceiver;

    .line 3139
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsCallOpenDictation:Z

    .line 3140
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSamsungKeyboard:Z

    .line 3885
    new-instance v4, Lcom/android/server/policy/PhoneWindowManagerExt$6;

    invoke-direct {v4, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$6;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBatteryChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 4077
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuintuplePressOnPowerBehavior:I

    .line 4079
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mEmergencySosEnabled:Z

    .line 4081
    new-instance v4, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mEmergencySosConsumer:Ljava/util/function/Consumer;

    .line 4165
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuickLaunchCameraBehavior:I

    .line 4171
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuickLaunchCameraConsumer:Ljava/util/function/Consumer;

    .line 4254
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeEnabled:Z

    .line 4255
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeDoublePressEnabled:Z

    .line 4256
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDoublePressLaunchComponentName:Landroid/content/ComponentName;

    .line 4300
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeStateConsumer:Ljava/util/function/Consumer;

    .line 4311
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeStateDoublePressConsumer:Ljava/util/function/Consumer;

    .line 4324
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDoublePressLaunchComponentConsumer:Ljava/util/function/Consumer;

    .line 4372
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$7;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$7;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mProximityChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 4412
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mMissingPhoneLock:Ljava/lang/String;

    .line 4421
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mReserveBatteryMode:Z

    .line 4422
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mEnableReserveBatteryMode:Z

    .line 4437
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsHapticsEnabled:Z

    .line 4438
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAssistHapticEnabled:Z

    .line 4439
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsHapticsSupported:Z

    .line 4639
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mServiceAcquireLock:Ljava/lang/Object;

    .line 4810
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAppSwitchKeyConsumed:Z

    .line 4847
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$8;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$8;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDrmEventObserver:Landroid/os/UEventObserver;

    .line 4864
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$9;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$9;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mExtEventObserver:Landroid/os/UEventObserver;

    .line 4893
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mFoldOpenCount:I

    .line 5195
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeAndUnlockTriggered:Z

    .line 5216
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeAndUnlockRunning:Ljava/lang/Runnable;

    .line 5228
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeAndUnfoldedTriggered:Z

    .line 5237
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeAndUnfoldedRunning:Ljava/lang/Runnable;

    .line 5250
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$12;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$12;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    .line 5310
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPremiumWatchOn:Z

    .line 5311
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapPremiumWatchOn:Z

    .line 5389
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$13;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$13;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mMultiFingerGestureListener:Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;

    .line 5451
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPogoKeyboardConnected:Z

    .line 5534
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_SPEN:Z

    const/4 v3, -0x1

    if-eqz v2, :cond_fe

    .line 5535
    sget v2, Lcom/samsung/android/rune/CoreRune;->FW_SPEN_USP_LEVEL:I

    rem-int/lit8 v2, v2, 0xa

    goto :goto_ff

    :cond_fe
    move v2, v3

    :goto_ff
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenType:I

    .line 5536
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenState:I

    .line 5538
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundEnabled:Z

    .line 5541
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundFilePath:Ljava/lang/String;

    .line 5799
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenDetachNotiConsumer:Ljava/util/function/Consumer;

    .line 5812
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapToWakeUp:Z

    .line 5813
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapToWakeUpSupported:Z

    .line 5822
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakingUpReason:I

    .line 5847
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPalmTouchDownToSleep:Z

    .line 5849
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$14;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$14;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPalmTouchReceiver:Landroid/content/BroadcastReceiver;

    .line 5934
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mShortcutLaunchPolicy:Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;

    .line 5935
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPendingPermissionController:Z

    .line 6298
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSubBootMsgDialog:Landroid/app/ProgressDialog;

    .line 6314
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mFoldSaLock:Ljava/lang/Object;

    .line 6368
    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$16;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$16;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mFoldSaLoggingReceiver:Landroid/content/BroadcastReceiver;

    .line 6378
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSemRotationBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 6379
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSemFoldingBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 6380
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSemWakeUpBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 6383
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBoosterLock:Ljava/lang/Object;

    .line 6650
    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mOneHandOpConsumer:Ljava/util/function/Consumer;

    .line 6871
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mButtonShapeEnabled:I

    .line 6874
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBoldFontEnabled:I

    .line 6941
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mUnionLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    .line 392
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 393
    check-cast p2, Lcom/android/server/policy/PhoneWindowManager;

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 394
    iput-object p3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;

    .line 396
    invoke-virtual {p2, p0}, Lcom/android/server/policy/PhoneWindowManager;->setSamsungPolicy(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    return-void
.end method

.method public static synthetic lambda$acceptRingingCall$24(ILcom/samsung/android/telecom/SemTelecomManager;)V
    .registers 2

    .line 6488
    invoke-virtual {p1, p0}, Lcom/samsung/android/telecom/SemTelecomManager;->acceptRingingCall(I)V

    return-void
.end method

.method private synthetic lambda$checkPolicyBeforeDispatching$3(I)V
    .registers 2

    .line 1899
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->handleShortPressOnHome(I)V

    return-void
.end method

.method public static synthetic lambda$endCall$26(ILcom/samsung/android/telecom/SemTelecomManager;)V
    .registers 2

    .line 6496
    invoke-virtual {p1, p0}, Lcom/samsung/android/telecom/SemTelecomManager;->endCall(I)V

    return-void
.end method

.method private synthetic lambda$init$0()V
    .registers 1

    .line 409
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationManager;->init()V

    return-void
.end method

.method public static synthetic lambda$injectionKeyEvent$6(III)V
    .registers 23

    move/from16 v0, p2

    .line 2547
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 2549
    :try_start_6
    new-instance v13, Landroid/app/Instrumentation;

    invoke-direct {v13}, Landroid/app/Instrumentation;-><init>()V

    .line 2550
    new-instance v12, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v16, 0x0

    move-object v1, v12

    move-wide v2, v14

    move-wide v4, v14

    move/from16 v7, p0

    move-object/from16 v17, v12

    move/from16 v12, p1

    move-wide/from16 v18, v14

    move-object v14, v13

    move/from16 v13, v16

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v1, v17

    .line 2552
    invoke-virtual {v1, v0}, Landroid/view/KeyEvent;->semSetDisplayId(I)V

    .line 2553
    invoke-virtual {v14, v1}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 2555
    new-instance v15, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v1, v15

    move-wide/from16 v2, v18

    move-wide/from16 v4, v18

    move/from16 v7, p0

    move/from16 v12, p1

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 2557
    invoke-virtual {v15, v0}, Landroid/view/KeyEvent;->semSetDisplayId(I)V

    .line 2558
    invoke-virtual {v14, v15}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_47} :catch_48

    goto :goto_4c

    :catch_48
    move-exception v0

    .line 2560
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4c
    return-void
.end method

.method public static synthetic lambda$interceptKeyBeforeDispatching$1(I)V
    .registers 2

    .line 1141
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->minimizeAllTasks(I)Z

    return-void
.end method

.method private synthetic lambda$interceptKeyBeforeDispatching$2(I)V
    .registers 2

    .line 1485
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->handleShortPressOnHome(I)V

    return-void
.end method

.method public static synthetic lambda$isSamsungKeyboardShown$9(Landroid/view/inputmethod/InputMethodManager;)Z
    .registers 1

    .line 3167
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$keyguardGoingAwayWithFingerprintUnlock$16(Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;)V
    .registers 2

    .line 5208
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBixbyService:Lcom/android/server/policy/PhoneWindowManagerExt$BixbyService;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyService;->startBixbyService(Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;)V

    return-void
.end method

.method public static synthetic lambda$launchPremiumWatch$19(Landroid/telephony/TelephonyManager;)Z
    .registers 1

    .line 5338
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isOffhook()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$10(Ljava/lang/Boolean;)V
    .registers 5

    .line 4083
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "emergency_gesture_enabled"

    const/4 v1, 0x1

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v1, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mEmergencySosEnabled:Z

    .line 4085
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateSettings, emergency SOS enabled="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mEmergencySosEnabled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PhoneWindowManagerExt"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4086
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateQuintuplePressPowerBehavior()V

    return-void
.end method

.method private synthetic lambda$new$11(Ljava/lang/Boolean;)V
    .registers 4

    .line 4172
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "double_tab_launch"

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuickLaunchCameraBehavior:I

    .line 4174
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateSettings mDoublePressLaunchBehavior="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuickLaunchCameraBehavior:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PhoneWindowManagerExt"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4175
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuickLaunchCameraBehavior:I

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateKeyCustomizationInfoQuickLaunchCamera(I)V

    return-void
.end method

.method private synthetic lambda$new$12(Ljava/lang/Boolean;)V
    .registers 4

    .line 4301
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "tvmode_state"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_12

    move v1, v0

    .line 4303
    :cond_12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateSettings tvModeEnabled="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeEnabled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PhoneWindowManagerExt"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4304
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeEnabled:Z

    if-ne v1, p1, :cond_38

    return-void

    .line 4307
    :cond_38
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeEnabled:Z

    .line 4308
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateKeyCustomizationInfoTvMode()V

    return-void
.end method

.method private synthetic lambda$new$13(Ljava/lang/Boolean;)V
    .registers 4

    .line 4312
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 4313
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "pwrkey_owner_status"

    const/4 v1, 0x0

    .line 4312
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_12

    move v1, v0

    .line 4315
    :cond_12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateSettings tvModeDoublePressEnabled="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeDoublePressEnabled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PhoneWindowManagerExt"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4317
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeDoublePressEnabled:Z

    if-ne v1, p1, :cond_38

    return-void

    .line 4320
    :cond_38
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeDoublePressEnabled:Z

    .line 4321
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateKeyCustomizationInfoTvMode()V

    return-void
.end method

.method private synthetic lambda$new$14(Ljava/lang/Boolean;)V
    .registers 4

    .line 4325
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 4326
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "double_tab_launch_component"

    .line 4325
    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSettings doublePressLaunchComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneWindowManagerExt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4328
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateDoublePressLaunchInfo(Ljava/lang/String;)V

    .line 4330
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_DOUBLE_PRESS_POWER_ATT_TV_MODE:Z

    if-eqz p1, :cond_35

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDoublePressLaunchComponentName:Landroid/content/ComponentName;

    .line 4331
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->isTvModeComponentName(Landroid/content/ComponentName;)Z

    move-result p1

    if-eqz p1, :cond_35

    .line 4332
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateKeyCustomizationInfoTvMode()V

    :cond_35
    return-void
.end method

.method private synthetic lambda$new$17()V
    .registers 3

    .line 5217
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeAndUnlockTriggered:Z

    if-eqz v0, :cond_e

    const-string v0, "PhoneWindowManagerExt"

    const-string v1, "WakeAndUnlock not triggered"

    .line 5218
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 5219
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeAndUnlockTriggered:Z

    :cond_e
    return-void
.end method

.method private synthetic lambda$new$18()V
    .registers 3

    .line 5238
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeAndUnfoldedTriggered:Z

    if-eqz v0, :cond_e

    const-string v0, "PhoneWindowManagerExt"

    const-string v1, "WakeAndUnfolded not triggered"

    .line 5239
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 5240
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeAndUnfoldedTriggered:Z

    :cond_e
    return-void
.end method

.method private synthetic lambda$new$21(Ljava/lang/Boolean;)V
    .registers 4

    .line 5800
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "pen_detachment_notification"

    const/4 v1, -0x2

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundFilePath:Ljava/lang/String;

    .line 5803
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2e

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundInfo:Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    if-eqz p1, :cond_2e

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundFilePath:Ljava/lang/String;

    .line 5804
    invoke-virtual {p1}, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->getPenSoundPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    goto :goto_2e

    .line 5807
    :cond_27
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundInfo:Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundFilePath:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->setPenSoundPath(Ljava/lang/String;)V

    :cond_2e
    :goto_2e
    return-void
.end method

.method private synthetic lambda$new$27(Ljava/lang/Boolean;)V
    .registers 5

    .line 6651
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 6652
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "any_screen_enabled"

    const/4 v1, 0x0

    const/4 v2, -0x2

    .line 6651
    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_12

    move v1, v0

    .line 6654
    :cond_12
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p1, p1, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object p1, p1, Lcom/android/server/wm/DisplayPolicyExt;->mOneHandOpPolicy:Lcom/android/server/wm/OneHandOpPolicy;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/OneHandOpPolicy;->setOneHandOpEnabled(Z)V

    .line 6657
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBootCompleted:Z

    if-eqz p1, :cond_3a

    if-eqz v1, :cond_2f

    .line 6659
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mOneHandOpPolicy:Lcom/android/server/wm/OneHandOpPolicy;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/OneHandOpPolicy;->startService(I)V

    goto :goto_3a

    .line 6662
    :cond_2f
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mOneHandOpPolicy:Lcom/android/server/wm/OneHandOpPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/OneHandOpPolicy;->stopService()V

    :cond_3a
    :goto_3a
    return-void
.end method

.method private synthetic lambda$new$7()V
    .registers 1

    .line 2741
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->showGlobalActions()V

    return-void
.end method

.method public static synthetic lambda$new$8()V
    .registers 4

    const-string v0, "PhoneWindowManagerExt"

    const-string v1, "Stop Lock Task Mode"

    .line 2899
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2901
    :try_start_7
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityTaskManager;->stopSystemLockTaskMode()V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_f

    goto :goto_24

    :catch_f
    move-exception v1

    .line 2903
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to reach activity manager"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_24
    return-void
.end method

.method private synthetic lambda$onDeviceFoldedStateChanged$28(Z)V
    .registers 8

    if-eqz p1, :cond_3

    goto :goto_14

    .line 6691
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->wakeAndUnfoldedFromLidSwitch()V

    .line 6692
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/16 v4, 0x9

    const-string v5, "android.policy:LID"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZILjava/lang/String;)Z

    :goto_14
    return-void
.end method

.method private synthetic lambda$onUserSwitch$4(I)V
    .registers 2

    .line 2010
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->onUserSwitch(I)V

    return-void
.end method

.method private synthetic lambda$performHomeBroadcast$15()V
    .registers 4

    .line 4884
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.action.START_DOCK_OR_HOME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v2, "com.samsung.android.permisson.START_DOCK_OR_HOME"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$requestCustomFullBugreport$20()V
    .registers 1

    .line 5494
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 5495
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->requestCustomFullBugreport()V

    return-void
.end method

.method private synthetic lambda$sendFoldSaLogging$23(ZLandroid/app/AlarmManager;)V
    .registers 8

    if-eqz p1, :cond_a

    .line 6353
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    if-eqz p0, :cond_9

    .line 6354
    invoke-virtual {p2, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_9
    return-void

    .line 6358
    :cond_a
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    const/4 v0, 0x0

    if-nez p1, :cond_20

    .line 6359
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.intent.action.WINNER_LOGGING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x4000000

    invoke-static {p1, v0, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    .line 6363
    :cond_20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x2710

    add-long/2addr v1, v3

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    .line 6362
    invoke-virtual {p2, v0, v1, v2, p0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private synthetic lambda$showBootMessage$22(II)V
    .registers 6

    .line 6214
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_e

    .line 6215
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->createBootProgressDialog(Landroid/content/Context;I)Landroid/app/BootProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    :cond_e
    mul-int/lit8 v0, p2, 0x64

    .line 6221
    div-int/2addr v0, p1

    if-ltz p2, :cond_19

    if-ltz p1, :cond_19

    if-gt p2, p1, :cond_19

    if-nez v0, :cond_38

    .line 6224
    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "progressNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " progressMaxNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PhoneWindowManagerExt"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    const/16 p1, 0x64

    if-le v0, p1, :cond_3e

    move v0, p1

    goto :goto_41

    :cond_3e
    if-gez v0, :cond_41

    const/4 v0, 0x0

    .line 6231
    :cond_41
    :goto_41
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 6232
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p2}, Landroid/app/ProgressDialog;->setProgress(I)V

    return-void
.end method

.method private synthetic lambda$showToast$5(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 2067
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_7

    .line 2068
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_7
    const/4 v0, 0x0

    .line 2070
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mToast:Landroid/widget/Toast;

    .line 2071
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static synthetic lambda$silenceRinger$25(ILcom/samsung/android/telecom/SemTelecomManager;)V
    .registers 2

    .line 6492
    invoke-virtual {p1, p0}, Lcom/samsung/android/telecom/SemTelecomManager;->silenceRinger(I)V

    return-void
.end method


# virtual methods
.method public acceptRingingCall(I)V
    .registers 3

    .line 6488
    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda21;

    invoke-direct {v0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda21;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->consumeIfSemTelecomManagerNonNull(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public addSingleKeyGestureRule(I)V
    .registers 6

    .line 2210
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector;->hasRule(I)Z

    move-result v0

    const-string v1, "PhoneWindowManagerExt"

    if-eqz v0, :cond_21

    .line 2211
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Already added rule of keyCode "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_21
    const/4 v0, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq p1, v2, :cond_81

    const/4 v2, 0x4

    if-eq p1, v2, :cond_7b

    const/16 v2, 0x18

    if-eq p1, v2, :cond_75

    const/16 v2, 0x19

    if-eq p1, v2, :cond_6f

    const/16 v2, 0x4f

    if-eq p1, v2, :cond_69

    const/16 v2, 0xbb

    if-eq p1, v2, :cond_63

    const/16 v2, 0x3f7

    if-eq p1, v2, :cond_5d

    const/16 v2, 0x437

    if-eq p1, v2, :cond_57

    .line 2242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSingleKeyGestureRule, keyCode was wrong. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_86

    .line 2239
    :cond_57
    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$UserTopKeyRule;

    invoke-direct {v0, p0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt$UserTopKeyRule;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    goto :goto_86

    .line 2236
    :cond_5d
    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$UserKeyRule;

    invoke-direct {v0, p0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt$UserKeyRule;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    goto :goto_86

    .line 2221
    :cond_63
    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$RecentKeyRule;

    invoke-direct {v0, p0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt$RecentKeyRule;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    goto :goto_86

    .line 2233
    :cond_69
    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$HeadsetHookKeyRule;

    invoke-direct {v0, p0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt$HeadsetHookKeyRule;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    goto :goto_86

    .line 2227
    :cond_6f
    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeDownKeyRule;

    invoke-direct {v0, p0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeDownKeyRule;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    goto :goto_86

    .line 2230
    :cond_75
    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;

    invoke-direct {v0, p0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    goto :goto_86

    .line 2224
    :cond_7b
    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$BackKeyRule;

    invoke-direct {v0, p0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt$BackKeyRule;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    goto :goto_86

    .line 2218
    :cond_81
    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;

    invoke-direct {v0, p0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    :goto_86
    if-eqz v0, :cond_8f

    .line 2246
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {p0, v0}, Lcom/android/server/policy/SingleKeyGestureDetector;->addRule(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)V

    :cond_8f
    return-void
.end method

.method public adjustConfigurationLw(Landroid/content/res/Configuration;)V
    .registers 4

    .line 6879
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mButtonShapeEnabled:I

    iget v1, p1, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    if-eq v0, v1, :cond_8

    .line 6881
    iput v0, p1, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    .line 6883
    :cond_8
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBoldFontEnabled:I

    iget v0, p1, Landroid/content/res/Configuration;->boldFont:I

    if-eq p0, v0, :cond_10

    .line 6884
    iput p0, p1, Landroid/content/res/Configuration;->boldFont:I

    :cond_10
    return-void
.end method

.method public adjustKeyEventDisplayIdForDex(Landroid/view/KeyEvent;)I
    .registers 4

    .line 6525
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v0

    .line 6527
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v1, 0xdd

    if-eq p1, v1, :cond_20

    const/16 v1, 0xdc

    if-ne p1, v1, :cond_11

    goto :goto_20

    .line 6532
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isInDexMode()Z

    move-result p1

    if-eqz p1, :cond_20

    const/4 p1, -0x1

    if-ne v0, p1, :cond_20

    .line 6533
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;

    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;->getDisplayIdForPointerIcon()I

    move-result v0

    :cond_20
    :goto_20
    return v0
.end method

.method public final answerCallByHomeKey(Z)Z
    .registers 5

    .line 2981
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAnyKeyMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    const-string v2, "PhoneWindowManagerExt"

    if-eqz p1, :cond_35

    .line 2986
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAcceptCallHomeConsumed:Z

    .line 2987
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p1}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object p1

    if-eqz p1, :cond_3f

    .line 2988
    invoke-virtual {p1}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result p1

    if-eqz p1, :cond_3f

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_SKT_PHONE_RELAX_MODE:Z

    if-eqz p1, :cond_23

    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSktPhoneRelaxMode:Z

    if-nez p1, :cond_3f

    :cond_23
    const-string/jumbo p1, "ringing: Accept the call!"

    .line 2990
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    .line 2991
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->acceptRingingCall(I)V

    .line 2992
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAcceptCallHomeConsumed:Z

    const-string p0, "Ignoring HOME; there\'s a ringing incoming call and set anykey mode"

    .line 2993
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 2997
    :cond_35
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAcceptCallHomeConsumed:Z

    if-eqz p0, :cond_3f

    const-string p0, "Ignoring HOME; consumed by accept call."

    .line 2998
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3f
    return v1
.end method

.method public final bindKeyguardOnPkgChanged()V
    .registers 3

    .line 6924
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v0, "PhoneWindowManagerExt"

    const-string v1, "bind KeyguardService due to updating SystemUI pkg"

    .line 6927
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6928
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->bindService(Landroid/content/Context;)V

    .line 6929
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onBootCompleted()V

    return-void
.end method

.method public boostFolding(Z)V
    .registers 5

    const-string v0, "PhoneWindowManagerExt"

    .line 6402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "boostFolding: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_11

    const-string p1, "folding"

    goto :goto_14

    :cond_11
    const-string/jumbo p1, "unfolding"

    :goto_14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6403
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBoosterLock:Ljava/lang/Object;

    monitor-enter p1

    .line 6404
    :try_start_21
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSemFoldingBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_36

    .line 6405
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    const-string v1, "PWM_ROTATION"

    invoke-static {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSemFoldingBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_36

    const/16 v1, 0xf

    .line 6408
    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 6412
    :cond_36
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSemFoldingBooster:Lcom/samsung/android/os/SemDvfsManager;

    const-string v1, "HINT_PWM_ROTATION"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->boosterAcquireLocked(Lcom/samsung/android/os/SemDvfsManager;Ljava/lang/String;)V

    .line 6413
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCommandToSamsungDeviceHealth()V

    .line 6414
    monitor-exit p1

    return-void

    :catchall_42
    move-exception p0

    monitor-exit p1
    :try_end_44
    .catchall {:try_start_21 .. :try_end_44} :catchall_42

    throw p0
.end method

.method public boostWakeUp()V
    .registers 4

    .line 6418
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBoosterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6419
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSemWakeUpBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v1, :cond_18

    .line 6420
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    const-string v2, "DEVICE_WAKEUP"

    invoke-static {v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSemWakeUpBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v1, :cond_18

    const/16 v2, 0x13

    .line 6423
    invoke-virtual {v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 6427
    :cond_18
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSemWakeUpBooster:Lcom/samsung/android/os/SemDvfsManager;

    const-string v2, "HINT_DEVICE_WAKEUP"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->boosterAcquireLocked(Lcom/samsung/android/os/SemDvfsManager;Ljava/lang/String;)V

    .line 6428
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCommandToSamsungDeviceHealth()V

    .line 6429
    monitor-exit v0

    return-void

    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public final boosterAcquireLocked(Lcom/samsung/android/os/SemDvfsManager;Ljava/lang/String;)V
    .registers 5

    const-string p0, "PhoneWindowManagerExt"

    if-nez p1, :cond_5

    return-void

    .line 6438
    :cond_5
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " acquire()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6439
    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1c} :catch_1d

    goto :goto_31

    .line 6441
    :catch_1d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " acquire is failed"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_31
    return-void
.end method

.method public final callDictation(Ljava/lang/String;I)V
    .registers 5

    .line 3151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callDictation, method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", keyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneWindowManagerExt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3152
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "keyCode"

    .line 3153
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3154
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p2, Lcom/android/server/policy/KeyCustomizationConstants$UriTags;->DICTATION:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, p2, p1, v1, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public final canOpenTvModeByPowerDoublePress()Z
    .registers 2

    .line 4359
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeEnabled:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeDoublePressEnabled:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDoublePressLaunchComponentName:Landroid/content/ComponentName;

    .line 4360
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isTvModeComponentName(Landroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public canRequestBugReport()Z
    .registers 2

    .line 5499
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_DEBUG_LEVEL_MID:Z

    if-nez v0, :cond_10

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_DEBUG_LEVEL_HIGH:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsCustomBugreportWriterEnabled:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIssueTrackerLoggedIn:Z

    if-eqz v0, :cond_16

    :cond_10
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsVolumeUpKeyPressed:Z

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public final canStartScreenOffMemo(I)Z
    .registers 5

    .line 5632
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenOffMemoEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 5635
    :cond_6
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenType:I

    if-eqz v0, :cond_b

    return v1

    .line 5638
    :cond_b
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenState:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_11

    return v1

    .line 5645
    :cond_11
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Landroid/view/Display;->getState()I

    move-result p0

    invoke-static {p0}, Landroid/view/Display;->isOnState(I)Z

    move-result p0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_26

    if-nez p1, :cond_25

    if-nez p0, :cond_25

    goto :goto_26

    :cond_25
    return v1

    :cond_26
    :goto_26
    return v0
.end method

.method public cancelPendingGlobalActionChord()V
    .registers 2

    .line 2744
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mGlobalActionChord:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public cancelPendingLockTaskModePinnedChordAction()V
    .registers 2

    .line 2908
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mStopLockTaskModePinnedChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final cancelWakeAndUnfoldedPendingAction()V
    .registers 2

    .line 5245
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeAndUnfoldedRunning:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final cancelWakeAndUnlockPendingAction()V
    .registers 2

    .line 5224
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeAndUnlockRunning:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public checkAccessibilityShortcutVolupPowerTriggered()V
    .registers 2

    .line 2768
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAccessibilityShortcutVolupPower:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    .line 2769
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAccessibilityShortcutVolupPower:Z

    const/16 v0, 0x17

    .line 2771
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->setAppOpsPermissionIfNeeded(I)V

    .line 2772
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->startAccessibilityShortcutVolupPower()V

    :cond_f
    return-void
.end method

.method public checkKeyCombinationScreenshotChord()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2816
    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->checkKeyCombinationScreenshotChord(Landroid/view/KeyEvent;Z)V

    return-void
.end method

.method public checkKeyCombinationScreenshotChord(Landroid/view/KeyEvent;Z)V
    .registers 15

    .line 2820
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SCREENSHOT_BY_SIDE_KEY_COMBINATION:Z

    if-eqz v0, :cond_df

    .line 2821
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsScreenshotTriggered:Z

    const-string v1, "PhoneWindowManagerExt"

    if-eqz v0, :cond_c0

    if-nez p1, :cond_e

    goto/16 :goto_c0

    :cond_e
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_b6

    .line 2827
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/16 v4, 0x19

    const/4 v5, 0x1

    if-ne p2, v4, :cond_25

    .line 2828
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyUpTime:[J

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    aput-wide v6, p2, v0

    goto :goto_35

    .line 2829
    :cond_25
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/16 v4, 0x1a

    if-ne p2, v4, :cond_35

    .line 2830
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyUpTime:[J

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    aput-wide v6, p2, v5

    .line 2832
    :cond_35
    :goto_35
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyUpTime:[J

    aget-wide v6, p1, v0

    cmp-long p2, v6, v2

    if-eqz p2, :cond_91

    aget-wide p1, p1, v5

    cmp-long p1, p1, v2

    if-nez p1, :cond_44

    goto :goto_91

    .line 2839
    :cond_44
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    .line 2840
    iget-wide v6, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenshotTriggeredTime:J

    sub-long v6, p1, v6

    .line 2841
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkKeyCombinationScreenshotChord interval="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2843
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyUpTime:[J

    aget-wide v8, v4, v0

    const-wide/16 v10, 0x96

    add-long/2addr v8, v10

    cmp-long v8, p1, v8

    if-gtz v8, :cond_b6

    aget-wide v8, v4, v5

    add-long/2addr v8, v10

    cmp-long p1, p1, v8

    if-gtz p1, :cond_b6

    const-wide/16 p1, 0x3e7

    cmp-long p1, v6, p1

    if-gtz p1, :cond_b6

    const-string/jumbo p1, "take a screenshot, this is triggered by keyCombination"

    .line 2846
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2848
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_FLIP_SUPPORT_SUB_HOME:Z

    if-eqz p1, :cond_8a

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isFolded()Z

    move-result p1

    if-eqz p1, :cond_8a

    move p1, v5

    goto :goto_8b

    :cond_8a
    move p1, v0

    .line 2851
    :goto_8b
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;

    invoke-interface {p2, v5, p1}, Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;->sendTakeScreenshotRunnable(II)V

    goto :goto_b6

    .line 2833
    :cond_91
    :goto_91
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Can not take screenshot, key up time is zero. volumeDown="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyUpTime:[J

    aget-wide v2, p2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " power="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyUpTime:[J

    aget-wide v2, p0, v5

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b6
    :goto_b6
    const/4 p1, 0x2

    new-array p1, p1, [J

    .line 2856
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyUpTime:[J

    .line 2857
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsScreenshotTriggered:Z

    .line 2858
    iput-wide v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenshotTriggeredTime:J

    goto :goto_e4

    .line 2822
    :cond_c0
    :goto_c0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can not take screenshot, triggered="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsScreenshotTriggered:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " event="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2860
    :cond_df
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;

    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;->cancelPendingTakeScreenshotRunnable()V

    :goto_e4
    return-void
.end method

.method public checkKeyguardOccluded(IZ)Z
    .registers 3

    if-eqz p2, :cond_c

    const/4 p2, -0x1

    if-ne p1, p2, :cond_c

    .line 5001
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    move-result p0

    return p0

    :cond_c
    if-nez p1, :cond_1c

    .line 5009
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    if-eqz p1, :cond_17

    .line 5010
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    return p0

    .line 5012
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    move-result p0

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public final checkPolicyBeforeDispatching(Landroid/view/KeyEvent;I)J
    .registers 6

    .line 1888
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const-wide/16 v1, -0x1

    packed-switch v0, :pswitch_data_44

    .line 1907
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result p2

    if-nez p2, :cond_27

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    const/4 p2, 0x1

    if-le p1, p2, :cond_40

    goto :goto_27

    .line 1899
    :pswitch_17
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, p2}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-wide v1

    :pswitch_22
    const/4 v0, 0x0

    .line 1895
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendThreeFingerGestureKeyEvent(Landroid/view/KeyEvent;IZ)V

    return-wide v1

    .line 1908
    :cond_27
    :goto_27
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    const/4 p1, 0x4

    .line 1909
    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/KeyCustomizationManager;->getLastKeyCustomizationInfo(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p0

    if-eqz p0, :cond_40

    .line 1910
    iget p0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    if-ne p0, p1, :cond_40

    .line 1911
    sget-boolean p0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz p0, :cond_3f

    const-string p0, "PhoneWindowManagerExt"

    const-string p1, "dispatchKeyEvent:long press, NO_DISPATCHING"

    .line 1912
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    return-wide v1

    :cond_40
    const-wide/16 p0, 0x0

    return-wide p0

    nop

    :pswitch_data_44
    .packed-switch 0x43d
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_17
        :pswitch_22
    .end packed-switch
.end method

.method public checkPolicyBeforeInterceptKey(Landroid/view/KeyEvent;ZZ)I
    .registers 10

    .line 1841
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1842
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_e

    move v1, v3

    goto :goto_f

    :cond_e
    move v1, v2

    .line 1843
    :goto_f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    .line 1846
    invoke-virtual {p0, v0, p2}, Lcom/android/server/policy/PhoneWindowManagerExt;->isInteractionControlEnabled(IZ)Z

    move-result p2

    const/4 v4, 0x2

    const-string v5, "PhoneWindowManagerExt"

    if-eqz p2, :cond_23

    const-string/jumbo p0, "interceptKeyTq : Key was blocked by interaction control"

    .line 1847
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_23
    if-eqz p3, :cond_26

    return v3

    :cond_26
    if-eqz v1, :cond_2c

    .line 1856
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean v2, p2, Lcom/android/server/policy/PhoneWindowManager;->mSystemKeyRequested:Z

    .line 1858
    :cond_2c
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {p2, v0}, Lcom/android/server/policy/SystemKeyManager;->isSystemKeyEventRequested(I)Z

    move-result p2

    const/4 p3, -0x1

    if-eqz p2, :cond_41

    const/16 p1, 0x1a

    if-ne v0, p1, :cond_40

    if-eqz v1, :cond_3f

    .line 1861
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemKeyRequested:Z

    :cond_3f
    return p3

    :cond_40
    return v3

    :cond_41
    const/16 p2, 0x19

    if-eq v0, p2, :cond_49

    const/16 p2, 0x18

    if-ne v0, p2, :cond_6a

    :cond_49
    if-nez p1, :cond_4d

    if-nez v1, :cond_6a

    .line 1875
    :cond_4d
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    if-eqz p1, :cond_6a

    invoke-virtual {p1}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result p1

    if-eqz p1, :cond_6a

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    .line 1876
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getVolumeKeyAppState()Z

    move-result p0

    if-eqz p0, :cond_6a

    .line 1878
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz p0, :cond_69

    const-string/jumbo p0, "knox: volume key is blocked"

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_69
    return v4

    :cond_6a
    return p3
.end method

.method public final checkSystemKeyBeforeDispatching(ILandroid/os/IBinder;)I
    .registers 5

    .line 5179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "systemkey requested code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PhoneWindowManagerExt"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5181
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 5182
    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowManagerInternal;->getKeyInterceptionInfoFromToken(Landroid/os/IBinder;)Lcom/android/internal/policy/KeyInterceptionInfo;

    move-result-object p1

    if-eqz p1, :cond_39

    .line 5183
    iget p1, p1, Lcom/android/internal/policy/KeyInterceptionInfo;->layoutParamsType:I

    const/16 p2, 0x7f8

    if-ne p1, p2, :cond_39

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 5184
    invoke-virtual {p1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result p1

    if-nez p1, :cond_39

    .line 5185
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const-string/jumbo p1, "reason"

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_39
    const-string/jumbo p0, "sec check systemkey before dispatching"

    .line 5188
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public clearAppLockedUnLockedApp()V
    .registers 3

    .line 6840
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IActivityTaskManager;->clearAppLockedUnLockedApp()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception p0

    const-string v0, "PhoneWindowManagerExt"

    const-string v1, " ClearAppLockedUnLockedApp failed , Remote exception "

    .line 6842
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10
    return-void
.end method

.method public clearKeyCustomizationInfoByAction(III)V
    .registers 4

    .line 2627
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/KeyCustomizationManager;->clearKeyCustomizationInfoByAction(III)V

    return-void
.end method

.method public clearKeyCustomizationInfoByKeyCode(II)V
    .registers 3

    .line 2623
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->clearKeyCustomizationInfoByKeyCode(II)V

    return-void
.end method

.method public closeDictation(I)V
    .registers 3

    const-string v0, "close_dictation"

    .line 3147
    invoke-virtual {p0, v0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->callDictation(Ljava/lang/String;I)V

    return-void
.end method

.method public final consumeIfSemTelecomManagerNonNull(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/telecom/SemTelecomManager;",
            ">;)V"
        }
    .end annotation

    .line 6500
    invoke-static {}, Lcom/samsung/android/server/util/SafetySystemService;->getSemTelecomManager()Lcom/samsung/android/telecom/SemTelecomManager;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 6502
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public final createBootProgressDialog(Landroid/content/Context;I)Landroid/app/BootProgressDialog;
    .registers 5

    .line 6241
    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$15;

    invoke-direct {v0, p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt$15;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;Landroid/content/Context;)V

    const/4 p0, 0x0

    .line 6275
    invoke-virtual {v0, p0}, Landroid/app/BootProgressDialog;->setProgressStyle(I)V

    .line 6276
    invoke-virtual {v0, p0}, Landroid/app/BootProgressDialog;->setIndeterminate(Z)V

    .line 6277
    invoke-virtual {v0}, Landroid/app/BootProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x7e5

    invoke-virtual {p1, v1}, Landroid/view/Window;->setType(I)V

    .line 6279
    invoke-virtual {v0}, Landroid/app/BootProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x102

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    .line 6282
    invoke-virtual {v0}, Landroid/app/BootProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 6283
    invoke-virtual {v0}, Landroid/app/BootProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v1, 0x5

    .line 6287
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const/4 v1, 0x1

    .line 6289
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 6290
    invoke-virtual {v0, p2}, Landroid/app/BootProgressDialog;->setMax(I)V

    .line 6291
    invoke-virtual {v0}, Landroid/app/BootProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 6292
    invoke-virtual {v0, p0}, Landroid/app/BootProgressDialog;->setCancelable(Z)V

    .line 6293
    invoke-virtual {v0}, Landroid/app/BootProgressDialog;->show()V

    return-object v0
.end method

.method public dismissBootDialogIfNeeded()V
    .registers 2

    .line 6301
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSubBootMsgDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_a

    .line 6302
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 6303
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSubBootMsgDialog:Landroid/app/ProgressDialog;

    :cond_a
    return-void
.end method

.method public final doublePressCameraLaunchPolicy(I)Z
    .registers 8

    .line 3785
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->doublePressLaunchPolicy(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 3789
    :cond_8
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DOUBLE_PRESS_POWER_LAUNCH_CAMERA:Z

    const-string v2, "double press was blocked because doublePressBehavior is false, keyCode="

    const-string v3, "PhoneWindowManagerExt"

    const/4 v4, 0x3

    if-eqz v0, :cond_2c

    const/16 v0, 0x1a

    if-ne p1, v0, :cond_2c

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuickLaunchCameraBehavior:I

    if-eq v0, v4, :cond_2c

    .line 3791
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3795
    :cond_2c
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DOUBLE_PRESS_HOME_LAUNCH_CAMERA:Z

    const/4 v5, 0x1

    if-eqz v0, :cond_4a

    if-ne p1, v4, :cond_4a

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuickLaunchCameraBehavior:I

    if-eq p0, v5, :cond_4a

    .line 3797
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4a
    return v5
.end method

.method public doublePressLaunchPolicy(I)Z
    .registers 5

    .line 3805
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "PhoneWindowManagerExt"

    if-nez v0, :cond_11

    const-string p0, "double press was blocked because UserSetup isn\'t completed"

    .line 3806
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3810
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isDomesticOtaStart()Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string p0, "double press was blocked by OTA status"

    .line 3811
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3814
    :cond_1d
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSimLocked()Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string p0, "double press was blocked by SimLock"

    .line 3815
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3818
    :cond_2b
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isCarrierLocked()Z

    move-result v0

    if-eqz v0, :cond_37

    const-string p0, "double press was blocked by CarrierLock"

    .line 3819
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3823
    :cond_37
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_LUC_SUPPORT_MISSING_PHONE_LOCK:Z

    if-eqz v0, :cond_47

    .line 3824
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isMissingPhoneLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_47

    const-string p0, "double press was blocked by LUC policy"

    .line 3825
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3829
    :cond_47
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 3830
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WmCoverState;->isFlipTypeCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_5d

    const-string p0, "double press was blocked because cover was closed"

    .line 3831
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3836
    :cond_5d
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/SystemKeyManager;->isSystemKeyEventRequested(I)Z

    move-result p1

    if-eqz p1, :cond_6b

    const-string p0, "double press was blocked by SystemKeyRequested"

    .line 3837
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_6b
    const/4 p1, 0x3

    .line 3842
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->isInteractionControlEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_78

    const-string p0, "double press was blocked by interaction control"

    .line 3843
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_78
    const/4 p0, 0x1

    return p0
.end method

.method public doubleTapLaunchPremiumWatch()V
    .registers 3

    .line 5351
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapPremiumWatchOn:Z

    if-nez v0, :cond_5

    return-void

    .line 5355
    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_24

    .line 5357
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not launch premium watch. userSetupComplete="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PhoneWindowManagerExt"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_24
    const/4 v0, 0x1

    .line 5362
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->startActivityPremiumWatch(Z)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    const-string v0, ""

    .line 6711
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6712
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "--- PhoneWindowManagerExt ---"

    .line 6713
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6716
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 6717
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "maxMultiPressPowerCount="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6718
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressPowerCount()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6721
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWakingUpReason="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6722
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakingUpReason:I

    invoke-static {v0}, Landroid/os/PowerManager;->wakeReasonToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6725
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/SystemKeyManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 6728
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mIsInteractionControlEnabled="

    .line 6729
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsInteractionControlEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mIsPowerKeyBlocked="

    .line 6730
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPowerKeyBlocked:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mIsVolumeKeyBlocked="

    .line 6731
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsVolumeKeyBlocked:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6733
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SCREENSHOT_BY_SIDE_KEY_COMBINATION:Z

    if-eqz v0, :cond_6f

    .line 6734
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mIsScreenshotTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6735
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsScreenshotTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6742
    :cond_6f
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mQuadruplePressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6743
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuadruplePressOnPowerBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6746
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mQuintuplePressOnPowerBehavior="

    .line 6747
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6748
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuintuplePressOnPowerBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6750
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DOUBLE_PRESS_POWER_LAUNCH_CAMERA:Z

    if-eqz v0, :cond_9d

    .line 6751
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mQuickLaunchCameraBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6752
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuickLaunchCameraBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6754
    :cond_9d
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DOUBLE_PRESS_POWER_ATT_TV_MODE:Z

    if-eqz v0, :cond_ce

    .line 6755
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTvModeEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mTvModeDoublePressEnabled="

    .line 6756
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeDoublePressEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6757
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDoublePressLaunchComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_ce

    .line 6758
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mDoublePressLaunchComponentName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6759
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDoublePressLaunchComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6762
    :cond_ce
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SUPPORT_RESERVE_BATTERY_MODE:Z

    if-eqz v0, :cond_ee

    .line 6763
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mReserveBatteryMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mReserveBatteryMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6764
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mEnableReserveBatteryMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6765
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mEnableReserveBatteryMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6768
    :cond_ee
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mIsHapticsEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsHapticsEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mIsAssistHapticEnabled="

    .line 6769
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAssistHapticEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mIsHapticsSupported="

    .line 6770
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsHapticsSupported:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mNavBarVirtualKeyHapticFeedbackEnabled="

    .line 6771
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6772
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarVirtualKeyHapticFeedbackEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6774
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SIDE_TOUCH_FINGERPRINT:Z

    if-eqz v0, :cond_138

    .line 6775
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWakeAndUnlockTriggered="

    .line 6776
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeAndUnlockTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mWakeAndUnfoldedTriggered="

    .line 6777
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeAndUnfoldedTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6780
    :cond_138
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mIsPogoKeyboardConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6781
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPogoKeyboardConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6783
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SPEN:Z

    if-eqz v0, :cond_1bd

    .line 6784
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "SPen state="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " type="

    .line 6785
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenType:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " vibrationEnabled="

    .line 6786
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenVibrationEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " soundEnabled="

    .line 6787
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6788
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundInfo:Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    if-nez v0, :cond_182

    .line 6789
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "SoundInfo is null"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1bd

    .line 6791
    :cond_182
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "PenSoundInfo attachSoundPath="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6792
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundInfo:Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->-$$Nest$fgetmAttachPenSoundPath(Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " detachSoundPath="

    .line 6793
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundInfo:Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->-$$Nest$fgetmDetachPenSoundPath(Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " attachSoundId="

    .line 6794
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundInfo:Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->-$$Nest$fgetmPenAttachSoundId(Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " detachSoundId="

    .line 6795
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundInfo:Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->-$$Nest$fgetmPenDetachSoundId(Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6798
    :cond_1bd
    :goto_1bd
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SPEN_SCREEN_OFF_MEMO:Z

    if-eqz v0, :cond_1cf

    .line 6799
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mScreenOffMemoEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6800
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenOffMemoEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6803
    :cond_1cf
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mIsDoubleTapToWakeUpSupported="

    .line 6804
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapToWakeUpSupported:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mIsDoubleTapToWakeUp="

    .line 6805
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapToWakeUp:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6817
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "cameraSensorToggleSupported="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6818
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsCameraSensorToggleSupported:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6819
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "micSensorToggleSupported="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6820
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsMicSensorToggleSupported:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6823
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLockTaskModeState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskModeState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6825
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_LONG_PRESS_SIDE_KEY:Z

    if-eqz v0, :cond_222

    .line 6826
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mIsCallOpenDictation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsCallOpenDictation:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6828
    :cond_222
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_XCOVER_AND_TOP_KEY:Z

    if-eqz v0, :cond_236

    .line 6829
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p1, "mIsCalledOpenDictationXCoverTop="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6830
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    iget-boolean p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mIsCalledOpenDictationXCoverTop:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_236
    return-void
.end method

.method public final enableOrDisableDexMode()V
    .registers 4

    .line 6539
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_10

    const-string p0, "PhoneWindowManagerExt"

    const-string v0, "enableOrDisableDexMode : User setup is not completed"

    .line 6540
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6544
    :cond_10
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.desktopmode.action.DESKTOP_MODE_UPDATE_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6546
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getDexMode()I

    move-result v1

    if-nez v1, :cond_1f

    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    const/4 v1, 0x2

    :goto_20
    const-string v2, "com.samsung.android.desktopmode.extra.DESKTOP_MODE_STATE"

    .line 6551
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x6

    const-string v2, "com.samsung.android.desktopmode.extra.DESKTOP_MODE_SOURCE"

    .line 6552
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6554
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public endCall(I)V
    .registers 3

    .line 6496
    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda14;

    invoke-direct {v0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda14;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->consumeIfSemTelecomManagerNonNull(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final getApplicationInfo(Landroid/content/Intent;)Landroid/content/pm/ApplicationInfo;
    .registers 6

    .line 2101
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 2102
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 2103
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_13

    return-object v1

    :cond_13
    const-string v0, "PhoneWindowManagerExt"

    const-string v2, "Can not launch app because app is not added in reserve battery mode"

    .line 2107
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 2109
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 2110
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 2112
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_32
    const-wide/16 v2, 0x0

    .line 2118
    :try_start_34
    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object p1

    .line 2117
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3c} :catch_3d

    return-object p0

    :catch_3d
    move-exception p0

    .line 2120
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method public final getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .registers 2

    .line 2096
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getAudioManager()Landroid/media/AudioManager;
    .registers 4

    .line 4642
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mServiceAcquireLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4643
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_13

    .line 4644
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAudioManager:Landroid/media/AudioManager;

    .line 4646
    :cond_13
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAudioManager:Landroid/media/AudioManager;

    monitor-exit v0

    return-object p0

    :catchall_17
    move-exception p0

    .line 4647
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public getBackupKeyCustomizationInfoList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;",
            ">;"
        }
    .end annotation

    .line 6509
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationManager;->getBackupKeyCustomizationInfoList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCoverDisplay()Landroid/view/Display;
    .registers 3

    .line 6852
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mCoverDisplay:Landroid/view/Display;

    if-nez v0, :cond_f

    .line 6853
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mCoverDisplay:Landroid/view/Display;

    .line 6855
    :cond_f
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mCoverDisplay:Landroid/view/Display;

    return-object p0
.end method

.method public getCoverPolicy()Lcom/android/server/wm/CoverPolicy;
    .registers 1

    .line 5136
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicyExt;->getCoverPolicy()Lcom/android/server/wm/CoverPolicy;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultDisplayState()I
    .registers 1

    .line 6862
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Landroid/view/Display;->getState()I

    move-result p0

    return p0
.end method

.method public getDexMode()I
    .registers 1

    .line 5100
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLastDexMode:I

    return p0
.end method

.method public final getEmergencySosIntent()Landroid/content/Intent;
    .registers 4

    .line 4113
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.action.LAUNCH_EMERGENCY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4114
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x100000

    .line 4115
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 4117
    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->getTopEmergencySosResolveInfo(Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    const/4 v1, 0x0

    const-string v2, "PhoneWindowManagerExt"

    if-nez p0, :cond_22

    const-string p0, "Couldn\'t find an app to process the emergency intent."

    .line 4119
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 4122
    :cond_22
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez p0, :cond_2c

    const-string p0, "activityInfo is null, Can not update the emergency intent."

    .line 4124
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 4128
    :cond_2c
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 4130
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public final getEndCallPolicy(ZZ)Z
    .registers 4

    .line 2035
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    and-int/lit8 p0, p0, 0x2

    const/4 v0, 0x0

    if-nez p0, :cond_a

    return v0

    :cond_a
    const/4 p0, 0x1

    if-eqz p1, :cond_10

    if-nez p2, :cond_10

    return p0

    .line 2046
    :cond_10
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_21

    .line 2047
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/WmCoverState;->isFlipTypeCoverClosed()Z

    move-result p1

    if-eqz p1, :cond_21

    return p0

    :cond_21
    return v0
.end method

.method public getFillInIntent()Landroid/content/Intent;
    .registers 3

    .line 2588
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "afterKeyguardGone"

    const/4 v1, 0x1

    .line 2589
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v0, "ignoreKeyguardState"

    .line 2590
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "dismissIfInsecure"

    .line 2591
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public final getHapticVibrationIndex(I)I
    .registers 3

    const/4 p0, 0x1

    if-eqz p1, :cond_29

    if-eq p1, p0, :cond_22

    const/16 v0, 0x2713

    if-eq p1, v0, :cond_29

    packed-switch p1, :pswitch_data_2e

    .line 4563
    invoke-static {p1}, Lcom/samsung/android/vibrator/SemHapticFeedbackConstants;->isValidatedVibeIndex(I)Z

    move-result p0

    if-eqz p0, :cond_13

    return p1

    :cond_13
    const/4 p0, -0x1

    return p0

    :pswitch_15
    const/4 p0, 0x5

    .line 4549
    invoke-static {p0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p0

    return p0

    :pswitch_1b
    const/16 p0, 0x29

    .line 4561
    invoke-static {p0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p0

    return p0

    :cond_22
    :pswitch_22
    const/16 p0, 0xe

    .line 4552
    invoke-static {p0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p0

    return p0

    .line 4547
    :cond_29
    :pswitch_29
    invoke-static {p0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p0

    return p0

    :pswitch_data_2e
    .packed-switch 0x3
        :pswitch_29
        :pswitch_1b
        :pswitch_29
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_29
        :pswitch_1b
        :pswitch_22
        :pswitch_29
        :pswitch_29
        :pswitch_15
    .end packed-switch
.end method

.method public getKeyCustomizationInfo(III)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .registers 4

    .line 2600
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/KeyCustomizationManager;->getKeyCustomizationInfo(III)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p0

    return-object p0
.end method

.method public getKeyCustomizationInfoByPackage(Ljava/lang/String;II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .registers 4

    .line 2605
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/KeyCustomizationManager;->getKeyCustomizationInfoByPackage(Ljava/lang/String;II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p0

    return-object p0
.end method

.method public getLastKeyCustomizationInfo(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .registers 3

    .line 2610
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastKeyCustomizationInfo(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getLockTaskFeaturesForUser(I)I
    .registers 3

    .line 2938
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method public getPendingIntentActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/app/PendingIntent;
    .registers 9

    .line 2148
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v3, 0xc000000

    const/4 v4, 0x0

    move-object v2, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public final getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;
    .registers 2

    .line 4229
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

    if-nez v0, :cond_13

    const-string/jumbo v0, "persona"

    .line 4230
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 4232
    invoke-static {v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersonaManagerService;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

    .line 4234
    :cond_13
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

    return-object p0
.end method

.method public final getReserveBatteryModeToast(Landroid/content/Intent;)Ljava/lang/String;
    .registers 3

    .line 4430
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->getApplicationInfo(Landroid/content/Intent;)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    const v0, 0x1040b86

    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getToastString(Landroid/content/pm/ApplicationInfo;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getToastString(Landroid/content/pm/ApplicationInfo;I)Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 2092
    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTopEmergencySosResolveInfo(Ljava/util/List;)Landroid/content/pm/ResolveInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    if-eqz p1, :cond_33

    .line 4140
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_33

    .line 4144
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_d

    .line 4145
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v1, :cond_20

    goto :goto_d

    .line 4150
    :cond_20
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.samsung.android.emergency"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    return-object v0

    :cond_2b
    const/4 p0, 0x0

    .line 4155
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    return-object p0

    :cond_33
    :goto_33
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWakingUpReason()I
    .registers 1

    .line 5842
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakingUpReason:I

    return p0
.end method

.method public handleDoublePressLaunchCamera(I)V
    .registers 3

    .line 3778
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->doublePressCameraLaunchPolicy(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3779
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->launchDoublePressCamera()V

    .line 3781
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendBroadcastDoubleClick(I)V

    return-void
.end method

.method public final handleDoublePressLaunchTvMode()V
    .registers 2

    const/16 v0, 0x1a

    .line 4259
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->doublePressLaunchPolicy(I)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 4262
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->launchDoublePressTvMode()V

    return-void
.end method

.method public handleLongPressOnHomePolicy()Z
    .registers 4

    .line 5904
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "PhoneWindowManagerExt"

    if-eqz v0, :cond_17

    .line 5905
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_17

    const-string p0, "Home long press is blocked in Ringing"

    .line 5906
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_17
    const/4 v0, 0x3

    .line 5910
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isInteractionControlEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string p0, "Home long press is blocked by Interaction control"

    .line 5911
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 5914
    :cond_24
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result p0

    if-nez p0, :cond_32

    const-string p0, "Home long press is blocked because UserSetup isn\'t completed"

    .line 5915
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_32
    const/4 p0, 0x0

    return p0
.end method

.method public handleLongPressOnHomeWithPolicy(IJ)Z
    .registers 15

    .line 5870
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->handleLongPressOnHomePolicy()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 5873
    :cond_8
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-nez v2, :cond_f

    return v1

    .line 5877
    :cond_f
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAssistHapticEnabled:Z

    const-string v3, "PhoneWindowManagerExt"

    const/4 v4, 0x1

    if-eqz v2, :cond_1c

    const-string v2, "Home - Long Press"

    .line 5878
    invoke-virtual {v0, v1, v4, v2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    goto :goto_22

    :cond_1c
    const-string/jumbo v0, "home long press haptic disabled by policy"

    .line 5881
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5884
    :goto_22
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v5, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-eq v0, v4, :cond_53

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4b

    const/4 p1, 0x3

    if-eq v0, p1, :cond_47

    .line 5896
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Undefined long press on home behavior: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    .line 5893
    :cond_47
    invoke-virtual {v5}, Lcom/android/server/policy/PhoneWindowManager;->toggleNotificationPanel()V

    goto :goto_56

    :cond_4b
    const/4 v6, 0x0

    const/4 v10, 0x5

    move v7, p1

    move-wide v8, p2

    .line 5889
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;IJI)V

    goto :goto_56

    .line 5886
    :cond_53
    invoke-virtual {v5}, Lcom/android/server/policy/PhoneWindowManager;->launchAllAppsAction()V

    :goto_56
    return v4
.end method

.method public final handleLongPressOnRecent(I)V
    .registers 5

    const-string p1, "PhoneWindowManagerExt"

    .line 4814
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    const/4 v1, 0x4

    const/16 v2, 0xbb

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastAction(II)I

    move-result v0

    if-ne v0, v1, :cond_e

    return-void

    .line 4821
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isLockTaskModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 4822
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 4824
    :try_start_1a
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz p0, :cond_23

    const-string p0, "Recent long press used in Lock task mode"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4825
    :cond_23
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IActivityTaskManager;->stopSystemLockTaskMode()V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_2a} :catch_2b

    goto :goto_31

    :catch_2b
    move-exception p0

    const-string v0, "Unable to reach activity manager"

    .line 4827
    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_31
    return-void

    .line 4835
    :cond_32
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    return-void
.end method

.method public handleNotifyPogoKeyboardStatus(Z)V
    .registers 4

    .line 5455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleNotifyPogoKeyboardStatus status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneWindowManagerExt"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5456
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPogoKeyboardConnected:Z

    if-ne v0, p1, :cond_1c

    return-void

    .line 5459
    :cond_1c
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPogoKeyboardConnected:Z

    .line 5461
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object p1

    if-nez p1, :cond_25

    return-void

    .line 5465
    :cond_25
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPogoKeyboardConnected:Z

    if-eqz v0, :cond_36

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isInDexMode()Z

    move-result v0

    if-nez v0, :cond_36

    .line 5466
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mMultiFingerGestureListener:Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/hardware/input/InputManager;->semRegisterOnMultiFingerGestureListener(Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;Landroid/os/Handler;)V

    goto :goto_3b

    .line 5469
    :cond_36
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mMultiFingerGestureListener:Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;

    invoke-virtual {p1, p0}, Landroid/hardware/input/InputManager;->semUnregisterOnMultiFingerGestureListener(Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;)V

    :goto_3b
    return-void
.end method

.method public final handleStartTransitionForKeyguardLw(ZZJI)I
    .registers 6

    .line 5038
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->handleStartTransitionForKeyguardLw(ZZJ)I

    move-result p0

    return p0
.end method

.method public final handleThreeFingerTap(II)V
    .registers 4

    .line 5404
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "handleThreeFingerTap behavior="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "PhoneWindowManagerExt"

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_41

    const/4 p2, 0x5

    if-eq p1, p2, :cond_34

    const/4 p2, 0x6

    if-eq p1, p2, :cond_26

    const-string p0, "The 3FingerTap type was wrong."

    .line 5432
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 5421
    :cond_26
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p0

    if-nez p0, :cond_2f

    goto :goto_44

    :cond_2f
    const/4 p1, 0x0

    .line 5426
    :try_start_30
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->expandSettingsPanel(Ljava/lang/String;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_33} :catch_44

    goto :goto_44

    .line 5410
    :cond_34
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p0

    if-nez p0, :cond_3d

    goto :goto_44

    .line 5415
    :cond_3d
    :try_start_3d
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_40} :catch_44

    goto :goto_44

    .line 5407
    :cond_41
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->startActivityAppsScreen()V

    :catch_44
    :goto_44
    return-void
.end method

.method public handleTorchForXCoverKey(Z)Z
    .registers 3

    .line 5110
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz p1, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    .line 5111
    :cond_d
    :goto_d
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mFlashLight:Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->handleTorchKey()V

    const/4 p0, 0x1

    return p0
.end method

.method public hasRequestedActionBlockKeyEvent(IZI)I
    .registers 8

    .line 2164
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/server/policy/KeyCustomizationManager;->getLastKeyCustomizationInfo(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_b

    return v1

    .line 2170
    :cond_b
    iget v2, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_49

    .line 2172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key was blocked by KeyCustomizationPolicy. keyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PhoneWindowManagerExt"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_47

    if-nez p3, :cond_47

    .line 2173
    iget p1, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    const/16 p2, 0xa

    if-ne p1, p2, :cond_47

    .line 2174
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x104068a

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManagerExt;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_47
    const/4 p0, 0x2

    return p0

    :cond_49
    return v1
.end method

.method public hasSingleKeyRule(I)Z
    .registers 3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_13

    const/4 v0, 0x4

    if-eq p1, v0, :cond_13

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_13

    const/16 v0, 0x3f7

    if-eq p1, v0, :cond_13

    const/16 v0, 0x437

    if-eq p1, v0, :cond_13

    goto :goto_1f

    .line 2573
    :cond_13
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector;->hasRule(I)Z

    move-result p0

    if-eqz p0, :cond_1f

    const/4 p0, 0x1

    return p0

    :cond_1f
    :goto_1f
    const/4 p0, 0x0

    return p0
.end method

.method public final hideCurrentInputMethodIfPossible()V
    .registers 3

    .line 2128
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    if-nez v1, :cond_10

    .line 2129
    const-class v1, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 2130
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 2132
    :cond_10
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    if-eqz p0, :cond_1a

    const/4 v0, 0x3

    .line 2133
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod(I)V

    :cond_1a
    return-void
.end method

.method public init()V
    .registers 6

    .line 401
    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler-IA;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    .line 402
    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSettingsObserver:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    .line 403
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->observe()V

    .line 405
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->initSettingsValue()V

    .line 408
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 414
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_35

    .line 416
    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->semCheckInputFeature()I

    move-result v0

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_32

    move v0, v2

    goto :goto_33

    :cond_32
    move v0, v1

    :goto_33
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapToWakeUpSupported:Z

    .line 422
    :cond_35
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->registerReceiver()V

    .line 423
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->initIntent()V

    .line 427
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->registerDisplayListener()V

    .line 431
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 432
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 439
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TORCH:Z

    if-eqz v0, :cond_58

    .line 440
    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mFlashLight:Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;

    .line 443
    :cond_58
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TRIPLE_PRESS_POWER_LAUNCH_PANIC_CALL:Z

    if-eqz v0, :cond_62

    .line 444
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const/16 v3, 0x66

    iput v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    .line 448
    :cond_62
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "vibrator"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mVibrator:Landroid/os/Vibrator;

    .line 449
    invoke-virtual {v0}, Landroid/os/Vibrator;->semGetSupportedVibrationType()I

    move-result v0

    if-le v0, v2, :cond_77

    move v0, v2

    goto :goto_78

    :cond_77
    move v0, v1

    :goto_78
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsHapticsSupported:Z

    .line 454
    new-instance v0, Lcom/android/server/policy/SystemKeyManager;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {v0, v3}, Lcom/android/server/policy/SystemKeyManager;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 458
    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mShortcutLaunchPolicy:Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;

    .line 460
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/SensorPrivacyManager;->getInstance(Landroid/content/Context;)Landroid/hardware/SensorPrivacyManager;

    move-result-object v0

    const/4 v3, 0x2

    .line 461
    invoke-virtual {v0, v3}, Landroid/hardware/SensorPrivacyManager;->supportsSensorToggle(I)Z

    move-result v3

    const-string/jumbo v4, "privacy"

    if-eqz v3, :cond_a4

    const-string v3, "camera_toggle_enabled"

    .line 462
    invoke-static {v4, v3, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_a4

    move v3, v2

    goto :goto_a5

    :cond_a4
    move v3, v1

    :goto_a5
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsCameraSensorToggleSupported:Z

    .line 464
    invoke-virtual {v0, v2}, Landroid/hardware/SensorPrivacyManager;->supportsSensorToggle(I)Z

    move-result v0

    if-eqz v0, :cond_b7

    const-string/jumbo v0, "mic_toggle_enabled"

    .line 465
    invoke-static {v4, v0, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_b7

    move v1, v2

    :cond_b7
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsMicSensorToggleSupported:Z

    .line 476
    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    return-void
.end method

.method public final initIntent()V
    .registers 3

    .line 1780
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SPEN:Z

    if-eqz v0, :cond_2f

    .line 1781
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.pen.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenInsertIntent:Landroid/content/Intent;

    const/high16 v1, 0x1000000

    .line 1782
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1783
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.pen.INSERT.USER_SWITCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenInsertIntentUserSwitch:Landroid/content/Intent;

    .line 1784
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SPEN_SCREEN_OFF_MEMO:Z

    if-eqz v0, :cond_2f

    .line 1785
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenOffMemoIntent:Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.notes/com.samsung.android.app.notes.screenoffmemo.ScreenOffMemoService"

    .line 1786
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1792
    :cond_2f
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getEmergencySosIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIntentEmergencySos:Landroid/content/Intent;

    return-void
.end method

.method public initKeyCombinationRules()V
    .registers 5

    .line 2647
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManagerExt$3;

    const/16 v2, 0x18

    const/16 v3, 0x1a

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/policy/PhoneWindowManagerExt$3;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    .line 2669
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManagerExt$4;

    const/16 v2, 0xbb

    const/4 v3, 0x4

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/policy/PhoneWindowManagerExt$4;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    return-void
.end method

.method public final initSettingsValue()V
    .registers 5

    .line 482
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DOUBLE_PRESS_POWER_ATT_TV_MODE:Z

    if-eqz v0, :cond_35

    .line 483
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tvmode_state"

    const/4 v2, 0x0

    .line 484
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_17

    move v1, v3

    goto :goto_18

    :cond_17
    move v1, v2

    :goto_18
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeEnabled:Z

    const-string/jumbo v1, "pwrkey_owner_status"

    .line 486
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_24

    move v2, v3

    :cond_24
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeDoublePressEnabled:Z

    .line 488
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 489
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "double_tab_launch_component"

    .line 488
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 491
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateDoublePressLaunchInfo(Ljava/lang/String;)V

    :cond_35
    return-void
.end method

.method public injectionKeyEvent(III)V
    .registers 6

    .line 2543
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyEventInjectionThread:Ljava/lang/Thread;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2544
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyEventInjectionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 2546
    :cond_f
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda19;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda19;-><init>(III)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyEventInjectionThread:Ljava/lang/Thread;

    .line 2563
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public interceptAccessibilityShortcutVolupPowerChord()V
    .registers 2

    const/4 v0, 0x1

    .line 2763
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAccessibilityShortcutVolupPower:Z

    return-void
.end method

.method public interceptGlobalActionChord()V
    .registers 4

    .line 2725
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_FACTORY_BINARY:Z

    if-eqz v0, :cond_c

    const-string p0, "PhoneWindowManagerExt"

    const-string v0, "Global Action is canceled because of factory mode"

    .line 2726
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2729
    :cond_c
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mGlobalActionChord:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2730
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mGlobalActionChord:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1077
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 1078
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    .line 1079
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_16

    const/4 v5, 0x1

    goto :goto_17

    :cond_16
    const/4 v5, 0x0

    :goto_17
    const/high16 v8, 0x20000000

    and-int v8, p3, v8

    if-eqz v8, :cond_1f

    const/4 v8, 0x1

    goto :goto_20

    :cond_1f
    const/4 v8, 0x0

    .line 1081
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v9

    .line 1082
    iget-object v10, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v10}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v10

    .line 1084
    sget-boolean v11, Lcom/samsung/android/rune/CoreRune;->FW_FLIP_SUPPORT_SUB_HOME:Z

    if-eqz v11, :cond_36

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isFolded()Z

    move-result v11

    if-eqz v11, :cond_36

    const/4 v11, 0x1

    goto :goto_3a

    .line 1089
    :cond_36
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v11

    :goto_3a
    if-eqz v5, :cond_40

    if-nez v4, :cond_40

    const/4 v12, 0x1

    goto :goto_41

    :cond_40
    const/4 v12, 0x0

    :goto_41
    if-eqz v5, :cond_53

    if-nez v4, :cond_53

    .line 1092
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v13

    if-eqz v13, :cond_53

    .line 1093
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isMetaKeyEventRequested()Z

    move-result v13

    if-nez v13, :cond_53

    const/4 v13, 0x1

    goto :goto_54

    :cond_53
    const/4 v13, 0x0

    .line 1095
    :goto_54
    sget-boolean v14, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    const-string v15, "PhoneWindowManagerExt"

    if-nez v14, :cond_66

    sget-object v14, Lcom/android/server/policy/PhoneWindowManagerExt;->KEYCODE_DEBUG_LOG_ALLOWLIST:Ljava/util/Set;

    .line 1096
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v14, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9b

    .line 1097
    :cond_66
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "interceptKeyTi code="

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " down="

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, " repeatCount="

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " displayId="

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " interactive="

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9b
    move v14, v8

    .line 1107
    invoke-virtual {v0, v2, v11}, Lcom/android/server/policy/PhoneWindowManagerExt;->checkPolicyBeforeDispatching(Landroid/view/KeyEvent;I)J

    move-result-wide v7

    const-wide/16 v16, 0x0

    cmp-long v16, v7, v16

    if-eqz v16, :cond_bc

    .line 1109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "interceptKeyTi checkPolicyBeforeDispatching retur="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v7

    :cond_bc
    const/4 v6, 0x5

    const/4 v8, -0x1

    const/4 v7, 0x2

    const-wide/16 v18, -0x1

    sparse-switch v3, :sswitch_data_570

    goto/16 :goto_55f

    :sswitch_c6
    if-eqz v12, :cond_55f

    const-string/jumbo v1, "launch view notification"

    .line 1331
    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    if-eqz v1, :cond_e5

    .line 1335
    :try_start_d6
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 1336
    invoke-static {v0, v11}, Landroid/app/StatusBarManager;->getNaturalBarTypeByDisplayId(Landroid/content/Context;I)I

    move-result v0

    .line 1335
    invoke-interface {v1, v0}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanelToType(I)V
    :try_end_df
    .catch Landroid/os/RemoteException; {:try_start_d6 .. :try_end_df} :catch_e0

    goto :goto_e5

    :catch_e0
    const-string v0, "Failed to launch view notification"

    .line 1338
    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e5
    :goto_e5
    return-wide v18

    .line 1324
    :sswitch_e6
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    move v7, v14

    invoke-virtual {v0, v2, v7}, Lcom/android/server/policy/KeyCustomizationManager;->dispatchKeyCustomizationKeyEvent(Landroid/view/KeyEvent;Z)I

    return-wide v18

    .line 1300
    :sswitch_ed
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHotKey:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;

    if-nez v1, :cond_f8

    .line 1301
    new-instance v1, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;

    invoke-direct {v1, v0}, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHotKey:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;

    .line 1303
    :cond_f8
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_109

    .line 1304
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WmCoverState;->isCoverClosed()Z

    move-result v1

    if-eqz v1, :cond_109

    return-wide v18

    :cond_109
    if-eqz v12, :cond_111

    .line 1309
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHotKey:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;

    invoke-virtual {v0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->registerAppInfo(I)V

    goto :goto_118

    :cond_111
    if-nez v5, :cond_118

    .line 1311
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHotKey:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;

    invoke-virtual {v0, v3, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->launchApp(II)V

    :cond_118
    :goto_118
    return-wide v18

    :sswitch_119
    move v7, v14

    .line 1204
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->IS_FACTORY_BINARY:Z

    if-nez v4, :cond_146

    .line 1205
    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v4

    if-eqz v4, :cond_125

    goto :goto_146

    .line 1210
    :cond_125
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 1211
    invoke-virtual {v4, v3}, Lcom/android/server/policy/SingleKeyGestureDetector;->hasRule(I)Z

    move-result v4

    if-nez v4, :cond_55f

    .line 1212
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_ACTIVE_OR_XCOVER_KEY:Z

    if-eqz v4, :cond_13c

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 1213
    invoke-virtual {v4, v3}, Lcom/android/server/policy/KeyCustomizationManager;->canDispatchXCoverTopKeyEvent(I)Z

    move-result v4

    if-nez v4, :cond_13c

    return-wide v18

    .line 1217
    :cond_13c
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 1218
    invoke-virtual {v4, v2, v7}, Lcom/android/server/policy/KeyCustomizationManager;->dispatchKeyCustomizationKeyEvent(Landroid/view/KeyEvent;Z)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_55f

    return-wide v18

    :cond_146
    :goto_146
    const-string v2, "Block Dispatching TopKey because of Factory mode or test."

    .line 1206
    invoke-static {v15, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_55f

    .line 1398
    :sswitch_14d
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 1399
    invoke-virtual {v2, v3}, Lcom/android/server/policy/SystemKeyManager;->isSystemKeyEventRequested(I)Z

    move-result v2

    if-eqz v2, :cond_15b

    .line 1400
    invoke-virtual {v0, v3, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->checkSystemKeyBeforeDispatching(ILandroid/os/IBinder;)I

    move-result v0

    :goto_159
    int-to-long v0, v0

    return-wide v0

    :cond_15b
    if-nez v5, :cond_163

    .line 1403
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mShortcutLaunchPolicy:Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;

    const/4 v1, 0x1

    invoke-virtual {v0, v11, v1}, Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;->launchApp(II)Z

    :cond_163
    return-wide v18

    :sswitch_164
    if-nez v5, :cond_180

    if-nez v10, :cond_180

    .line 1373
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 1374
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v1

    if-eqz v1, :cond_180

    const-string v1, "KEYCODE_MULTI_WINDOW key input"

    .line 1375
    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_180

    .line 1378
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleSplitScreen()V

    :cond_180
    return-wide v18

    :sswitch_181
    move v7, v14

    .line 1182
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->IS_FACTORY_BINARY:Z

    if-nez v4, :cond_1ae

    .line 1183
    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v4

    if-eqz v4, :cond_18d

    goto :goto_1ae

    .line 1188
    :cond_18d
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 1189
    invoke-virtual {v4, v3}, Lcom/android/server/policy/SingleKeyGestureDetector;->hasRule(I)Z

    move-result v4

    if-nez v4, :cond_55f

    .line 1190
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_ACTIVE_OR_XCOVER_KEY:Z

    if-eqz v4, :cond_1a4

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 1191
    invoke-virtual {v4, v3}, Lcom/android/server/policy/KeyCustomizationManager;->canDispatchXCoverTopKeyEvent(I)Z

    move-result v4

    if-nez v4, :cond_1a4

    return-wide v18

    .line 1195
    :cond_1a4
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 1196
    invoke-virtual {v4, v2, v7}, Lcom/android/server/policy/KeyCustomizationManager;->dispatchKeyCustomizationKeyEvent(Landroid/view/KeyEvent;Z)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_55f

    return-wide v18

    :cond_1ae
    :goto_1ae
    const-string v2, "Block Dispatching XCoverKey because of Factory mode or test."

    .line 1184
    invoke-static {v15, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_55f

    :sswitch_1b5
    if-nez v5, :cond_1d0

    .line 1408
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 1409
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v1

    if-eqz v1, :cond_1d0

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_1d0

    if-ne v11, v8, :cond_1ca

    const/4 v11, 0x0

    .line 1412
    :cond_1ca
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v11}, Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;->sendTakeScreenshotRunnable(II)V

    :cond_1d0
    return-wide v18

    :sswitch_1d1
    if-eqz v5, :cond_1e8

    if-nez v10, :cond_1e8

    if-nez v4, :cond_1e8

    .line 1386
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    if-eqz v0, :cond_1e8

    .line 1389
    :try_start_1df
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->togglePanel()V
    :try_end_1e2
    .catch Landroid/os/RemoteException; {:try_start_1df .. :try_end_1e2} :catch_1e3

    goto :goto_1e8

    :catch_1e3
    const-string v0, "Failed to toggle Quick Panel"

    .line 1391
    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e8
    :goto_1e8
    return-wide v18

    :sswitch_1e9
    move v7, v14

    .line 1147
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->FW_LUC_SUPPORT_MISSING_PHONE_LOCK:Z

    if-eqz v8, :cond_1fe

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isMissingPhoneLockEnabled()Z

    move-result v8

    if-eqz v8, :cond_1fe

    .line 1148
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1fd

    const-string v0, "Recent key is blocked by LUC policy"

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1fd
    return-wide v18

    .line 1152
    :cond_1fe
    iget-object v8, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 1153
    invoke-virtual {v8, v3}, Lcom/android/server/policy/SystemKeyManager;->isSystemKeyEventRequested(I)Z

    move-result v8

    if-eqz v8, :cond_20c

    .line 1154
    invoke-virtual {v0, v3, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->checkSystemKeyBeforeDispatching(ILandroid/os/IBinder;)I

    move-result v0

    goto/16 :goto_159

    .line 1157
    :cond_20c
    iget-object v8, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    const/16 v10, 0xbb

    .line 1158
    invoke-virtual {v8, v10}, Lcom/android/server/policy/SingleKeyGestureDetector;->hasRule(I)Z

    move-result v8

    if-nez v8, :cond_222

    .line 1159
    iget-object v8, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 1160
    invoke-virtual {v8, v2, v7}, Lcom/android/server/policy/KeyCustomizationManager;->dispatchKeyCustomizationKeyEvent(Landroid/view/KeyEvent;Z)I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_222

    return-wide v18

    :cond_222
    if-eqz v12, :cond_22f

    .line 1167
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v2

    if-nez v2, :cond_22f

    const/4 v2, 0x0

    .line 1168
    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAppSwitchKeyConsumed:Z

    :cond_22f
    if-eqz v5, :cond_55f

    if-eqz v4, :cond_55f

    if-eqz v9, :cond_55f

    .line 1173
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v2

    if-nez v2, :cond_240

    const/4 v2, 0x1

    .line 1174
    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAppSwitchKeyConsumed:Z

    .line 1176
    :cond_240
    invoke-virtual {v0, v11}, Lcom/android/server/policy/PhoneWindowManagerExt;->handleLongPressOnRecent(I)V

    goto/16 :goto_55f

    :sswitch_245
    if-eqz v5, :cond_55f

    if-nez v4, :cond_55f

    .line 1419
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    if-eqz v2, :cond_55f

    .line 1421
    invoke-virtual {v2, v7}, Landroid/hardware/input/InputManager;->forceFadeIcon(I)V

    goto/16 :goto_55f

    .line 1428
    :sswitch_254
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    if-eqz v2, :cond_55f

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isMetaKeyEventRequested()Z

    move-result v2

    if-nez v2, :cond_55f

    if-eqz v5, :cond_27c

    if-ne v11, v8, :cond_267

    const/4 v1, 0x1

    const/4 v6, 0x0

    goto :goto_269

    :cond_267
    move v6, v11

    const/4 v1, 0x1

    :goto_269
    if-eq v11, v1, :cond_276

    .line 1432
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;

    .line 1433
    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;->getFocusedTaskIdWithoutHome()I

    move-result v1

    if-eq v1, v8, :cond_276

    const/16 v7, 0x64

    goto :goto_277

    :cond_276
    const/4 v7, 0x1

    .line 1435
    :goto_277
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;

    invoke-interface {v0, v7, v6}, Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;->sendTakeScreenshotRunnable(II)V

    :cond_27c
    return-wide v18

    :sswitch_27d
    const/16 v7, 0x75

    if-ne v3, v7, :cond_55f

    if-eqz v5, :cond_29b

    if-nez v4, :cond_288

    const/4 v4, 0x0

    .line 1665
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPendingPermissionController:Z

    :cond_288
    if-eqz v9, :cond_55f

    .line 1668
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isMetaKeyEventRequested()Z

    move-result v4

    if-nez v4, :cond_55f

    .line 1669
    invoke-virtual {v0, v11}, Lcom/android/server/policy/PhoneWindowManagerExt;->isDisplayInDexMode(I)Z

    move-result v4

    if-nez v4, :cond_55f

    const/4 v2, 0x1

    .line 1670
    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPendingPermissionController:Z

    goto/16 :goto_55f

    .line 1672
    :cond_29b
    iget-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPendingPermissionController:Z

    if-eqz v2, :cond_55f

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    if-eqz v2, :cond_55f

    if-nez v10, :cond_55f

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mShortcutLaunchPolicy:Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;

    .line 1673
    invoke-virtual {v2, v11, v6}, Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;->launchApp(II)Z

    move-result v2

    if-eqz v2, :cond_55f

    return-wide v18

    :sswitch_2b0
    if-eqz v5, :cond_55f

    .line 1443
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v4

    if-eqz v4, :cond_55f

    .line 1444
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isMetaKeyEventRequested()Z

    move-result v4

    if-nez v4, :cond_55f

    .line 1445
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v1

    if-eqz v1, :cond_2e2

    const-string v1, "Open Task Manager"

    .line 1447
    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    .line 1449
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 1450
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1451
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_2e8

    :cond_2e2
    const/16 v1, 0x52

    const/4 v2, 0x0

    .line 1454
    invoke-virtual {v0, v1, v2, v11}, Lcom/android/server/policy/PhoneWindowManagerExt;->injectionKeyEvent(III)V

    :goto_2e8
    return-wide v18

    :sswitch_2e9
    const/16 v2, 0xb0

    if-ne v3, v2, :cond_2f1

    if-eqz v5, :cond_2f1

    if-eqz v4, :cond_2f7

    :cond_2f1
    const/16 v2, 0x36

    if-ne v3, v2, :cond_55f

    if-eqz v13, :cond_55f

    .line 1638
    :cond_2f7
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mShortcutLaunchPolicy:Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;

    const-string v4, "com.android.settings/com.android.settings.Settings"

    .line 1641
    invoke-virtual {v2, v11, v4}, Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;->launchApp(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_55f

    return-wide v18

    :sswitch_302
    if-eqz v13, :cond_55f

    .line 1629
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mShortcutLaunchPolicy:Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;

    const-string v4, "com.samsung.android.smartmirroring/com.samsung.android.smartmirroring.CastingActivity"

    .line 1630
    invoke-virtual {v2, v11, v4}, Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;->launchApp(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_55f

    return-wide v18

    :sswitch_30f
    const/16 v4, 0x86

    if-ne v3, v4, :cond_321

    if-eqz v5, :cond_321

    .line 1608
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    if-eqz v2, :cond_321

    .line 1609
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isMetaKeyEventRequested()Z

    move-result v2

    if-eqz v2, :cond_327

    :cond_321
    const/16 v2, 0x34

    if-ne v3, v2, :cond_55f

    if-eqz v13, :cond_55f

    .line 1611
    :cond_327
    iget v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskModeState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_342

    if-ne v1, v7, :cond_32f

    goto :goto_342

    :cond_32f
    const-string v1, "finish focused window"

    .line 1619
    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;->getFocusedTaskIdWithoutHome()I

    move-result v1

    if-eq v1, v8, :cond_341

    .line 1622
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;->removeTask(I)V

    :cond_341
    return-wide v18

    .line 1614
    :cond_342
    :goto_342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t finish focused window in LockTaskMode. mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskModeState:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v18

    :sswitch_359
    if-eqz v13, :cond_55f

    .line 1573
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v2

    if-eqz v2, :cond_391

    .line 1574
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mShortcutLaunchPolicy:Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;->canLaunchAppByExternalKeyboard()Z

    move-result v2

    if-eqz v2, :cond_55f

    iget-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsCameraSensorToggleSupported:Z

    if-nez v2, :cond_36f

    goto/16 :goto_55f

    .line 1578
    :cond_36f
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 1579
    invoke-static {v1}, Landroid/hardware/SensorPrivacyManager;->getInstance(Landroid/content/Context;)Landroid/hardware/SensorPrivacyManager;

    move-result-object v1

    .line 1580
    invoke-virtual {v1, v7}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(I)Z

    move-result v2

    xor-int/lit8 v3, v2, 0x1

    .line 1581
    invoke-virtual {v1, v6, v7, v3}, Landroid/hardware/SensorPrivacyManager;->setSensorPrivacyForProfileGroupWithConfirmPopup(IIZ)V

    if-eqz v2, :cond_3a4

    .line 1584
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040635

    .line 1585
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1584
    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3a4

    :cond_391
    const-string/jumbo v1, "launch volume panel"

    .line 1589
    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 1591
    invoke-static {}, Landroid/media/AudioManager;->semGetActiveStreamType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1590
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :cond_3a4
    :goto_3a4
    return-wide v18

    :sswitch_3a5
    if-eqz v13, :cond_55f

    .line 1564
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mShortcutLaunchPolicy:Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;

    const/4 v4, 0x4

    .line 1565
    invoke-virtual {v2, v11, v4}, Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;->launchApp(II)Z

    move-result v2

    if-eqz v2, :cond_55f

    return-wide v18

    :sswitch_3b1
    if-eqz v13, :cond_55f

    .line 1556
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mShortcutLaunchPolicy:Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;

    const-string v4, "com.sec.android.app.myfiles/com.sec.android.app.myfiles.external.ui.MainActivity"

    .line 1557
    invoke-virtual {v2, v11, v4}, Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;->launchApp(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_55f

    return-wide v18

    :sswitch_3be
    const/16 v2, 0x44a

    if-ne v3, v2, :cond_3c4

    if-nez v12, :cond_3ca

    :cond_3c4
    const/16 v2, 0x2d

    if-ne v3, v2, :cond_55f

    if-eqz v13, :cond_55f

    :cond_3ca
    const-string/jumbo v1, "launch quick setting"

    .line 1352
    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    if-eqz v0, :cond_3f3

    const/4 v1, 0x0

    .line 1361
    :try_start_3d9
    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->expandSettingsPanel(Ljava/lang/String;)V
    :try_end_3dc
    .catch Landroid/os/RemoteException; {:try_start_3d9 .. :try_end_3dc} :catch_3dd

    goto :goto_3f3

    :catch_3dd
    move-exception v0

    move-object v1, v0

    .line 1364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to launch Quick Setting, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f3
    :goto_3f3
    return-wide v18

    :sswitch_3f4
    if-eqz v13, :cond_55f

    const-string/jumbo v1, "window locked"

    .line 1543
    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->lockNow(Landroid/os/Bundle;)V

    return-wide v18

    :sswitch_403
    if-eqz v13, :cond_55f

    .line 1534
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mShortcutLaunchPolicy:Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;

    const/4 v4, 0x3

    .line 1535
    invoke-virtual {v2, v11, v4}, Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;->launchApp(II)Z

    move-result v2

    if-eqz v2, :cond_55f

    return-wide v18

    :sswitch_40f
    if-eqz v13, :cond_55f

    .line 1527
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mShortcutLaunchPolicy:Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;

    const-string v4, "com.samsung.android.app.tips/com.samsung.android.app.tips.TipsMainActivity"

    .line 1528
    invoke-virtual {v2, v11, v4}, Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;->launchApp(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_55f

    return-wide v18

    :sswitch_41c
    if-eqz v13, :cond_55f

    .line 1505
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mShortcutLaunchPolicy:Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;

    .line 1506
    invoke-virtual {v2, v11, v7}, Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;->launchApp(II)Z

    move-result v2

    if-eqz v2, :cond_55f

    return-wide v18

    :sswitch_427
    if-eqz v13, :cond_55f

    .line 1499
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->toggleGameBoosterMenuIfPossible()Z

    move-result v2

    if-eqz v2, :cond_55f

    return-wide v18

    :sswitch_430
    if-eqz v13, :cond_55f

    .line 1492
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mShortcutLaunchPolicy:Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;

    const/4 v1, 0x1

    invoke-virtual {v0, v11, v1}, Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;->launchApp(II)Z

    return-wide v18

    :sswitch_439
    if-eqz v13, :cond_55f

    if-nez v10, :cond_55f

    const-string/jumbo v1, "go to home by meta key"

    .line 1484
    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda15;

    invoke-direct {v2, v0, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-wide v18

    :sswitch_44e
    if-eqz v13, :cond_55f

    .line 1462
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v2

    if-eqz v2, :cond_55f

    .line 1463
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mShortcutLaunchPolicy:Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManagerExt$ShortcutLaunchPolicy;->canLaunchAppByExternalKeyboard()Z

    move-result v2

    if-eqz v2, :cond_55f

    iget-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsMicSensorToggleSupported:Z

    if-nez v2, :cond_464

    goto/16 :goto_55f

    .line 1468
    :cond_464
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 1469
    invoke-static {v1}, Landroid/hardware/SensorPrivacyManager;->getInstance(Landroid/content/Context;)Landroid/hardware/SensorPrivacyManager;

    move-result-object v1

    const/4 v2, 0x1

    .line 1470
    invoke-virtual {v1, v2}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(I)Z

    move-result v3

    xor-int/lit8 v4, v3, 0x1

    .line 1471
    invoke-virtual {v1, v6, v2, v4}, Landroid/hardware/SensorPrivacyManager;->setSensorPrivacyForProfileGroupWithConfirmPopup(IIZ)V

    if-eqz v3, :cond_486

    .line 1474
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040636

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_486
    return-wide v18

    .line 1283
    :sswitch_487
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isCarrierLocked()Z

    move-result v2

    if-nez v2, :cond_4aa

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSimLocked()Z

    move-result v2

    if-eqz v2, :cond_496

    goto :goto_4aa

    .line 1289
    :cond_496
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_LUC_SUPPORT_MISSING_PHONE_LOCK:Z

    if-eqz v2, :cond_55f

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isMissingPhoneLockEnabled()Z

    move-result v2

    if-eqz v2, :cond_55f

    .line 1290
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_4a9

    const-string v0, "Camera key was blocked by LUC policy"

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a9
    return-wide v18

    .line 1284
    :cond_4aa
    :goto_4aa
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_4b3

    const-string v0, "Camera key was blocked by sim or carrier status"

    .line 1285
    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b3
    return-wide v18

    :sswitch_4b4
    move v7, v14

    .line 1229
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    const/high16 v8, 0x10000000

    and-int/2addr v5, v8

    if-eqz v5, :cond_4c0

    goto/16 :goto_55f

    .line 1232
    :cond_4c0
    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {v5, v3}, Lcom/android/server/policy/SingleKeyGestureDetector;->hasRule(I)Z

    move-result v5

    if-eqz v5, :cond_4f7

    .line 1233
    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    const/4 v7, 0x4

    invoke-virtual {v5, v7, v3}, Lcom/android/server/policy/KeyCustomizationManager;->hasLastInfo(II)Z

    move-result v5

    if-nez v5, :cond_4f6

    if-eqz v9, :cond_4f0

    .line 1245
    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v5

    .line 1246
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v7

    .line 1247
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v10

    const/high16 v11, 0x10000000

    or-int/2addr v10, v11

    const/4 v11, 0x0

    .line 1246
    invoke-static {v2, v7, v8, v11, v10}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    move-result-object v2

    const/high16 v7, -0x80000000

    .line 1245
    invoke-virtual {v5, v2, v7, v11}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    :cond_4f0
    if-nez v9, :cond_55f

    const/4 v5, 0x1

    if-le v4, v5, :cond_4f6

    goto :goto_55f

    :cond_4f6
    return-wide v18

    :cond_4f7
    const/4 v5, 0x1

    .line 1257
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 1258
    invoke-virtual {v4, v2, v7, v5}, Lcom/android/server/policy/KeyCustomizationManager;->dispatchKeyCustomizationKeyEvent(Landroid/view/KeyEvent;ZZ)I

    move-result v2

    if-ne v2, v5, :cond_55f

    return-wide v18

    :sswitch_501
    move v7, v14

    .line 1268
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    const/high16 v5, 0x10000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_50c

    goto :goto_55f

    .line 1271
    :cond_50c
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {v4, v3}, Lcom/android/server/policy/SingleKeyGestureDetector;->hasRule(I)Z

    move-result v4

    if-nez v4, :cond_55f

    .line 1272
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 1273
    invoke-virtual {v4, v2, v7}, Lcom/android/server/policy/KeyCustomizationManager;->dispatchKeyCustomizationKeyEvent(Landroid/view/KeyEvent;Z)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_55f

    return-wide v18

    :sswitch_520
    move v7, v14

    .line 1115
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->FW_LUC_SUPPORT_MISSING_PHONE_LOCK:Z

    if-eqz v6, :cond_535

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isMissingPhoneLockEnabled()Z

    move-result v6

    if-eqz v6, :cond_535

    .line 1116
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_534

    const-string v0, "Home key is blocked by LUC policy"

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_534
    return-wide v18

    .line 1120
    :cond_535
    invoke-virtual {v0, v5}, Lcom/android/server/policy/PhoneWindowManagerExt;->answerCallByHomeKey(Z)Z

    move-result v5

    if-eqz v5, :cond_53c

    return-wide v18

    .line 1124
    :cond_53c
    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 1125
    invoke-virtual {v5, v3}, Lcom/android/server/policy/SystemKeyManager;->isSystemKeyEventRequested(I)Z

    move-result v5

    if-eqz v5, :cond_54a

    .line 1126
    invoke-virtual {v0, v3, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->checkSystemKeyBeforeDispatching(ILandroid/os/IBinder;)I

    move-result v0

    goto/16 :goto_159

    .line 1129
    :cond_54a
    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    const/4 v6, 0x3

    .line 1130
    invoke-virtual {v5, v6}, Lcom/android/server/policy/SingleKeyGestureDetector;->hasRule(I)Z

    move-result v5

    if-nez v5, :cond_55f

    .line 1131
    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 1132
    invoke-virtual {v5, v2, v7}, Lcom/android/server/policy/KeyCustomizationManager;->dispatchKeyCustomizationKeyEvent(Landroid/view/KeyEvent;Z)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_55f

    return-wide v18

    .line 1702
    :cond_55f
    :goto_55f
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 1703
    invoke-virtual {v2, v3}, Lcom/android/server/policy/SystemKeyManager;->isSystemKeyEventRequested(I)Z

    move-result v2

    if-eqz v2, :cond_56d

    .line 1704
    invoke-virtual {v0, v3, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->checkSystemKeyBeforeDispatching(ILandroid/os/IBinder;)I

    move-result v0

    goto/16 :goto_159

    :cond_56d
    const-wide/16 v0, -0x2

    return-wide v0

    :sswitch_data_570
    .sparse-switch
        0x3 -> :sswitch_520
        0x4 -> :sswitch_501
        0x18 -> :sswitch_4b4
        0x19 -> :sswitch_4b4
        0x1b -> :sswitch_487
        0x1d -> :sswitch_44e
        0x20 -> :sswitch_439
        0x22 -> :sswitch_430
        0x23 -> :sswitch_427
        0x24 -> :sswitch_41c
        0x26 -> :sswitch_40f
        0x27 -> :sswitch_403
        0x28 -> :sswitch_3f4
        0x2d -> :sswitch_3be
        0x2e -> :sswitch_3b1
        0x31 -> :sswitch_3a5
        0x32 -> :sswitch_359
        0x34 -> :sswitch_30f
        0x35 -> :sswitch_302
        0x36 -> :sswitch_2e9
        0x4f -> :sswitch_4b4
        0x6f -> :sswitch_2b0
        0x75 -> :sswitch_27d
        0x76 -> :sswitch_27d
        0x78 -> :sswitch_254
        0x86 -> :sswitch_30f
        0x89 -> :sswitch_245
        0xb0 -> :sswitch_2e9
        0xbb -> :sswitch_1e9
        0x3e9 -> :sswitch_1e9
        0x3eb -> :sswitch_1d1
        0x3ec -> :sswitch_1b5
        0x3f7 -> :sswitch_181
        0x425 -> :sswitch_164
        0x428 -> :sswitch_14d
        0x437 -> :sswitch_119
        0x442 -> :sswitch_ed
        0x443 -> :sswitch_ed
        0x444 -> :sswitch_ed
        0x445 -> :sswitch_e6
        0x446 -> :sswitch_e6
        0x447 -> :sswitch_e6
        0x448 -> :sswitch_e6
        0x449 -> :sswitch_c6
        0x44a -> :sswitch_3be
    .end sparse-switch
.end method

.method public final interceptKeyBeforeDispatchingForDex(Landroid/os/IBinder;Landroid/view/KeyEvent;I)Z
    .registers 10

    .line 6559
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 6560
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_e

    move v1, v3

    goto :goto_f

    :cond_e
    move v1, v2

    .line 6561
    :goto_f
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    const/16 v5, 0x43c

    if-ne v0, v5, :cond_1d

    if-nez v1, :cond_1d

    .line 6564
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->enableOrDisableDexMode()V

    return v3

    .line 6568
    :cond_1d
    invoke-virtual {p0, p3}, Lcom/android/server/policy/PhoneWindowManagerExt;->isDisplayInDexMode(I)Z

    move-result v5

    if-nez v5, :cond_24

    return v2

    :cond_24
    const/16 v5, 0x30

    if-eq v0, v5, :cond_95

    const/16 v5, 0x3d

    if-eq v0, v5, :cond_7f

    const/16 v4, 0x7a

    if-eq v0, v4, :cond_69

    const/16 v4, 0x75

    if-eq v0, v4, :cond_5b

    const/16 v4, 0x76

    if-eq v0, v4, :cond_5b

    packed-switch v0, :pswitch_data_a4

    packed-switch v0, :pswitch_data_ba

    packed-switch v0, :pswitch_data_c6

    goto :goto_a2

    .line 6626
    :pswitch_42
    invoke-virtual {p0, p2, p3, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendThreeFingerGestureKeyEvent(Landroid/view/KeyEvent;IZ)V

    :cond_45
    :goto_45
    move v2, v3

    goto :goto_a2

    .line 6614
    :pswitch_47
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result p3

    if-eqz p3, :cond_a2

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isMetaKeyEventRequested()Z

    move-result p3

    if-nez p3, :cond_a2

    if-eqz v1, :cond_a2

    .line 6615
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;

    invoke-interface {p0, p1, p2}, Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;->handleDexDpadShortcut(Landroid/os/IBinder;Landroid/view/KeyEvent;)V

    goto :goto_45

    :cond_5b
    if-nez v1, :cond_a2

    .line 6640
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isMetaKeyEventRequested()Z

    move-result p1

    if-nez p1, :cond_a2

    .line 6641
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;

    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;->handleDexMetaKeyForSnapping()V

    goto :goto_a2

    .line 6574
    :cond_69
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result p1

    if-eqz p1, :cond_a2

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isMetaKeyEventRequested()Z

    move-result p0

    if-nez p0, :cond_a2

    if-eqz v1, :cond_45

    .line 6576
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/samsung/android/multiwindow/MultiWindowManager;->minimizeAllTasks(I)Z

    goto :goto_45

    :cond_7f
    if-eqz v1, :cond_a2

    if-nez v4, :cond_a2

    .line 6631
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result p1

    if-eqz p1, :cond_a2

    .line 6632
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isMetaKeyEventRequested()Z

    move-result p1

    if-nez p1, :cond_a2

    .line 6633
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p0, p3}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps(I)V

    goto :goto_45

    .line 6593
    :cond_95
    :pswitch_95
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result p1

    if-eqz p1, :cond_a2

    .line 6602
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isMetaKeyEventRequested()Z

    move-result p0

    if-nez p0, :cond_a2

    goto :goto_45

    :cond_a2
    :goto_a2
    return v2

    nop

    :pswitch_data_a4
    .packed-switch 0x8
        :pswitch_95
        :pswitch_95
        :pswitch_95
        :pswitch_95
        :pswitch_95
        :pswitch_95
        :pswitch_95
        :pswitch_95
        :pswitch_95
    .end packed-switch

    :pswitch_data_ba
    .packed-switch 0x13
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
    .end packed-switch

    :pswitch_data_c6
    .packed-switch 0x43d
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
    .end packed-switch
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .registers 14

    .line 918
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 919
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    .line 920
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v2

    const/high16 v3, 0x20000000

    and-int/2addr p2, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p2, :cond_15

    move p2, v4

    goto :goto_16

    :cond_15
    move p2, v3

    .line 922
    :goto_16
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_1e

    move v5, v4

    goto :goto_1f

    :cond_1e
    move v5, v3

    .line 925
    :goto_1f
    sget-boolean v6, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    const-string v7, "PhoneWindowManagerExt"

    if-nez v6, :cond_31

    sget-object v6, Lcom/android/server/policy/PhoneWindowManagerExt;->KEYCODE_DEBUG_LOG_ALLOWLIST:Ljava/util/Set;

    .line 926
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_66

    .line 927
    :cond_31
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "interceptKeyTq code="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " down="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " repeatCount="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " displayId="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " interactive="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    const/4 v2, 0x3

    const-string/jumbo v6, "systemKeyEventRequested ADD_PASS"

    const/16 v8, 0x8

    const/4 v9, 0x4

    if-eq v0, v2, :cond_147

    if-eq v0, v9, :cond_136

    const/16 v2, 0xbb

    if-eq v0, v2, :cond_147

    const/16 v2, 0x3f7

    if-eq v0, v2, :cond_12e

    const/16 v2, 0x419

    const/4 v10, 0x2

    if-eq v0, v2, :cond_124

    const/16 v2, 0x436

    if-eq v0, v2, :cond_fb

    const/16 v2, 0x437

    if-eq v0, v2, :cond_12e

    packed-switch v0, :pswitch_data_15c

    goto/16 :goto_15a

    .line 952
    :pswitch_8b
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_LONG_PRESS_SIDE_KEY:Z

    if-eqz v2, :cond_bf

    if-nez v1, :cond_bf

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_bf

    if-nez v5, :cond_a5

    .line 954
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsCallOpenDictation:Z

    if-eqz v1, :cond_a5

    .line 955
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsCallOpenDictation:Z

    .line 956
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->closeDictation(I)V

    goto :goto_bf

    :cond_a5
    if-eqz v5, :cond_ad

    .line 957
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isSamsungKeyboardShown()Z

    move-result v1

    if-nez v1, :cond_bf

    .line 958
    :cond_ad
    new-instance v1, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;

    invoke-direct {v1, p1, p2}, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;-><init>(Landroid/view/KeyEvent;Z)V

    .line 960
    invoke-virtual {v1, v3}, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;->setPowerCombination(Z)Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;->build()Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;

    move-result-object p1

    .line 961
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBixbyService:Lcom/android/server/policy/PhoneWindowManagerExt$BixbyService;

    invoke-virtual {p2, p1}, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyService;->startBixbyService(Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;)V

    .line 965
    :cond_bf
    :goto_bf
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 966
    invoke-virtual {p0, v0}, Lcom/android/server/policy/SystemKeyManager;->isSystemKeyEventRequested(I)Z

    move-result p0

    if-eqz p0, :cond_cb

    .line 967
    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_cb
    const-string/jumbo p0, "systemKeyEventRequested REMOVE_PASS"

    .line 970
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    .line 974
    :pswitch_d2
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_LONG_PRESS_SIDE_KEY:Z

    if-eqz v5, :cond_15a

    .line 985
    invoke-virtual {p0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->knoxCustomVolumeKeyAppSwitching(Z)I

    move-result p0

    return p0

    :pswitch_db
    if-nez v1, :cond_f1

    .line 992
    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsVolumeUpKeyPressed:Z

    .line 994
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz v5, :cond_f1

    .line 996
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    .line 997
    invoke-virtual {p1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v0, 0xbb8

    .line 996
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_f1
    if-eqz v5, :cond_f8

    .line 1004
    invoke-virtual {p0, v4}, Lcom/android/server/policy/PhoneWindowManagerExt;->knoxCustomVolumeKeyAppSwitching(Z)I

    move-result p0

    return p0

    .line 1008
    :cond_f8
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_LONG_PRESS_SIDE_KEY:Z

    goto :goto_15a

    .line 1034
    :cond_fb
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_SPEN:Z

    if-eqz p1, :cond_123

    if-eqz v5, :cond_122

    const-string p1, "Press KEYCODE_DOUBLE_TAP"

    .line 1040
    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_SPEN_SCREEN_OFF_MEMO:Z

    if-eqz p1, :cond_122

    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenOffMemoEnabled:Z

    if-eqz p1, :cond_122

    .line 1042
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenOffMemoIntent:Landroid/content/Intent;

    const-string/jumbo p2, "pen_intent_com"

    const-string/jumbo v0, "pen_doubletab"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1044
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenOffMemoIntent:Landroid/content/Intent;

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    :cond_122
    return v9

    :cond_123
    return v10

    .line 1052
    :cond_124
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_PREMIUM_WATCH:Z

    if-eqz p1, :cond_15a

    if-eqz v5, :cond_15a

    .line 1053
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->doubleTapLaunchPremiumWatch()V

    return v10

    .line 1028
    :cond_12e
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasSingleKeyRule(I)Z

    move-result p0

    if-eqz p0, :cond_135

    return v8

    :cond_135
    return v9

    .line 1020
    :cond_136
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    const/high16 p2, 0x10000000

    and-int/2addr p1, p2

    if-nez p1, :cond_146

    .line 1021
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasSingleKeyRule(I)Z

    move-result p0

    if-eqz p0, :cond_146

    return v8

    :cond_146
    return v9

    .line 940
    :cond_147
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 941
    invoke-virtual {p1, v0}, Lcom/android/server/policy/SystemKeyManager;->isSystemKeyEventRequested(I)Z

    move-result p1

    if-eqz p1, :cond_153

    .line 942
    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    .line 946
    :cond_153
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasSingleKeyRule(I)Z

    move-result p0

    if-eqz p0, :cond_15a

    return v8

    :cond_15a
    :goto_15a
    return v4

    nop

    :pswitch_data_15c
    .packed-switch 0x18
        :pswitch_db
        :pswitch_d2
        :pswitch_8b
    .end packed-switch
.end method

.method public interceptKeyBeforeQuickAccess(IFF)Z
    .registers 12

    const/4 v0, 0x4

    const/16 v1, 0x20

    const/4 v2, 0x0

    if-eq p1, v0, :cond_6b

    const/16 v0, 0xe1

    const/4 v3, 0x1

    const/4 v4, 0x2

    const-string/jumbo v5, "location"

    const-string/jumbo v6, "info"

    if-eq p1, v0, :cond_4b

    const/16 v0, 0xe2

    if-eq p1, v0, :cond_4b

    packed-switch p1, :pswitch_data_b4

    packed-switch p1, :pswitch_data_c0

    const/4 p0, 0x0

    goto :goto_7f

    .line 3079
    :pswitch_1e
    new-instance v0, Landroid/content/Intent;

    const-string v7, "com.samsung.android.app.aodservice.intent.action.CHANGE_AOD_MODE"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3080
    invoke-virtual {v0, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-array v4, v4, [F

    aput p2, v4, v2

    aput p3, v4, v3

    .line 3081
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[F)Landroid/content/Intent;

    .line 3082
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3083
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v4, "com.samsung.android.app.aodservice.permission.BROADCAST_RECEIVER"

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 3084
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_FOLD_SA_LOGGING:Z

    if-eqz v1, :cond_7e

    const/16 v1, 0x8

    if-ne p1, v1, :cond_7e

    const-string v1, "Double Tab"

    .line 3085
    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendFoldSaLoggingCanceledIfNeeded(Ljava/lang/String;Z)V

    goto :goto_7e

    .line 3099
    :cond_4b
    :pswitch_4b
    new-instance v0, Landroid/content/Intent;

    const-string v7, "com.samsung.android.fingerprint.action.FINGER_ON_DISPLAY"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3100
    invoke-virtual {v0, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-array v4, v4, [F

    aput p2, v4, v2

    aput p3, v4, v3

    .line 3101
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[F)Landroid/content/Intent;

    .line 3102
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3103
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v3, "com.samsung.android.permission.BROADCAST_QUICKACCESS"

    invoke-virtual {p0, v0, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_7e

    .line 3065
    :cond_6b
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.android.spay.quickpay"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3066
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3067
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v3, "com.samsung.android.spay.permission.SIMPLE_PAY"

    invoke-virtual {p0, v0, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_7e
    :goto_7e
    move-object p0, v0

    .line 3112
    :goto_7f
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_b2

    .line 3113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "interceptKeyBeforeQuickAccess: info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " x="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " y="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", intent="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PhoneWindowManagerExt"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b2
    return v2

    nop

    :pswitch_data_b4
    .packed-switch 0x8
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
    .end packed-switch

    :pswitch_data_c0
    .packed-switch 0xf
        :pswitch_4b
        :pswitch_4b
        :pswitch_4b
    .end packed-switch
.end method

.method public interceptKeyCombinationScreenshotChord()V
    .registers 4

    .line 2802
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SCREENSHOT_BY_SIDE_KEY_COMBINATION:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    .line 2803
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsScreenshotTriggered:Z

    .line 2804
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenshotTriggeredTime:J

    const-string p0, "PhoneWindowManagerExt"

    const-string/jumbo v0, "interceptKeyCombinationScreenshotChord triggered"

    .line 2805
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    :cond_16
    const/4 v0, 0x0

    .line 2808
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_FLIP_SUPPORT_SUB_HOME:Z

    if-eqz v2, :cond_22

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isFolded()Z

    move-result v2

    if-eqz v2, :cond_22

    move v0, v1

    .line 2811
    :cond_22
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;

    invoke-interface {p0, v1, v0}, Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;->sendTakeScreenshotRunnable(II)V

    :goto_27
    return-void
.end method

.method public interceptStopLockTaskModePinnedChord()V
    .registers 5

    .line 2883
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isLockTaskModeEnabled()Z

    move-result v0

    .line 2884
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isTouchExplorationEnabled()Z

    move-result v1

    .line 2885
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isInteractionControlEnabled()Z

    move-result v2

    if-eqz v0, :cond_24

    if-nez v1, :cond_24

    if-eqz v2, :cond_13

    goto :goto_24

    .line 2894
    :cond_13
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mStopLockTaskModePinnedChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2895
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mStopLockTaskModePinnedChordLongPress:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 2887
    :cond_24
    :goto_24
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not stop SystemLockTaskMode. lockTaskModeEnabled="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " touchExplorationEnabled="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " interactionControlEnabled="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PhoneWindowManagerExt"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public interceptUnhandledKey(Landroid/view/KeyEvent;)Z
    .registers 7

    .line 5275
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 5276
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_e

    move v1, v2

    goto :goto_f

    :cond_e
    move v1, v3

    :goto_f
    const/16 v4, 0x6e

    if-eq v0, v4, :cond_14

    goto :goto_30

    :cond_14
    if-nez v1, :cond_30

    .line 5280
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isSupportedGameBooster()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 5281
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getVendorId()I

    move-result v0

    .line 5282
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/InputDevice;->getProductId()I

    move-result p1

    .line 5281
    invoke-virtual {p0, v0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->startGameControllerService(II)V

    return v2

    :cond_30
    :goto_30
    return v3
.end method

.method public final isActivitiesAvailable(Landroid/content/Intent;)Z
    .registers 4

    .line 1973
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_a

    return v0

    :cond_a
    const/high16 v1, 0x50000

    .line 1978
    :try_start_c
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 1981
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_14} :catch_18

    if-lez p0, :cond_30

    const/4 p0, 0x1

    return p0

    :catch_18
    move-exception p0

    .line 1985
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isActivitiesAvailable : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PhoneWindowManagerExt"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    return v0
.end method

.method public final isBlockWakeup()Z
    .registers 2

    .line 4918
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mFoldOpenCount:I

    const/4 v0, 0x3

    if-le p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public isBlockedPowerKey()Z
    .registers 3

    .line 6471
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 6475
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/policy/SystemKeyManager;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object p0

    .line 6476
    invoke-static {}, Landroid/os/FactoryTest;->needBlockingPowerKey()Z

    move-result v1

    if-nez v1, :cond_20

    if-eqz p0, :cond_1f

    .line 6478
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "com.sec.facuifunction.app.ui.UIHardKey"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_20

    :cond_1f
    return v0

    .line 6479
    :cond_20
    :goto_20
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz p0, :cond_2b

    const-string p0, "PhoneWindowManagerExt"

    const-string v0, "Skip power key behavior by FactoryTest application"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    const/4 p0, 0x1

    return p0
.end method

.method public isCameraRunning()Z
    .registers 2

    const-string/jumbo p0, "service.camera.running"

    const-string v0, "0"

    .line 3872
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isCarLifeDisplay(I)Z
    .registers 3

    .line 6981
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mCarLifeDisplay:Landroid/view/Display;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 6984
    :cond_6
    invoke-virtual {p0}, Landroid/view/Display;->getFlags()I

    move-result p0

    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    if-ne p1, p0, :cond_12

    return p0

    :cond_12
    return v0
.end method

.method public final isCarrierLocked()Z
    .registers 3

    .line 4400
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 4401
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockEnabled(I)Z

    move-result v1

    if-nez v1, :cond_1f

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 4402
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled(I)Z

    move-result v1

    if-nez v1, :cond_1f

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 4403
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->isRMMLockEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    :goto_20
    return p0
.end method

.method public isDisplayInDexMode(I)Z
    .registers 5

    .line 6519
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getDexMode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_a

    if-eq p1, v2, :cond_14

    .line 6520
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getDexMode()I

    move-result p0

    if-ne p0, v1, :cond_13

    if-nez p1, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :cond_14
    :goto_14
    return v1
.end method

.method public final isDomesticOtaStart()Z
    .registers 2

    const-string/jumbo p0, "ril.domesticOtaStart"

    .line 4407
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isDoublePowerLaunchCameraEnabled()Z
    .registers 3

    .line 4168
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Lcom/android/server/policy/KeyCustomizationManager;->hasDoubleCameraId(I)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isCameraRunning()Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public isDoublePressPower()Z
    .registers 4

    .line 3621
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DOUBLE_PRESS_SIDE_KEY:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    const/16 v2, 0x68

    if-eq v0, v2, :cond_15

    :cond_d
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    const/16 v2, 0x6a

    if-ne v0, v2, :cond_16

    :cond_15
    return v1

    .line 3627
    :cond_16
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DOUBLE_PRESS_POWER_LAUNCH_CAMERA:Z

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isDoublePowerLaunchCameraEnabled()Z

    move-result v0

    if-eqz v0, :cond_21

    return v1

    .line 3630
    :cond_21
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DOUBLE_PRESS_POWER_ATT_TV_MODE:Z

    if-eqz v0, :cond_2e

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    const/16 v0, 0x69

    if-ne p0, v0, :cond_2e

    return v1

    :cond_2e
    const/4 p0, 0x0

    return p0
.end method

.method public isDoubleTapToWakeUp(I)Z
    .registers 3

    const/16 v0, 0xe0

    if-ne p1, v0, :cond_e

    .line 5816
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapToWakeUp:Z

    if-eqz p1, :cond_e

    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapToWakeUpSupported:Z

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isFolded()Z
    .registers 1

    .line 6699
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->isFolded()Z

    move-result p0

    return p0
.end method

.method public isGlobalActionsDialogPowerOptionHidden()Z
    .registers 1

    .line 7029
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    if-eqz p0, :cond_e

    .line 7030
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions;->isDialogPowerOptionHidden()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isGlobalActionsDialogShowing()Z
    .registers 1

    .line 7025
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions;->isDialogShowing()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public final isHomeAllowed(I)Z
    .registers 3

    .line 2960
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->getLockTaskFeaturesForUser(I)I

    move-result p0

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public isInDexMode()Z
    .registers 1

    .line 5104
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getDexMode()I

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isInteractionControlEnabled()Z
    .registers 1

    .line 2913
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsInteractionControlEnabled:Z

    return p0
.end method

.method public isInteractionControlEnabled(I)Z
    .registers 3

    const/4 v0, 0x0

    .line 2701
    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isInteractionControlEnabled(IZ)Z

    move-result p0

    return p0
.end method

.method public isInteractionControlEnabled(IZ)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_25

    const/16 v1, 0xe0

    if-ne p1, v1, :cond_9

    goto :goto_25

    :cond_9
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_26

    .line 2716
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsInteractionControlEnabled:Z

    return p0

    .line 2711
    :pswitch_10
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsInteractionControlEnabled:Z

    if-eqz p1, :cond_1b

    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPowerKeyBlocked:Z

    if-eqz p0, :cond_1b

    if-eqz p2, :cond_1b

    move v0, v1

    :cond_1b
    return v0

    .line 2714
    :pswitch_1c
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsInteractionControlEnabled:Z

    if-eqz p1, :cond_25

    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsVolumeKeyBlocked:Z

    if-eqz p0, :cond_25

    move v0, v1

    :cond_25
    :goto_25
    return v0

    :pswitch_data_26
    .packed-switch 0x18
        :pswitch_1c
        :pswitch_1c
        :pswitch_10
    .end packed-switch
.end method

.method public isKeyguardOccluded(I)Z
    .registers 2

    .line 4967
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez p1, :cond_8

    const/4 p0, 0x0

    return p0

    .line 4971
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    move-result p0

    return p0
.end method

.method public isKeyguardShowingAndNotOccluded(I)Z
    .registers 2

    .line 4991
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez p1, :cond_8

    const/4 p0, 0x0

    return p0

    .line 4995
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result p0

    return p0
.end method

.method public isLockTaskModeEnabled()Z
    .registers 1

    .line 2926
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskModeState:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isLockTaskModePinned()Z
    .registers 2

    .line 2930
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskModeState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public isMetaKeyEventRequested()Z
    .registers 1

    .line 5171
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {p0}, Lcom/android/server/policy/SystemKeyManager;->isMetaKeyEventRequested()Z

    move-result p0

    return p0
.end method

.method public isMetaKeyEventRequested(Landroid/content/ComponentName;)Z
    .registers 2

    .line 5167
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/SystemKeyManager;->isMetaKeyEventRequested(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public final isMissingPhoneLockEnabled()Z
    .registers 3

    .line 4415
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mMissingPhoneLock:Ljava/lang/String;

    const-string/jumbo v1, "lock"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 4416
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isDomesticOtaStart()Z

    move-result p0

    if-eqz p0, :cond_21

    const-string/jumbo p0, "ril.simtype"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "18"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_23

    :cond_21
    const/4 p0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 p0, 0x1

    :goto_24
    return p0
.end method

.method public isNavBarImeBtnEnabled()Z
    .registers 1

    .line 5123
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mNavBarImeBtnEnabled:Z

    return p0
.end method

.method public final isPowerKeyConsumedInCall(Z)Z
    .registers 7

    .line 3010
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 3014
    :cond_a
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v2

    const/16 v3, 0x1a

    const-string v4, "PhoneWindowManagerExt"

    if-eqz v2, :cond_1e

    const-string/jumbo p1, "silenceRinger"

    .line 3017
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3018
    invoke-virtual {p0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->silenceRinger(I)V

    goto :goto_2f

    :cond_1e
    if-eqz p1, :cond_2f

    .line 3020
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result p1

    if-eqz p1, :cond_2f

    const-string p1, "endCall"

    .line 3023
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3024
    invoke-virtual {p0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->endCall(I)V

    const/4 v1, 0x1

    :cond_2f
    :goto_2f
    return v1
.end method

.method public isQuadruplePressPower()Z
    .registers 2

    .line 3646
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuadruplePressOnPowerBehavior:I

    const/16 v0, 0x6a

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public isQuintuplePressPower()Z
    .registers 2

    .line 3654
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuintuplePressOnPowerBehavior:I

    const/16 v0, 0x67

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public final isRecentsAllowed(I)Z
    .registers 2

    .line 2949
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->getLockTaskFeaturesForUser(I)I

    move-result p0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final isReserveBatteryMode()Z
    .registers 2

    .line 4425
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mReserveBatteryMode:Z

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mEnableReserveBatteryMode:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isSamsungKeyboardShown()Z
    .registers 2

    .line 3166
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSamsungKeyboard:Z

    if-eqz v0, :cond_11

    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda23;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->predicateIfInputMethodManagerNonNull(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method public isScreenTurnedOn()Z
    .registers 1

    .line 6706
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isScreenTurnedOn()Z

    move-result p0

    return p0
.end method

.method public final isSupportedGameBooster()Z
    .registers 5

    const-string v0, "PhoneWindowManagerExt"

    const/4 v1, 0x0

    .line 5295
    :try_start_3
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v2, "com.samsung.android.game.gametools"

    invoke-virtual {p0, v2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_f} :catch_1d

    if-eqz p0, :cond_17

    .line 5301
    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    const-string p0, "GameBooster is disabled"

    .line 5304
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_1d
    move-exception p0

    .line 5298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GameBooster is not installed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final isSupportedGameBoosterToggleMenu()Z
    .registers 5

    .line 6151
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "PhoneWindowManagerExt"

    if-eqz v0, :cond_11

    const-string p0, "GameBooster is not launched on keyguard"

    .line 6152
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 6157
    :cond_11
    :try_start_11
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.samsung.android.game.gametools"

    const/16 v3, 0x80

    .line 6158
    invoke-virtual {p0, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "Feature.External.Action"

    const-string v3, ""

    .line 6159
    invoke-virtual {p0, v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "togglemenu"

    .line 6160
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_30
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_30} :catch_31

    return p0

    :catch_31
    const-string p0, "GameBooster not installed"

    .line 6162
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    .registers 3

    .line 5163
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/SystemKeyManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public final isTouchExplorationEnabled()Z
    .registers 2

    .line 4840
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 4841
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public isTriplePressPower()Z
    .registers 2

    .line 3638
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TRIPLE_PRESS_POWER_LAUNCH_PANIC_CALL:Z

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    const/16 v0, 0x66

    if-ne p0, v0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public final isTvModeComponentName(Landroid/content/ComponentName;)Z
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 4367
    :cond_4
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.samsung.tvmode/com.samsung.tvmode.activity.MainActivity"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isVolumeKeyAnswerCallMode()Z
    .registers 2

    .line 2969
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsVolumeUpKeyMode:Z

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public isWakeKey(Landroid/view/KeyEvent;Z)I
    .registers 9

    .line 1797
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1798
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_d

    move v1, v2

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    .line 1799
    :goto_e
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const-string v5, "PhoneWindowManagerExt"

    if-eq v0, v3, :cond_3d

    const/16 p2, 0x1a

    if-eq v0, p2, :cond_35

    const/16 p1, 0xbb

    if-eq v0, p1, :cond_21

    goto :goto_62

    .line 1817
    :cond_21
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskModeState:I

    if-ne p1, v2, :cond_62

    .line 1819
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->isRecentsAllowed(I)Z

    move-result p0

    if-nez p0, :cond_62

    const-string p0, "Recent Key was blocked by LOCK_TASK_MODE_LOCKED"

    .line 1820
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 1827
    :cond_35
    invoke-virtual {p0, p2, v1, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasRequestedActionBlockKeyEvent(IZI)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_62

    return p0

    .line 1803
    :cond_3d
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskModeState:I

    if-ne p1, v2, :cond_51

    .line 1805
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->isHomeAllowed(I)Z

    move-result p1

    if-nez p1, :cond_51

    const-string p0, "Home Key was blocked by LOCK_TASK_MODE_LOCKED"

    .line 1806
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_51
    if-eqz p2, :cond_62

    if-eqz v1, :cond_62

    .line 1809
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 1811
    invoke-virtual {p0}, Landroid/os/PowerManagerInternal;->isProximityPositive()Z

    move-result p0

    if-eqz p0, :cond_62

    const/16 p0, 0x12

    return p0

    :cond_62
    :goto_62
    return v2
.end method

.method public keyguardGoingAwayWithFingerprintUnlock(Z)V
    .registers 5

    .line 5198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnlockFP triggered. isWakeAndUnlock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneWindowManagerExt"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_27

    .line 5200
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->cancelWakeAndUnlockPendingAction()V

    const/4 p1, 0x1

    .line 5201
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeAndUnlockTriggered:Z

    .line 5202
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeAndUnlockRunning:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5211
    :cond_27
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_FOLD_SA_LOGGING:Z

    if-eqz p1, :cond_31

    const/4 p1, 0x0

    const-string v0, "Fingerprint Sensor"

    .line 5212
    invoke-virtual {p0, v0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendFoldSaLoggingCanceledIfNeeded(Ljava/lang/String;Z)V

    :cond_31
    return-void
.end method

.method public final knoxCustomVolumeKeyAppSwitching(Z)I
    .registers 13

    .line 7034
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 7037
    :cond_6
    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v0

    if-eqz v0, :cond_1bc

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getVolumeKeyAppState()Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_1bc

    .line 7042
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isGlobalActionsDialogShowing()Z

    move-result v0

    const/4 v2, 0x2

    const-string v3, "PhoneWindowManagerExt"

    if-eqz v0, :cond_33

    const-string v0, "Knox Custom: GlobalActions dialog showing; not doing Volume Key app switching"

    .line 7043
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_32

    .line 7045
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isGlobalActionsDialogPowerOptionHidden()Z

    move-result p0

    if-eqz p0, :cond_32

    const-string p0, "Knox Custom: GlobalActions dialog showing; forward the key for Power option display"

    .line 7046
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_32
    return v2

    :cond_33
    const-string v0, "Knox Custom: Volume Key app switching starting"

    .line 7052
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7053
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getVolumeKeyAppsList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1b6

    .line 7054
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_48

    goto/16 :goto_1b6

    .line 7059
    :cond_48
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Knox Custom: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " apps in list"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7060
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    .line 7061
    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 7062
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 7064
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 7065
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 7066
    invoke-virtual {v6, v8}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    if-eqz v9, :cond_ab

    .line 7068
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " available"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7069
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7e

    .line 7071
    :cond_ab
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " not available"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    .line 7074
    :cond_c3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_d0

    const-string p0, "Knox Custom: no available apps"

    .line 7075
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b0

    :cond_d0
    const v0, 0x7fffffff

    .line 7079
    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x0

    .line 7080
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7081
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " in foreground"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, -0x1

    move v9, v8

    .line 7084
    :goto_101
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_131

    .line 7085
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_12e

    .line 7086
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " found at index "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v4

    :cond_12e
    add-int/lit8 v4, v4, 0x1

    goto :goto_101

    :cond_131
    if-ne v9, v8, :cond_14a

    .line 7091
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " not found in list; use first"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14a
    if-eqz p1, :cond_155

    .line 7096
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    if-ge v9, p1, :cond_155

    add-int/2addr v9, v1

    goto :goto_15f

    :cond_155
    if-lez v9, :cond_159

    sub-int/2addr v9, v1

    goto :goto_15f

    .line 7102
    :cond_159
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 v9, p1, -0x1

    .line 7105
    :goto_15f
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 7107
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_183

    .line 7108
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already in foreground"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b0

    .line 7110
    :cond_183
    invoke-virtual {v6, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 7111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Knox Custom: switching to "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1b0

    const/high16 p1, 0x10400000

    .line 7113
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 7116
    :try_start_1a2
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1a9
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1a2 .. :try_end_1a9} :catch_1aa

    goto :goto_1b0

    :catch_1aa
    move-exception p0

    const-string p1, "No activity to launch Knox Custom switching."

    .line 7118
    invoke-static {v3, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1b0
    :goto_1b0
    const-string p0, "Knox Custom: Volume Key app switching done"

    .line 7125
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1b6
    :goto_1b6
    const-string p0, "Knox Custom: no apps in list"

    .line 7055
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1bc
    :goto_1bc
    return v1
.end method

.method public final launchDoublePressCamera()V
    .registers 3

    .line 3850
    const-class p0, Lcom/android/server/GestureLauncherService;

    .line 3851
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/GestureLauncherService;

    if-nez p0, :cond_b

    return-void

    :cond_b
    const-string v0, "PhoneWindowManagerExt"

    const-string/jumbo v1, "launch double press camera"

    .line 3855
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 3856
    invoke-virtual {p0, v0}, Lcom/android/server/GestureLauncherService;->handleCameraGesture(I)Z

    return-void
.end method

.method public final launchDoublePressTvMode()V
    .registers 5

    const-string v0, "PhoneWindowManagerExt"

    const-string/jumbo v1, "launch double press tv mode"

    .line 4266
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4267
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isCameraRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    .line 4270
    :cond_f
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    const/16 v1, 0x8

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastKeyCustomizationInfo(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 4272
    iget v1, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    const/16 v2, 0x7d2

    if-eq v1, v2, :cond_22

    goto :goto_4c

    .line 4276
    :cond_22
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 4277
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/4 v2, 0x1

    const-string v3, "afterKeyguardGone"

    .line 4278
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4279
    iget-object v0, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->getPendingIntentActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto :goto_4c

    .line 4282
    :cond_43
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_4c
    :goto_4c
    return-void
.end method

.method public final launchEmergencySos(I)V
    .registers 4

    .line 4098
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIntentEmergencySos:Landroid/content/Intent;

    const-string v1, "PhoneWindowManagerExt"

    if-nez v0, :cond_c

    const-string p0, "Can not launch emergency SOS, the intent is null"

    .line 4099
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    const/16 v0, 0x66

    if-ne p1, v0, :cond_17

    const-string/jumbo p1, "launch panic call"

    .line 4104
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    :cond_17
    const-string/jumbo p1, "launch emergency SOS"

    .line 4106
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4108
    :goto_1d
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIntentEmergencySos:Landroid/content/Intent;

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public launchHomeForDesktopMode(I)V
    .registers 4

    .line 6936
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(IZZ)V

    return-void
.end method

.method public launchPremiumWatch(Z)V
    .registers 6

    .line 5332
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPremiumWatchOn:Z

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getLidBehavior()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_69

    if-nez p1, :cond_10

    goto :goto_69

    .line 5335
    :cond_10
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 5336
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p1

    .line 5337
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isCameraRunning()Z

    move-result v0

    .line 5338
    new-instance v1, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda11;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->predicateIfTelephonyManagerNonNull(Ljava/util/function/Predicate;)Z

    move-result v1

    .line 5339
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v2

    if-nez p1, :cond_3b

    if-nez v0, :cond_3b

    if-nez v1, :cond_3b

    if-nez v2, :cond_36

    goto :goto_3b

    :cond_36
    const/4 p1, 0x0

    .line 5347
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->startActivityPremiumWatch(Z)V

    return-void

    .line 5341
    :cond_3b
    :goto_3b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not launch premium watch. cameraRunning="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " offhook="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " LockTypeNone="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " userSetupComplete="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PhoneWindowManagerExt"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_69
    :goto_69
    return-void
.end method

.method public final launchSecureFolder()V
    .registers 3

    .line 4237
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 4241
    :cond_7
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SUPPORT_RESERVE_BATTERY_MODE:Z

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isReserveBatteryMode()Z

    move-result v0

    if-nez v0, :cond_36

    :cond_11
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 4242
    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isMinimalBatteryUseMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 4243
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_22

    goto :goto_36

    .line 4246
    :cond_22
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.knox.securefolder.CREATE_SECURE_FOLDER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 4247
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4248
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_3d

    .line 4244
    :cond_36
    :goto_36
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->launchSeamLessSf()V

    :goto_3d
    return-void
.end method

.method public final notifyPenStateToScreenOffMemo(Z)V
    .registers 4

    .line 5654
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenOffMemoIntent:Landroid/content/Intent;

    if-eqz p1, :cond_8

    const-string/jumbo p1, "pen_attach"

    goto :goto_b

    :cond_8
    const-string/jumbo p1, "pen_detach"

    :goto_b
    const-string/jumbo v1, "pen_intent_com"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5656
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenOffMemoIntent:Landroid/content/Intent;

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void
.end method

.method public notifyPenSwitchChanged(JZ)V
    .registers 19

    move-object v0, p0

    move/from16 v1, p3

    .line 5553
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_SPEN:Z

    const-string v3, "PhoneWindowManagerExt"

    if-eqz v2, :cond_167

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenType:I

    const/4 v4, 0x5

    if-eq v2, v4, :cond_167

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenState:I

    if-ne v1, v2, :cond_14

    goto/16 :goto_167

    .line 5558
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyPenSwitchChanged penInsert="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5559
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v2

    .line 5560
    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->canStartScreenOffMemo(I)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-nez v1, :cond_5f

    .line 5563
    iget v7, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenState:I

    if-eq v7, v6, :cond_5f

    if-eqz v2, :cond_49

    .line 5566
    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 5567
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 5566
    invoke-virtual {v7, v8, v9, v5, v5}, Landroid/os/PowerManager;->userActivity(JII)V

    goto :goto_5f

    .line 5569
    :cond_49
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->FW_SPEN_SCREEN_OFF_MEMO:Z

    if-eqz v7, :cond_4f

    if-nez v4, :cond_5f

    .line 5570
    :cond_4f
    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/16 v10, 0x66

    const-string/jumbo v11, "penDetached"

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 5577
    :cond_5f
    :goto_5f
    iget-boolean v7, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundEnabled:Z

    const/4 v8, 0x1

    if-eqz v7, :cond_8f

    iget v7, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenState:I

    if-eq v7, v6, :cond_8f

    .line 5578
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v7

    if-nez v7, :cond_8f

    .line 5579
    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundInfo:Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    if-nez v7, :cond_81

    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundFilePath:Ljava/lang/String;

    if-eqz v7, :cond_81

    .line 5580
    new-instance v9, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    invoke-direct {v9, v7}, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;-><init>(Ljava/lang/String;)V

    iput-object v9, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundInfo:Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    .line 5582
    :cond_81
    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundInfo:Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    if-eqz v7, :cond_89

    .line 5583
    invoke-virtual {v7, v1}, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->playPenSound(Z)V

    goto :goto_8f

    :cond_89
    const-string/jumbo v7, "mPenSoundInfo is null"

    .line 5585
    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5590
    :cond_8f
    :goto_8f
    iget-boolean v7, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenVibrationEnabled:Z

    if-eqz v7, :cond_c4

    iget v7, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenState:I

    if-eq v7, v6, :cond_c4

    .line 5591
    new-instance v6, Landroid/os/VibrationAttributes$Builder;

    new-instance v7, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v7}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 5592
    invoke-virtual {v7}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    invoke-virtual {v6}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v14

    .line 5593
    iget-object v9, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mVibrator:Landroid/os/Vibrator;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v10

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v11

    .line 5594
    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->vibrationEffect(Z)Landroid/os/VibrationEffect;

    move-result-object v12

    if-eqz v1, :cond_be

    const-string v6, "SPEN_ATTACHED"

    goto :goto_c0

    :cond_be
    const-string v6, "SPEN_DETACHED"

    :goto_c0
    move-object v13, v6

    .line 5593
    invoke-virtual/range {v9 .. v14}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    .line 5599
    :cond_c4
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenInsertIntent:Landroid/content/Intent;

    const-string/jumbo v7, "penInsert"

    invoke-virtual {v6, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5600
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenInsertIntent:Landroid/content/Intent;

    const-string/jumbo v7, "isScreenOn"

    invoke-virtual {v6, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5601
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenInsertIntent:Landroid/content/Intent;

    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v7

    const-string/jumbo v9, "isKeyguardLocked"

    invoke-virtual {v6, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5602
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenInsertIntent:Landroid/content/Intent;

    const-wide/16 v9, 0x0

    cmp-long v7, p1, v9

    if-nez v7, :cond_eb

    move v5, v8

    :cond_eb
    const-string/jumbo v7, "isBoot"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5603
    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenInsertIntent:Landroid/content/Intent;

    const-string/jumbo v6, "isServiceOn"

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5604
    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenInsertIntent:Landroid/content/Intent;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5606
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_SPEN_SMART_CLIP:Z

    if-eqz v5, :cond_11e

    .line 5607
    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    if-nez v5, :cond_117

    .line 5608
    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "spengestureservice"

    .line 5609
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/content/smartclip/SpenGestureManager;

    iput-object v5, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    .line 5611
    :cond_117
    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    if-eqz v5, :cond_11e

    .line 5612
    invoke-virtual {v5, v1}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->setSpenInsertionState(Z)V

    .line 5617
    :cond_11e
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_SPEN_SCREEN_OFF_MEMO:Z

    if-eqz v5, :cond_127

    if-eqz v4, :cond_127

    .line 5618
    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->notifyPenStateToScreenOffMemo(Z)V

    .line 5622
    :cond_127
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v5, :cond_164

    .line 5623
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notifyPenSwitchChanged, penInsert="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", screenOn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mPenSoundEnabled="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundEnabled:Z

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mPenVibrationEnabled="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenVibrationEnabled:Z

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", canStartScreenOffMemo="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5628
    :cond_164
    iput v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenState:I

    return-void

    .line 5554
    :cond_167
    :goto_167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyPenSwitchChanged ignored, mPenType="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mPenState="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenState:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", newPenState="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyRequestedGameToolsWin(Z)V
    .registers 2

    .line 5924
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 5926
    invoke-interface {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->notifyRequestedGameToolsWin(Z)V

    :cond_b
    return-void
.end method

.method public onDeviceFoldedStateChanged(Z)Ljava/lang/Runnable;
    .registers 3

    .line 6674
    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;Z)V

    return-object v0
.end method

.method public onDexModeChangedLw(I)V
    .registers 3

    .line 5073
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLastDexMode:I

    if-ne v0, p1, :cond_1c

    .line 5074
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onDexModeChangedLw: called same dexMode="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PhoneWindowManagerExt"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5077
    :cond_1c
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLastDexMode:I

    .line 5083
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPogoKeyboardConnected:Z

    if-eqz v0, :cond_37

    .line 5084
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    if-nez v0, :cond_29

    return-void

    :cond_29
    if-nez p1, :cond_32

    .line 5089
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mMultiFingerGestureListener:Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Landroid/hardware/input/InputManager;->semRegisterOnMultiFingerGestureListener(Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;Landroid/os/Handler;)V

    goto :goto_37

    .line 5092
    :cond_32
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mMultiFingerGestureListener:Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->semUnregisterOnMultiFingerGestureListener(Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;)V

    :cond_37
    :goto_37
    return-void
.end method

.method public onFocusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)V
    .registers 4

    if-eqz p1, :cond_1a

    .line 5144
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicyExt$WindowStateExt;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5145
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicyExt$WindowStateExt;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/policy/SystemKeyManager;->updateFocusedWindow(Ljava/lang/String;II)V

    goto :goto_22

    .line 5148
    :cond_1a
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    const-string p1, ""

    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2, p2}, Lcom/android/server/policy/SystemKeyManager;->updateFocusedWindow(Ljava/lang/String;II)V

    :goto_22
    return-void
.end method

.method public onHomeChangedBooster()V
    .registers 1

    .line 6891
    invoke-static {}, Lcom/android/server/wm/ActivityManagerPerformance;->getBooster()Lcom/android/server/wm/ActivityManagerPerformance;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 6893
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->isHomeKeyPressed()V

    :cond_9
    return-void
.end method

.method public onKeyguardOccludedChangedLw(ZI)Z
    .registers 3

    .line 4986
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->onKeyguardOccludedChangedLw(Z)Z

    move-result p0

    return p0
.end method

.method public onLockTaskFeaturesChanged(Landroid/util/SparseIntArray;)V
    .registers 2

    .line 2934
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    return-void
.end method

.method public onLockTaskStateChanged(I)V
    .registers 2

    .line 2922
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskModeState:I

    return-void
.end method

.method public onPowerGroupWakefulnessChanged(IIII)V
    .registers 7

    .line 6995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPowerGroupWakefulnessChanged groupId =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / wakefulness + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / pmSleepReason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " / globalWakefulness = "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "PhoneWindowManagerExt"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_5e

    .line 6997
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz p1, :cond_5e

    const/4 p1, 0x7

    const/4 p3, 0x1

    if-eq p2, p4, :cond_57

    if-eq p2, p3, :cond_5e

    .line 7006
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    if-eqz p2, :cond_46

    invoke-virtual {p0, p4}, Lcom/android/server/policy/PhoneWindowManagerExt;->isCarLifeDisplay(I)Z

    move-result p2

    if-eqz p2, :cond_46

    goto :goto_5e

    :cond_46
    const-string p2, "MSG_KEYGUARD_TIMEOUT delay =  1000"

    .line 7010
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7011
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    .line 7012
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 p2, 0x3e8

    .line 7011
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5e

    :cond_57
    if-ne p2, p3, :cond_5e

    .line 7017
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_5e
    :goto_5e
    return-void
.end method

.method public onUserSwitch(I)V
    .registers 5

    .line 1991
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SPEN:Z

    if-eqz v0, :cond_3f

    .line 1992
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;->getPenState()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3f

    .line 1994
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenInsertIntentUserSwitch:Landroid/content/Intent;

    const/4 v2, 0x1

    if-ne v0, v2, :cond_13

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    const-string/jumbo v0, "penInsert"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1996
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenInsertIntentUserSwitch:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 1997
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v1

    const-string/jumbo v2, "isScreenOn"

    .line 1996
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1998
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenInsertIntentUserSwitch:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 1999
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v1

    const-string/jumbo v2, "isKeyguardLocked"

    .line 1998
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2000
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenInsertIntentUserSwitch:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2006
    :cond_3f
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;->resetScreenshotConnection()V

    .line 2010
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public openDictation(I)V
    .registers 3

    const-string/jumbo v0, "open_dictation"

    .line 3143
    invoke-virtual {p0, v0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->callDictation(Ljava/lang/String;I)V

    return-void
.end method

.method public performHapticFeedbackLw(ILjava/lang/String;IZLjava/lang/String;)Z
    .registers 20

    move-object v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    .line 4449
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_f

    return v4

    .line 4453
    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "f.b. a="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " he="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsHapticsEnabled:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " ksno="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 4454
    invoke-virtual {v5}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " uid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " callingPackage="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p2

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " reason="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p5

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Caller="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x5

    .line 4456
    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "PhoneWindowManagerExt"

    .line 4453
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_8c

    .line 4458
    iget-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsHapticsEnabled:Z

    if-eqz v3, :cond_85

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v3

    if-nez v3, :cond_8c

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 4459
    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v3

    if-eqz v3, :cond_8c

    :cond_85
    const-string/jumbo v0, "haptic disabled by policy"

    .line 4460
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 4464
    :cond_8c
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3, v1}, Lcom/android/server/policy/PhoneWindowManager;->getVibrationAttributes(I)Landroid/os/VibrationAttributes;

    move-result-object v3

    const/4 v7, 0x2

    if-eqz v2, :cond_a2

    .line 4466
    new-instance v9, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v9, v3}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/os/VibrationAttributes;)V

    .line 4467
    invoke-virtual {v9, v7, v7}, Landroid/os/VibrationAttributes$Builder;->setFlags(II)Landroid/os/VibrationAttributes$Builder;

    move-result-object v3

    .line 4469
    invoke-virtual {v3}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v3

    :cond_a2
    move-object v11, v3

    .line 4472
    iget-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsHapticsSupported:Z

    const/4 v9, -0x1

    const/4 v12, 0x1

    if-eqz v3, :cond_db

    .line 4473
    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->getHapticVibrationIndex(I)I

    move-result v1

    if-ne v1, v9, :cond_b0

    return v4

    .line 4477
    :cond_b0
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v2, :cond_c9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vibrate type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4478
    :cond_c9
    sget-object v2, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {v1, v9, v2}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v9

    .line 4480
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mVibrator:Landroid/os/Vibrator;

    move v7, p1

    move-object/from16 v8, p2

    move-object/from16 v10, p5

    invoke-virtual/range {v6 .. v11}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    goto/16 :goto_1a1

    .line 4482
    :cond_db
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_HAPTIC_FEEDBACK_ON_DC_MOTOR:Z

    const/16 v13, 0x64

    if-eqz v3, :cond_10f

    if-nez v2, :cond_10f

    .line 4483
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->semGetSupportedVibrationType()I

    move-result v2

    if-ne v2, v12, :cond_10f

    if-eqz v1, :cond_fa

    const v2, 0xc3d4

    if-ne v1, v2, :cond_f3

    goto :goto_fa

    :cond_f3
    const-string/jumbo v0, "haptic generated by application"

    .line 4497
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10e

    .line 4490
    :cond_fa
    :goto_fa
    invoke-static {v13}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v1

    sget-object v2, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 4489
    invoke-static {v1, v9, v2}, Landroid/os/VibrationEffect;->semCreateWaveform(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v9

    .line 4492
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mVibrator:Landroid/os/Vibrator;

    move v7, p1

    move-object/from16 v8, p2

    move-object/from16 v10, p5

    invoke-virtual/range {v6 .. v11}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    :goto_10e
    return v12

    :cond_10f
    if-eqz v1, :cond_177

    const/16 v2, 0xd

    if-eq v1, v2, :cond_177

    if-eq v1, v12, :cond_177

    const/4 v2, 0x3

    if-eq v1, v2, :cond_177

    .line 4509
    invoke-static {v12}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v3

    if-eq v1, v3, :cond_177

    .line 4510
    invoke-static {v7}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v3

    if-ne v1, v3, :cond_127

    goto :goto_177

    .line 4512
    :cond_127
    invoke-static {v2}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v2

    if-ne v1, v2, :cond_12e

    goto :goto_179

    :cond_12e
    const/16 v2, 0x9

    .line 4514
    invoke-static {v2}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v2

    if-ne v1, v2, :cond_139

    const/16 v13, 0xfa

    goto :goto_179

    :cond_139
    const/16 v2, 0x8

    .line 4516
    invoke-static {v2}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v2

    if-ne v1, v2, :cond_144

    const/16 v13, 0x1f4

    goto :goto_179

    :cond_144
    const/16 v2, 0xb

    .line 4518
    invoke-static {v2}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v2

    if-ne v1, v2, :cond_14f

    const/16 v13, 0x5dc

    goto :goto_179

    :cond_14f
    const/16 v2, 0xa

    .line 4520
    invoke-static {v2}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v2

    if-ne v1, v2, :cond_176

    .line 4521
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v1, :cond_161

    const-string/jumbo v1, "vibrate pattern"

    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_161
    const/4 v1, 0x4

    new-array v1, v1, [J

    .line 4522
    fill-array-data v1, :array_1a2

    .line 4523
    invoke-static {v1, v9}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v9

    .line 4524
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mVibrator:Landroid/os/Vibrator;

    move v7, p1

    move-object/from16 v8, p2

    move-object/from16 v10, p5

    invoke-virtual/range {v6 .. v11}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    return v12

    :cond_176
    return v4

    :cond_177
    :goto_177
    const/16 v13, 0x32

    .line 4530
    :goto_179
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v1, :cond_192

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vibrate duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_192
    int-to-long v1, v13

    .line 4531
    invoke-static {v1, v2, v9}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v9

    .line 4533
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mVibrator:Landroid/os/Vibrator;

    move v7, p1

    move-object/from16 v8, p2

    move-object/from16 v10, p5

    invoke-virtual/range {v6 .. v11}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    :goto_1a1
    return v12

    :array_1a2
    .array-data 8
        0x0
        0xfa
        0xfa
        0xfa
    .end array-data
.end method

.method public final performHapticFeedbackLw(IZLjava/lang/String;)Z
    .registers 10

    .line 4443
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/PhoneWindowManagerExt;->performHapticFeedbackLw(ILjava/lang/String;IZLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final performHomeBroadcast()V
    .registers 3

    .line 4884
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public performSystemKeyFeedback(Landroid/view/KeyEvent;)V
    .registers 6

    .line 4577
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9c

    .line 4578
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 4579
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPC_Remote_Controller"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto/16 :goto_9c

    .line 4584
    :cond_1f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v1, :cond_56

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_52

    const/16 v1, 0x52

    if-eq v0, v1, :cond_56

    const/16 v1, 0x54

    if-eq v0, v1, :cond_41

    const/16 v1, 0xbb

    if-eq v0, v1, :cond_56

    const/16 v1, 0xcf

    if-eq v0, v1, :cond_52

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_56

    goto :goto_9c

    .line 4604
    :cond_41
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsHapticsSupported:Z

    if-eqz p1, :cond_4e

    .line 4605
    invoke-static {v3}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p1

    const-string v0, "Search key - Press"

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->performHapticFeedbackLw(IZLjava/lang/String;)Z

    .line 4608
    :cond_4e
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->playSoundEffect()V

    goto :goto_9c

    .line 4613
    :cond_52
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->playSoundEffect()V

    goto :goto_9c

    .line 4590
    :cond_56
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    if-eqz v1, :cond_9c

    .line 4591
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9c

    .line 4594
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "gpio"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9c

    .line 4595
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsHapticsSupported:Z

    if-eqz p1, :cond_99

    .line 4596
    invoke-static {v3}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "keyCode("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") - Press"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->performHapticFeedbackLw(IZLjava/lang/String;)Z

    .line 4599
    :cond_99
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->playSoundEffect()V

    :cond_9c
    :goto_9c
    return-void
.end method

.method public final playSoundEffect()V
    .registers 4

    .line 4623
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const-string v1, "PhoneWindowManagerExt"

    if-nez v0, :cond_e

    const-string p0, "Couldn\'t get audio manager"

    .line 4625
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4629
    :cond_e
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result p0

    if-nez p0, :cond_2b

    sget-object p0, Lcom/android/server/policy/PhoneWindowManagerExt;->VOLD_DECRYPT:Ljava/lang/String;

    const-string/jumbo v2, "trigger_restart_min_framework"

    .line 4630
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    const/16 p0, 0x66

    .line 4632
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 4631
    invoke-virtual {v0, p0, v1}, Landroid/media/AudioManager;->playSoundEffect(II)V

    goto :goto_31

    :cond_2b
    const-string/jumbo p0, "keyguard - disable key sound"

    .line 4634
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_31
    return-void
.end method

.method public powerLongPress(ILandroid/view/KeyEvent;I)Z
    .registers 9

    .line 3171
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_LONG_PRESS_SIDE_KEY:Z

    const-string v1, "PhoneWindowManagerExt"

    const/4 v2, 0x1

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_24

    .line 3172
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.sec.android.app.secsetupwizard.POWER_OFF_GUIDE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string/jumbo p0, "startActivity, power off guide"

    .line 3174
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_24
    const/high16 v0, 0x20000000

    and-int/2addr p3, v0

    const/4 v0, 0x0

    if-eqz p3, :cond_2c

    move p3, v2

    goto :goto_2d

    :cond_2c
    move p3, v0

    :goto_2d
    if-eq p1, v2, :cond_7e

    const/16 v3, 0x65

    const/16 v4, 0x1a

    if-eq p1, v3, :cond_57

    const/16 p3, 0x66

    if-eq p1, p3, :cond_3f

    const-string p0, "Invalid side key long press info"

    .line 3216
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 3204
    :cond_3f
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    const/4 p3, 0x4

    .line 3205
    invoke-virtual {p1, p3, v4}, Lcom/android/server/policy/KeyCustomizationManager;->getLastKeyCustomizationInfo(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p1

    if-nez p1, :cond_4f

    const-string/jumbo p0, "powerLongPress, info is null"

    .line 3207
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 3210
    :cond_4f
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    iget p1, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    invoke-virtual {p0, p1, p2, v4}, Lcom/android/server/policy/KeyCustomizationManager;->launchLongPressAction(ILandroid/view/KeyEvent;I)Z

    goto :goto_86

    .line 3181
    :cond_57
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_LONG_PRESS_SIDE_KEY:Z

    if-eqz p1, :cond_86

    .line 3182
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isSamsungKeyboardShown()Z

    move-result p1

    if-eqz p1, :cond_67

    .line 3183
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsCallOpenDictation:Z

    .line 3184
    invoke-virtual {p0, v4}, Lcom/android/server/policy/PhoneWindowManagerExt;->openDictation(I)V

    goto :goto_86

    .line 3188
    :cond_67
    new-instance p1, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;

    invoke-direct {p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;-><init>(Landroid/view/KeyEvent;Z)V

    .line 3189
    invoke-virtual {p1}, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;->setLongPress()Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;

    move-result-object p1

    .line 3190
    invoke-virtual {p1}, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;->showToast()Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;->build()Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;

    move-result-object p1

    .line 3191
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBixbyService:Lcom/android/server/policy/PhoneWindowManagerExt$BixbyService;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyService;->startBixbyService(Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;)V

    goto :goto_86

    :cond_7e
    if-eqz p3, :cond_86

    const-string p0, "Side key long press global action"

    .line 3197
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_86
    :goto_86
    const-string p0, "consume powerLongPress"

    .line 3220
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public powerMultiPressAction(ZILandroid/view/KeyEvent;I)Z
    .registers 6

    const-string v0, "PhoneWindowManagerExt"

    packed-switch p2, :pswitch_data_50

    const-string/jumbo p0, "powerMultiPress behavior was wrong."

    .line 3581
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 3552
    :pswitch_d
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    invoke-virtual {p0, p3, p4}, Lcom/android/server/policy/KeyCustomizationManager;->launchMultiPressAction(Landroid/view/KeyEvent;I)Z

    goto :goto_4d

    .line 3573
    :pswitch_13
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_DOUBLE_PRESS_POWER_ATT_TV_MODE:Z

    if-eqz p1, :cond_4d

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 3574
    invoke-virtual {p1}, Lcom/android/server/policy/KeyCustomizationManager;->hasDoublePowerTvModeId()Z

    move-result p1

    if-eqz p1, :cond_4d

    const-string p1, "Launch TvMode by power key double press"

    .line 3575
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3576
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->handleDoublePressLaunchTvMode()V

    goto :goto_4d

    .line 3544
    :pswitch_28
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_DOUBLE_PRESS_SIDE_KEY:Z

    if-eqz p2, :cond_4d

    const-string p2, "Launch side key mapping app by side key double press"

    .line 3545
    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3546
    invoke-static {p0, p3, p1}, Lcom/android/server/policy/SideKeyDoublePress;->launchAction(Lcom/android/server/policy/PhoneWindowManagerExt;Landroid/view/KeyEvent;Z)V

    goto :goto_4d

    .line 3560
    :pswitch_35
    invoke-virtual {p0, p2}, Lcom/android/server/policy/PhoneWindowManagerExt;->launchEmergencySos(I)V

    goto :goto_4d

    .line 3565
    :pswitch_39
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_DOUBLE_PRESS_POWER_LAUNCH_CAMERA:Z

    if-eqz p1, :cond_4d

    .line 3566
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isDoublePowerLaunchCameraEnabled()Z

    move-result p1

    if-eqz p1, :cond_4d

    const-string p1, "Launch camera by power key double press"

    .line 3567
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x1a

    .line 3568
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->handleDoublePressLaunchCamera(I)V

    :cond_4d
    :goto_4d
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_50
    .packed-switch 0x65
        :pswitch_39
        :pswitch_35
        :pswitch_35
        :pswitch_28
        :pswitch_13
        :pswitch_d
    .end packed-switch
.end method

.method public powerPress(Landroid/view/KeyEvent;ZZ)Z
    .registers 5

    if-eqz p1, :cond_15

    .line 2016
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    .line 2017
    invoke-virtual {v0, p1}, Lcom/android/server/policy/KeyCombinationManager;->isKeyConsumed(Landroid/view/KeyEvent;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 2018
    invoke-virtual {p0, p2, p3}, Lcom/android/server/policy/PhoneWindowManagerExt;->getEndCallPolicy(ZZ)Z

    move-result p1

    .line 2019
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->isPowerKeyConsumedInCall(Z)Z

    move-result p1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    .line 2023
    :goto_16
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_SIDE_TOUCH_FINGERPRINT:Z

    const/4 p3, 0x1

    if-eqz p2, :cond_24

    iget-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeAndUnlockTriggered:Z

    if-nez p2, :cond_23

    iget-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeAndUnfoldedTriggered:Z

    if-eqz p2, :cond_24

    :cond_23
    move p1, p3

    .line 2027
    :cond_24
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPowerKeyHandledByProximityInCall:Z

    if-eqz p0, :cond_29

    goto :goto_2a

    :cond_29
    move p3, p1

    :goto_2a
    return p3
.end method

.method public final predicateIfInputMethodManagerNonNull(Ljava/util/function/Predicate;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Landroid/view/inputmethod/InputMethodManager;",
            ">;)Z"
        }
    .end annotation

    .line 3158
    invoke-static {}, Lcom/samsung/android/server/util/SafetySystemService;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 3160
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public final predicateIfTelephonyManagerNonNull(Ljava/util/function/Predicate;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Landroid/telephony/TelephonyManager;",
            ">;)Z"
        }
    .end annotation

    .line 5366
    invoke-static {}, Lcom/samsung/android/server/util/SafetySystemService;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 5368
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public putKeyCustomizationInfo(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V
    .registers 2

    .line 2596
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->putKeyCustomizationInfo(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V

    return-void
.end method

.method public final registerDisplayListener()V
    .registers 4

    .line 4926
    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$10;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$10;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    .line 4942
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$11;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/PhoneWindowManagerExt$11;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method public final registerReceiver()V
    .registers 13

    .line 1729
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x3e8

    .line 1730
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 1731
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1735
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 1736
    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    .line 1737
    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 1738
    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    .line 1739
    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1740
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1743
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_LONG_PRESS_SIDE_KEY:Z

    if-eqz v0, :cond_55

    .line 1744
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.sec.android.app.secsetupwizard.GLOBAL_ACTION"

    .line 1745
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1746
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSetupWizardGlobalActionReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1749
    :cond_55
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TORCH:Z

    if-eqz v0, :cond_6a

    .line 1750
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 1751
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1752
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBatteryChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1754
    :cond_6a
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSUI_GRADLE_BUILD:Z

    if-eqz v0, :cond_71

    .line 1755
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->registerSystemUIReceiver()V

    .line 1758
    :cond_71
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    .line 1759
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    .line 1760
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1761
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mProximityChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1765
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1766
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1773
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FOLD_SA_LOGGING:Z

    if-eqz v0, :cond_ab

    .line 1774
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.intent.action.WINNER_LOGGING"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1775
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mFoldSaLoggingReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_ab
    return-void
.end method

.method public final registerSystemUIReceiver()V
    .registers 4

    .line 6900
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    .line 6901
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 6902
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$17;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$17;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public removeKeyCustomizationInfo(III)V
    .registers 4

    .line 2614
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/KeyCustomizationManager;->removeKeyCustomizationInfo(III)V

    return-void
.end method

.method public removeKeyCustomizationInfoByPackage(Ljava/lang/String;II)V
    .registers 4

    .line 2619
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/KeyCustomizationManager;->removeKeyCustomizationInfoByPackage(Ljava/lang/String;II)V

    return-void
.end method

.method public removeSingleKeyGestureRule(I)V
    .registers 3

    const/16 v0, 0x1a

    if-ne p1, v0, :cond_5

    return-void

    .line 2255
    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector;->hasRule(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2256
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector;->removeRule(I)V

    :cond_16
    return-void
.end method

.method public requestCustomFullBugreport()V
    .registers 6

    .line 5477
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIssueTrackerLoggedIn:Z

    const-string v1, "PhoneWindowManagerExt"

    if-eqz v0, :cond_35

    .line 5478
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.android.ISSUE_TRACKER_ACTION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "ERRNAME"

    const-string v3, "User pressed h/w key for logging"

    .line 5479
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, -0x83

    const-string v4, "ERRCODE"

    .line 5480
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "ERRMSG"

    .line 5481
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    const-string/jumbo v3, "lockScreen"

    .line 5482
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5484
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string/jumbo p0, "sendBroadcast to issuetracker."

    .line 5485
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_35
    const-string v0, "dumpstate.is_running"

    const-string v2, "0"

    .line 5488
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    .line 5489
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string p0, "Running dump due to requestCustomFullBugreport."

    .line 5490
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5494
    :cond_4b
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda24;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestMetaKeyEvent(Landroid/content/ComponentName;Z)V
    .registers 3

    .line 5154
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/SystemKeyManager;->requestMetaKeyEvent(Landroid/content/ComponentName;Z)V

    return-void
.end method

.method public requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    .registers 4

    .line 5159
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/SystemKeyManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    move-result p0

    return p0
.end method

.method public restoreKeyCustomizationInfo(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;",
            ">;)V"
        }
    .end annotation

    .line 6513
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->restoreKeyCustomizationInfo(Ljava/util/List;)V

    return-void
.end method

.method public final sendBroadcastDoubleClick(I)V
    .registers 5

    .line 3860
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;->isRunningRecentAnimation()Z

    move-result v0

    const-string v1, "PhoneWindowManagerExt"

    if-eqz v0, :cond_10

    const-string p0, "Can not sendBroadcast double click intent. RecentAnimation is running"

    .line 3861
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3865
    :cond_10
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcast double click intent keyCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3866
    :cond_28
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.action.DOUBLE_CLICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "KEYCODE"

    .line 3867
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3868
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v1, "com.samsung.android.permisson.DOUBLE_CLICK"

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public final sendBroadcastForPanicCall()V
    .registers 4

    const-string v0, "PhoneWindowManagerExt"

    const-string v1, "broadcast Panic Call intent"

    .line 4056
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4057
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.action.PANIC_CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "panic_call"

    const/4 v2, 0x1

    .line 4058
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4059
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "com.samsung.android.permission.PANIC_CALL"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public final sendCommandToSamsungDeviceHealth()V
    .registers 3

    .line 6446
    sget-object p0, Lcom/android/server/policy/PhoneWindowManagerExt;->sdhmsBinder:Landroid/os/IBinder;

    if-nez p0, :cond_d

    const-string/jumbo p0, "sdhms"

    .line 6447
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    sput-object p0, Lcom/android/server/policy/PhoneWindowManagerExt;->sdhmsBinder:Landroid/os/IBinder;

    .line 6450
    :cond_d
    sget-object p0, Lcom/android/server/policy/PhoneWindowManagerExt;->sdhmsBinder:Landroid/os/IBinder;

    if-eqz p0, :cond_25

    .line 6452
    invoke-static {p0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object p0

    if-nez p0, :cond_18

    return-void

    :cond_18
    :try_start_18
    const-string v0, "WAKEUP"

    const-string/jumbo v1, "start"

    .line 6458
    invoke-interface {p0, v0, v1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->sendCommand(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_20} :catch_21

    goto :goto_25

    :catch_21
    move-exception p0

    .line 6460
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_25
    :goto_25
    return-void
.end method

.method public final sendFoldSaLogging(Z)V
    .registers 5

    .line 6347
    invoke-static {}, Lcom/samsung/android/server/util/SafetySystemService;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 6351
    :cond_7
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;ZLandroid/app/AlarmManager;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sendFoldSaLoggingCanceledIfNeeded(Ljava/lang/String;Z)V
    .registers 7

    .line 6331
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    if-eqz v1, :cond_40

    if-nez p2, :cond_11

    iget-object p2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 6332
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayPolicy;->getLidState()I

    move-result p2

    if-eqz p2, :cond_11

    goto :goto_40

    .line 6335
    :cond_11
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mFoldSaLock:Ljava/lang/Object;

    monitor-enter p2

    .line 6336
    :try_start_14
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mFoldSaLoggingCanceled:Z

    if-nez v0, :cond_3b

    iget-wide v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mFoldedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3b

    .line 6337
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mFoldedTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-lez v0, :cond_2e

    goto :goto_3b

    :cond_2e
    const/4 v0, 0x1

    .line 6340
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mFoldSaLoggingCanceled:Z

    .line 6341
    monitor-exit p2
    :try_end_32
    .catchall {:try_start_14 .. :try_end_32} :catchall_3d

    const-string p2, "W003"

    .line 6342
    invoke-static {p2, p1}, Lcom/samsung/android/core/CoreSaLogger;->logForBasic(Ljava/lang/String;Ljava/lang/String;)V

    .line 6343
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendFoldSaLogging(Z)V

    return-void

    .line 6338
    :cond_3b
    :goto_3b
    :try_start_3b
    monitor-exit p2

    return-void

    :catchall_3d
    move-exception p0

    .line 6341
    monitor-exit p2
    :try_end_3f
    .catchall {:try_start_3b .. :try_end_3f} :catchall_3d

    throw p0

    :cond_40
    :goto_40
    return-void
.end method

.method public sendFoldSaLoggingWhenFolded()V
    .registers 4

    .line 6322
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mFoldSaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6323
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mFoldedTime:J

    const/4 v1, 0x0

    .line 6324
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mFoldSaLoggingCanceled:Z

    .line 6325
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_11

    .line 6326
    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendFoldSaLogging(Z)V

    return-void

    :catchall_11
    move-exception p0

    .line 6325
    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public sendPowerKeyToCover()V
    .registers 1

    .line 5129
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getCoverPolicy()Lcom/android/server/wm/CoverPolicy;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 5131
    invoke-virtual {p0}, Lcom/android/server/wm/CoverPolicy;->sendPowerKeyToCover()V

    :cond_9
    return-void
.end method

.method public sendScreenOffEvent()V
    .registers 2

    .line 6943
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mUnionLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    if-nez v0, :cond_e

    .line 6944
    const-class v0, Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mUnionLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    .line 6946
    :cond_e
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mUnionLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    if-eqz p0, :cond_15

    .line 6947
    invoke-virtual {p0}, Lcom/samsung/android/sepunion/SemUnionManagerLocal;->screenTurnedOff()V

    :cond_15
    return-void
.end method

.method public final sendThreeFingerGestureKeyEvent(Landroid/view/KeyEvent;IZ)V
    .registers 4

    .line 5376
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object p0

    if-nez p0, :cond_9

    return-void

    .line 5384
    :cond_9
    invoke-interface {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->sendThreeFingerGestureKeyEvent(Landroid/view/KeyEvent;)V

    .line 5386
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "sendThreeFingerGestureKeyEvent keyCode="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PhoneWindowManagerExt"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setAppOpsPermissionIfNeeded(I)V
    .registers 6

    .line 2777
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAppOpsManager:Landroid/app/AppOpsManager;

    if-nez v0, :cond_10

    .line 2778
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 2780
    :cond_10
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v0, p1, v2, v1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    .line 2781
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAppOpsPermissionIfNeeded code="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " p_name="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 2782
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PhoneWindowManagerExt"

    .line 2781
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_59

    .line 2784
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v2, p0, v1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    :cond_59
    return-void
.end method

.method public setCarLifeDisplay(Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;)V
    .registers 3

    .line 6976
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mCarLifeDisplay:Landroid/view/Display;

    .line 6977
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayRotation;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mCarLifeDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    return-void
.end method

.method public final setKeyguardOccludedLw(ZZZI)Z
    .registers 9

    .line 5044
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    const-string v1, "PhoneWindowManagerExt"

    const/4 v2, 0x0

    if-nez v0, :cond_10

    const-string/jumbo p0, "setKeyguardOccludedLw mKeyguardDelegate is null"

    .line 5045
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 5048
    :cond_10
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    if-eqz v0, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setKeyguardOccluded occluded="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5049
    :cond_29
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    .line 5050
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDexKeyguardOccludedChanged:Z

    .line 5051
    invoke-virtual {p0, p4}, Lcom/android/server/policy/PhoneWindowManagerExt;->isKeyguardOccluded(I)Z

    move-result v0

    if-ne v0, p1, :cond_38

    if-nez p2, :cond_38

    return v2

    .line 5055
    :cond_38
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p2, p2, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {p2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_47

    if-nez p1, :cond_47

    move v1, v0

    goto :goto_48

    :cond_47
    move v1, v2

    .line 5060
    :goto_48
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->sEnableRemoteKeyguardOccludeAnimation:Z

    if-eqz v3, :cond_4e

    if-nez p3, :cond_4f

    :cond_4e
    move v2, v0

    .line 5065
    :cond_4f
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {p0, p1, v1, v2, p4}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(ZZZI)V

    return p2
.end method

.method public setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .registers 3

    .line 2141
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez p0, :cond_7

    return-void

    .line 2144
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    return-void
.end method

.method public setRotation(I)V
    .registers 5

    const-string v0, "PhoneWindowManagerExt"

    .line 6386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRotation: rotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6387
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBoosterLock:Ljava/lang/Object;

    monitor-enter p1

    .line 6388
    :try_start_1a
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSemRotationBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_2f

    .line 6389
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    const-string v1, "PWM_ROTATION"

    invoke-static {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSemRotationBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_2f

    const/16 v1, 0xf

    .line 6392
    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 6396
    :cond_2f
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSemRotationBooster:Lcom/samsung/android/os/SemDvfsManager;

    const-string v1, "HINT_PWM_ROTATION"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->boosterAcquireLocked(Lcom/samsung/android/os/SemDvfsManager;Ljava/lang/String;)V

    .line 6397
    monitor-exit p1

    return-void

    :catchall_38
    move-exception p0

    monitor-exit p1
    :try_end_3a
    .catchall {:try_start_1a .. :try_end_3a} :catchall_38

    throw p0
.end method

.method public setScreenshotEnabled()V
    .registers 2

    .line 2865
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnFully()Z

    const/4 v0, 0x1

    .line 2874
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenshotEnabled:Z

    return-void
.end method

.method public setTspStateController(Lcom/android/server/wm/TspStateController;)V
    .registers 2

    .line 7135
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTspStateController:Lcom/android/server/wm/TspStateController;

    return-void
.end method

.method public shouldDispatchMetaCombos(I)Z
    .registers 4

    .line 6188
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1b

    .line 6189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "shouldDispatchMetaCombos keyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneWindowManagerExt"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6191
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isMetaKeyEventRequested()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_23

    return v0

    :cond_23
    const/16 p0, 0x37

    if-eq p1, p0, :cond_2c

    const/16 p0, 0x38

    if-eq p1, p0, :cond_2c

    goto :goto_31

    .line 6198
    :cond_2c
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_SUPPORT_TOOLBAR_SHORTCUT:Z

    if-eqz p0, :cond_31

    return v0

    :cond_31
    :goto_31
    const/4 p0, 0x0

    return p0
.end method

.method public showBootMessage(Ljava/lang/CharSequence;ZII)V
    .registers 5

    .line 6213
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda26;

    invoke-direct {p2, p0, p4, p3}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;II)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final showGlobalActions()V
    .registers 4

    const-string v0, "PhoneWindowManagerExt"

    const-string/jumbo v1, "show Global Action"

    .line 2734
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2735
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x0

    const-string v2, "Power - Long Press - Global Actions"

    invoke-virtual {v0, v1, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    .line 2737
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal(I)V

    return-void
.end method

.method public showToast(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 2066
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showToastIfNeeded(Landroid/content/Intent;)Z
    .registers 3

    .line 2077
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SUPPORT_RESERVE_BATTERY_MODE:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isReserveBatteryMode()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2078
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->getReserveBatteryModeToast(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    .line 2080
    :goto_10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 p0, 0x0

    return p0

    .line 2083
    :cond_18
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public silenceRinger(I)V
    .registers 3

    .line 6492
    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda18;

    invoke-direct {v0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda18;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->consumeIfSemTelecomManagerNonNull(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public skipPowerPress(I)Z
    .registers 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1f

    const/4 v0, 0x3

    if-eq p1, v0, :cond_12

    const/4 v0, 0x5

    if-eq p1, v0, :cond_b

    goto :goto_38

    .line 3608
    :cond_b
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuintuplePressOnPowerBehavior:I

    const/16 p1, 0x67

    if-ne p0, p1, :cond_38

    return v1

    .line 3601
    :cond_12
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_TRIPLE_PRESS_POWER_LAUNCH_PANIC_CALL:Z

    if-eqz p1, :cond_38

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    const/16 p1, 0x66

    if-ne p0, p1, :cond_38

    return v1

    .line 3591
    :cond_1f
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_DOUBLE_PRESS_SIDE_KEY:Z

    if-eqz p1, :cond_2b

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    const/16 v0, 0x68

    if-eq p1, v0, :cond_37

    :cond_2b
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_DOUBLE_PRESS_POWER_LAUNCH_CAMERA:Z

    if-eqz p1, :cond_38

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    const/16 p1, 0x65

    if-ne p0, p1, :cond_38

    :cond_37
    return v1

    :cond_38
    :goto_38
    const/4 p0, 0x1

    return p0
.end method

.method public final startAccessibilityShortcutVolupPower()V
    .registers 3

    const-string v0, "PhoneWindowManagerExt"

    const-string/jumbo v1, "start Accessibility Shortcut Volup + Power"

    .line 2753
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2754
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->accessibilityDirectAccessController:Lcom/android/internal/accessibility/AccessibilityDirectAccessController;

    if-nez v0, :cond_15

    .line 2755
    new-instance v0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->accessibilityDirectAccessController:Lcom/android/internal/accessibility/AccessibilityDirectAccessController;

    .line 2758
    :cond_15
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->accessibilityDirectAccessController:Lcom/android/internal/accessibility/AccessibilityDirectAccessController;

    invoke-virtual {p0}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->performAccessibilityDirectAccess()V

    return-void
.end method

.method public final startActivityAppsScreen()V
    .registers 4

    .line 5440
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 5441
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 5442
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "sec.android.intent.extra.LAUNCHER_ACTION"

    const-string v2, "com.android.launcher2.ALL_APPS"

    .line 5443
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5445
    :try_start_19
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_19 .. :try_end_1e} :catch_1f

    goto :goto_27

    :catch_1f
    move-exception p0

    const-string v0, "PhoneWindowManagerExt"

    const-string v1, "No activity to launch launcher app list."

    .line 5447
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_27
    return-void
.end method

.method public final startActivityPremiumWatch(Z)V
    .registers 5

    .line 5314
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 5315
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.sec.android.app.premiumwatch/com.sec.android.app.premiumwatch.activity.PremiumWatch"

    .line 5316
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz p1, :cond_1d

    const/4 v1, 0x1

    const-string v2, "doubleTap"

    .line 5319
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5321
    :cond_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "launch Premium watch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " isDoubleTapOnScreen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PhoneWindowManagerExt"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5324
    :try_start_3c
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_43
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3c .. :try_end_43} :catch_44

    goto :goto_4a

    :catch_44
    move-exception p0

    const-string p1, "No activity to launch Premium watch."

    .line 5326
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4a
    return-void
.end method

.method public startDockOrHome()V
    .registers 3

    const-string v0, "PhoneWindowManagerExt"

    const-string/jumbo v1, "startDockOrHome"

    .line 2054
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->performHomeBroadcast()V

    .line 2059
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->hideCurrentInputMethodIfPossible()V

    return-void
.end method

.method public final startGameControllerService(II)V
    .registers 5

    const-string v0, "PhoneWindowManagerExt"

    const-string/jumbo v1, "startGameControllerService"

    .line 5265
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5266
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.game.gametools.GAMEPAD_INTENTSERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.game.gametools"

    .line 5267
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "DEVICE_VID"

    .line 5268
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "DEVICE_PID"

    .line 5269
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "DEVICE_ACTION"

    const-string p2, "PRESS"

    .line 5270
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5271
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void
.end method

.method public startLockscreenFingerprintAuth()V
    .registers 1

    .line 6963
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz p0, :cond_9

    .line 6964
    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->startFingerprintAuthentication()V

    :cond_9
    return-void
.end method

.method public startedEarlyWakingUp(I)V
    .registers 2

    .line 6955
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz p0, :cond_9

    .line 6956
    invoke-virtual {p0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->startedEarlyWakingUp(I)V

    :cond_9
    return-void
.end method

.method public startedGoingToSleep()V
    .registers 2

    .line 7139
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_STATE_CONTROLLER:Z

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTspStateController:Lcom/android/server/wm/TspStateController;

    if-eqz p0, :cond_b

    .line 7140
    invoke-virtual {p0}, Lcom/android/server/wm/TspStateController;->startedGoingToSleep()V

    :cond_b
    return-void
.end method

.method public startedWakingUp(I)V
    .registers 4

    .line 5825
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakingUpReason:I

    .line 5827
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FOLD_SA_LOGGING:Z

    if-eqz v0, :cond_19

    const/16 v0, 0x6f

    const/4 v1, 0x0

    if-ne p1, v0, :cond_11

    const-string p1, "Fingerprint Sensor"

    .line 5829
    invoke-virtual {p0, p1, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendFoldSaLoggingCanceledIfNeeded(Ljava/lang/String;Z)V

    goto :goto_19

    :cond_11
    const/4 v0, 0x7

    if-ne p1, v0, :cond_19

    const-string p1, "Lift To Wake"

    .line 5831
    invoke-virtual {p0, p1, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendFoldSaLoggingCanceledIfNeeded(Ljava/lang/String;Z)V

    .line 5835
    :cond_19
    :goto_19
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_TSP_STATE_CONTROLLER:Z

    if-eqz p1, :cond_24

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTspStateController:Lcom/android/server/wm/TspStateController;

    if-eqz p0, :cond_24

    .line 5836
    invoke-virtual {p0}, Lcom/android/server/wm/TspStateController;->startedWakingUp()V

    :cond_24
    return-void
.end method

.method public final toggleGameBoosterMenuIfPossible()Z
    .registers 4

    .line 6168
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isSupportedGameBoosterToggleMenu()Z

    move-result v0

    const-string v1, "PhoneWindowManagerExt"

    if-nez v0, :cond_f

    const-string p0, "GameBoosterToggleMenu is not supported"

    .line 6169
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_f
    const-string/jumbo v0, "send broadcast game booster toggle menu"

    .line 6173
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6174
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.game.gametools.action.togglemenu"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.game.gametools"

    .line 6175
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "package"

    const-string/jumbo v2, "window-g"

    .line 6176
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6177
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6178
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    if-eqz v0, :cond_41

    .line 6181
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 6183
    :cond_41
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V

    const/4 p0, 0x1

    return p0
.end method

.method public updateBlockWakeup(Z)Z
    .registers 6

    .line 4896
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_32

    .line 4897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateBlockWakeup, folded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mFoldOpenCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mFoldOpenCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    .line 4898
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneWindowManagerExt"

    .line 4897
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4901
    :cond_32
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v2, 0x3e8

    if-nez p1, :cond_4e

    .line 4903
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mFoldOpenCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mFoldOpenCount:I

    .line 4905
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isBlockWakeup()Z

    move-result p1

    if-eqz p1, :cond_53

    .line 4906
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return v0

    .line 4911
    :cond_4e
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_53
    const/4 p0, 0x0

    return p0
.end method

.method public final updateDoublePressLaunchInfo(Ljava/lang/String;)V
    .registers 5

    .line 4287
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const-string v0, "/"

    .line 4291
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 4292
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_28

    .line 4293
    new-instance v0, Landroid/content/ComponentName;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4294
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDoublePressLaunchComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_28

    .line 4295
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDoublePressLaunchComponentName:Landroid/content/ComponentName;

    :cond_28
    return-void
.end method

.method public updateDoublePressPowerBehavior()V
    .registers 5

    .line 3662
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    const/16 v1, 0x8

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastAction(II)I

    move-result v0

    .line 3664
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_DOUBLE_PRESS_SIDE_KEY:Z

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 3665
    invoke-virtual {v1}, Lcom/android/server/policy/KeyCustomizationManager;->hasSideKeyDoublePressId()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 3666
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const/16 v1, 0x68

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    goto :goto_65

    :cond_1d
    const/4 v1, 0x4

    const/4 v3, 0x0

    if-ne v0, v1, :cond_26

    .line 3668
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iput v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    goto :goto_65

    .line 3669
    :cond_26
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_DOUBLE_PRESS_POWER_LAUNCH_CAMERA:Z

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 3670
    invoke-virtual {v1, v2}, Lcom/android/server/policy/KeyCustomizationManager;->hasDoubleCameraId(I)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 3671
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const/16 v1, 0x65

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    goto :goto_65

    .line 3672
    :cond_39
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_DOUBLE_PRESS_POWER_ATT_TV_MODE:Z

    if-eqz v1, :cond_4c

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 3673
    invoke-virtual {v1}, Lcom/android/server/policy/KeyCustomizationManager;->hasDoublePowerTvModeId()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 3674
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const/16 v1, 0x69

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    goto :goto_65

    :cond_4c
    const/4 v1, 0x1

    if-eq v0, v1, :cond_5f

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5f

    const/4 v1, 0x2

    if-ne v0, v1, :cond_56

    goto :goto_5f

    .line 3679
    :cond_56
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DOUBLE_PRESS_SIDE_KEY:Z

    if-eqz v0, :cond_65

    .line 3680
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iput v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    goto :goto_65

    .line 3677
    :cond_5f
    :goto_5f
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const/16 v1, 0x6a

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    .line 3683
    :cond_65
    :goto_65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateDoublePressPowerBehavior, behavior="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PhoneWindowManagerExt"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final updateKeyCustomizationInfoQuickLaunchCamera(I)V
    .registers 9

    const/4 v0, 0x3

    const/16 v1, 0x1a

    const/4 v2, 0x1

    if-eq p1, v2, :cond_b

    if-nez p1, :cond_9

    goto :goto_b

    :cond_9
    move v3, v1

    goto :goto_c

    :cond_b
    :goto_b
    move v3, v0

    .line 4186
    :goto_c
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    const/16 v5, 0x7d1

    const/16 v6, 0x8

    invoke-virtual {v4, v5, v6, v3}, Lcom/android/server/policy/KeyCustomizationManager;->getKeyCustomizationInfo(III)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v4

    if-eq p1, v0, :cond_28

    if-ne p1, v2, :cond_1b

    goto :goto_28

    :cond_1b
    const/4 v0, 0x2

    if-eq p1, v0, :cond_20

    if-nez p1, :cond_34

    :cond_20
    if-eqz v4, :cond_34

    .line 4196
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    invoke-virtual {p1, v5, v6, v3}, Lcom/android/server/policy/KeyCustomizationManager;->removeKeyCustomizationInfo(III)V

    goto :goto_34

    :cond_28
    :goto_28
    if-nez v4, :cond_34

    .line 4190
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    new-instance v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    invoke-direct {v0, v6, v5, v3, v2}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIII)V

    invoke-virtual {p1, v0}, Lcom/android/server/policy/KeyCustomizationManager;->putKeyCustomizationInfo(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V

    :cond_34
    :goto_34
    if-ne v3, v1, :cond_39

    .line 4201
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateDoublePressPowerBehavior()V

    :cond_39
    return-void
.end method

.method public final updateKeyCustomizationInfoTvMode()V
    .registers 12

    .line 4340
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    const/16 v1, 0x7d2

    const/16 v2, 0x8

    const/16 v3, 0x1a

    .line 4341
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/KeyCustomizationManager;->getKeyCustomizationInfo(III)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 4342
    :goto_11
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->canOpenTvModeByPowerDoublePress()Z

    move-result v4

    if-eqz v4, :cond_3d

    if-nez v0, :cond_44

    .line 4344
    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.LAUNCHER"

    .line 4345
    invoke-virtual {v10, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4346
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDoublePressLaunchComponentName:Landroid/content/ComponentName;

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4347
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    new-instance v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    const/16 v6, 0x8

    const/16 v7, 0x7d2

    const/16 v8, 0x1a

    const/4 v9, 0x1

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/android/server/policy/KeyCustomizationManager;->putKeyCustomizationInfo(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V

    goto :goto_44

    :cond_3d
    if-eqz v0, :cond_44

    .line 4352
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/KeyCustomizationManager;->removeKeyCustomizationInfo(III)V

    .line 4355
    :cond_44
    :goto_44
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateDoublePressPowerBehavior()V

    return-void
.end method

.method public updateLongPressPowerBehavior()V
    .registers 5

    .line 3225
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    const/4 v1, 0x4

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastKeyCustomizationInfo(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "PhoneWindowManagerExt"

    if-nez v0, :cond_2c

    .line 3228
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 3229
    invoke-virtual {v0}, Lcom/android/server/policy/KeyCustomizationManager;->hasB2BDedicatedPower()Z

    move-result v0

    if-eqz v0, :cond_22

    const-string/jumbo v0, "updated long press power behavior by b2b dedicated app"

    .line 3230
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3231
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    return-void

    :cond_22
    const-string v0, "Side key long press info was wrong."

    .line 3234
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3235
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    return-void

    .line 3238
    :cond_2c
    iget-object v0, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    const/16 v3, 0x66

    if-nez v0, :cond_3c

    const-string v0, "Side key long press intent info was wrong."

    .line 3239
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3240
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    return-void

    .line 3244
    :cond_3c
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 3246
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    goto :goto_48

    :cond_47
    const/4 v0, 0x0

    :goto_48
    const-string/jumbo v2, "wakeBixby/wakeBixby"

    .line 3247
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 3248
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const/16 v0, 0x65

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    goto :goto_6a

    :cond_58
    const-string/jumbo v2, "globalAction/globalAction"

    .line 3249
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 3250
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    goto :goto_6a

    .line 3252
    :cond_66
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    :goto_6a
    return-void
.end method

.method public updateQuadruplePressPowerBehavior()V
    .registers 4

    .line 2155
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    const/16 v1, 0x20

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastAction(II)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_13

    const/4 v1, 0x3

    if-eq v0, v1, :cond_13

    const/4 v1, 0x2

    if-ne v0, v1, :cond_17

    :cond_13
    const/16 v0, 0x6a

    .line 2159
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuadruplePressOnPowerBehavior:I

    :cond_17
    return-void
.end method

.method public updateQuintuplePressPowerBehavior()V
    .registers 2

    .line 4090
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mEmergencySosEnabled:Z

    if-eqz v0, :cond_9

    const/16 v0, 0x67

    .line 4091
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuintuplePressOnPowerBehavior:I

    goto :goto_c

    :cond_9
    const/4 v0, 0x0

    .line 4093
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuintuplePressOnPowerBehavior:I

    :goto_c
    return-void
.end method

.method public updateSingleKeyGestureRule(I)V
    .registers 11

    .line 2184
    sget-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->NEEDED_UPDATE_BEHAVIOR_MULTI_PRESS_TYPE:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_6
    if-ge v3, v1, :cond_33

    aget v5, v0, v3

    .line 2185
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    invoke-virtual {v6, v5, p1}, Lcom/android/server/policy/KeyCustomizationManager;->hasLastInfo(II)Z

    move-result v6

    if-nez v6, :cond_13

    goto :goto_30

    .line 2188
    :cond_13
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    invoke-virtual {v6, v5, p1}, Lcom/android/server/policy/KeyCustomizationManager;->getLastAction(II)I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1d

    goto :goto_30

    :cond_1d
    and-int/lit8 v6, v5, 0x4

    if-eqz v6, :cond_2e

    .line 2193
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    invoke-virtual {v6, v5, p1}, Lcom/android/server/policy/KeyCustomizationManager;->getLastLongPressTimeoutMs(II)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_2e

    goto :goto_30

    :cond_2e
    add-int/lit8 v4, v4, 0x1

    :goto_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_33
    if-eqz v4, :cond_36

    const/4 v2, 0x1

    :cond_36
    if-eqz v2, :cond_3c

    .line 2203
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->addSingleKeyGestureRule(I)V

    goto :goto_3f

    .line 2205
    :cond_3c
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->removeSingleKeyGestureRule(I)V

    :goto_3f
    return-void
.end method

.method public updateTopActivity(Landroid/content/ComponentName;)V
    .registers 2

    .line 5175
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/SystemKeyManager;->updateTopActivity(Landroid/content/ComponentName;)V

    return-void
.end method

.method public updateTriplePressPowerBehavior()V
    .registers 4

    .line 4063
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TRIPLE_PRESS_POWER_LAUNCH_PANIC_CALL:Z

    if-eqz v0, :cond_b

    .line 4064
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const/16 v0, 0x66

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    goto :goto_24

    .line 4066
    :cond_b
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    const/16 v1, 0x10

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastAction(II)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1e

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1e

    const/4 v1, 0x2

    if-ne v0, v1, :cond_24

    .line 4070
    :cond_1e
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const/16 v0, 0x6a

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    :cond_24
    :goto_24
    return-void
.end method

.method public final vibrationEffect(Z)Landroid/os/VibrationEffect;
    .registers 3

    .line 5780
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_OMC_SPEN_VIBRATION:Z

    if-eqz p0, :cond_14

    if-eqz p1, :cond_d

    const/16 p0, 0x3f

    .line 5782
    invoke-static {p0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p0

    goto :goto_21

    :cond_d
    const/16 p0, 0x3e

    .line 5785
    invoke-static {p0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p0

    goto :goto_21

    :cond_14
    if-eqz p1, :cond_1c

    const/4 p0, 0x5

    .line 5790
    invoke-static {p0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p0

    goto :goto_21

    :cond_1c
    const/4 p0, 0x1

    .line 5792
    invoke-static {p0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p0

    :goto_21
    const/4 p1, -0x1

    .line 5795
    sget-object v0, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_MAX:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {p0, p1, v0}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method

.method public wakeAndUnfoldedFromLidSwitch()V
    .registers 4

    const-string v0, "PhoneWindowManagerExt"

    const-string/jumbo v1, "wakeAndUnFoldedFromLidSwitch triggered."

    .line 5231
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5232
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->cancelWakeAndUnfoldedPendingAction()V

    const/4 v0, 0x1

    .line 5233
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeAndUnfoldedTriggered:Z

    .line 5234
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeAndUnfoldedRunning:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
