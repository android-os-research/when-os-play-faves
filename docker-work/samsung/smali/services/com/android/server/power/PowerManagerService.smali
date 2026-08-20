.class public final Lcom/android/server/power/PowerManagerService;
.super Lcom/android/server/SystemService;
.source "PowerManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/PowerManagerService$DeviceStateListener;,
        Lcom/android/server/power/PowerManagerService$ScaleFactorLock;,
        Lcom/android/server/power/PowerManagerService$LocalService;,
        Lcom/android/server/power/PowerManagerService$BinderService;,
        Lcom/android/server/power/PowerManagerService$UidState;,
        Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;,
        Lcom/android/server/power/PowerManagerService$WakeLock;,
        Lcom/android/server/power/PowerManagerService$LCDFlashModeLock;,
        Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;,
        Lcom/android/server/power/PowerManagerService$UserActivityTask;,
        Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;,
        Lcom/android/server/power/PowerManagerService$PmsLoggingReceiver;,
        Lcom/android/server/power/PowerManagerService$DexScreenOffTimeoutObserver;,
        Lcom/android/server/power/PowerManagerService$SettingsObserver;,
        Lcom/android/server/power/PowerManagerService$FTAModeChangeReceiver;,
        Lcom/android/server/power/PowerManagerService$DockReceiver;,
        Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;,
        Lcom/android/server/power/PowerManagerService$DreamReceiver;,
        Lcom/android/server/power/PowerManagerService$BatteryReceiver;,
        Lcom/android/server/power/PowerManagerService$Injector;,
        Lcom/android/server/power/PowerManagerService$Clock;,
        Lcom/android/server/power/PowerManagerService$NativeWrapper;,
        Lcom/android/server/power/PowerManagerService$Constants;,
        Lcom/android/server/power/PowerManagerService$ProfilePowerState;,
        Lcom/android/server/power/PowerManagerService$ForegroundProfileObserver;,
        Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;,
        Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;,
        Lcom/android/server/power/PowerManagerService$HaltMode;
    }
.end annotation


# static fields
.field public static final ABLL_KEYS:[Ljava/lang/String;

.field public static final ACTION_BROADCAST_BEFORE_DIM:Ljava/lang/String; = "com.android.server.PowerManagerService.action.FAILED_TO_DETECT_FACE_BEFORE_DIM"

.field public static final ACTION_FTA_OFF:Ljava/lang/String; = "com.sec.factory.app.factorytest.FTA_OFF"

.field public static final ACTION_FTA_ON:Ljava/lang/String; = "com.sec.factory.app.factorytest.FTA_ON"

.field public static final ACTION_INTERNAL_DISPLAY_OFF_BY_POWERKEY:Ljava/lang/String; = "com.samsung.android.server.power.ACTION_INTERNAL_DISPLAY_OFF_BY_POWERKEY"

.field public static final ACTION_PMS_LOGGING:Ljava/lang/String; = "com.sec.android.intent.action.HQM_UPDATE_REQ"

.field public static final COVER_AUTH_READY_TIME_SINCE_BOOT_MS:J = 0x3a98L

.field public static final COVER_OPEN:Ljava/lang/String; = "com.samsung.cover.OPEN"

.field public static final COVER_SYSFS:Ljava/lang/String; = "/sys/class/sec/hall_ic/hall_detect"

.field public static final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final DEBUG:Z = false

.field public static final DEBUG_SPEW:Z = false

.field public static final DEFAULT_DOUBLE_TAP_TO_WAKE:I = 0x0

.field public static final DEFAULT_SCREEN_OFF_TIMEOUT:I = 0x3a98

.field public static final DEFAULT_SCREEN_TIMEOUT_VALUE:Ljava/lang/String; = "600000"

.field public static final DEFAULT_SLEEP_TIMEOUT:I = -0x1

.field public static final DEX_SETTINGS_URI:Landroid/net/Uri;

.field public static final DIRTY_ACTUAL_DISPLAY_POWER_STATE_UPDATED:I = 0x8

.field public static final DIRTY_ATTENTIVE:I = 0x4000

.field public static final DIRTY_BATTERY_STATE:I = 0x100

.field public static final DIRTY_BOOT_COMPLETED:I = 0x10

.field public static final DIRTY_DISPLAY_GROUP_WAKEFULNESS:I = 0x10000

.field public static final DIRTY_DOCK_STATE:I = 0x400

.field public static final DIRTY_IS_POWERED:I = 0x40

.field public static final DIRTY_PROXIMITY_POSITIVE:I = 0x200

.field public static final DIRTY_QUIESCENT:I = 0x1000

.field public static final DIRTY_SCREEN_BRIGHTNESS_BOOST:I = 0x800

.field public static final DIRTY_SETTINGS:I = 0x20

.field public static final DIRTY_STAY_ON:I = 0x80

.field public static final DIRTY_USER_ACTIVITY:I = 0x4

.field public static final DIRTY_VR_MODE_CHANGED:I = 0x2000

.field public static final DIRTY_WAKEFULNESS:I = 0x2

.field public static final DIRTY_WAKE_LOCKS:I = 0x1

.field public static final DISPLAY_POWERMANAGERSERVICE_ABLL_LMTCNT:Ljava/lang/String; = "ABLL"

.field public static final DISPLAY_POWERMANAGERSERVICE_DUAL_DISPLAY:Ljava/lang/String; = "DPDD"

.field public static final DISPLAY_POWERMANAGERSERVICE_LCD_DURATION:Ljava/lang/String; = "DPLD"

.field public static final DISPLAY_POWERMANAGERSERVICE_SETTING_INFO:Ljava/lang/String; = "DPSI"

.field public static final DISPLAY_POWERMANAGERSERVICE_USER_CHANGE:Ljava/lang/String; = "DPUC"

.field public static final DPUI_LUBS_HW_PARAMETER_BIGDATA_DELAY:I = 0x2710

.field public static final ENHANCED_DISCHARGE_PREDICTION_BROADCAST_MIN_DELAY_MS:J = 0xea60L

.field public static final ENHANCED_DISCHARGE_PREDICTION_TIMEOUT_MS:J = 0x1b7740L

.field public static final FEATURE_COVER_FLIP:Ljava/lang/String; = "com.sec.feature.cover.flip"

.field public static final FEATURE_COVER_SVIEW:Ljava/lang/String; = "com.sec.feature.cover.sview"

.field public static final HALT_MODE_REBOOT:I = 0x1

.field public static final HALT_MODE_REBOOT_SAFE_MODE:I = 0x2

.field public static final HALT_MODE_SHUTDOWN:I = 0x0

.field public static final HOLDING_DISPLAY_SUSPEND_BLOCKER:Ljava/lang/String; = "holding display"

.field public static final INVALID_BRIGHTNESS_IN_CONFIG:F = -2.0f

.field public static final LCBS_KEYS:[Ljava/lang/String;

.field public static final LCD_ON_DURATION_UPDATE_EVERYDAY:I = 0x5265c00

.field public static final LD_KEYS:[Ljava/lang/String;

.field public static final LED_BRIGHTNESS_SYSFS:Ljava/lang/String; = "/sys/class/sec/leds/led_max_brightness"

.field public static final LUBS_KEYS:[Ljava/lang/String;

.field public static final MIN_LONG_WAKE_CHECK_INTERVAL:J = 0xea60L

.field public static final MSG_ATTENTIVE_TIMEOUT:I = 0x5

.field public static final MSG_CHECK_FOR_LONG_WAKELOCKS:I = 0x4

.field public static final MSG_PRE_SMART_STAY:I = 0x2

.field public static final MSG_SANDMAN:I = 0x2

.field public static final MSG_SCREEN_BRIGHTNESS_BOOST_TIMEOUT:I = 0x3

.field public static final MSG_SEND_ABLL_LMTCNT_HW_PARAMETER_BIGDATA:I = 0xe

.field public static final MSG_SEND_DPUI_LCBS_HW_PARAMETER_BIGDATA:I = 0xd

.field public static final MSG_SEND_DPUI_LD_HW_PARAMETER_BIGDATA:I = 0xc

.field public static final MSG_SEND_DPUI_LUBS_HW_PARAMETER_BIGDATA:I = 0xb

.field public static final MSG_SMART_STAY:I = 0x1

.field public static final MSG_USER_ACTIVITY_TIMEOUT:I = 0x1

.field public static final OUTDOOR_MODE_SETTING:Ljava/lang/String; = "display_outdoor_mode"

.field public static final OUTDOOR_MODE_TIMEOUT:I = 0xdbba0

.field public static final PMS_DB_BRIGHTNESS_ENABLE:Ljava/lang/String; = "pms_notification_panel_brightness_adjustment"

.field public static final QUICK_PANEL_BRIGHTNESS_DISABLED:I = 0x0

.field public static final QUICK_PANEL_BRIGHTNESS_ENABLED:I = 0x1

.field public static final REASON_BATTERY_THERMAL_STATE:Ljava/lang/String; = "shutdown,thermal,battery"

.field public static final REASON_LOW_BATTERY:Ljava/lang/String; = "shutdown,battery"

.field public static final REASON_REBOOT:Ljava/lang/String; = "reboot"

.field public static final REASON_REBOOT_BY_USER:Ljava/lang/String; = "reboot,userrequested"

.field public static final REASON_SHUTDOWN:Ljava/lang/String; = "shutdown"

.field public static final REASON_THERMAL_SHUTDOWN:Ljava/lang/String; = "shutdown,thermal"

.field public static final REASON_USERREQUESTED:Ljava/lang/String; = "shutdown,userrequested"

.field public static final SCREEN_BRIGHTNESS_BOOST_TIMEOUT:I = 0x1388

.field public static final SCREEN_ON_LATENCY_WARNING_MS:I = 0xc8

.field public static final SEC_USE_FACTORY_BINARY:Z

.field public static final SETTINGS_AOD_MODE:Ljava/lang/String; = "aod_mode"

.field public static final SET_WAKELOCK_FAIL:I = 0x0

.field public static final SET_WAKELOCK_SUCCESS:I = 0x1

.field public static final SYSTEM_PROPERTY_QUIESCENT:Ljava/lang/String; = "ro.boot.quiescent"

.field public static final SYSTEM_PROPERTY_REBOOT_REASON:Ljava/lang/String; = "sys.boot.reason"

.field public static final SYSTEM_PROPERTY_RETAIL_DEMO_ENABLED:Ljava/lang/String; = "sys.retaildemo.enabled"

.field public static final TAG:Ljava/lang/String; = "PowerManagerService"

.field public static final TAG_API:Ljava/lang/String; = "[api] "

.field public static final TAG_INPUT_DEVICE_LIGHT:Ljava/lang/String; = "[input device light] "

.field public static final TAG_PRINT_WAKE_LOCK:Ljava/lang/String; = "[PWL] "

.field public static final TIMEOUT_DEX:Ljava/lang/String; = "timeout_dex"

.field public static final TRACE_SCREEN_ON:Ljava/lang/String; = "Screen turning on"

.field public static final TRANSITION_TO_DOZING_TIMEOUT_MS:J = 0x1388L

.field public static final USER_ACTIVITY_LOGGING_PER_MS:I = 0x3e8

.field public static final USER_ACTIVITY_SCREEN_BRIGHT:I = 0x1

.field public static final USER_ACTIVITY_SCREEN_DIM:I = 0x2

.field public static final USER_ACTIVITY_SCREEN_DREAM:I = 0x4

.field public static final WAKE_LOCK_BUTTON_BRIGHT:I = 0x8

.field public static final WAKE_LOCK_CPU:I = 0x1

.field public static final WAKE_LOCK_DOZE:I = 0x40

.field public static final WAKE_LOCK_DRAW:I = 0x80

.field public static final WAKE_LOCK_PROXIMITY_SCREEN_OFF:I = 0x10

.field public static final WAKE_LOCK_SCREEN_BRIGHT:I = 0x2

.field public static final WAKE_LOCK_SCREEN_DIM:I = 0x4

.field public static final WAKE_LOCK_STAY_AWAKE:I = 0x20

.field public static final WORKSOURCE_WAKELOCK:I = 0x2

.field public static sQuiescent:Z


# instance fields
.field public final USE_PRE_SMART_STAY:Z

.field public final USE_SMART_STAY:Z

.field public mAbuseWakeLockDisabled:Z

.field public final mAbuseWakeLocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/power/PowerManagerService$WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field public mAllBrightWakeLockAbuse:Z

.field public mAlpmHlpmMode:I

.field public mAlwaysOnEnabled:Z

.field public final mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

.field public final mAmbientDisplaySuppressionController:Lcom/android/server/power/AmbientDisplaySuppressionController;

.field public mAodMode:Z

.field public mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mAttentionDetector:Lcom/android/server/power/AttentionDetector;

.field public mAttentionLight:Lcom/android/server/lights/LogicalLight;

.field public mAttentiveTimeoutConfig:I

.field public mAttentiveTimeoutSetting:J

.field public mAttentiveWarningDurationConfig:J

.field public mAutoBrightnessLimitLastCaller:Ljava/lang/String;

.field public mAutoBrightnessLowerLimit:I

.field public mAutoBrightnessUpperLimit:I

.field public mBatteryLevel:I

.field public mBatteryLevelCritical:Z

.field public mBatteryLevelLow:Z

.field public mBatteryLevelWhenDreamStarted:I

.field public mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field public mBatteryOnline:I

.field public final mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

.field public final mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

.field public final mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

.field public mBatterySavingAdjustBrightnessFactor:F

.field public final mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

.field public mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public final mBinderService:Lcom/android/server/power/PowerManagerService$BinderService;

.field public mBootCompleted:Z

.field public final mBootingSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field public mBrightnessLimitByCoverConfig:I

.field public mBrightnessLimitRunnable:Ljava/lang/Runnable;

.field public final mClock:Lcom/android/server/power/PowerManagerService$Clock;

.field public final mConstants:Lcom/android/server/power/PowerManagerService$Constants;

.field public final mContext:Landroid/content/Context;

.field public mCoverAuthReady:Z

.field public mCoverAuthReadyRunnable:Ljava/lang/Runnable;

.field public mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field public mCoverStateListener:Lcom/samsung/android/cover/CoverManager$CoverStateListener;

.field public mCoverType:I

.field public mDPSIDuration:[J

.field public mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

.field public mDecoupleHalInteractiveModeFromDisplayConfig:Z

.field public mDefaultDisplayReadyByProximity:Z

.field public mDelayTimePrintWakeLock:J

.field public mDeviceIdleMode:Z

.field public mDeviceIdleTempWhitelist:[I

.field public mDeviceIdleWhitelist:[I

.field public mDirty:I

.field public mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public final mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

.field public final mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field public mDockState:I

.field public mDoubleTapWakeEnabled:Z

.field public mDozeAfterScreenOff:Z

.field public mDozeScreenBrightnessOverrideFromDreamManager:I

.field public mDozeScreenBrightnessOverrideFromDreamManagerFloat:F

.field public mDozeScreenStateOverrideFromDreamManager:I

.field public mDozeStartInProgress:Z

.field public mDrawWakeLockOverrideFromSidekick:Z

.field public mDreamManager:Landroid/service/dreams/DreamManagerInternal;

.field public mDreamsActivateOnDockSetting:Z

.field public mDreamsActivateOnSleepSetting:Z

.field public mDreamsActivatedOnDockByDefaultConfig:Z

.field public mDreamsActivatedOnSleepByDefaultConfig:Z

.field public mDreamsBatteryLevelDrainCutoffConfig:I

.field public mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

.field public mDreamsBatteryLevelMinimumWhenPoweredConfig:I

.field public mDreamsEnabledByDefaultConfig:Z

.field public mDreamsEnabledOnBatteryConfig:Z

.field public mDreamsEnabledSetting:Z

.field public mDreamsSupportedConfig:Z

.field public mDualScreenPolicy:I

.field public mEarlyWakeUp:Z

.field public mEnhancedDischargePredictionIsPersonalized:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mEnhancedDischargeTimeLock"
        }
    .end annotation
.end field

.field public mEnhancedDischargeTimeElapsed:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mEnhancedDischargeTimeLock"
        }
    .end annotation
.end field

.field public final mEnhancedDischargeTimeLock:Ljava/lang/Object;

.field public mEnsureTransitionToDozingReleaser:Ljava/lang/Runnable;

.field public mEnsureTransitionToDozingReleaserRunning:Z

.field public mFTAMode:Z

.field public mFaceDetected:Z

.field public mFaceDetectedFailIntent:Landroid/content/Intent;

.field public mFeatureCoverSysfs:Z

.field public mForceSetHalInteractiveMode:Z

.field public mForceSlowChange:Z

.field public mForceSuspendActive:Z

.field public mForegroundProfile:I

.field public mFreezingScreenBrightness:Z

.field public mGameAutobrightnessLocked:Z

.field public mGoToSleepPreventionEnabled:Z

.field public mHalAutoSuspendModeEnabled:Z

.field public mHalInteractiveModeEnabled:Z

.field public final mHandler:Landroid/os/Handler;

.field public mHandlerPmsMisc:Landroid/os/Handler;

.field public mHandlerSmartStay:Landroid/os/Handler;

.field public final mHandlerThread:Lcom/android/server/ServiceThread;

.field public mHandlerThreadPmsMisc:Landroid/os/HandlerThread;

.field public mHandlerThreadSmartStay:Landroid/os/HandlerThread;

.field public mHbmBlock:Z

.field public mHeadlessStayOn:Z

.field public mHoldingBootingSuspendBlocker:Z

.field public mHoldingDisplaySuspendBlocker:Z

.field public mHoldingWakeLockSuspendBlocker:Z

.field public final mInattentiveSleepWarningOverlayController:Lcom/android/server/power/InattentiveSleepWarningController;

.field public final mInjector:Lcom/android/server/power/PowerManagerService$Injector;

.field public mInterceptedKeyForProximity:Z

.field public mInterceptedPowerKeyForProximity:Z

.field public mInternalDisplayOffByPowerKeyIntent:Landroid/content/Intent;

.field public final mIsBadCurrentConsumptionDevice:Z

.field public mIsCoverClosed:Z

.field public mIsDeviceMoving:Z

.field public mIsDualViewMode:Z

.field public mIsPowered:Z

.field public mIsUserActivityInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mIsUserActivityNativeInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mIsVrModeEnabled:Z

.field public mIsWirelessChargerSContextEnabled:Z

.field public mIsWirelessChargerSContextRegistered:Z

.field public mLCDFlashMode:Z

.field public mLCDFlashModeLock:Lcom/android/server/power/PowerManagerService$LCDFlashModeLock;

.field public mLastAndroidAutoBoostTime:J

.field public mLastAutoBrightnessLimitTime:J

.field public mLastBrightnessOverrideState:Z

.field public mLastEnhancedDischargeTimeUpdatedElapsed:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mEnhancedDischargeTimeLock"
        }
    .end annotation
.end field

.field public mLastGlobalSleepReason:I

.field public mLastGlobalSleepTime:J

.field public mLastGlobalWakeReason:I

.field public mLastGlobalWakeTime:J

.field public mLastInteractivePowerHintTime:J

.field public mLastNormalTouchBoostTime:J

.field public mLastOutdoorModeEnabledTime:J

.field public mLastRequestedLimitationOfBrightness:I

.field public mLastScreenBrightnessBoostTime:J

.field public mLastScreenOffEventElapsedRealTime:J

.field public mLastScreenTimeout:I

.field public mLastScreenWakeTime:J

.field public mLastUserActivityStateListenerCalledTime:J

.field public mLastUserActivityStateListenerState:I

.field public mLastUserSetScreenBrightnessTime:J

.field public mLastWakeUpReason:I

.field public mLastWarningAboutUserActivityPermission:J

.field public mLightDeviceIdleMode:Z

.field public mLightsManager:Lcom/android/server/lights/LightsManager;

.field public final mLocalService:Lcom/android/server/power/PowerManagerService$LocalService;

.field public final mLock:Ljava/lang/Object;

.field public mLowPowerStandbyActive:Z

.field public mLowPowerStandbyAllowlist:[I

.field public final mLowPowerStandbyController:Lcom/android/server/power/LowPowerStandbyController;

.field public mMasterBrightnessLimitLastCaller:Ljava/lang/String;

.field public mMasterBrightnessLimitPeriod:I

.field public mMasterBrightnessLimitRunning:Z

.field public mMasterBrightnessLowerLimit:I

.field public mMasterBrightnessUpperLimit:I

.field public mMaximumScreenDimDurationConfig:J

.field public mMaximumScreenDimRatioConfig:F

.field public mMaximumScreenOffTimeoutFromDeviceAdmin:J

.field public mMinimumScreenOffTimeoutConfig:J

.field public final mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

.field public mNeedCheckAbuseWakelocks:Z

.field public mNextTimeoutForPreSmartStay:J

.field public mNextTimeoutForSmartStay:J

.field public mNoUserActivityIntent:Landroid/content/Intent;

.field public mNoUserActivitySent:Z

.field public mNotifier:Lcom/android/server/power/Notifier;

.field public mNotifyLongDispatched:J

.field public mNotifyLongNextCheck:J

.field public mNotifyLongScheduled:J

.field public mOutdoorModeSetting:Z

.field public mOverriddenTimeout:J

.field public mPassedWakeupTime:J

.field public mPendingMessagePreSmartStay:Z

.field public mPendingMessageSmartStay:Z

.field public mPlugType:I

.field public mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field public final mPowerGroupWakefulnessChangeListener:Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;

.field public final mPowerGroups:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/power/PowerGroup;",
            ">;"
        }
    .end annotation
.end field

.field public final mPowerHistorian:Lcom/android/server/power/PowerHistorian;

.field public final mPreSmartStayDelay:I

.field public final mPrintWakeLockAperiodicallyRunnable:Ljava/lang/Runnable;

.field public final mProfilePowerState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/power/PowerManagerService$ProfilePowerState;",
            ">;"
        }
    .end annotation
.end field

.field public mProximityPositive:Z

.field public mRequestWaitForNegativeProximity:Z

.field public mSandmanScheduled:Z

.field public mScaleFactorLock:Lcom/android/server/power/PowerManagerService$ScaleFactorLock;

.field public mScreenBrightnessBoostInProgress:Z

.field public final mScreenBrightnessDefault:F

.field public final mScreenBrightnessDefaultVr:F

.field public final mScreenBrightnessDim:F

.field public final mScreenBrightnessDoze:F

.field public mScreenBrightnessForClearCoverConfig:F

.field public final mScreenBrightnessMaximum:F

.field public final mScreenBrightnessMaximumVr:F

.field public final mScreenBrightnessMinimum:F

.field public final mScreenBrightnessMinimumVr:F

.field public mScreenBrightnessModeSetting:I

.field public mScreenBrightnessModeSettingForCoverDisplay:I

.field public mScreenBrightnessOverrideFromWindowManager:F

.field public mScreenBrightnessScaleFactor:F

.field public mScreenDimDurationOverrideFromSQD:J

.field public mScreenDimDurationOverrideFromWindowManager:J

.field public mScreenExtendedBrightnessMaximum:I

.field public mScreenOffReason:Ljava/lang/String;

.field public mScreenOffTimeoutForDex:I

.field public mScreenOffTimeoutSetting:J

.field public mScreenOnOffCount:I

.field public mScreenOnReason:Ljava/lang/String;

.field public final mScreenUndimDetector:Lcom/android/server/power/ScreenUndimDetector;

.field public mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

.field public mSemHqmManager:Landroid/os/SemHqmManager;

.field public mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

.field public mShouldWaitForTransitionToAodUi:Z

.field public mShutdownOrRebootCaller:Ljava/lang/String;

.field public mSleepTimeoutSetting:J

.field public mSmartFaceManager:Lcom/samsung/android/smartface/SmartFaceManager;

.field public final mSmartStayDelay:I

.field public mSmartStayEnabledSetting:Z

.field public mSmartStayProgress:Z

.field public mStayOn:Z

.field public mStayOnWhilePluggedInSetting:I

.field public mSupportsDoubleTapWakeConfig:Z

.field public final mSuspendBlockers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/power/SuspendBlocker;",
            ">;"
        }
    .end annotation
.end field

.field public mSuspendWhenScreenOffDueToProximityConfig:Z

.field public final mSystemProperties:Lcom/android/server/power/SystemPropertiesWrapper;

.field public mSystemReady:Z

.field public mTargetBrightnessForLimit:I

.field public mTheaterModeEnabled:Z

.field public final mUidState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/power/PowerManagerService$UidState;",
            ">;"
        }
    .end annotation
.end field

.field public mUidsChanged:Z

.field public mUidsChanging:Z

.field public mUpdatePowerStateInProgress:Z

.field public mUserActivityIntent:Landroid/content/Intent;

.field public final mUserActivityStateListenerListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/PowerManagerInternal$UserActivityStateListener;",
            ">;"
        }
    .end annotation
.end field

.field public mUserActivityStateListenerTimeoutRunnable:Ljava/lang/Runnable;

.field public final mUserActivityTask:Lcom/android/server/power/PowerManagerService$UserActivityTask;

.field public mUserActivityTimeoutForDexOverrideFromWindowManager:J

.field public mUserActivityTimeoutOverrideFromWindowManager:J

.field public mUserActivityTimeoutSetting:I

.field public final mUserActivityTimeoutTask:Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;

.field public mUserId:I

.field public mUserInactiveOverrideFromWindowManager:Z

.field public final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

.field public mWakeLockSummary:I

.field public final mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field public final mWakeLocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/power/PowerManagerService$WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field public mWakeUpWhenPluggedOrUnpluggedConfig:Z

.field public mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

.field public mWakefulnessChanging:Z

.field public mWakefulnessRaw:I

.field public mWakelockBlacklistAppid:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mWhenCheckSmartStay:I

.field public mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

.field public mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

.field public mWirelessChargerSContextListener:Landroid/hardware/scontext/SContextListener;

.field public mWirelessChargerSContextManager:Landroid/hardware/scontext/SContextManager;

.field public mlastSetCoverTypeTime:J

.field public mlastUpdateCoverStateReason:Ljava/lang/String;

.field public mlastUpdateCoverStateTime:J

.field public mlastUpdateCoverTypeReason:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$3O_XhPeje_Bvi3Lsae4KaFoxJj0(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->onUserAttention()V

    return-void
.end method

.method public static synthetic $r8$lambda$Ap4iF5wa9w7NsfSHOid_M5XazZA(Lcom/android/server/power/PowerManagerService;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->lambda$sendUserActivityIntentLocked$4(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$B-71D7KbpmcPbYvd_1lAo7CA0gw(Lcom/android/server/power/PowerManagerService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->lambda$dozePowerGroupLocked$3(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$Etk2Np4g6VRaXWWWI_hXEg-xmL4(Lcom/android/server/power/PowerManagerService;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->lambda$sendUserActivityIntentLocked$6(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GYIT0wSdVYEMR_Rtj6Ot7hbWvaI(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->lambda$userActivityFromNative$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$HiFSyYDWuOXyFPRND12F7slblIs(Lcom/android/server/power/PowerManagerService;IILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->lambda$wakePowerGroupLocked$2(IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cRCVngYLocS7EtX9xK1wHC4TbTE(Lcom/android/server/power/PowerManagerService;Landroid/content/Intent;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->lambda$sendUserActivityIntentLocked$5(Landroid/content/Intent;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$z4AgqXohL3k-gb2QeBecConvQ7Q(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->lambda$updatePowerGroupsLocked$7()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAmbientDisplayConfiguration(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/display/AmbientDisplayConfiguration;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAmbientDisplaySuppressionController(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/AmbientDisplaySuppressionController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mAmbientDisplaySuppressionController:Lcom/android/server/power/AmbientDisplaySuppressionController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAutoBrightnessLowerLimit(Lcom/android/server/power/PowerManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mAutoBrightnessLowerLimit:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAutoBrightnessUpperLimit(Lcom/android/server/power/PowerManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mAutoBrightnessUpperLimit:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBatteryLevel(Lcom/android/server/power/PowerManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBatteryManagerInternal(Lcom/android/server/power/PowerManagerService;)Landroid/os/BatteryManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBatterySaverController(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBatterySaverPolicy(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverPolicy;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBatterySaverStateMachine(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverStateMachine;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBatteryStats(Lcom/android/server/power/PowerManagerService;)Lcom/android/internal/app/IBatteryStats;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBootCompleted(Lcom/android/server/power/PowerManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmClock(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$Clock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCoverAuthReady(Lcom/android/server/power/PowerManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mCoverAuthReady:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCoverAuthReadyRunnable(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mCoverAuthReadyRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCoverManager(Lcom/android/server/power/PowerManagerService;)Lcom/samsung/android/cover/CoverManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCoverType(Lcom/android/server/power/PowerManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mCoverType:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDPSIDuration(Lcom/android/server/power/PowerManagerService;)[J
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mDPSIDuration:[J

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDecoupleHalAutoSuspendModeFromDisplayConfig(Lcom/android/server/power/PowerManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDecoupleHalInteractiveModeFromDisplayConfig(Lcom/android/server/power/PowerManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDefaultDisplayReadyByProximity(Lcom/android/server/power/PowerManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mDefaultDisplayReadyByProximity:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDelayTimePrintWakeLock(Lcom/android/server/power/PowerManagerService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mDelayTimePrintWakeLock:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmDirty(Lcom/android/server/power/PowerManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayManagerInternal(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/display/DisplayManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplaySuspendBlocker(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/SuspendBlocker;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDockState(Lcom/android/server/power/PowerManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDualScreenPolicy(Lcom/android/server/power/PowerManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mDualScreenPolicy:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEnhancedDischargePredictionIsPersonalized(Lcom/android/server/power/PowerManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargePredictionIsPersonalized:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEnhancedDischargeTimeElapsed(Lcom/android/server/power/PowerManagerService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargeTimeElapsed:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmEnhancedDischargeTimeLock(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargeTimeLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFeatureCoverSysfs(Lcom/android/server/power/PowerManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mFeatureCoverSysfs:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFreezingScreenBrightness(Lcom/android/server/power/PowerManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mFreezingScreenBrightness:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/power/PowerManagerService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandlerPmsMisc(Lcom/android/server/power/PowerManagerService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerPmsMisc:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$Injector;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInternalDisplayOffByPowerKeyIntent(Lcom/android/server/power/PowerManagerService;)Landroid/content/Intent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mInternalDisplayOffByPowerKeyIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsDualViewMode(Lcom/android/server/power/PowerManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mIsDualViewMode:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsPowered(Lcom/android/server/power/PowerManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsUserActivityInvoked(Lcom/android/server/power/PowerManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mIsUserActivityInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsVrModeEnabled(Lcom/android/server/power/PowerManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastBrightnessOverrideState(Lcom/android/server/power/PowerManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mLastBrightnessOverrideState:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastEnhancedDischargeTimeUpdatedElapsed(Lcom/android/server/power/PowerManagerService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastEnhancedDischargeTimeUpdatedElapsed:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastRequestedLimitationOfBrightness(Lcom/android/server/power/PowerManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mLastRequestedLimitationOfBrightness:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastScreenWakeTime(Lcom/android/server/power/PowerManagerService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenWakeTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastUserActivityStateListenerState(Lcom/android/server/power/PowerManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityStateListenerState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastWarningAboutUserActivityPermission(Lcom/android/server/power/PowerManagerService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLowPowerStandbyController(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/LowPowerStandbyController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyController:Lcom/android/server/power/LowPowerStandbyController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMasterBrightnessLimitPeriod(Lcom/android/server/power/PowerManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessLimitPeriod:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNativeWrapper(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$NativeWrapper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNoUserActivityIntent(Lcom/android/server/power/PowerManagerService;)Landroid/content/Intent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mNoUserActivityIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNoUserActivitySent(Lcom/android/server/power/PowerManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mNoUserActivitySent:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifier(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/Notifier;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPassedWakeupTime(Lcom/android/server/power/PowerManagerService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mPassedWakeupTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerGroupWakefulnessChangeListener(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroupWakefulnessChangeListener:Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerGroups(Lcom/android/server/power/PowerManagerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProfilePowerState(Lcom/android/server/power/PowerManagerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProximityPositive(Lcom/android/server/power/PowerManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScreenBrightnessModeSetting(Lcom/android/server/power/PowerManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScreenBrightnessScaleFactor(Lcom/android/server/power/PowerManagerService;)F
    .registers 1

    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessScaleFactor:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScreenExtendedBrightnessMaximum(Lcom/android/server/power/PowerManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mScreenExtendedBrightnessMaximum:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmShutdownOrRebootCaller(Lcom/android/server/power/PowerManagerService;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mShutdownOrRebootCaller:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSuspendBlockers(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSystemReady(Lcom/android/server/power/PowerManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTargetBrightnessForLimit(Lcom/android/server/power/PowerManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mTargetBrightnessForLimit:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserActivityIntent(Lcom/android/server/power/PowerManagerService;)Landroid/content/Intent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserActivityStateListenerListeners(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityStateListenerListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWakeLocks(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWakelockBlacklistAppid(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mWakelockBlacklistAppid:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWirelessChargerSContextListener(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/scontext/SContextListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerSContextListener:Landroid/hardware/scontext/SContextListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmAutoBrightnessLimitLastCaller(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mAutoBrightnessLimitLastCaller:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmAutoBrightnessLowerLimit(Lcom/android/server/power/PowerManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mAutoBrightnessLowerLimit:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmAutoBrightnessUpperLimit(Lcom/android/server/power/PowerManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mAutoBrightnessUpperLimit:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCoverAuthReady(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mCoverAuthReady:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCoverAuthReadyRunnable(Lcom/android/server/power/PowerManagerService;Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mCoverAuthReadyRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCoverType(Lcom/android/server/power/PowerManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mCoverType:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDefaultDisplayReadyByProximity(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDefaultDisplayReadyByProximity:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDelayTimePrintWakeLock(Lcom/android/server/power/PowerManagerService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mDelayTimePrintWakeLock:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDirty(Lcom/android/server/power/PowerManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDockState(Lcom/android/server/power/PowerManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDozeStartInProgress(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDozeStartInProgress:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDualScreenPolicy(Lcom/android/server/power/PowerManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDualScreenPolicy:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEarlyWakeUp(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mEarlyWakeUp:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEnhancedDischargePredictionIsPersonalized(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargePredictionIsPersonalized:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEnhancedDischargeTimeElapsed(Lcom/android/server/power/PowerManagerService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargeTimeElapsed:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEnsureTransitionToDozingReleaserRunning(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mEnsureTransitionToDozingReleaserRunning:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmFTAMode(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mFTAMode:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmForceSetHalInteractiveMode(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mForceSetHalInteractiveMode:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmForceSlowChange(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mForceSlowChange:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmForegroundProfile(Lcom/android/server/power/PowerManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mForegroundProfile:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmFreezingScreenBrightness(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mFreezingScreenBrightness:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmInterceptedKeyForProximity(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mInterceptedKeyForProximity:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmInterceptedPowerKeyForProximity(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mInterceptedPowerKeyForProximity:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastAutoBrightnessLimitTime(Lcom/android/server/power/PowerManagerService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastAutoBrightnessLimitTime:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastEnhancedDischargeTimeUpdatedElapsed(Lcom/android/server/power/PowerManagerService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastEnhancedDischargeTimeUpdatedElapsed:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastRequestedLimitationOfBrightness(Lcom/android/server/power/PowerManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mLastRequestedLimitationOfBrightness:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastScreenWakeTime(Lcom/android/server/power/PowerManagerService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenWakeTime:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastUserActivityStateListenerState(Lcom/android/server/power/PowerManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityStateListenerState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastWakeUpReason(Lcom/android/server/power/PowerManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastWarningAboutUserActivityPermission(Lcom/android/server/power/PowerManagerService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmMasterBrightnessLimitRunning(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessLimitRunning:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNoUserActivitySent(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mNoUserActivitySent:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPassedWakeupTime(Lcom/android/server/power/PowerManagerService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mPassedWakeupTime:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmProximityPositive(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmScaleFactorLock(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$ScaleFactorLock;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mScaleFactorLock:Lcom/android/server/power/PowerManagerService$ScaleFactorLock;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmScreenBrightnessScaleFactor(Lcom/android/server/power/PowerManagerService;F)V
    .registers 2

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessScaleFactor:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmScreenOffReason(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffReason:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmScreenOnReason(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmShutdownOrRebootCaller(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mShutdownOrRebootCaller:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUserId(Lcom/android/server/power/PowerManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mUserId:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmlastSetCoverTypeTime(Lcom/android/server/power/PowerManagerService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mlastSetCoverTypeTime:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmlastUpdateCoverStateReason(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mlastUpdateCoverStateReason:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmlastUpdateCoverStateTime(Lcom/android/server/power/PowerManagerService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mlastUpdateCoverStateTime:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmlastUpdateCoverTypeReason(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mlastUpdateCoverTypeReason:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$macquireWakeLockInternal(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;IILandroid/os/IWakeLockCallback;Z)V
    .registers 12

    invoke-virtual/range {p0 .. p11}, Lcom/android/server/power/PowerManagerService;->acquireWakeLockInternal(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;IILandroid/os/IWakeLockCallback;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mboostScreenBrightnessInternal(Lcom/android/server/power/PowerManagerService;JI)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->boostScreenBrightnessInternal(JI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcrashInternal(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->crashInternal(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdozePowerGroupLocked(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerGroup;JII)Z
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->dozePowerGroupLocked(Lcom/android/server/power/PowerGroup;JII)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mdreamPowerGroupLocked(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerGroup;JI)Z
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/PowerManagerService;->dreamPowerGroupLocked(Lcom/android/server/power/PowerGroup;JI)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mdumpInternal(Lcom/android/server/power/PowerManagerService;Ljava/io/PrintWriter;Z)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->dumpInternal(Ljava/io/PrintWriter;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdumpProto(Lcom/android/server/power/PowerManagerService;Ljava/io/FileDescriptor;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->dumpProto(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfindForegroundPackageName(Lcom/android/server/power/PowerManagerService;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->findForegroundPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mforceSuspendInternal(Lcom/android/server/power/PowerManagerService;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->forceSuspendInternal(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetLastGoToSleepInternal(Lcom/android/server/power/PowerManagerService;)Landroid/os/PowerManager$SleepData;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getLastGoToSleepInternal()Landroid/os/PowerManager$SleepData;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetLastSleepReasonInternal(Lcom/android/server/power/PowerManagerService;)I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getLastSleepReasonInternal()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetLastUserActivityStateInternal(Lcom/android/server/power/PowerManagerService;)I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getLastUserActivityStateInternal()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetLastWakeupInternal(Lcom/android/server/power/PowerManagerService;)Landroid/os/PowerManager$WakeData;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getLastWakeupInternal()Landroid/os/PowerManager$WakeData;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleAbuseWakelockWhenUseractivityChanged(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->handleAbuseWakelockWhenUseractivityChanged()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleAttentiveTimeout(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->handleAttentiveTimeout()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleBatteryStateChangedLocked(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->handleBatteryStateChangedLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleDexScreenOffTimeoutChange(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->handleDexScreenOffTimeoutChange()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleSandman(Lcom/android/server/power/PowerManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->handleSandman(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleScreenBrightnessBoostTimeout(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->handleScreenBrightnessBoostTimeout()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleSendBroadcastToHWParam(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->handleSendBroadcastToHWParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleSmartStay(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->handleSmartStay(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleUserActivityTimeout(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->handleUserActivityTimeout()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleWakeLockDeath(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->handleWakeLockDeath(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minitLCDFlashMode(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->initLCDFlashMode()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minterceptPowerKeyDownInternal(Lcom/android/server/power/PowerManagerService;Landroid/view/KeyEvent;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->interceptPowerKeyDownInternal(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misInteractiveInternal(Lcom/android/server/power/PowerManagerService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->isInteractiveInternal()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misInteractiveInternal(Lcom/android/server/power/PowerManagerService;II)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->isInteractiveInternal(II)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misInternalDisplayOffInternal(Lcom/android/server/power/PowerManagerService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->isInternalDisplayOffInternal()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misProximityPositiveInternal(Lcom/android/server/power/PowerManagerService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->isProximityPositiveInternal()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misScreenBrightnessBoostedInternal(Lcom/android/server/power/PowerManagerService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->isScreenBrightnessBoostedInternal()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misWakeLockLevelSupportedInternal(Lcom/android/server/power/PowerManagerService;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->isWakeLockLevelSupportedInternal(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misWakeUpPreventionNeededLocked(Lcom/android/server/power/PowerManagerService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->isWakeUpPreventionNeededLocked()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mmakeDpucData(Lcom/android/server/power/PowerManagerService;[Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->makeDpucData([Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmaybeUpdateForegroundProfileLastActivityLocked(Lcom/android/server/power/PowerManagerService;J)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->maybeUpdateForegroundProfileLastActivityLocked(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnativeInit(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->nativeInit()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mprintWakeLockLocked(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->printWakeLockLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mregisterUserActivityStateListenerInternal(Lcom/android/server/power/PowerManagerService;Landroid/os/PowerManagerInternal$UserActivityStateListener;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->registerUserActivityStateListenerInternal(Landroid/os/PowerManagerInternal$UserActivityStateListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreleaseWakeLockInternal(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->releaseWakeLockInternal(Landroid/os/IBinder;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscheduleSandmanLocked(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->scheduleSandmanLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendBrightnessLearningMaxLimitCount(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->sendBrightnessLearningMaxLimitCount()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendCurrentBrightnessStatus(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->sendCurrentBrightnessStatus()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendDPSIDuration(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->sendDPSIDuration()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetAttentionLightInternal(Lcom/android/server/power/PowerManagerService;ZI)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setAttentionLightInternal(ZI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDozeAfterScreenOffInternal(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->setDozeAfterScreenOffInternal(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDozeModeBySysfs(Lcom/android/server/power/PowerManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->setDozeModeBySysfs(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDozeOverrideFromDreamManagerInternal(Lcom/android/server/power/PowerManagerService;IIZ)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->setDozeOverrideFromDreamManagerInternal(IIZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDrawWakeLockOverrideFromSidekickInternal(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->setDrawWakeLockOverrideFromSidekickInternal(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetGoToSleepPreventionInternal(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->setGoToSleepPreventionInternal(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetHalAutoSuspendModeLocked(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetHalInteractiveModeLocked(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetLCDFlashModeInternal(Lcom/android/server/power/PowerManagerService;ZLandroid/os/IBinder;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setLCDFlashModeInternal(ZLandroid/os/IBinder;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetLowPowerModeInternal(Lcom/android/server/power/PowerManagerService;Z)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->setLowPowerModeInternal(Z)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetMasterBrightnessLimitInternal(Lcom/android/server/power/PowerManagerService;III)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->setMasterBrightnessLimitInternal(III)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetPowerBoostInternal(Lcom/android/server/power/PowerManagerService;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setPowerBoostInternal(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetPowerModeInternal(Lcom/android/server/power/PowerManagerService;IZ)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setPowerModeInternal(IZ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetProximityDebounceTimeInternal(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;II)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->setProximityDebounceTimeInternal(Landroid/os/IBinder;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetQuickPanelBrightnessBarDisabled(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->setQuickPanelBrightnessBarDisabled(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetScreenBrightnessOverrideFromWindowManagerInternal(Lcom/android/server/power/PowerManagerService;F)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->setScreenBrightnessOverrideFromWindowManagerInternal(F)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetScreenDimDurationOverrideFromSqdInternal(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->setScreenDimDurationOverrideFromSqdInternal(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetScreenDimDurationOverrideFromWindowManagerInternal(Lcom/android/server/power/PowerManagerService;J)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setScreenDimDurationOverrideFromWindowManagerInternal(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetUserActivityTimeoutForDexOverrideFromWindowManagerInternal(Lcom/android/server/power/PowerManagerService;J)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setUserActivityTimeoutForDexOverrideFromWindowManagerInternal(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetUserActivityTimeoutOverrideFromWindowManagerInternal(Lcom/android/server/power/PowerManagerService;J)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setUserActivityTimeoutOverrideFromWindowManagerInternal(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetUserInactiveOverrideFromWindowManagerInternal(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->setUserInactiveOverrideFromWindowManagerInternal()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mshutdownOrRebootInternal(Lcom/android/server/power/PowerManagerService;IZLjava/lang/String;Z)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/PowerManagerService;->shutdownOrRebootInternal(IZLjava/lang/String;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msleepPowerGroupLocked(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerGroup;JII)Z
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->sleepPowerGroupLocked(Lcom/android/server/power/PowerGroup;JII)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$munregisterUserActivityStateListenerInternal(Lcom/android/server/power/PowerManagerService;Landroid/os/PowerManagerInternal$UserActivityStateListener;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->unregisterUserActivityStateListenerInternal(Landroid/os/PowerManagerInternal$UserActivityStateListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateGlobalWakefulnessLocked(Lcom/android/server/power/PowerManagerService;JIIILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/power/PowerManagerService;->updateGlobalWakefulnessLocked(JIIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdatePowerStateLocked(Lcom/android/server/power/PowerManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateWakeLockCallbackInternal(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;Landroid/os/IWakeLockCallback;I)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->updateWakeLockCallbackInternal(Landroid/os/IBinder;Landroid/os/IWakeLockCallback;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateWakeLockWorkSourceInternal(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/PowerManagerService;->updateWakeLockWorkSourceInternal(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$muserActivityInternal(Lcom/android/server/power/PowerManagerService;IJIII)V
    .registers 7

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/PowerManagerService;->userActivityInternal(IJIII)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$muserActivityNoUpdateLocked(Lcom/android/server/power/PowerManagerService;JIII)Z
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$muserActivityNoUpdateLocked(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerGroup;JIII)Z
    .registers 7

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(Lcom/android/server/power/PowerGroup;JIII)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mwakePowerGroupLocked(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerGroup;JILjava/lang/String;ILjava/lang/String;I)V
    .registers 9

    invoke-virtual/range {p0 .. p8}, Lcom/android/server/power/PowerManagerService;->wakePowerGroupLocked(Lcom/android/server/power/PowerGroup;JILjava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDATE_FORMAT()Ljava/text/SimpleDateFormat;
    .registers 1

    sget-object v0, Lcom/android/server/power/PowerManagerService;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetLD_KEYS()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/power/PowerManagerService;->LD_KEYS:[Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsQuiescent()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$smcallerInfoWithProcessName()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->callerInfoWithProcessName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smcopyWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .registers 1

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->copyWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smgetFirstNonEmptyWorkChain(Landroid/os/WorkSource;)Landroid/os/WorkSource$WorkChain;
    .registers 1

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->getFirstNonEmptyWorkChain(Landroid/os/WorkSource;)Landroid/os/WorkSource$WorkChain;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smisScreenLock(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->isScreenLock(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeAcquireSuspendBlocker(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeAcquireSuspendBlocker(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnativeForceSuspend()Z
    .registers 1

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->nativeForceSuspend()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnativeReleaseSuspendBlocker(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeReleaseSuspendBlocker(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnativeSetAutoSuspend(Z)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnativeSetInteractiveAsync(ZI)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/power/PowerManagerService;->nativeSetInteractiveAsync(ZI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnativeSetPowerBoost(II)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/power/PowerManagerService;->nativeSetPowerBoost(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnativeSetPowerMode(IZ)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/power/PowerManagerService;->nativeSetPowerMode(IZ)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 5

    .line 426
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/power/PowerManagerService;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 701
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerService;->SEC_USE_FACTORY_BINARY:Z

    const-string v0, "content://com.sec.android.desktopmode.uiservice.SettingsProvider/settings"

    .line 996
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/PowerManagerService;->DEX_SETTINGS_URI:Landroid/net/Uri;

    const-string v0, "LUBS_B"

    const-string v1, "LUBS_L"

    const-string v2, "LUBS_M"

    const-string v3, "LUBS_P"

    .line 1087
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/PowerManagerService;->LUBS_KEYS:[Ljava/lang/String;

    const-string v0, "LBLD"

    const-string v1, "LBMD"

    const-string v2, "LBHD"

    const-string v3, "LOD"

    const-string v4, "LOCNT"

    .line 1088
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/PowerManagerService;->LD_KEYS:[Ljava/lang/String;

    const-string v0, "MODE"

    const-string v1, "LEVEL"

    .line 1089
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/PowerManagerService;->LCBS_KEYS:[Ljava/lang/String;

    const-string v0, "LV0"

    const-string v1, "LV1"

    const-string v2, "LV2"

    const-string v3, "LV3"

    const-string v4, "LV4"

    .line 1090
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/PowerManagerService;->ABLL_KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1507
    new-instance v0, Lcom/android/server/power/PowerManagerService$Injector;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/PowerManagerService;-><init>(Landroid/content/Context;Lcom/android/server/power/PowerManagerService$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/power/PowerManagerService$Injector;)V
    .registers 15
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1512
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 322
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutSetting:I

    .line 323
    new-instance v1, Lcom/android/server/power/PowerManagerService$UserActivityTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerManagerService$UserActivityTask;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$UserActivityTask-IA;)V

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTask:Lcom/android/server/power/PowerManagerService$UserActivityTask;

    .line 324
    new-instance v1, Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask-IA;)V

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutTask:Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;

    const/4 v1, 0x1

    .line 464
    invoke-static {v1}, Lcom/android/server/LockGuard;->installNewLock(I)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 481
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    .line 484
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    .line 488
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/power/PowerManagerService;->mAbuseWakeLocks:Ljava/util/ArrayList;

    .line 489
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mNeedCheckAbuseWakelocks:Z

    .line 490
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAbuseWakeLockDisabled:Z

    .line 491
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAllBrightWakeLockAbuse:Z

    const/4 v4, -0x1

    .line 528
    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mAutoBrightnessLowerLimit:I

    .line 529
    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mAutoBrightnessUpperLimit:I

    const-string v5, ""

    .line 530
    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mAutoBrightnessLimitLastCaller:Ljava/lang/String;

    .line 591
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargeTimeLock:Ljava/lang/Object;

    .line 620
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    .line 700
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mFTAMode:Z

    const-wide v5, 0x7fffffffffffffffL

    .line 719
    iput-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    .line 744
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDefaultDisplayReadyByProximity:Z

    const/high16 v5, 0x7fc00000    # Float.NaN

    .line 772
    iput v5, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:F

    const-wide/16 v6, -0x1

    .line 781
    iput-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    .line 786
    iput-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    .line 791
    iput-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutForDexOverrideFromWindowManager:J

    .line 795
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    .line 798
    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    .line 800
    iput v5, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManagerFloat:F

    const-wide/high16 v8, -0x8000000000000000L

    .line 806
    iput-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    new-array v5, v0, [I

    .line 818
    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    new-array v5, v0, [I

    .line 821
    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    new-array v5, v0, [I

    .line 824
    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyAllowlist:[I

    .line 828
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    .line 832
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    .line 908
    iput-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mDelayTimePrintWakeLock:J

    .line 918
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsCoverClosed:Z

    const-string v5, ""

    .line 919
    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mlastUpdateCoverStateReason:Ljava/lang/String;

    .line 920
    iput-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mlastUpdateCoverStateTime:J

    const-string v5, ""

    .line 921
    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mlastUpdateCoverTypeReason:Ljava/lang/String;

    .line 922
    iput-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mlastSetCoverTypeTime:J

    .line 923
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mFeatureCoverSysfs:Z

    .line 924
    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    const/4 v5, 0x2

    .line 925
    iput v5, p0, Lcom/android/server/power/PowerManagerService;->mCoverType:I

    const/high16 v5, -0x40800000    # -1.0f

    .line 927
    iput v5, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessForClearCoverConfig:F

    .line 928
    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mBrightnessLimitByCoverConfig:I

    .line 932
    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mAlpmHlpmMode:I

    .line 940
    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLCDFlashModeLock:Lcom/android/server/power/PowerManagerService$LCDFlashModeLock;

    .line 944
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mOutdoorModeSetting:Z

    .line 951
    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSmartFaceManager:Lcom/samsung/android/smartface/SmartFaceManager;

    .line 958
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->USE_SMART_STAY:Z

    .line 959
    sget-boolean v8, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_TABLET:Z

    iput-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->USE_PRE_SMART_STAY:Z

    const/16 v8, 0xabe

    .line 960
    iput v8, p0, Lcom/android/server/power/PowerManagerService;->mSmartStayDelay:I

    const/16 v8, 0x1770

    .line 961
    iput v8, p0, Lcom/android/server/power/PowerManagerService;->mPreSmartStayDelay:I

    .line 965
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsBadCurrentConsumptionDevice:Z

    .line 967
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mWhenCheckSmartStay:I

    .line 971
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSmartStayEnabledSetting:Z

    .line 972
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mPendingMessageSmartStay:Z

    .line 973
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mPendingMessagePreSmartStay:Z

    .line 974
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mFaceDetected:Z

    .line 975
    iput-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mNextTimeoutForSmartStay:J

    .line 976
    iput-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mNextTimeoutForPreSmartStay:J

    .line 977
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSmartStayProgress:Z

    const-string v8, ""

    .line 984
    iput-object v8, p0, Lcom/android/server/power/PowerManagerService;->mShutdownOrRebootCaller:Ljava/lang/String;

    .line 987
    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenTimeout:I

    const-string v8, "600000"

    .line 999
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutForDex:I

    .line 1010
    iput v5, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessScaleFactor:F

    .line 1014
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mFreezingScreenBrightness:Z

    .line 1017
    iput-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromWindowManager:J

    .line 1020
    iput-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromSQD:J

    .line 1026
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mWakelockBlacklistAppid:Ljava/util/ArrayList;

    .line 1030
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mLastBrightnessOverrideState:Z

    const-string v5, ""

    .line 1039
    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffReason:Ljava/lang/String;

    const-string v5, ""

    .line 1040
    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    .line 1041
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnOffCount:I

    .line 1046
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mIsUserActivityNativeInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1047
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mIsUserActivityInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1051
    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessLowerLimit:I

    .line 1052
    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessUpperLimit:I

    const-string v5, ""

    .line 1053
    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessLimitLastCaller:Ljava/lang/String;

    const/16 v5, 0x1e5

    .line 1054
    iput v5, p0, Lcom/android/server/power/PowerManagerService;->mLastRequestedLimitationOfBrightness:I

    .line 1055
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mTargetBrightnessForLimit:I

    .line 1056
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessLimitRunning:Z

    .line 1057
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessLimitPeriod:I

    .line 1060
    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mBatteryOnline:I

    .line 1063
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityStateListenerListeners:Ljava/util/ArrayList;

    .line 1068
    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 1069
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsWirelessChargerSContextEnabled:Z

    .line 1070
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsWirelessChargerSContextRegistered:Z

    .line 1071
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsDeviceMoving:Z

    const-wide/16 v8, 0x0

    .line 1072
    iput-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mPassedWakeupTime:J

    .line 1080
    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 1081
    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    const/4 v5, 0x5

    new-array v5, v5, [J

    .line 1094
    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mDPSIDuration:[J

    .line 1099
    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mDualScreenPolicy:I

    .line 1106
    invoke-static {}, Lcom/android/server/power/PowerHistorian;->getInstance()Lcom/android/server/power/PowerHistorian;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/power/PowerManagerService;->mPowerHistorian:Lcom/android/server/power/PowerHistorian;

    .line 1193
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    .line 2867
    iput-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mLastAndroidAutoBoostTime:J

    .line 2925
    iput-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mLastNormalTouchBoostTime:J

    .line 3088
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    .line 5527
    new-instance v4, Lcom/android/server/power/PowerManagerService$1;

    invoke-direct {v4, p0}, Lcom/android/server/power/PowerManagerService$1;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 6768
    iput-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityStateListenerCalledTime:J

    .line 6769
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityStateListenerState:I

    .line 6771
    new-instance v4, Lcom/android/server/power/PowerManagerService$4;

    invoke-direct {v4, p0}, Lcom/android/server/power/PowerManagerService$4;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v4, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityStateListenerTimeoutRunnable:Ljava/lang/Runnable;

    .line 7914
    new-instance v4, Lcom/android/server/power/PowerManagerService$5;

    invoke-direct {v4, p0}, Lcom/android/server/power/PowerManagerService$5;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v4, p0, Lcom/android/server/power/PowerManagerService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    .line 7991
    new-instance v4, Lcom/android/server/power/PowerManagerService$6;

    invoke-direct {v4, p0}, Lcom/android/server/power/PowerManagerService$6;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v4, p0, Lcom/android/server/power/PowerManagerService;->mEnsureTransitionToDozingReleaser:Ljava/lang/Runnable;

    .line 8005
    new-instance v4, Lcom/android/server/power/PowerManagerService$7;

    invoke-direct {v4, p0}, Lcom/android/server/power/PowerManagerService$7;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v4, p0, Lcom/android/server/power/PowerManagerService;->mCoverAuthReadyRunnable:Ljava/lang/Runnable;

    .line 8088
    new-instance v4, Lcom/android/server/power/PowerManagerService$8;

    invoke-direct {v4, p0}, Lcom/android/server/power/PowerManagerService$8;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v4, p0, Lcom/android/server/power/PowerManagerService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    .line 8178
    new-instance v4, Lcom/android/server/power/PowerManagerService$9;

    invoke-direct {v4, p0}, Lcom/android/server/power/PowerManagerService$9;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v4, p0, Lcom/android/server/power/PowerManagerService;->mPrintWakeLockAperiodicallyRunnable:Ljava/lang/Runnable;

    .line 10885
    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mScaleFactorLock:Lcom/android/server/power/PowerManagerService$ScaleFactorLock;

    .line 10976
    new-instance v4, Lcom/android/server/power/PowerManagerService$11;

    invoke-direct {v4, p0}, Lcom/android/server/power/PowerManagerService$11;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v4, p0, Lcom/android/server/power/PowerManagerService;->mBrightnessLimitRunnable:Ljava/lang/Runnable;

    .line 11013
    new-instance v4, Lcom/android/server/power/PowerManagerService$12;

    invoke-direct {v4, p0}, Lcom/android/server/power/PowerManagerService$12;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerSContextListener:Landroid/hardware/scontext/SContextListener;

    .line 1514
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 1515
    new-instance v4, Lcom/android/server/power/PowerManagerService$BinderService;

    invoke-direct {v4, p0}, Lcom/android/server/power/PowerManagerService$BinderService;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v4, p0, Lcom/android/server/power/PowerManagerService;->mBinderService:Lcom/android/server/power/PowerManagerService$BinderService;

    .line 1516
    new-instance v4, Lcom/android/server/power/PowerManagerService$LocalService;

    invoke-direct {v4, p0}, Lcom/android/server/power/PowerManagerService$LocalService;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v4, p0, Lcom/android/server/power/PowerManagerService;->mLocalService:Lcom/android/server/power/PowerManagerService$LocalService;

    .line 1517
    invoke-virtual {p2}, Lcom/android/server/power/PowerManagerService$Injector;->createNativeWrapper()Lcom/android/server/power/PowerManagerService$NativeWrapper;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    .line 1518
    invoke-virtual {p2}, Lcom/android/server/power/PowerManagerService$Injector;->createSystemPropertiesWrapper()Lcom/android/server/power/SystemPropertiesWrapper;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mSystemProperties:Lcom/android/server/power/SystemPropertiesWrapper;

    .line 1519
    invoke-virtual {p2}, Lcom/android/server/power/PowerManagerService$Injector;->createClock()Lcom/android/server/power/PowerManagerService$Clock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    .line 1520
    iput-object p2, p0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    .line 1522
    new-instance v6, Lcom/android/server/ServiceThread;

    const-string v7, "PowerManagerService"

    const/4 v8, -0x4

    invoke-direct {v6, v7, v8, v0}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v6, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 1524
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 1525
    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    new-instance v7, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;

    invoke-direct {v7, p0, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback-IA;)V

    invoke-virtual {p2, v6, v7}, Lcom/android/server/power/PowerManagerService$Injector;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    .line 1528
    new-instance v7, Landroid/os/HandlerThread;

    const-string/jumbo v8, "pms.misc"

    invoke-direct {v7, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThreadPmsMisc:Landroid/os/HandlerThread;

    .line 1529
    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 1530
    new-instance v7, Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThreadPmsMisc:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/android/server/power/PowerManagerService;->mHandlerPmsMisc:Landroid/os/Handler;

    .line 1532
    new-instance v7, Lcom/android/server/power/PowerManagerService$Constants;

    invoke-direct {v7, p0, v6}, Lcom/android/server/power/PowerManagerService$Constants;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    .line 1533
    invoke-virtual {p2, p1}, Lcom/android/server/power/PowerManagerService$Injector;->createAmbientDisplayConfiguration(Landroid/content/Context;)Landroid/hardware/display/AmbientDisplayConfiguration;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/PowerManagerService;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 1535
    invoke-virtual {p2, p1}, Lcom/android/server/power/PowerManagerService$Injector;->createAmbientDisplaySuppressionController(Landroid/content/Context;)Lcom/android/server/power/AmbientDisplaySuppressionController;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/PowerManagerService;->mAmbientDisplaySuppressionController:Lcom/android/server/power/AmbientDisplaySuppressionController;

    .line 1536
    new-instance v6, Lcom/android/server/power/AttentionDetector;

    new-instance v7, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda7;

    invoke-direct {v7, p0}, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/power/PowerManagerService;)V

    invoke-direct {v6, v7, v3}, Lcom/android/server/power/AttentionDetector;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iput-object v6, p0, Lcom/android/server/power/PowerManagerService;->mAttentionDetector:Lcom/android/server/power/AttentionDetector;

    .line 1540
    new-instance v6, Lcom/android/server/power/ScreenUndimDetector;

    invoke-direct {v6}, Lcom/android/server/power/ScreenUndimDetector;-><init>()V

    iput-object v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenUndimDetector:Lcom/android/server/power/ScreenUndimDetector;

    .line 1542
    new-instance v6, Lcom/android/server/power/batterysaver/BatterySavingStats;

    invoke-direct {v6, v3}, Lcom/android/server/power/batterysaver/BatterySavingStats;-><init>(Ljava/lang/Object;)V

    iput-object v6, p0, Lcom/android/server/power/PowerManagerService;->mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

    .line 1544
    invoke-virtual {p2, v3, p1, v6}, Lcom/android/server/power/PowerManagerService$Injector;->createBatterySaverPolicy(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySavingStats;)Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    .line 1545
    invoke-virtual {p2, v3, p1, v7, v6}, Lcom/android/server/power/PowerManagerService$Injector;->createBatterySaverController(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySaverPolicy;Lcom/android/server/power/batterysaver/BatterySavingStats;)Lcom/android/server/power/batterysaver/BatterySaverController;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 1547
    invoke-virtual {p2, v3, p1, v6}, Lcom/android/server/power/PowerManagerService$Injector;->createBatterySaverStateMachine(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySaverController;)Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    .line 1551
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    .line 1550
    invoke-virtual {p2, p1, v6}, Lcom/android/server/power/PowerManagerService$Injector;->createLowPowerStandbyController(Landroid/content/Context;Landroid/os/Looper;)Lcom/android/server/power/LowPowerStandbyController;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyController:Lcom/android/server/power/LowPowerStandbyController;

    .line 1553
    invoke-virtual {p2}, Lcom/android/server/power/PowerManagerService$Injector;->createInattentiveSleepWarningController()Lcom/android/server/power/InattentiveSleepWarningController;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/PowerManagerService;->mInattentiveSleepWarningOverlayController:Lcom/android/server/power/InattentiveSleepWarningController;

    .line 1555
    invoke-virtual {p2, p1}, Lcom/android/server/power/PowerManagerService$Injector;->createAppOpsManager(Landroid/content/Context;)Landroid/app/AppOpsManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/PowerManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 1557
    new-instance v6, Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;

    invoke-direct {v6, p0, v2}, Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener-IA;)V

    iput-object v6, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroupWakefulnessChangeListener:Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;

    .line 1563
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x10500d8

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    .line 1565
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10500d7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    .line 1567
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10500d3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v7

    .line 1569
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10500d1

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v8

    .line 1571
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10500d0

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v9

    .line 1574
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10e0109

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    iput v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenExtendedBrightnessMaximum:I

    const/high16 v10, -0x40000000    # -2.0f

    cmpl-float v11, v2, v10

    if-eqz v11, :cond_29a

    cmpl-float v11, v6, v10

    if-eqz v11, :cond_29a

    cmpl-float v11, v7, v10

    if-nez v11, :cond_293

    goto :goto_29a

    .line 1590
    :cond_293
    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMinimum:F

    .line 1591
    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMaximum:F

    .line 1592
    iput v7, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDefault:F

    goto :goto_2cd

    .line 1581
    :cond_29a
    :goto_29a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x10e0111

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 1580
    invoke-static {v2}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v2

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMinimum:F

    .line 1584
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x10e0110

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 1583
    invoke-static {v2}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v2

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMaximum:F

    .line 1587
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x10e010f

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 1586
    invoke-static {v2}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v2

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDefault:F

    :goto_2cd
    cmpl-float v2, v8, v10

    if-nez v2, :cond_2e3

    .line 1596
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x10e0108

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 1595
    invoke-static {v2}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v2

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDoze:F

    goto :goto_2e5

    .line 1599
    :cond_2e3
    iput v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDoze:F

    :goto_2e5
    cmpl-float v2, v9, v10

    if-nez v2, :cond_2fb

    .line 1603
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x10e0107

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 1602
    invoke-static {v2}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v2

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDim:F

    goto :goto_2fd

    .line 1606
    :cond_2fb
    iput v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDim:F

    .line 1609
    :goto_2fd
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x10500d6

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    .line 1611
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10500d5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    .line 1613
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10500d4

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v7

    cmpl-float v8, v2, v10

    if-eqz v8, :cond_332

    cmpl-float v8, v6, v10

    if-eqz v8, :cond_332

    cmpl-float v8, v7, v10

    if-nez v8, :cond_32b

    goto :goto_332

    .line 1627
    :cond_32b
    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMinimumVr:F

    .line 1628
    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMaximumVr:F

    .line 1629
    iput v7, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDefaultVr:F

    goto :goto_365

    .line 1618
    :cond_332
    :goto_332
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x10e010d

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 1617
    invoke-static {v2}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v2

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMinimumVr:F

    .line 1621
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x10e010c

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 1620
    invoke-static {v2}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v2

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMaximumVr:F

    .line 1624
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x10e010b

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 1623
    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result p1

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDefaultVr:F

    .line 1632
    :goto_365
    monitor-enter v3

    :try_start_366
    const-string p1, "PowerManagerService.Booting"

    .line 1634
    invoke-virtual {p2, p0, p1}, Lcom/android/server/power/PowerManagerService$Injector;->createSuspendBlocker(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mBootingSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    const-string v2, "PowerManagerService.WakeLocks"

    .line 1636
    invoke-virtual {p2, p0, v2}, Lcom/android/server/power/PowerManagerService$Injector;->createSuspendBlocker(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    const-string v2, "PowerManagerService.Display"

    .line 1638
    invoke-virtual {p2, p0, v2}, Lcom/android/server/power/PowerManagerService$Injector;->createSuspendBlocker(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    if-eqz p1, :cond_385

    .line 1640
    invoke-interface {p1}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 1641
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mHoldingBootingSuspendBlocker:Z

    :cond_385
    if-eqz v2, :cond_38f

    const-string/jumbo p1, "holding display"

    .line 1644
    invoke-interface {v2, p1}, Lcom/android/server/power/SuspendBlocker;->acquire(Ljava/lang/String;)V

    .line 1645
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    .line 1647
    :cond_38f
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    .line 1650
    invoke-virtual {p0, v1}, Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(Z)V

    .line 1653
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessRaw:I

    const-string/jumbo p1, "ro.boot.quiescent"

    const-string v2, "0"

    .line 1654
    invoke-interface {v5, p1, v2}, Lcom/android/server/power/SystemPropertiesWrapper;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3bc

    .line 1655
    invoke-static {}, Landroid/sysprop/InitProperties;->userspace_reboot_in_progress()Ljava/util/Optional;

    move-result-object p1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3ba

    goto :goto_3bc

    :cond_3ba
    move p1, v0

    goto :goto_3bd

    :cond_3bc
    :goto_3bc
    move p1, v1

    :goto_3bd
    sput-boolean p1, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    .line 1657
    invoke-virtual {v4, p0}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeInit(Lcom/android/server/power/PowerManagerService;)V

    .line 1658
    invoke-virtual {v4, v0}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSetAutoSuspend(Z)V

    const/4 p0, 0x7

    .line 1659
    invoke-virtual {v4, p0, v1}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSetPowerMode(IZ)Z

    .line 1660
    invoke-virtual {v4, v0, v0}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSetPowerMode(IZ)Z

    .line 1661
    invoke-virtual {p2}, Lcom/android/server/power/PowerManagerService$Injector;->invalidateIsInteractiveCaches()V

    .line 1662
    monitor-exit v3

    return-void

    :catchall_3d1
    move-exception p0

    monitor-exit v3
    :try_end_3d3
    .catchall {:try_start_366 .. :try_end_3d3} :catchall_3d1

    throw p0
.end method

.method public static adjustWakeLockSummary(II)I
    .registers 3

    const/4 v0, -0x1

    .line 4065
    invoke-static {p0, p1, v0}, Lcom/android/server/power/PowerManagerService;->adjustWakeLockSummary(III)I

    move-result p0

    return p0
.end method

.method public static adjustWakeLockSummary(III)I
    .registers 6

    const/4 v0, 0x3

    if-eq p0, v0, :cond_5

    and-int/lit16 p1, p1, -0xc1

    :cond_5
    const/4 v1, 0x4

    if-eqz p0, :cond_c

    and-int/lit8 v2, p1, 0x40

    if-eqz v2, :cond_14

    :cond_c
    and-int/lit8 p1, p1, -0xf

    if-nez p0, :cond_14

    if-ne p2, v1, :cond_14

    and-int/lit8 p1, p1, -0x11

    :cond_14
    if-ne p0, v0, :cond_1a

    if-ne p2, v1, :cond_1a

    and-int/lit8 p1, p1, -0x11

    :cond_1a
    and-int/lit8 p2, p1, 0x6

    if-eqz p2, :cond_29

    const/4 p2, 0x1

    if-ne p0, p2, :cond_24

    or-int/lit8 p1, p1, 0x21

    goto :goto_29

    :cond_24
    const/4 p2, 0x2

    if-ne p0, p2, :cond_29

    or-int/lit8 p1, p1, 0x1

    :cond_29
    :goto_29
    and-int/lit16 p0, p1, 0x80

    if-eqz p0, :cond_2f

    or-int/lit8 p1, p1, 0x1

    :cond_2f
    return p1
.end method

.method public static callerInfoWithProcessName()Ljava/lang/String;
    .registers 10

    .line 10914
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 10915
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 10919
    :try_start_b
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/proc/%d/cmdline"

    new-array v8, v2, [Ljava/lang/Object;

    .line 10920
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_23} :catch_42

    .line 10922
    :try_start_23
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_34

    const-string v7, "\u0000"

    .line 10923
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 10924
    array-length v7, v6

    if-lez v7, :cond_34

    .line 10925
    aget-object v4, v6, v3
    :try_end_34
    .catchall {:try_start_23 .. :try_end_34} :catchall_38

    .line 10928
    :cond_34
    :try_start_34
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_42

    goto :goto_4a

    :catchall_38
    move-exception v6

    .line 10919
    :try_start_39
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    goto :goto_41

    :catchall_3d
    move-exception v5

    :try_start_3e
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_41
    throw v6
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_42} :catch_42

    :catch_42
    move-exception v5

    const-string v6, "PowerManagerService"

    const-string v7, "error on read process name"

    .line 10929
    invoke-static {v6, v7, v5}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4a
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 10931
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const/4 v0, 0x2

    aput-object v4, v5, v0

    const-string v0, " (uid: %d pid: %d processName: %s)"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static copyWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .registers 2

    if-eqz p0, :cond_8

    .line 7713
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p0}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method

.method public static getFirstNonEmptyWorkChain(Landroid/os/WorkSource;)Landroid/os/WorkSource$WorkChain;
    .registers 4

    .line 2419
    invoke-virtual {p0}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 2423
    :cond_8
    invoke-virtual {p0}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource$WorkChain;

    .line 2424
    invoke-virtual {v0}, Landroid/os/WorkSource$WorkChain;->getSize()I

    move-result v2

    if-lez v2, :cond_10

    return-object v0

    :cond_23
    return-object v1
.end method

.method public static isSameCallback(Landroid/os/IWakeLockCallback;Landroid/os/IWakeLockCallback;)Z
    .registers 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    if-eqz p0, :cond_13

    if-eqz p1, :cond_13

    .line 11090
    invoke-interface {p0}, Landroid/os/IWakeLockCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p1}, Landroid/os/IWakeLockCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    if-ne p0, p1, :cond_13

    return v0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public static isScreenLock(I)Z
    .registers 2

    const v0, 0xffff

    and-int/2addr p0, v0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_11

    const/16 v0, 0xa

    if-eq p0, v0, :cond_11

    const/16 v0, 0x1a

    if-eq p0, v0, :cond_11

    const/4 p0, 0x0

    return p0

    :cond_11
    const/4 p0, 0x1

    return p0
.end method

.method public static isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .registers 2

    .line 2397
    iget p0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v0, 0xffff

    and-int/2addr p0, v0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_13

    const/16 v0, 0xa

    if-eq p0, v0, :cond_13

    const/16 v0, 0x1a

    if-eq p0, v0, :cond_13

    const/4 p0, 0x0

    return p0

    :cond_13
    const/4 p0, 0x1

    return p0
.end method

.method public static isValidBrightness(F)Z
    .registers 2

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_d

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method private synthetic lambda$dozePowerGroupLocked$3(II)V
    .registers 4

    .line 3361
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPowerHistorian:Lcom/android/server/power/PowerHistorian;

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->findForegroundPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/server/power/PowerHistorian;->onScreenOff(IILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$sendUserActivityIntentLocked$4(Landroid/content/Intent;)V
    .registers 4

    const-string/jumbo v0, "status"

    const/4 v1, 0x1

    .line 4611
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4612
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private synthetic lambda$sendUserActivityIntentLocked$5(Landroid/content/Intent;J)V
    .registers 6

    const-string/jumbo v0, "status"

    const/4 v1, 0x2

    .line 4618
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "time"

    .line 4619
    invoke-virtual {p1, v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4620
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private synthetic lambda$sendUserActivityIntentLocked$6(Landroid/content/Intent;)V
    .registers 4

    const-string/jumbo v0, "status"

    const/4 v1, 0x3

    .line 4627
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4628
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private synthetic lambda$systemReady$0(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .registers 13

    .line 1982
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1983
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsDualViewMode:Z

    .line 1984
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v2

    .line 1985
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result p1

    const/16 v3, 0x66

    if-ne v2, v3, :cond_19

    const/4 v3, 0x4

    if-eq p1, v3, :cond_17

    const/4 v3, 0x3

    if-ne p1, v3, :cond_19

    :cond_17
    const/4 v3, 0x1

    goto :goto_1a

    :cond_19
    const/4 v3, 0x0

    .line 1986
    :goto_1a
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsDualViewMode:Z

    const-string v3, "PowerManagerService"

    .line 1989
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dex display type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", enabled: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", dual view: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mIsDualViewMode:Z

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mIsDualViewMode:Z

    if-eq v1, p1, :cond_95

    .line 1993
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result p1

    if-eqz p1, :cond_95

    .line 1994
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mIsDualViewMode:Z

    if-eqz p1, :cond_78

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 1995
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    .line 1996
    invoke-interface {p1}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v4

    const/16 v6, 0x3e8

    const/16 v7, 0xb

    const/16 v8, 0x3e8

    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 1998
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "dex enabled"

    move-object v1, p0

    .line 1995
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(IIJIIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_92

    :cond_78
    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 2001
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    .line 2002
    invoke-interface {p1}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v4

    const/16 v6, 0x3e8

    const/16 v7, 0xc

    const/16 v8, 0x3e8

    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 2005
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "dex disabled"

    move-object v1, p0

    .line 2001
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(IIJIIILjava/lang/String;Ljava/lang/String;)V

    .line 2008
    :goto_92
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2011
    :cond_95
    monitor-exit v0

    return-void

    :catchall_97
    move-exception p0

    monitor-exit v0
    :try_end_99
    .catchall {:try_start_3 .. :try_end_99} :catchall_97

    throw p0
.end method

.method private synthetic lambda$updatePowerGroupsLocked$7()V
    .registers 4

    const-string v0, "PowerManagerService"

    const-string/jumbo v1, "updateDisplayPowerStateLocked: OutdoorMode timed out"

    .line 5403
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5404
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "display_outdoor_mode"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private synthetic lambda$userActivityFromNative$1()V
    .registers 2

    .line 2860
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mIsUserActivityNativeInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private synthetic lambda$wakePowerGroupLocked$2(IILjava/lang/String;)V
    .registers 5

    .line 3210
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPowerHistorian:Lcom/android/server/power/PowerHistorian;

    .line 3211
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->findForegroundPackageName()Ljava/lang/String;

    move-result-object p0

    .line 3210
    invoke-virtual {v0, p1, p2, p0, p3}, Lcom/android/server/power/PowerHistorian;->onScreenOn(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static lowLevelReboot(Ljava/lang/String;)V
    .registers 7

    .line 6724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[api] lowLevelReboot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PowerManagerService"

    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6725
    invoke-static {v1}, Lcom/android/server/power/Slog;->saveLogAsFile(Z)V

    .line 6726
    invoke-static {}, Lcom/android/server/power/PowerManagerLog;->getInstance()Lcom/android/server/power/PowerManagerLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerLog;->saveLogDataToFile()V

    const-string v0, ""

    if-nez p0, :cond_2d

    move-object p0, v0

    :cond_2d
    const-string/jumbo v3, "quiescent"

    .line 6735
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 6736
    sput-boolean v1, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    move-object p0, v0

    goto :goto_50

    :cond_3a
    const-string v4, ",quiescent"

    .line 6738
    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 6739
    sput-boolean v1, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    const/4 v4, 0x0

    .line 6741
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x9

    sub-int/2addr v5, v1

    .line 6740
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_50
    :goto_50
    const-string/jumbo v1, "recovery"

    .line 6744
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_62

    const-string/jumbo v4, "recovery-update"

    .line 6745
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_63

    :cond_62
    move-object p0, v1

    .line 6749
    :cond_63
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    if-eqz v1, :cond_8d

    .line 6752
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e

    .line 6753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6755
    :cond_7e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6758
    :cond_8d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reboot,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "sys.powerctl"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x4e20

    .line 6760
    :try_start_a7
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_aa
    .catch Ljava/lang/InterruptedException; {:try_start_a7 .. :try_end_aa} :catch_ab

    goto :goto_b2

    .line 6762
    :catch_ab
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :goto_b2
    const-string p0, "Unexpected return from lowLevelReboot!"

    .line 6764
    invoke-static {v2, p0}, Lcom/android/server/power/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static lowLevelShutdown(Ljava/lang/String;)V
    .registers 4

    .line 6707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[api] lowLevelShutdown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PowerManagerService"

    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6708
    invoke-static {v1}, Lcom/android/server/power/Slog;->saveLogAsFile(Z)V

    .line 6709
    invoke-static {}, Lcom/android/server/power/PowerManagerLog;->getInstance()Lcom/android/server/power/PowerManagerLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerLog;->saveLogDataToFile()V

    if-nez p0, :cond_29

    const-string p0, ""

    .line 6713
    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "shutdown,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "sys.powerctl"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static native nativeAcquireSuspendBlocker(Ljava/lang/String;)V
.end method

.method private static native nativeForceSuspend()Z
.end method

.method private native nativeInit()V
.end method

.method private static native nativeReleaseSuspendBlocker(Ljava/lang/String;)V
.end method

.method private static native nativeSetAutoSuspend(Z)V
.end method

.method private static native nativeSetInteractiveAsync(ZI)V
.end method

.method private static native nativeSetPowerBoost(II)V
.end method

.method private static native nativeSetPowerMode(IZ)Z
.end method


# virtual methods
.method public final acquireAbuseWakelockLocked()V
    .registers 7

    const-string v0, "PowerManagerService"

    const-string v1, "acquireAbuseWakelockLocked;"

    .line 4279
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4280
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_f
    if-ge v2, v0, :cond_37

    .line 4282
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 4283
    iget v4, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v5, 0xffff

    and-int/2addr v4, v5

    const/4 v5, 0x6

    if-eq v4, v5, :cond_2b

    const/16 v5, 0xa

    if-eq v4, v5, :cond_2b

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_2b

    goto :goto_34

    .line 4287
    :cond_2b
    iget-boolean v4, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz v4, :cond_34

    .line 4288
    iget-object v3, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    invoke-virtual {p0, v3, v1}, Lcom/android/server/power/PowerManagerService;->disableAbusiveWakeLockInternal(Landroid/os/IBinder;Z)V

    :cond_34
    :goto_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_37
    return-void
.end method

.method public final acquireWakeLockInternal(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;IILandroid/os/IWakeLockCallback;Z)V
    .registers 31

    move-object/from16 v0, p0

    move/from16 v4, p2

    move/from16 v11, p8

    const/4 v15, 0x1

    .line 2282
    :try_start_7
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 2283
    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v2
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_13} :catch_28

    move-object/from16 v12, p5

    .line 2282
    :try_start_15
    invoke-virtual {v1, v12, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2284
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, v11, :cond_25

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v1
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15 .. :try_end_21} :catch_2a

    if-eqz v1, :cond_25

    move v1, v15

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    move v13, v1

    goto :goto_2b

    :catch_28
    move-object/from16 v12, p5

    :catch_2a
    const/4 v13, 0x0

    .line 2288
    :goto_2b
    iget-object v10, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    const/4 v1, -0x1

    if-eq v4, v1, :cond_66

    .line 2291
    :try_start_31
    iget-boolean v1, v0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v1, :cond_3c

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v1, v4}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v1

    goto :goto_3d

    :cond_3c
    const/4 v1, 0x0

    :goto_3d
    if-nez v1, :cond_57

    const-string v0, "PowerManagerService"

    .line 2293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to acquire wake lock for invalid display: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2294
    monitor-exit v10

    return-void

    .line 2295
    :cond_57
    invoke-virtual {v1, v11}, Landroid/view/DisplayInfo;->hasAccess(I)Z

    move-result v1

    if-eqz v1, :cond_5e

    goto :goto_66

    .line 2296
    :cond_5e
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller does not have access to display"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2307
    :cond_66
    :goto_66
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v1

    if-ltz v1, :cond_c4

    .line 2311
    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/server/power/PowerManagerService$WakeLock;

    move-object/from16 v1, v16

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    move/from16 v5, p8

    move/from16 v6, p9

    move-object/from16 v7, p10

    .line 2312
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService$WakeLock;->hasSameProperties(ILjava/lang/String;Landroid/os/WorkSource;IILandroid/os/IWakeLockCallback;)Z

    move-result v1
    :try_end_88
    .catchall {:try_start_31 .. :try_end_88} :catchall_16b

    if-nez v1, :cond_ba

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p8

    move/from16 v7, p9

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v17, v10

    move-object/from16 v10, p10

    .line 2314
    :try_start_a0
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;)V

    move-object/from16 v1, v16

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move-object/from16 v9, p10

    .line 2316
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/power/PowerManagerService$WakeLock;->updateProperties(ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;IILandroid/os/IWakeLockCallback;)V

    const/4 v1, 0x0

    goto :goto_bd

    :cond_ba
    move-object/from16 v17, v10

    move v1, v15

    :goto_bd
    move v14, v1

    move/from16 v18, v13

    move-object/from16 v2, v16

    const/4 v1, 0x0

    goto :goto_113

    :cond_c4
    move-object/from16 v17, v10

    .line 2327
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$UidState;

    if-nez v1, :cond_de

    .line 2329
    new-instance v1, Lcom/android/server/power/PowerManagerService$UidState;

    invoke-direct {v1, v11}, Lcom/android/server/power/PowerManagerService$UidState;-><init>(I)V

    const/16 v2, 0x14

    .line 2330
    iput v2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    .line 2331
    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v2, v11, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_de
    move-object v10, v1

    .line 2333
    iget v1, v10, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    add-int/2addr v1, v15

    iput v1, v10, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    .line 2334
    new-instance v9, Lcom/android/server/power/PowerManagerService$WakeLock;

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object v12, v9

    move-object/from16 v9, p7

    move-object/from16 v16, v10

    move/from16 v10, p8

    move/from16 v11, p9

    move-object v14, v12

    move-object/from16 v12, v16

    move/from16 v18, v13

    move-object/from16 v13, p10

    invoke-direct/range {v1 .. v13}, Lcom/android/server/power/PowerManagerService$WakeLock;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;IILcom/android/server/power/PowerManagerService$UidState;Landroid/os/IWakeLockCallback;)V

    .line 2336
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2337
    invoke-virtual {v0, v14}, Lcom/android/server/power/PowerManagerService;->setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-object v2, v14

    move v1, v15

    const/4 v14, 0x0

    :goto_113
    if-eqz v14, :cond_11b

    .line 2343
    iget v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mConsecutiveAcquireCount:I

    add-int/2addr v3, v15

    iput v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mConsecutiveAcquireCount:I

    goto :goto_138

    .line 2345
    :cond_11b
    iget v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v4, 0xffff

    and-int/2addr v3, v4

    const/4 v4, 0x6

    if-eq v3, v4, :cond_13d

    const/16 v4, 0xa

    if-eq v3, v4, :cond_13d

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_13d

    const/16 v4, 0x20

    if-eq v3, v4, :cond_13d

    const/16 v4, 0x40

    if-eq v3, v4, :cond_13d

    const/16 v4, 0x80

    if-eq v3, v4, :cond_13d

    :goto_138
    move/from16 v3, p11

    move/from16 v14, v18

    goto :goto_159

    :cond_13d
    const-string v3, "PowerManagerService"

    .line 2354
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[api] acquire WakeLock "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x1d

    .line 2355
    invoke-static {v3, v2}, Lcom/android/server/power/PowerManagerLog;->sendLogEvent(ILcom/android/server/power/PowerManagerService$WakeLock;)V

    goto :goto_138

    .line 2366
    :goto_159
    invoke-virtual {v0, v2, v14, v3}, Lcom/android/server/power/PowerManagerService;->applyWakeLockFlagsOnAcquireLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ZZ)V

    .line 2368
    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/2addr v3, v15

    iput v3, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2369
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    if-eqz v1, :cond_169

    .line 2376
    invoke-virtual {v0, v2}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 2378
    :cond_169
    monitor-exit v17

    return-void

    :catchall_16b
    move-exception v0

    move-object/from16 v17, v10

    :goto_16e
    monitor-exit v17
    :try_end_16f
    .catchall {:try_start_a0 .. :try_end_16f} :catchall_170

    throw v0

    :catchall_170
    move-exception v0

    goto :goto_16e
.end method

.method public final applyWakeLockFlagsOnAcquireLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ZZ)V
    .registers 20
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 2461
    iget v0, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_f3

    .line 2462
    invoke-static/range {p1 .. p1}, Lcom/android/server/power/PowerManagerService;->isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v0

    if-eqz v0, :cond_f3

    .line 2465
    iget-object v0, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    const/4 v1, 0x0

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_42

    .line 2466
    iget-object v0, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    .line 2467
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->getFirstNonEmptyWorkChain(Landroid/os/WorkSource;)Landroid/os/WorkSource$WorkChain;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 2469
    invoke-virtual {v2}, Landroid/os/WorkSource$WorkChain;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    .line 2470
    invoke-virtual {v2}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v2

    goto :goto_46

    .line 2472
    :cond_2d
    invoke-virtual {v0, v1}, Landroid/os/WorkSource;->getPackageName(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_38

    .line 2473
    invoke-virtual {v0, v1}, Landroid/os/WorkSource;->getPackageName(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3a

    :cond_38
    iget-object v2, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    .line 2474
    :goto_3a
    invoke-virtual {v0, v1}, Landroid/os/WorkSource;->getUid(I)I

    move-result v0

    move-object v15, v2

    move v2, v0

    move-object v0, v15

    goto :goto_46

    .line 2477
    :cond_42
    iget-object v0, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    .line 2478
    iget v2, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    :goto_46
    move-object v12, v0

    move v13, v2

    const/16 v0, 0x2710

    const-string v2, "PowerManagerService"

    if-lt v13, v0, :cond_6a

    if-nez p3, :cond_6a

    .line 2504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Screen__On : Cancel (notifications are disabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2511
    :cond_6a
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->isWakeUpPreventionNeededForEdgeLightingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v0

    if-eqz v0, :cond_76

    const-string v0, "applyWakeLockFlagsOnAcquireLocked return by isWakeUpPreventionNeededForEdgeLighting"

    .line 2512
    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2519
    :cond_76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " wl: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    .line 2522
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/power/PowerManagerService$WakeLock;->getPowerGroupId()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_f3

    move/from16 v2, p2

    .line 2524
    invoke-virtual {v10, v12, v13, v2}, Lcom/android/server/power/PowerManagerService;->isAcquireCausesWakeupFlagAllowed(Ljava/lang/String;IZ)Z

    move-result v2

    if-eqz v2, :cond_f3

    .line 2526
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_c8

    move v14, v1

    .line 2531
    :goto_a1
    iget-object v0, v10, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v14, v0, :cond_c7

    .line 2532
    iget-object v0, v10, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/power/PowerGroup;

    iget-object v0, v10, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x2

    iget-object v5, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move v6, v13

    move-object v7, v12

    move v8, v13

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/power/PowerManagerService;->wakePowerGroupLocked(Lcom/android/server/power/PowerGroup;JILjava/lang/String;ILjava/lang/String;IZ)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_a1

    :cond_c7
    return-void

    .line 2538
    :cond_c8
    iget-object v1, v10, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_f3

    .line 2542
    iget-object v1, v10, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/power/PowerGroup;

    iget-object v0, v10, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x2

    iget-object v5, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move v6, v13

    move-object v7, v12

    move v8, v13

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/power/PowerManagerService;->wakePowerGroupLocked(Lcom/android/server/power/PowerGroup;JILjava/lang/String;ILjava/lang/String;IZ)V

    :cond_f3
    return-void
.end method

.method public final applyWakeLockFlagsOnReleaseLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2637
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_5c

    .line 2638
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 2640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[api] applyWakeLockFlagsOnReleaseLocked : userActivityNoUpdateLocked is called : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerService"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2646
    invoke-virtual {p1}, Lcom/android/server/power/PowerManagerService$WakeLock;->getPowerGroupId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4e

    .line 2647
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/power/PowerManagerService$WakeLock;->getPowerGroupId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/power/PowerGroup;

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(Lcom/android/server/power/PowerGroup;JIII)Z

    goto :goto_5c

    .line 2653
    :cond_4e
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    :cond_5c
    :goto_5c
    return-void
.end method

.method public final areAllPowerGroupsReadyLocked()Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3651
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_1c

    .line 3653
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerGroup;

    invoke-virtual {v3}, Lcom/android/server/power/PowerGroup;->isReadyLocked()Z

    move-result v3

    if-nez v3, :cond_19

    return v1

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1c
    const/4 p0, 0x1

    return p0
.end method

.method public final boostScreenBrightnessInternal(JI)V
    .registers 13

    .line 6483
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6484
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v1, :cond_51

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v1

    if-eqz v1, :cond_51

    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    cmp-long v1, p1, v1

    if-gez v1, :cond_14

    goto :goto_51

    :cond_14
    const-string v1, "PowerManagerService"

    .line 6489
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Brightness boost activated (uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6490
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    const/4 v1, 0x1

    .line 6491
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    .line 6492
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 6494
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/server/power/PowerGroup;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-wide v4, p1

    move v8, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(Lcom/android/server/power/PowerGroup;JIII)Z

    .line 6496
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 6497
    monitor-exit v0

    return-void

    .line 6486
    :cond_51
    :goto_51
    monitor-exit v0

    return-void

    :catchall_53
    move-exception p0

    .line 6497
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_53

    throw p0
.end method

.method public final brightnessLimitByCoverLocked()Z
    .registers 1

    .line 8076
    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mCoverType:I

    packed-switch p0, :pswitch_data_a

    const/4 p0, 0x0

    return p0

    :pswitch_7
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_a
    .packed-switch 0xf
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public final canDozeLocked(Lcom/android/server/power/PowerGroup;)Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 5222
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->supportsSandmanLocked()Z

    move-result p0

    if-eqz p0, :cond_f

    .line 5223
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result p0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public final canDreamLocked(Lcom/android/server/power/PowerGroup;)Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 5186
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_57

    .line 5187
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_57

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    if-eqz v0, :cond_57

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    if-eqz v0, :cond_57

    .line 5190
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->isBrightOrDimLocked()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 5191
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->isPolicyVrLocked()Z

    move-result v0

    if-nez v0, :cond_57

    .line 5192
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->verifiedCoverClosedLocked()Z

    move-result v0

    if-nez v0, :cond_57

    .line 5197
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getUserActivitySummaryLocked()I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    if-nez v0, :cond_2f

    goto :goto_57

    .line 5201
    :cond_2f
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked(Lcom/android/server/power/PowerGroup;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_56

    .line 5202
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez p1, :cond_3f

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    if-nez v2, :cond_3f

    return v1

    :cond_3f
    if-nez p1, :cond_4a

    .line 5205
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    if-ltz v2, :cond_4a

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    if-ge v3, v2, :cond_4a

    return v1

    :cond_4a
    if-eqz p1, :cond_54

    .line 5210
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    if-ltz p1, :cond_54

    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    if-lt p0, p1, :cond_55

    :cond_54
    move v1, v0

    :cond_55
    return v1

    :cond_56
    return v0

    :cond_57
    :goto_57
    return v1
.end method

.method public final cancelMasterBrightnessLimitAnimationLocked()V
    .registers 3

    const/4 v0, 0x0

    .line 11004
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessLimitRunning:Z

    .line 11005
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBrightnessLimitRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11006
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mTargetBrightnessForLimit:I

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mLastRequestedLimitationOfBrightness:I

    const/4 v1, -0x1

    .line 11007
    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/PowerManagerService;->updateMasterBrightnessLimitLocked(II)V

    const-string p0, "PowerManagerService"

    const-string v0, "[api] BrightnessLimitRunnable done (complete immediately)"

    .line 11008
    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public checkForLongWakeLocks()V
    .registers 16

    .line 4298
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4299
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v1}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v1

    .line 4300
    iput-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongDispatched:J

    const-wide/32 v3, 0xea60

    sub-long/2addr v1, v3

    .line 4303
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    const-wide v7, 0x7fffffffffffffffL

    move-wide v9, v7

    :goto_1c
    if-ge v6, v5, :cond_4a

    .line 4305
    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 4306
    iget v12, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v13, 0xffff

    and-int/2addr v12, v13

    const/4 v13, 0x1

    if-ne v12, v13, :cond_47

    .line 4308
    iget-boolean v12, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    if-eqz v12, :cond_47

    iget-boolean v12, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    if-nez v12, :cond_47

    .line 4309
    iget-wide v12, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    cmp-long v14, v12, v1

    if-gez v14, :cond_41

    .line 4311
    invoke-virtual {p0, v11}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockLongStartedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    goto :goto_47

    :cond_41
    add-long/2addr v12, v3

    cmp-long v11, v12, v9

    if-gez v11, :cond_47

    move-wide v9, v12

    :cond_47
    :goto_47
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    :cond_4a
    const-wide/16 v1, 0x0

    .line 4322
    iput-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    .line 4323
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    cmp-long v3, v9, v7

    if-eqz v3, :cond_5e

    .line 4325
    iput-wide v9, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongNextCheck:J

    .line 4326
    invoke-virtual {p0, v9, v10}, Lcom/android/server/power/PowerManagerService;->enqueueNotifyLongMsgLocked(J)V

    goto :goto_60

    .line 4328
    :cond_5e
    iput-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongNextCheck:J

    .line 4330
    :goto_60
    monitor-exit v0

    return-void

    :catchall_62
    move-exception p0

    monitor-exit v0
    :try_end_64
    .catchall {:try_start_3 .. :try_end_64} :catchall_62

    throw p0
.end method

.method public final crashInternal(Ljava/lang/String;)V
    .registers 4

    .line 6099
    new-instance v0, Lcom/android/server/power/PowerManagerService$3;

    const-string v1, "PowerManagerService.crash()"

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/power/PowerManagerService$3;-><init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 6106
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 6107
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_d} :catch_e

    goto :goto_14

    :catch_e
    move-exception p0

    const-string p1, "PowerManagerService"

    .line 6109
    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_14
    return-void
.end method

.method public final disableAbusiveWakeLockInternal(Landroid/os/IBinder;Z)V
    .registers 5

    .line 4252
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4253
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result p1

    if-ltz p1, :cond_20

    .line 4255
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 4257
    iget-boolean v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eq v1, p2, :cond_20

    .line 4258
    iput-boolean p2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz p2, :cond_1d

    .line 4261
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    goto :goto_20

    .line 4263
    :cond_1d
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 4267
    :cond_20
    :goto_20
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public final dozePowerGroupLocked(Lcom/android/server/power/PowerGroup;JII)Z
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3295
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e9

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v0, :cond_b

    goto/16 :goto_e9

    .line 3300
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getLastWakeTimeLocked()J

    move-result-wide v2

    cmp-long v0, p2, v2

    if-ltz v0, :cond_e9

    .line 3301
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result v0

    invoke-static {v0}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v0

    if-nez v0, :cond_1f

    goto/16 :goto_e9

    .line 3307
    :cond_1f
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v0

    const-string v2, "PowerManagerService"

    if-nez v0, :cond_32

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mGoToSleepPreventionEnabled:Z

    if-eqz v0, :cond_32

    const-string/jumbo p0, "goToSleepNoUpdateLocked: GoToSleep prevention is enabled"

    .line 3308
    invoke-static {v2, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3314
    :cond_32
    iget-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromSQD:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_3c

    .line 3315
    iput-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromSQD:J

    .line 3320
    :cond_3c
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_53

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    .line 3321
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerGroup;

    invoke-virtual {v0}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result v0

    if-ne v0, v3, :cond_53

    return v1

    .line 3334
    :cond_53
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->CARLIFE_DISPLAY_GROUP:Z

    const/4 v5, 0x4

    if-eqz v0, :cond_5f

    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v0

    if-ne v0, v5, :cond_5f

    return v1

    .line 3341
    :cond_5f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Screen__Off(d) - "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnOffCount:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffReason:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3342
    invoke-static {p4}, Landroid/os/PowerManager;->sleepReasonToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") groupId="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3343
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3341
    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->ik(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    .line 3344
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    .line 3345
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffReason:Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/Object;

    .line 3346
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnOffCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v4, v0}, Lcom/android/server/power/PowerManagerLog;->sendLogEvent(I[Ljava/lang/Object;)V

    .line 3349
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessLimitRunning:Z

    if-eqz v0, :cond_c8

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->cancelMasterBrightnessLimitAnimationLocked()V

    .line 3352
    :cond_c8
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v0

    if-nez v0, :cond_d7

    .line 3353
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDPSIDuration:[J

    aget-wide v1, v0, v5

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    aput-wide v1, v0, v5

    .line 3357
    :cond_d7
    invoke-virtual {p1, p4}, Lcom/android/server/power/PowerGroup;->setLastGoToSleepReasonLocked(I)V

    .line 3360
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerPmsMisc:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p5, p4}, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/power/PowerManagerService;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3365
    invoke-virtual {p1, p2, p3, p5, p4}, Lcom/android/server/power/PowerGroup;->dozeLocked(JII)Z

    move-result p0

    return p0

    :cond_e9
    :goto_e9
    return v1
.end method

.method public final dreamPowerGroupLocked(Lcom/android/server/power/PowerGroup;JI)Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3280
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_e

    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez p0, :cond_9

    goto :goto_e

    .line 3283
    :cond_9
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/power/PowerGroup;->dreamLocked(JI)Z

    move-result p0

    return p0

    :cond_e
    :goto_e
    const/4 p0, 0x0

    return p0
.end method

.method public final dumpInternal(Ljava/io/PrintWriter;Z)V
    .registers 14
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    const-string v0, "POWER MANAGER (dumpsys power)\n"

    .line 6933
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6937
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    const-string v1, "Power Manager State:"

    .line 6938
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6939
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    invoke-virtual {v1, p1}, Lcom/android/server/power/PowerManagerService$Constants;->dump(Ljava/io/PrintWriter;)V

    .line 6940
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDirty=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6941
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mWakefulness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6942
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v2

    invoke-static {v2}, Landroid/os/PowerManagerInternal;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6941
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6943
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mWakefulnessChanging="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6944
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mIsPowered="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6945
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPlugType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6946
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mBatteryLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6947
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mBatteryLevelWhenDreamStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6948
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDockState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6949
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mStayOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6950
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mProximityPositive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6951
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mBootCompleted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6952
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSystemReady="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6953
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargeTimeLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_127
    .catchall {:try_start_8 .. :try_end_127} :catchall_e59

    .line 6954
    :try_start_127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mEnhancedDischargeTimeElapsed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargeTimeElapsed:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6955
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mLastEnhancedDischargeTimeUpdatedElapsed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mLastEnhancedDischargeTimeUpdatedElapsed:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6957
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mEnhancedDischargePredictionIsPersonalized="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargePredictionIsPersonalized:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6959
    monitor-exit v1
    :try_end_16a
    .catchall {:try_start_127 .. :try_end_16a} :catchall_e56

    .line 6960
    :try_start_16a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mHalAutoSuspendModeEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6961
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mHalInteractiveModeEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6962
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mWakeLockSummary=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  mNotifyLongScheduled="

    .line 6963
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6964
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1c3

    const-string v1, "(none)"

    .line 6965
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1cc

    .line 6967
    :cond_1c3
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v5}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v5

    invoke-static {v1, v2, v5, v6, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 6969
    :goto_1cc
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, "  mNotifyLongDispatched="

    .line 6970
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6971
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongDispatched:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1e0

    const-string v1, "(none)"

    .line 6972
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1e9

    .line 6974
    :cond_1e0
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v5}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v5

    invoke-static {v1, v2, v5, v6, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 6976
    :goto_1e9
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, "  mNotifyLongNextCheck="

    .line 6977
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6978
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongNextCheck:J

    cmp-long v3, v1, v3

    if-nez v3, :cond_1fd

    const-string v1, "(none)"

    .line 6979
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_206

    .line 6981
    :cond_1fd
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v3}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 6983
    :goto_206
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6984
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mRequestWaitForNegativeProximity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6985
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mInterceptedPowerKeyForProximity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mInterceptedPowerKeyForProximity:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6988
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mInterceptedKeyForProximity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mInterceptedKeyForProximity:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6991
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSandmanScheduled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6992
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mBatteryLevelLow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6993
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLightDeviceIdleMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6994
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDeviceIdleMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6995
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDeviceIdleWhitelist="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6996
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDeviceIdleTempWhitelist="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6997
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLowPowerStandbyActive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6998
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastWakeTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastGlobalWakeTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6999
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastSleepTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastGlobalSleepTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7000
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastSleepReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mLastGlobalSleepReason:I

    invoke-static {v2}, Landroid/os/PowerManager;->sleepReasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7002
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastInteractivePowerHintTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    .line 7003
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7002
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7004
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastScreenBrightnessBoostTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    .line 7005
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7004
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7006
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScreenBrightnessBoostInProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7008
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDefaultDisplayReadyByProximity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDefaultDisplayReadyByProximity:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7009
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mHoldingWakeLockSuspendBlocker="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7010
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mHoldingDisplaySuspendBlocker="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7018
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, "Settings and Configuration:"

    .line 7019
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7020
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDecoupleHalAutoSuspendModeFromDisplayConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7022
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDecoupleHalInteractiveModeFromDisplayConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7024
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mWakeUpWhenPluggedOrUnpluggedConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7026
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7028
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mTheaterModeEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7030
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSuspendWhenScreenOffDueToProximityConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7032
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsSupportedConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7033
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsEnabledByDefaultConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7034
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsActivatedOnSleepByDefaultConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7036
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsActivatedOnDockByDefaultConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7038
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsEnabledOnBatteryConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7040
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsBatteryLevelMinimumWhenPoweredConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7042
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsBatteryLevelMinimumWhenNotPoweredConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7044
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsBatteryLevelDrainCutoffConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7046
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsEnabledSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7047
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsActivateOnSleepSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7048
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDreamsActivateOnDockSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7049
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDozeAfterScreenOff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7050
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMinimumScreenOffTimeoutConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7051
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMaximumScreenDimDurationConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7052
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMaximumScreenDimRatioConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7053
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAttentiveTimeoutConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mAttentiveTimeoutConfig:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7054
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAttentiveTimeoutSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mAttentiveTimeoutSetting:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7055
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAttentiveWarningDurationConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mAttentiveWarningDurationConfig:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7056
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScreenOffTimeoutSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7057
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSleepTimeoutSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7058
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMaximumScreenOffTimeoutFromDeviceAdmin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " (enforced="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7060
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7058
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7061
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mStayOnWhilePluggedInSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7062
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScreenBrightnessModeSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7063
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScreenBrightnessOverrideFromWindowManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7065
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mUserActivityTimeoutOverrideFromWindowManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7069
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mUserActivityTimeoutForDexOverrideFromWindowManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutForDexOverrideFromWindowManager:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7073
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mUserInactiveOverrideFromWindowManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7075
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDozeScreenStateOverrideFromDreamManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7077
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDrawWakeLockOverrideFromSidekick="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDrawWakeLockOverrideFromSidekick:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7078
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDozeScreenBrightnessOverrideFromDreamManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7080
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScreenBrightnessMinimum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMinimum:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7081
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScreenBrightnessMaximum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMaximum:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7082
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScreenBrightnessDefault="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDefault:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7083
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDoubleTapWakeEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7084
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mIsVrModeEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7086
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_COVER_DISPLAY_AUTO_BRIGHTNESS:Z

    if-eqz v1, :cond_780

    .line 7087
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScreenBrightnessModeSettingForCoverDisplay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSettingForCoverDisplay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7091
    :cond_780
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mForegroundProfile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mForegroundProfile:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7092
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7095
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastWakeUpReason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7099
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mOutdoorModeSetting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mOutdoorModeSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAutoBrightnessLowerLimit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mAutoBrightnessLowerLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAutoBrightnessUpperLimit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mAutoBrightnessUpperLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAutoBrightnessLimitLastCaller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mAutoBrightnessLimitLastCaller:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastAutoBrightnessLimitTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastAutoBrightnessLimitTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  SEC_FEATURE_USE_GED_DOZE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_GED_DOZE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  SEC_FEATURE_SEAMLESS_AOD: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SEAMLESS_AOD:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  SEC_FEATURE_WA_WAITING_AOD_WHEN_WAKINGUP_FROM_DOZE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_WA_WAITING_AOD_WHEN_WAKINGUP_FROM_DOZE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  SEC_FEATURE_WAKEUP_WHEN_PLUG_CHANGED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_WAKEUP_WHEN_PLUG_CHANGED:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  SEC_FEATURE_AOD_LOOK_CHARGING_UI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_AOD_LOOK_CHARGING_UI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAodMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mAodMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mShouldWaitForTransitionToAodUi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mShouldWaitForTransitionToAodUi:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  SEC_FEATURE_DEX_DUAL_VIEW: false"

    .line 7124
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  SEC_FEATURE_ENSURE_TRANSITION_TO_DOZING: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_ENSURE_TRANSITION_TO_DOZING:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7131
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getAttentiveTimeoutLocked()J

    move-result-wide v1

    .line 7132
    invoke-virtual {p0, v1, v2}, Lcom/android/server/power/PowerManagerService;->getSleepTimeoutLocked(J)J

    move-result-wide v3

    .line 7133
    invoke-virtual {p0, v3, v4, v1, v2}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked(JJ)J

    move-result-wide v5

    .line 7134
    invoke-virtual {p0, v5, v6}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(J)J

    move-result-wide v7

    .line 7135
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 7136
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Attentive timeout: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sleep timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screen off timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screen dim duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screen dim duration override: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromWindowManager:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQD Screen dim duration override: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromSQD:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screen off timeout for DeX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutForDex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7169
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 7170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wakelock Blacklist App id: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakelockBlacklistAppid:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7171
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakelockBlacklistAppid:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9d0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9f5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 7172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9d0

    .line 7176
    :cond_9f5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, "UID states (changing="

    .line 7177
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7178
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanging:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " changed="

    .line 7179
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7180
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanged:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, "):"

    .line 7181
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    .line 7182
    :goto_a13
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_a5c

    .line 7183
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$UidState;

    const-string v4, "  UID "

    .line 7184
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {p1, v4}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v4, ": "

    .line 7185
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7186
    iget-boolean v4, v3, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    if-eqz v4, :cond_a40

    const-string v4, "  ACTIVE "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_a45

    :cond_a40
    const-string v4, "INACTIVE "

    .line 7187
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_a45
    const-string v4, " count="

    .line 7188
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7189
    iget v4, v3, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, " state="

    .line 7190
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7191
    iget v3, v3, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a13

    .line 7194
    :cond_a5c
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v2, "Looper state:"

    .line 7195
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7196
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Landroid/util/PrintWriterPrinter;

    invoke-direct {v3, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v4, "  "

    invoke-virtual {v2, v3, v4}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    const-string v2, "Clear Cover:"

    .line 7199
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mIsCoverClosed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsCoverClosed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mlastUpdateCoverStateReason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mlastUpdateCoverStateReason:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mlastUpdateCoverStateTime: = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mlastUpdateCoverStateTime:J

    invoke-static {v3, v4}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mFeatureCoverSysfs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mFeatureCoverSysfs:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mCoverType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mCoverType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mlastSetCoverTypeTime:J

    invoke-static {v3, v4}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mlastUpdateCoverTypeReason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mlastUpdateCoverTypeReason:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mScreenBrightnessForClearCoverConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessForClearCoverConfig:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mBrightnessLimitByCoverConfig: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mBrightnessLimitByCoverConfig:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "Master Brightness Limit:"

    .line 7211
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mMasterBrightnessLowerLimit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessLowerLimit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mMasterBrightnessUpperLimit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessUpperLimit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mMasterBrightnessLimitLastCaller: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessLimitLastCaller:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mMasterBrightnessLimitPeriod: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessLimitPeriod:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mMasterBrightnessLimitRunning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessLimitRunning:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mLastRequestedLimitationOfBrightness: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mLastRequestedLimitationOfBrightness:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mTargetBrightnessForLimit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mTargetBrightnessForLimit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7222
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 7223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTA mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mFTAMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SEC_USE_FACTORY_BINARY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/power/PowerManagerService;->SEC_USE_FACTORY_BINARY:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7227
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 7228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wake Locks: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7229
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c4d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 7230
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c2c

    .line 7233
    :cond_c4d
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 7234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Suspend Blockers: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7235
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c70
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c91

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/SuspendBlocker;

    .line 7236
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c70

    .line 7239
    :cond_c91
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 7240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display Power: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7243
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 7244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mFreezingScreenBrightness: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mFreezingScreenBrightness:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7247
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerHistorian:Lcom/android/server/power/PowerHistorian;

    invoke-virtual {v2, p1}, Lcom/android/server/power/PowerHistorian;->dump(Ljava/io/PrintWriter;)V

    .line 7250
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 7251
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "screen on profiler: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/power/PowerManagerUtil;->sScreenOnProfiler:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v3}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7252
    invoke-virtual {v3}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;

    move v3, v1

    .line 7253
    :goto_cee
    array-length v4, v2

    if-ge v3, v4, :cond_d01

    .line 7254
    aget-object v4, v2, v3

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7255
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_cee

    .line 7259
    :cond_d01
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-virtual {v2, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->dump(Ljava/io/PrintWriter;)V

    .line 7260
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->dump(Ljava/io/PrintWriter;)V

    .line 7261
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mAttentionDetector:Lcom/android/server/power/AttentionDetector;

    invoke-virtual {v2, p1}, Lcom/android/server/power/AttentionDetector;->dump(Ljava/io/PrintWriter;)V

    .line 7263
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 7264
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 7265
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Profile power states: size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v1

    :goto_d2e
    if-ge v3, v2, :cond_d6d

    .line 7267
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    const-string v5, "  mUserId="

    .line 7268
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7269
    iget v5, v4, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mUserId:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, " mScreenOffTimeout="

    .line 7270
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7271
    iget-wide v5, v4, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeout:J

    invoke-virtual {p1, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    const-string v5, " mWakeLockSummary="

    .line 7276
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7277
    iget v5, v4, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, " mLastUserActivityTime="

    .line 7278
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7279
    iget-wide v5, v4, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    invoke-virtual {p1, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    const-string v5, " mLockingNotified="

    .line 7280
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7281
    iget-boolean v4, v4, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLockingNotified:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_d2e

    :cond_d6d
    const-string v2, "Display Group User Activity:"

    .line 7284
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7285
    :goto_d72
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_e0e

    .line 7286
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerGroup;

    .line 7287
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  displayGroupId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7288
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  userActivitySummary=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7289
    invoke-virtual {v2}, Lcom/android/server/power/PowerGroup;->getUserActivitySummaryLocked()I

    move-result v4

    .line 7288
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7290
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  lastUserActivityTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7291
    invoke-virtual {v2}, Lcom/android/server/power/PowerGroup;->getLastUserActivityTimeLocked()J

    move-result-wide v4

    .line 7290
    invoke-static {v4, v5}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7292
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  lastUserActivityTimeNoChangeLights="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7293
    invoke-virtual {v2}, Lcom/android/server/power/PowerGroup;->getLastUserActivityTimeNoChangeLightsLocked()J

    move-result-wide v4

    .line 7292
    invoke-static {v4, v5}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7294
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mWakeLockSummary=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7295
    invoke-virtual {v2}, Lcom/android/server/power/PowerGroup;->getWakeLockSummaryLocked()I

    move-result v2

    .line 7294
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_d72

    .line 7298
    :cond_e0e
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    .line 7299
    monitor-exit v0
    :try_end_e11
    .catchall {:try_start_16a .. :try_end_e11} :catchall_e59

    if-eqz v1, :cond_e16

    .line 7302
    invoke-virtual {v1, p1}, Lcom/android/server/power/WirelessChargerDetector;->dump(Ljava/io/PrintWriter;)V

    :cond_e16
    if-nez p2, :cond_e44

    const-string p2, "\n\n ====================== beginning of PMS  log ======================"

    .line 7307
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "  Day        Time    Tid Debug      TAG          INFO"

    .line 7308
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, " ==================================================================="

    .line 7309
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7310
    invoke-static {p1}, Lcom/android/server/power/Slog;->dump(Ljava/io/PrintWriter;)V

    const-string p2, " ======================= end of PMS log ========================"

    .line 7311
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, " PMSLog Done !!! \n\n"

    .line 7312
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "====================== beginning of PMS event log ======================"

    .line 7315
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7316
    invoke-static {p1}, Lcom/android/server/power/PowerManagerLog;->dump(Ljava/io/PrintWriter;)V

    const-string p2, "======================= PMS event log done! ========================"

    .line 7317
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7318
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 7322
    :cond_e44
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    if-eqz p2, :cond_e4b

    .line 7323
    invoke-virtual {p2, p1}, Lcom/android/server/power/Notifier;->dump(Ljava/io/PrintWriter;)V

    .line 7336
    :cond_e4b
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService;->mAmbientDisplaySuppressionController:Lcom/android/server/power/AmbientDisplaySuppressionController;

    invoke-virtual {p2, p1}, Lcom/android/server/power/AmbientDisplaySuppressionController;->dump(Ljava/io/PrintWriter;)V

    .line 7338
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyController:Lcom/android/server/power/LowPowerStandbyController;

    invoke-virtual {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->dump(Ljava/io/PrintWriter;)V

    return-void

    :catchall_e56
    move-exception p0

    .line 6959
    :try_start_e57
    monitor-exit v1
    :try_end_e58
    .catchall {:try_start_e57 .. :try_end_e58} :catchall_e56

    :try_start_e58
    throw p0

    :catchall_e59
    move-exception p0

    .line 7299
    monitor-exit v0
    :try_end_e5b
    .catchall {:try_start_e58 .. :try_end_e5b} :catchall_e59

    throw p0
.end method

.method public final dumpProto(Ljava/io/FileDescriptor;)V
    .registers 24

    move-object/from16 v0, p0

    .line 7344
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 7346
    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 7347
    :try_start_c
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    invoke-virtual {v3, v1}, Lcom/android/server/power/PowerManagerService$Constants;->dumpProto(Landroid/util/proto/ProtoOutputStream;)V

    const-wide v3, 0x10500000002L

    .line 7348
    iget v5, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10e00000003L

    .line 7349
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7350
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    const-wide v4, 0x10800000004L

    invoke-virtual {v1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 7351
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    const-wide v6, 0x10800000005L

    invoke-virtual {v1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v8, 0x10e00000006L

    .line 7352
    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    invoke-virtual {v1, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v8, 0x10500000007L

    .line 7353
    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v1, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v8, 0x10500000008L

    .line 7354
    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    invoke-virtual {v1, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v8, 0x10e00000009L

    .line 7357
    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    invoke-virtual {v1, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7358
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    const-wide v8, 0x1080000000aL

    invoke-virtual {v1, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 7359
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    const-wide v10, 0x1080000000bL

    invoke-virtual {v1, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v12, 0x1080000000cL

    .line 7360
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    invoke-virtual {v1, v12, v13, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v12, 0x1080000000dL

    .line 7361
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    invoke-virtual {v1, v12, v13, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 7362
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargeTimeLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_8e
    .catchall {:try_start_c .. :try_end_8e} :catchall_59d

    const-wide v12, 0x10300000034L

    .line 7363
    :try_start_93
    iget-wide v14, v0, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargeTimeElapsed:J

    invoke-virtual {v1, v12, v13, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v12, 0x10300000035L

    .line 7365
    iget-wide v14, v0, Lcom/android/server/power/PowerManagerService;->mLastEnhancedDischargeTimeUpdatedElapsed:J

    invoke-virtual {v1, v12, v13, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v12, 0x10800000036L

    .line 7368
    iget-boolean v14, v0, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargePredictionIsPersonalized:Z

    invoke-virtual {v1, v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 7371
    monitor-exit v3
    :try_end_ad
    .catchall {:try_start_93 .. :try_end_ad} :catchall_59a

    const-wide v12, 0x1080000000eL

    .line 7372
    :try_start_b2
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    invoke-virtual {v1, v12, v13, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 7375
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    const-wide v12, 0x1080000000fL

    invoke-virtual {v1, v12, v13, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v14, 0x10b00000010L

    .line 7379
    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    .line 7381
    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    const/16 v16, 0x1

    and-int/lit8 v3, v3, 0x1

    const/16 v17, 0x0

    if-eqz v3, :cond_d7

    move/from16 v3, v16

    goto :goto_d9

    :cond_d7
    move/from16 v3, v17

    :goto_d9
    const-wide v12, 0x10800000001L

    invoke-virtual {v1, v12, v13, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 7384
    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_ea

    move/from16 v3, v16

    goto :goto_ec

    :cond_ea
    move/from16 v3, v17

    :goto_ec
    const-wide v10, 0x10800000002L

    invoke-virtual {v1, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 7387
    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_fd

    move/from16 v3, v16

    goto :goto_ff

    :cond_fd
    move/from16 v3, v17

    :goto_ff
    const-wide v8, 0x10800000003L

    invoke-virtual {v1, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 7390
    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_110

    move/from16 v3, v16

    goto :goto_112

    :cond_110
    move/from16 v3, v17

    :goto_112
    invoke-virtual {v1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 7393
    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_11e

    move/from16 v3, v16

    goto :goto_120

    :cond_11e
    move/from16 v3, v17

    :goto_120
    invoke-virtual {v1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 7396
    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_12c

    move/from16 v3, v16

    goto :goto_12e

    :cond_12c
    move/from16 v3, v17

    :goto_12e
    const-wide v6, 0x10800000006L

    invoke-virtual {v1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 7399
    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_13f

    move/from16 v3, v16

    goto :goto_141

    :cond_13f
    move/from16 v3, v17

    :goto_141
    const-wide v6, 0x10800000007L

    invoke-virtual {v1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 7402
    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_152

    move/from16 v3, v16

    goto :goto_154

    :cond_152
    move/from16 v3, v17

    :goto_154
    const-wide v6, 0x10800000008L

    invoke-virtual {v1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 7405
    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v14, 0x10300000011L

    .line 7407
    iget-wide v6, v0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    invoke-virtual {v1, v14, v15, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v6, 0x10300000012L

    .line 7408
    iget-wide v14, v0, Lcom/android/server/power/PowerManagerService;->mNotifyLongDispatched:J

    invoke-virtual {v1, v6, v7, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v6, 0x10300000013L

    .line 7409
    iget-wide v14, v0, Lcom/android/server/power/PowerManagerService;->mNotifyLongNextCheck:J

    invoke-virtual {v1, v6, v7, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    move/from16 v3, v17

    .line 7411
    :goto_17f
    iget-object v6, v0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v3, v6, :cond_204

    .line 7412
    iget-object v6, v0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/PowerGroup;

    const-wide v14, 0x20b00000014L

    .line 7413
    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    const-wide v4, 0x10500000006L

    .line 7416
    invoke-virtual {v6}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v7

    .line 7415
    invoke-virtual {v1, v4, v5, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7417
    invoke-virtual {v6}, Lcom/android/server/power/PowerGroup;->getUserActivitySummaryLocked()I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v18, 0x1

    and-long v18, v4, v18

    const-wide/16 v20, 0x0

    cmp-long v7, v18, v20

    if-eqz v7, :cond_1b6

    move/from16 v7, v16

    goto :goto_1b8

    :cond_1b6
    move/from16 v7, v17

    .line 7418
    :goto_1b8
    invoke-virtual {v1, v12, v13, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide/16 v18, 0x2

    and-long v18, v4, v18

    cmp-long v7, v18, v20

    if-eqz v7, :cond_1c6

    move/from16 v7, v16

    goto :goto_1c8

    :cond_1c6
    move/from16 v7, v17

    .line 7420
    :goto_1c8
    invoke-virtual {v1, v10, v11, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide/16 v18, 0x4

    and-long v4, v4, v18

    cmp-long v4, v4, v20

    if-eqz v4, :cond_1d6

    move/from16 v4, v16

    goto :goto_1d8

    :cond_1d6
    move/from16 v4, v17

    .line 7422
    :goto_1d8
    invoke-virtual {v1, v8, v9, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v4, 0x10300000004L

    .line 7426
    invoke-virtual {v6}, Lcom/android/server/power/PowerGroup;->getLastUserActivityTimeLocked()J

    move-result-wide v8

    .line 7424
    invoke-virtual {v1, v4, v5, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v4, 0x10300000005L

    .line 7429
    invoke-virtual {v6}, Lcom/android/server/power/PowerGroup;->getLastUserActivityTimeNoChangeLightsLocked()J

    move-result-wide v6

    .line 7427
    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7430
    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v3, v3, 0x1

    const-wide v4, 0x10800000004L

    const-wide v8, 0x10800000003L

    goto/16 :goto_17f

    :cond_204
    const-wide v3, 0x10800000015L

    .line 7433
    iget-boolean v5, v0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v3, 0x10800000016L

    .line 7436
    iget-boolean v5, v0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v3, 0x10800000018L

    .line 7437
    iget-boolean v5, v0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 7438
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    const-wide v4, 0x10800000019L

    invoke-virtual {v1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v6, 0x1080000001aL

    .line 7439
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    invoke-virtual {v1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 7441
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    array-length v6, v3

    move/from16 v7, v17

    :goto_23b
    if-ge v7, v6, :cond_24a

    aget v8, v3, v7

    const-wide v14, 0x2050000001bL

    .line 7442
    invoke-virtual {v1, v14, v15, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_23b

    .line 7444
    :cond_24a
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    array-length v6, v3

    move/from16 v7, v17

    :goto_24f
    if-ge v7, v6, :cond_25e

    aget v8, v3, v7

    const-wide v14, 0x2050000001cL

    .line 7445
    invoke-virtual {v1, v14, v15, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_24f

    :cond_25e
    const-wide v6, 0x10800000037L

    .line 7448
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyActive:Z

    invoke-virtual {v1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v6, 0x1030000001dL

    .line 7451
    iget-wide v8, v0, Lcom/android/server/power/PowerManagerService;->mLastGlobalWakeTime:J

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v6, 0x1030000001eL

    .line 7452
    iget-wide v8, v0, Lcom/android/server/power/PowerManagerService;->mLastGlobalSleepTime:J

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v6, 0x10300000021L

    .line 7453
    iget-wide v8, v0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v6, 0x10300000022L

    .line 7456
    iget-wide v8, v0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7459
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    const-wide v6, 0x10800000023L

    invoke-virtual {v1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v8, 0x10800000025L

    .line 7462
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    invoke-virtual {v1, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v8, 0x10800000026L

    .line 7465
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    invoke-virtual {v1, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v8, 0x10b00000027L

    .line 7470
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 7471
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    invoke-virtual {v1, v12, v13, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 7475
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    invoke-virtual {v1, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 7479
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    const-wide v14, 0x10800000003L

    invoke-virtual {v1, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 7483
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    const-wide v14, 0x10800000004L

    invoke-virtual {v1, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 7487
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    const-wide v14, 0x10800000005L

    invoke-virtual {v1, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 7490
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    const-wide v14, 0x10800000006L

    invoke-virtual {v1, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 7494
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    const-wide v14, 0x10800000007L

    invoke-virtual {v1, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 7497
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    const-wide v14, 0x10800000008L

    invoke-virtual {v1, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v14, 0x10800000009L

    .line 7501
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    invoke-virtual {v1, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 7505
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    const-wide v14, 0x1080000000aL

    invoke-virtual {v1, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 7509
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    const-wide v14, 0x1080000000bL

    invoke-virtual {v1, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v14, 0x1110000000cL

    .line 7513
    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    invoke-virtual {v1, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v14, 0x1110000000dL

    .line 7517
    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    invoke-virtual {v1, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v14, 0x1110000000eL

    .line 7521
    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    invoke-virtual {v1, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7525
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    const-wide v14, 0x1080000000fL

    invoke-virtual {v1, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v14, 0x10800000010L

    .line 7528
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    invoke-virtual {v1, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v14, 0x10800000011L

    .line 7532
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    invoke-virtual {v1, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v14, 0x10800000012L

    .line 7536
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOff:Z

    invoke-virtual {v1, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v14, 0x10500000013L

    .line 7539
    iget-wide v6, v0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:J

    invoke-virtual {v1, v14, v15, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v6, 0x10500000014L

    .line 7543
    iget-wide v14, v0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:J

    invoke-virtual {v1, v6, v7, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v6, 0x10200000015L

    .line 7547
    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    invoke-virtual {v1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v6, 0x10500000016L

    .line 7550
    iget-wide v14, v0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:J

    invoke-virtual {v1, v6, v7, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v6, 0x11100000017L

    .line 7553
    iget-wide v14, v0, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:J

    invoke-virtual {v1, v6, v7, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v6, 0x11100000025L

    .line 7556
    iget-wide v14, v0, Lcom/android/server/power/PowerManagerService;->mAttentiveTimeoutSetting:J

    invoke-virtual {v1, v6, v7, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v6, 0x11100000026L

    .line 7559
    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mAttentiveTimeoutConfig:I

    invoke-virtual {v1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v6, 0x11100000027L

    .line 7562
    iget-wide v14, v0, Lcom/android/server/power/PowerManagerService;->mAttentiveWarningDurationConfig:J

    invoke-virtual {v1, v6, v7, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v6, 0x10500000018L

    .line 7566
    iget-wide v14, v0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    const-wide/32 v10, 0x7fffffff

    .line 7570
    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 7566
    invoke-virtual {v1, v6, v7, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7574
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v3

    .line 7571
    invoke-virtual {v1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v3, 0x10b0000001aL

    .line 7577
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 7579
    iget v5, v0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3db

    move/from16 v5, v16

    goto :goto_3dd

    :cond_3db
    move/from16 v5, v17

    :goto_3dd
    invoke-virtual {v1, v12, v13, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 7583
    iget v5, v0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3e9

    move/from16 v5, v16

    goto :goto_3eb

    :cond_3e9
    move/from16 v5, v17

    :goto_3eb
    const-wide v6, 0x10800000002L

    invoke-virtual {v1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 7587
    iget v5, v0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_3fc

    move/from16 v5, v16

    goto :goto_3fe

    :cond_3fc
    move/from16 v5, v17

    :goto_3fe
    const-wide v6, 0x10800000003L

    invoke-virtual {v1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 7592
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v3, 0x10e0000001bL

    .line 7594
    iget v5, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x1110000001cL

    .line 7597
    iget v5, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:F

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v3, 0x1120000001dL

    .line 7601
    iget-wide v5, v0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v3, 0x1080000001eL

    .line 7605
    iget-boolean v5, v0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v3, 0x10e0000001fL

    .line 7609
    iget v5, v0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10800000024L

    .line 7613
    iget-boolean v5, v0, Lcom/android/server/power/PowerManagerService;->mDrawWakeLockOverrideFromSidekick:Z

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v3, 0x10200000020L

    .line 7617
    iget v5, v0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10b00000021L

    .line 7623
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    const-wide v5, 0x10200000004L

    .line 7626
    iget v7, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMinimum:F

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v5, 0x10200000005L

    .line 7630
    iget v7, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMaximum:F

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v5, 0x10200000006L

    .line 7634
    iget v7, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDefault:F

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 7638
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v3, 0x10800000022L

    .line 7640
    iget-boolean v5, v0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 7643
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    const-wide v4, 0x10800000023L

    invoke-virtual {v1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 7646
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 7648
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->getAttentiveTimeoutLocked()J

    move-result-wide v3

    .line 7649
    invoke-virtual {v0, v3, v4}, Lcom/android/server/power/PowerManagerService;->getSleepTimeoutLocked(J)J

    move-result-wide v5

    .line 7650
    invoke-virtual {v0, v5, v6, v3, v4}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked(JJ)J

    move-result-wide v7

    .line 7651
    invoke-virtual {v0, v7, v8}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(J)J

    move-result-wide v9

    const-wide v11, 0x11100000033L

    .line 7652
    invoke-virtual {v1, v11, v12, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v3, 0x11100000028L

    .line 7653
    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v3, 0x10500000029L

    .line 7654
    invoke-virtual {v1, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v3, 0x1050000002aL

    .line 7655
    invoke-virtual {v1, v3, v4, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v3, 0x1080000002bL

    .line 7656
    iget-boolean v5, v0, Lcom/android/server/power/PowerManagerService;->mUidsChanging:Z

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v3, 0x1080000002cL

    .line 7657
    iget-boolean v5, v0, Lcom/android/server/power/PowerManagerService;->mUidsChanged:Z

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move/from16 v3, v17

    .line 7659
    :goto_4d6
    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_531

    .line 7660
    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService$UidState;

    const-wide v5, 0x20b0000002dL

    .line 7661
    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 7662
    iget-object v7, v0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    const-wide v8, 0x10500000001L

    .line 7663
    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v8, 0x10900000002L

    .line 7664
    invoke-static {v7}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 7665
    iget-boolean v7, v4, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    const-wide v8, 0x10800000003L

    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v10, 0x10500000004L

    .line 7666
    iget v7, v4, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    invoke-virtual {v1, v10, v11, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v10, 0x10e00000005L

    .line 7667
    iget v4, v4, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    .line 7668
    invoke-static {v4}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v4

    .line 7667
    invoke-virtual {v1, v10, v11, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7669
    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4d6

    .line 7672
    :cond_531
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    const-wide v4, 0x10b00000032L

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 7675
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    const-wide v4, 0x10b0000002eL

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Looper;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 7677
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_54f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_564

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService$WakeLock;

    const-wide v5, 0x20b0000002fL

    .line 7678
    invoke-virtual {v4, v1, v5, v6}, Lcom/android/server/power/PowerManagerService$WakeLock;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_54f

    .line 7681
    :cond_564
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_56a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_57f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/SuspendBlocker;

    const-wide v5, 0x20b00000030L

    .line 7682
    invoke-interface {v4, v1, v5, v6}, Lcom/android/server/power/SuspendBlocker;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_56a

    .line 7685
    :cond_57f
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    .line 7686
    monitor-exit v2
    :try_end_582
    .catchall {:try_start_b2 .. :try_end_582} :catchall_59d

    if-eqz v3, :cond_58c

    const-wide v4, 0x10b00000031L

    .line 7689
    invoke-virtual {v3, v1, v4, v5}, Lcom/android/server/power/WirelessChargerDetector;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 7692
    :cond_58c
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyController:Lcom/android/server/power/LowPowerStandbyController;

    const-wide v2, 0x10b00000038L

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/LowPowerStandbyController;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 7695
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void

    :catchall_59a
    move-exception v0

    .line 7371
    :try_start_59b
    monitor-exit v3
    :try_end_59c
    .catchall {:try_start_59b .. :try_end_59c} :catchall_59a

    :try_start_59c
    throw v0

    :catchall_59d
    move-exception v0

    .line 7686
    monitor-exit v2
    :try_end_59f
    .catchall {:try_start_59c .. :try_end_59f} :catchall_59d

    throw v0
.end method

.method public final enqueueNotifyLongMsgLocked(J)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2752
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    .line 2753
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 2754
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2755
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public final faceDetect()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final findForegroundPackageName()Ljava/lang/String;
    .registers 2

    .line 10747
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/server/power/PowerManagerService$Injector;->getActivityManager(Landroid/content/Context;)Landroid/app/ActivityManager;

    move-result-object p0

    const/4 v0, 0x1

    .line 10748
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    .line 10749
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string p0, ""

    goto :goto_23

    :cond_16
    const/4 v0, 0x0

    .line 10750
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    :goto_23
    return-object p0
.end method

.method public final findWakeLockIndexLocked(Landroid/os/IBinder;)I
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2720
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_19

    .line 2722
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget-object v2, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    if-ne v2, p1, :cond_16

    return v1

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_19
    const/4 p0, -0x1

    return p0
.end method

.method public findWakeLockLocked(Landroid/os/IBinder;)Lcom/android/server/power/PowerManagerService$WakeLock;
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2732
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    const/4 p0, 0x0

    return-object p0

    .line 2736
    :cond_9
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/PowerManagerService$WakeLock;

    return-object p0
.end method

.method public finishUidChangesInternal()V
    .registers 4

    .line 6274
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 6275
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanging:Z

    .line 6276
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanged:Z

    if-eqz v2, :cond_f

    .line 6277
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 6278
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanged:Z

    .line 6280
    :cond_f
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public final finishWakefulnessChangeIfNeededLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3614
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    if-eqz v0, :cond_44

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->areAllPowerGroupsReadyLocked()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 3615
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_24

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_24

    .line 3618
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_ENSURE_TRANSITION_TO_DOZING:Z

    if-eqz v0, :cond_23

    .line 3619
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeStartInProgress:Z

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    .line 3620
    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService;->setEnsureTransitionToDozingReleaserLocked(Z)V

    :cond_23
    return-void

    :cond_24
    const/4 v0, 0x0

    .line 3628
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeStartInProgress:Z

    .line 3631
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_ENSURE_TRANSITION_TO_DOZING:Z

    if-eqz v2, :cond_2e

    .line 3632
    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService;->setEnsureTransitionToDozingReleaserLocked(Z)V

    .line 3636
    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v2

    if-eq v2, v1, :cond_3a

    .line 3637
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v1

    if-nez v1, :cond_3d

    .line 3638
    :cond_3a
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->logSleepTimeoutRecapturedLocked()V

    .line 3640
    :cond_3d
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    .line 3641
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->onWakefulnessChangeFinished()V

    :cond_44
    return-void
.end method

.method public final forceSuspendInternal(I)Z
    .registers 12

    const/4 v0, 0x0

    .line 6673
    :try_start_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_67

    const/4 v2, 0x1

    .line 6674
    :try_start_5
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mForceSuspendActive:Z

    move v2, v0

    .line 6676
    :goto_8
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_29

    .line 6677
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/server/power/PowerGroup;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v3}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v6

    const/16 v8, 0x8

    move-object v4, p0

    move v9, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/power/PowerManagerService;->sleepPowerGroupLocked(Lcom/android/server/power/PowerGroup;JII)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 6682
    :cond_29
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 6683
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_64

    :try_start_2d
    const-string v1, "PowerManagerService"

    .line 6685
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Force-Suspending (uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")..."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6686
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-virtual {p1}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeForceSuspend()Z

    move-result p1

    if-nez p1, :cond_57

    const-string v1, "PowerManagerService"

    const-string v2, "Force-Suspending failed in native."

    .line 6688
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_2d .. :try_end_57} :catchall_67

    .line 6692
    :cond_57
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6693
    :try_start_5a
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mForceSuspendActive:Z

    .line 6695
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 6696
    monitor-exit v1

    return p1

    :catchall_61
    move-exception p0

    monitor-exit v1
    :try_end_63
    .catchall {:try_start_5a .. :try_end_63} :catchall_61

    throw p0

    :catchall_64
    move-exception p1

    .line 6683
    :try_start_65
    monitor-exit v1
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    :try_start_66
    throw p1
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_67

    :catchall_67
    move-exception p1

    .line 6692
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6693
    :try_start_6b
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mForceSuspendActive:Z

    .line 6695
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 6696
    monitor-exit v1
    :try_end_71
    .catchall {:try_start_6b .. :try_end_71} :catchall_72

    .line 6697
    throw p1

    :catchall_72
    move-exception p0

    .line 6696
    :try_start_73
    monitor-exit v1
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    throw p0
.end method

.method public final getAttentiveTimeoutLocked()J
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 4777
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mAttentiveTimeoutSetting:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b

    const-wide/16 v0, -0x1

    return-wide v0

    .line 4782
    :cond_b
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBinderServiceInstance()Lcom/android/server/power/PowerManagerService$BinderService;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 10257
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mBinderService:Lcom/android/server/power/PowerManagerService$BinderService;

    return-object p0
.end method

.method public getDesiredScreenPolicyLocked(I)I
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5522
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/android/server/power/PowerGroup;

    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOff:Z

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/PowerGroup;->getDesiredScreenPolicyLocked(ZZZZZ)I

    move-result p0

    return p0
.end method

.method public getGlobalWakefulnessLocked()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3518
    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessRaw:I

    return p0
.end method

.method public final getLastGoToSleepInternal()Landroid/os/PowerManager$SleepData;
    .registers 5

    .line 10302
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 10303
    :try_start_3
    new-instance v1, Landroid/os/PowerManager$SleepData;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastGlobalSleepTime:J

    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mLastGlobalSleepReason:I

    invoke-direct {v1, v2, v3, p0}, Landroid/os/PowerManager$SleepData;-><init>(JI)V

    monitor-exit v0

    return-object v1

    :catchall_e
    move-exception p0

    .line 10304
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public getLastShutdownReasonInternal()I
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 10267
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mSystemProperties:Lcom/android/server/power/SystemPropertiesWrapper;

    const-string/jumbo v0, "sys.boot.reason"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/android/server/power/SystemPropertiesWrapper;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 10268
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    sparse-switch v0, :sswitch_data_7a

    goto :goto_70

    :sswitch_1d
    const-string/jumbo v0, "shutdown,thermal,battery"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_27

    goto :goto_70

    :cond_27
    move v8, v1

    goto :goto_70

    :sswitch_29
    const-string/jumbo v0, "reboot,userrequested"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_33

    goto :goto_70

    :cond_33
    move v8, v2

    goto :goto_70

    :sswitch_35
    const-string/jumbo v0, "shutdown"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3f

    goto :goto_70

    :cond_3f
    move v8, v3

    goto :goto_70

    :sswitch_41
    const-string/jumbo v0, "shutdown,userrequested"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4b

    goto :goto_70

    :cond_4b
    move v8, v4

    goto :goto_70

    :sswitch_4d
    const-string/jumbo v0, "reboot"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_57

    goto :goto_70

    :cond_57
    move v8, v5

    goto :goto_70

    :sswitch_59
    const-string/jumbo v0, "shutdown,battery"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_63

    goto :goto_70

    :cond_63
    move v8, v6

    goto :goto_70

    :sswitch_65
    const-string/jumbo v0, "shutdown,thermal"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6f

    goto :goto_70

    :cond_6f
    move v8, v7

    :goto_70
    packed-switch v8, :pswitch_data_98

    return v7

    :pswitch_74
    return v1

    :pswitch_75
    return v6

    :pswitch_76
    return v4

    :pswitch_77
    return v5

    :pswitch_78
    return v2

    :pswitch_79
    return v3

    :sswitch_data_7a
    .sparse-switch
        -0x7e3d61bf -> :sswitch_65
        -0x418b4b49 -> :sswitch_59
        -0x37ba085b -> :sswitch_4d
        -0x32cb60d3 -> :sswitch_41
        -0xa17f9aa -> :sswitch_35
        0x28e9a3c -> :sswitch_29
        0x489a31a2 -> :sswitch_1d
    .end sparse-switch

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_77
        :pswitch_74
    .end packed-switch
.end method

.method public final getLastSleepReasonInternal()I
    .registers 2

    .line 10289
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 10290
    :try_start_3
    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mLastGlobalSleepReason:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 10291
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final getLastUserActivityStateInternal()I
    .registers 2

    .line 6798
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6799
    :try_start_3
    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityStateListenerState:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 6800
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final getLastWakeupInternal()Landroid/os/PowerManager$WakeData;
    .registers 9

    .line 10295
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 10296
    :try_start_3
    new-instance v7, Landroid/os/PowerManager$WakeData;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastGlobalWakeTime:J

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mLastGlobalWakeReason:I

    iget-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mLastGlobalSleepTime:J

    sub-long v5, v2, v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/os/PowerManager$WakeData;-><init>(JIJ)V

    monitor-exit v0

    return-object v7

    :catchall_13
    move-exception p0

    .line 10298
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public getLocalServiceInstance()Lcom/android/server/power/PowerManagerService$LocalService;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 10262
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mLocalService:Lcom/android/server/power/PowerManagerService$LocalService;

    return-object p0
.end method

.method public final getMaxProximityNegativeDebounce()I
    .registers 6

    .line 5757
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_35

    .line 5759
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget v3, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v4, 0xffff

    and-int/2addr v3, v4

    const/16 v4, 0x20

    if-ne v3, v4, :cond_32

    .line 5761
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget v3, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mProximityNegativeDebounce:I

    if-ge v1, v3, :cond_32

    .line 5762
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget v1, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mProximityNegativeDebounce:I

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_35
    return v1
.end method

.method public final getMaxProximityPositiveDebounce()I
    .registers 6

    .line 5740
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_35

    .line 5742
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget v3, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v4, 0xffff

    and-int/2addr v3, v4

    const/16 v4, 0x20

    if-ne v3, v4, :cond_32

    .line 5744
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget v3, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mProximityPositiveDebounce:I

    if-ge v1, v3, :cond_32

    .line 5745
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget v1, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mProximityPositiveDebounce:I

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_35
    return v1
.end method

.method public final getNextProfileTimeoutLocked(J)J
    .registers 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 4656
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    move-wide v4, v1

    :goto_a
    if-ge v3, v0, :cond_29

    .line 4658
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    .line 4659
    iget-wide v7, v6, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    iget-wide v9, v6, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeout:J

    add-long/2addr v7, v9

    cmp-long v6, v7, p1

    if-lez v6, :cond_26

    cmp-long v6, v4, v1

    if-eqz v6, :cond_25

    cmp-long v6, v7, v4

    if-gez v6, :cond_26

    :cond_25
    move-wide v4, v7

    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_29
    return-wide v4
.end method

.method public final getScreenDimDurationLocked(J)J
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 4852
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromWindowManager:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    cmp-long v4, v0, p1

    if-ltz v4, :cond_12

    :cond_c
    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromSQD:J

    cmp-long v2, v4, v2

    if-eqz v2, :cond_20

    :cond_12
    cmp-long p1, v0, p1

    if-gez p1, :cond_1d

    .line 4856
    iget-wide p0, p0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromSQD:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    goto :goto_1f

    .line 4858
    :cond_1d
    iget-wide p0, p0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromSQD:J

    :goto_1f
    return-wide p0

    .line 4862
    :cond_20
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:J

    long-to-float p1, p1

    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    mul-float/2addr p1, p0

    float-to-long p0, p1

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getScreenOffTimeoutForDexLocked()J
    .registers 7

    .line 4839
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutForDex:I

    int-to-long v0, v0

    .line 4841
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutForDexOverrideFromWindowManager:J

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-ltz p0, :cond_f

    .line 4842
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_f
    return-wide v0
.end method

.method public final getScreenOffTimeoutLocked(JJ)J
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 4799
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:J

    .line 4800
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 4801
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 4803
    :cond_e
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1a

    .line 4804
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_1a
    cmp-long v2, p1, v4

    if-ltz v2, :cond_22

    .line 4807
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_22
    cmp-long p1, p3, v4

    if-ltz p1, :cond_2a

    .line 4810
    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 4814
    :cond_2a
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mIsDualViewMode:Z

    if-eqz p1, :cond_36

    .line 4815
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutForDexLocked()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 4828
    :cond_36
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenTimeout:I

    int-to-long p1, p1

    cmp-long p1, v0, p1

    if-eqz p1, :cond_61

    .line 4829
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "getScreenOffTimeoutLocked: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenTimeout:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " -> "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PowerManagerService"

    invoke-static {p2, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    long-to-int p1, v0

    .line 4830
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenTimeout:I

    .line 4834
    :cond_61
    iget-wide p0, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getSleepTimeoutLocked(J)J
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 4787
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_b

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_b
    cmp-long v2, p1, v2

    if-ltz v2, :cond_13

    .line 4792
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 4794
    :cond_13
    iget-wide p0, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getStartingLimitationOfBrightness()I
    .registers 3

    .line 10969
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal;->getLastAnimationTarget()F

    move-result v0

    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v0

    .line 10970
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mTargetBrightnessForLimit:I

    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mLastRequestedLimitationOfBrightness:I

    if-ge v1, p0, :cond_16

    if-ltz v0, :cond_16

    if-le v1, v0, :cond_15

    move v0, v1

    :cond_15
    return v0

    :cond_16
    return p0
.end method

.method public final getWakeLockSummaryFlags(Lcom/android/server/power/PowerManagerService$WakeLock;)I
    .registers 4

    .line 4110
    iget p0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v0, 0xffff

    and-int/2addr p0, v0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_36

    const/4 v0, 0x6

    if-eq p0, v0, :cond_30

    const/16 v0, 0xa

    if-eq p0, v0, :cond_2a

    const/16 v1, 0x1a

    if-eq p0, v1, :cond_25

    const/16 p1, 0x20

    if-eq p0, p1, :cond_22

    const/16 p1, 0x40

    if-eq p0, p1, :cond_21

    const/16 p1, 0x80

    if-eq p0, p1, :cond_21

    goto :goto_3b

    :cond_21
    return p1

    :cond_22
    const/16 p0, 0x10

    return p0

    .line 4120
    :cond_25
    iget-boolean p0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-nez p0, :cond_3b

    return v0

    .line 4128
    :cond_2a
    iget-boolean p0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-nez p0, :cond_3b

    const/4 p0, 0x2

    return p0

    .line 4136
    :cond_30
    iget-boolean p0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-nez p0, :cond_3b

    const/4 p0, 0x4

    return p0

    .line 4112
    :cond_36
    iget-boolean p0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-nez p0, :cond_3b

    return v0

    :cond_3b
    :goto_3b
    const/4 p0, 0x0

    return p0
.end method

.method public getWakefulnessLocked(I)I
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3524
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/PowerGroup;

    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result p0

    return p0
.end method

.method public final handleAbuseWakelockWhenUseractivityChanged()V
    .registers 17

    move-object/from16 v0, p0

    .line 4174
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4175
    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4176
    :try_start_a
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mAbuseWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_f8

    .line 4177
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mAbuseWakeLockDisabled:Z

    if-eqz v3, :cond_18

    goto/16 :goto_f8

    .line 4180
    :cond_18
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_20
    if-ge v5, v3, :cond_36

    .line 4182
    iget-object v6, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 4183
    invoke-static {v6}, Lcom/android/server/power/PowerManagerService;->isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v7

    if-eqz v7, :cond_33

    .line 4184
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_33
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    .line 4187
    :cond_36
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_a .. :try_end_37} :catchall_fa

    .line 4189
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4190
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 4191
    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    const/4 v6, 0x1

    .line 4192
    iput-boolean v6, v0, Lcom/android/server/power/PowerManagerService;->mAllBrightWakeLockAbuse:Z

    .line 4193
    iget-object v7, v0, Lcom/android/server/power/PowerManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 4194
    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->getVisibleWinSurfacePkgList()Ljava/util/ArrayList;

    move-result-object v7

    move v8, v4

    :goto_55
    if-ge v8, v2, :cond_f7

    .line 4197
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 4198
    iget v10, v9, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-static {v10}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v10

    const/16 v12, 0x64

    .line 4204
    :try_start_65
    iget-object v13, v9, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v13, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v13

    .line 4205
    iget-object v13, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_6f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_65 .. :try_end_6f} :catch_8e
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_6f} :catch_8a

    and-int/2addr v13, v6

    if-eqz v13, :cond_74

    move v13, v6

    goto :goto_75

    :cond_74
    move v13, v4

    :goto_75
    :try_start_75
    const-string v14, "android.permission.DEVICE_POWER"

    .line 4208
    iget-object v15, v9, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v14, v15}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14
    :try_end_7d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_75 .. :try_end_7d} :catch_8f
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_7d} :catch_8b

    .line 4209
    :try_start_7d
    iget-object v15, v9, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15
    :try_end_83
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7d .. :try_end_83} :catch_90
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_83} :catch_8c

    .line 4210
    :try_start_83
    iget-object v6, v9, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v6
    :try_end_89
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_83 .. :try_end_89} :catch_91
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_89} :catch_a9

    goto :goto_aa

    :catch_8a
    move v13, v4

    :catch_8b
    const/4 v14, -0x1

    :catch_8c
    const/4 v15, 0x1

    goto :goto_a9

    :catch_8e
    move v13, v4

    :catch_8f
    const/4 v14, -0x1

    :catch_90
    const/4 v15, 0x1

    :catch_91
    const-string v6, "PowerManagerService"

    .line 4212
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Process abuse wakelock; Failed to find "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v9, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :catch_a9
    :goto_a9
    move v6, v12

    .line 4217
    :goto_aa
    iget v4, v9, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v11, 0xffff

    and-int/2addr v4, v11

    const/4 v11, 0x6

    if-eq v4, v11, :cond_d9

    const/16 v11, 0xa

    if-eq v4, v11, :cond_bd

    const/16 v11, 0x1a

    if-eq v4, v11, :cond_bd

    :goto_bb
    const/4 v4, 0x0

    goto :goto_f2

    :cond_bd
    if-le v6, v12, :cond_d5

    if-eqz v10, :cond_d5

    if-nez v13, :cond_d5

    if-nez v15, :cond_d5

    const/4 v4, -0x1

    if-ne v14, v4, :cond_d5

    .line 4226
    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4227
    :try_start_cb
    iget-object v6, v0, Lcom/android/server/power/PowerManagerService;->mAbuseWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4228
    monitor-exit v4

    goto :goto_bb

    :catchall_d2
    move-exception v0

    monitor-exit v4
    :try_end_d4
    .catchall {:try_start_cb .. :try_end_d4} :catchall_d2

    throw v0

    :cond_d5
    const/4 v4, 0x0

    .line 4230
    iput-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mAllBrightWakeLockAbuse:Z

    goto :goto_f2

    :cond_d9
    const/4 v4, 0x0

    if-le v6, v12, :cond_f2

    if-eqz v10, :cond_f2

    if-nez v13, :cond_f2

    if-nez v15, :cond_f2

    const/4 v6, -0x1

    if-ne v14, v6, :cond_f2

    .line 4240
    iget-object v6, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 4241
    :try_start_e8
    iget-object v10, v0, Lcom/android/server/power/PowerManagerService;->mAbuseWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4242
    monitor-exit v6

    goto :goto_f2

    :catchall_ef
    move-exception v0

    monitor-exit v6
    :try_end_f1
    .catchall {:try_start_e8 .. :try_end_f1} :catchall_ef

    throw v0

    :cond_f2
    :goto_f2
    add-int/lit8 v8, v8, 0x1

    const/4 v6, 0x1

    goto/16 :goto_55

    :cond_f7
    return-void

    .line 4178
    :cond_f8
    :goto_f8
    :try_start_f8
    monitor-exit v2

    return-void

    :catchall_fa
    move-exception v0

    .line 4187
    monitor-exit v2
    :try_end_fc
    .catchall {:try_start_f8 .. :try_end_fc} :catchall_fa

    throw v0
.end method

.method public final handleAttentiveTimeout()V
    .registers 3

    .line 4765
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4770
    :try_start_3
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4771
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 4772
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public final handleBatteryStateChangedLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 6025
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 6026
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    return-void
.end method

.method public final handleDexScreenOffTimeoutChange()V
    .registers 7

    .line 7875
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "key"

    const-string/jumbo v2, "timeout_dex"

    .line 7876
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "def"

    const-string v2, "600000"

    .line 7877
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7879
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/server/power/PowerManagerService;->DEX_SETTINGS_URI:Landroid/net/Uri;

    const-string/jumbo v3, "getSettings"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_91

    const-string/jumbo v1, "timeout_dex"

    .line 7881
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7882
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 7883
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_35
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_35} :catch_8a

    .line 7884
    :try_start_35
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutForDex:I

    if-eq v1, v3, :cond_64

    const-string v3, "PowerManagerService"

    .line 7885
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dex screen off timeout : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutForDex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7886
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutForDex:I

    .line 7887
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 7888
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 7890
    :cond_64
    monitor-exit v2
    :try_end_65
    .catchall {:try_start_35 .. :try_end_65} :catchall_87

    :try_start_65
    const-string v1, "PowerManagerService"

    .line 7891
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "timeout for dex is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutForDex:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catch Ljava/lang/IllegalArgumentException; {:try_start_65 .. :try_end_86} :catch_8a

    goto :goto_91

    :catchall_87
    move-exception p0

    .line 7890
    :try_start_88
    monitor-exit v2
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    :try_start_89
    throw p0
    :try_end_8a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_89 .. :try_end_8a} :catch_8a

    :catch_8a
    const-string p0, "PowerManagerService"

    const-string v0, "IllegalArgumentException :: getDeXSettings timeout_dex"

    .line 7894
    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_91
    :goto_91
    return-void
.end method

.method public final handleSandman(I)V
    .registers 17

    move-object v0, p0

    move/from16 v1, p1

    .line 5041
    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v10, 0x0

    .line 5042
    :try_start_7
    iput-boolean v10, v0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    .line 5043
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v3

    if-nez v3, :cond_13

    .line 5045
    monitor-exit v2

    return-void

    .line 5047
    :cond_13
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerGroup;

    .line 5048
    invoke-virtual {v3}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result v4

    .line 5050
    invoke-virtual {v3}, Lcom/android/server/power/PowerGroup;->isSandmanSummonedLocked()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_77

    invoke-virtual {v3}, Lcom/android/server/power/PowerGroup;->isReadyLocked()Z

    move-result v5

    if-eqz v5, :cond_77

    .line 5051
    invoke-virtual {p0, v3}, Lcom/android/server/power/PowerManagerService;->canDreamLocked(Lcom/android/server/power/PowerGroup;)Z

    move-result v5

    if-nez v5, :cond_3b

    invoke-virtual {p0, v3}, Lcom/android/server/power/PowerManagerService;->canDozeLocked(Lcom/android/server/power/PowerGroup;)Z

    move-result v5

    if-eqz v5, :cond_39

    goto :goto_3b

    :cond_39
    move v5, v10

    goto :goto_3c

    :cond_3b
    :goto_3b
    move v5, v6

    :goto_3c
    const-string v7, "PowerManagerService"

    .line 5053
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handleSandman : startDreaming: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "  (canDreamLocked: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5054
    invoke-virtual {p0, v3}, Lcom/android/server/power/PowerManagerService;->canDreamLocked(Lcom/android/server/power/PowerGroup;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "  canDozeLocked: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5056
    invoke-virtual {p0, v3}, Lcom/android/server/power/PowerManagerService;->canDozeLocked(Lcom/android/server/power/PowerGroup;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ")  groupId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 5053
    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5059
    invoke-virtual {v3, v10}, Lcom/android/server/power/PowerGroup;->setSandmanSummonedLocked(Z)V

    goto :goto_78

    :cond_77
    move v5, v10

    .line 5063
    :goto_78
    monitor-exit v2
    :try_end_79
    .catchall {:try_start_7 .. :try_end_79} :catchall_1be

    .line 5069
    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    const/4 v3, 0x3

    if-eqz v2, :cond_b5

    if-eqz v5, :cond_ad

    .line 5072
    invoke-virtual {v2, v10}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    const-string v2, "PowerManagerService"

    .line 5074
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleSandman : startDream("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v4, v3, :cond_94

    move v8, v6

    goto :goto_95

    :cond_94
    move v8, v10

    :goto_95
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5076
    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    if-ne v4, v3, :cond_a9

    goto :goto_aa

    :cond_a9
    move v6, v10

    :goto_aa
    invoke-virtual {v2, v6}, Landroid/service/dreams/DreamManagerInternal;->startDream(Z)V

    .line 5078
    :cond_ad
    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v2}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    move-result v2

    move v11, v2

    goto :goto_b6

    :cond_b5
    move v11, v10

    :goto_b6
    if-eqz v5, :cond_c2

    if-nez v11, :cond_c2

    const-string v2, "PowerManagerService"

    const-string/jumbo v6, "handleSandman : startDreaming, but isDreaming false"

    .line 5085
    invoke-static {v2, v6}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5090
    :cond_c2
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_ENSURE_TRANSITION_TO_DOZING:Z

    if-nez v2, :cond_c8

    .line 5094
    iput-boolean v10, v0, Lcom/android/server/power/PowerManagerService;->mDozeStartInProgress:Z

    .line 5098
    :cond_c8
    iget-object v12, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 5099
    :try_start_cb
    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-nez v2, :cond_d5

    .line 5101
    monitor-exit v12

    return-void

    :cond_d5
    if-eqz v5, :cond_ee

    if-eqz v11, :cond_ee

    .line 5106
    iget v2, v0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    if-ne v4, v3, :cond_e7

    const-string v2, "PowerManagerService"

    const-string v5, "Dozing..."

    .line 5108
    invoke-static {v2, v5}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ee

    :cond_e7
    const-string v2, "PowerManagerService"

    const-string v5, "Dreaming..."

    .line 5110
    invoke-static {v2, v5}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5116
    :cond_ee
    :goto_ee
    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/power/PowerGroup;

    .line 5117
    invoke-virtual {v2}, Lcom/android/server/power/PowerGroup;->isSandmanSummonedLocked()Z

    move-result v1

    if-nez v1, :cond_1b9

    .line 5118
    invoke-virtual {v2}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result v1

    if-eq v1, v4, :cond_105

    goto/16 :goto_1b9

    .line 5123
    :cond_105
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v1}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v5

    const/4 v1, 0x2

    if-ne v4, v1, :cond_198

    if-eqz v11, :cond_151

    .line 5125
    invoke-virtual {p0, v2}, Lcom/android/server/power/PowerManagerService;->canDreamLocked(Lcom/android/server/power/PowerGroup;)Z

    move-result v1

    if-eqz v1, :cond_151

    .line 5126
    iget v1, v0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    if-ltz v1, :cond_14f

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    sub-int/2addr v4, v1

    if-ge v3, v4, :cond_14f

    .line 5129
    invoke-virtual {p0, v2}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked(Lcom/android/server/power/PowerGroup;)Z

    move-result v1

    if-nez v1, :cond_14f

    const-string v1, "PowerManagerService"

    .line 5133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping dream because the battery appears to be draining faster than it is charging.  Battery level when dream started: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "%.  Battery level now: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "%."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_151

    .line 5139
    :cond_14f
    monitor-exit v12

    return-void

    .line 5144
    :cond_151
    :goto_151
    invoke-virtual {p0, v2}, Lcom/android/server/power/PowerManagerService;->isItBedTimeYetLocked(Lcom/android/server/power/PowerGroup;)Z

    move-result v1

    if-eqz v1, :cond_177

    const-string v1, " dream(timeout)"

    .line 5145
    iput-object v1, v0, Lcom/android/server/power/PowerManagerService;->mScreenOffReason:Ljava/lang/String;

    .line 5146
    invoke-virtual {p0, v2, v5, v6}, Lcom/android/server/power/PowerManagerService;->isAttentiveTimeoutExpired(Lcom/android/server/power/PowerGroup;J)Z

    move-result v1

    if-eqz v1, :cond_16c

    const/4 v7, 0x2

    const/16 v8, 0x3e8

    move-object v1, p0

    move-wide v3, v5

    move v5, v7

    move v6, v8

    .line 5147
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->sleepPowerGroupLocked(Lcom/android/server/power/PowerGroup;JII)Z

    goto :goto_1a8

    :cond_16c
    const/4 v7, 0x2

    const/16 v8, 0x3e8

    move-object v1, p0

    move-wide v3, v5

    move v5, v7

    move v6, v8

    .line 5150
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->dozePowerGroupLocked(Lcom/android/server/power/PowerGroup;JII)Z

    goto :goto_1a8

    :cond_177
    const-string v1, " dream end"

    .line 5154
    iput-object v1, v0, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    const/16 v1, 0x6c

    .line 5156
    iput v1, v0, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    const/16 v7, 0xd

    const-string v8, "android.server.power:DREAM_FINISHED"

    const/16 v9, 0x3e8

    .line 5158
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 5161
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x3e8

    move-object v1, p0

    move-wide v3, v5

    move v5, v7

    move-object v6, v8

    move v7, v9

    move-object v8, v13

    move v9, v14

    .line 5158
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/power/PowerManagerService;->wakePowerGroupLocked(Lcom/android/server/power/PowerGroup;JILjava/lang/String;ILjava/lang/String;I)V

    goto :goto_1a8

    :cond_198
    if-ne v4, v3, :cond_1a8

    if-eqz v11, :cond_19e

    .line 5165
    monitor-exit v12

    return-void

    :cond_19e
    const/4 v7, 0x2

    const/16 v8, 0x3e8

    move-object v1, p0

    move-wide v3, v5

    move v5, v7

    move v6, v8

    .line 5169
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->sleepPowerGroupLocked(Lcom/android/server/power/PowerGroup;JII)Z

    .line 5172
    :cond_1a8
    :goto_1a8
    monitor-exit v12
    :try_end_1a9
    .catchall {:try_start_cb .. :try_end_1a9} :catchall_1bb

    if-eqz v11, :cond_1b8

    const-string v1, "PowerManagerService"

    const-string/jumbo v2, "handleSandman : stopDream"

    .line 5176
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5177
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v0, v10}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    :cond_1b8
    return-void

    .line 5119
    :cond_1b9
    :goto_1b9
    :try_start_1b9
    monitor-exit v12

    return-void

    :catchall_1bb
    move-exception v0

    .line 5172
    monitor-exit v12
    :try_end_1bd
    .catchall {:try_start_1b9 .. :try_end_1bd} :catchall_1bb

    throw v0

    :catchall_1be
    move-exception v0

    .line 5063
    :try_start_1bf
    monitor-exit v2
    :try_end_1c0
    .catchall {:try_start_1bf .. :try_end_1c0} :catchall_1be

    throw v0
.end method

.method public final handleScreenBrightnessBoostTimeout()V
    .registers 3

    .line 6513
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6518
    :try_start_3
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 6519
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 6520
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public final handleSendBroadcastToHWParam(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    .line 6909
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSemHqmManager:Landroid/os/SemHqmManager;

    if-eqz v0, :cond_19

    const/4 v1, 0x0

    const-string v2, "Display"

    const-string/jumbo v4, "sm"

    const-string v5, "0.0"

    const-string/jumbo v6, "sec"

    const-string v7, ""

    const-string v9, ""

    move-object v3, p1

    move-object v8, p2

    .line 6913
    invoke-virtual/range {v0 .. v9}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_21

    :cond_19
    const-string p0, "PowerManagerService"

    const-string/jumbo p1, "sendBroadcastToHWParam() mSemHqmManager is null"

    .line 6916
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_21
    return-void
.end method

.method public handleSettingsChangedLocked()V
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2271
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateSettingsLocked()V

    .line 2272
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    return-void
.end method

.method public final handleSmartStay(Z)V
    .registers 11

    .line 10810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleSmartStay"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_10

    const-string v1, "(preTest)"

    goto :goto_12

    :cond_10
    const-string v1, ""

    :goto_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerService"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 10811
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mFaceDetected:Z

    .line 10813
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v0, :cond_2c

    const-string/jumbo p0, "handleSmartStay: mBootCompleted is false. return"

    .line 10814
    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 10819
    :cond_2c
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3d

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAllBrightWakeLockAbuse:Z

    if-nez v0, :cond_3d

    const-string/jumbo p0, "handleSmartStay : skip smart stay because of screen bright wake lock"

    .line 10820
    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 10825
    :cond_3d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 10826
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->faceDetect()Z

    move-result v0

    .line 10827
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-string/jumbo v6, "ms)"

    if-eqz p1, :cond_87

    .line 10832
    iget-wide v7, p0, Lcom/android/server/power/PowerManagerService;->mNextTimeoutForPreSmartStay:J

    cmp-long p1, v4, v7

    if-lez p1, :cond_6e

    iget-wide v7, p0, Lcom/android/server/power/PowerManagerService;->mNextTimeoutForSmartStay:J

    cmp-long p1, v4, v7

    if-gez p1, :cond_6e

    if-nez v0, :cond_bf

    .line 10835
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mFaceDetectedFailIntent:Landroid/content/Intent;

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string/jumbo p0, "handleSmartStay(preTest) : sendBroadcast done."

    .line 10836
    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bf

    .line 10840
    :cond_6e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "handleSmartStay(preTest) : canceled (T:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bf

    .line 10844
    :cond_87
    iget-wide v7, p0, Lcom/android/server/power/PowerManagerService;->mNextTimeoutForSmartStay:J

    cmp-long p1, v4, v7

    if-lez p1, :cond_a7

    .line 10845
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mFaceDetected:Z

    .line 10846
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "handleSmartStay : mFaceDetected : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mFaceDetected:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bf

    .line 10850
    :cond_a7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "handleSmartStay : canceled (T:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bf
    :goto_bf
    return-void
.end method

.method public final handleUidStateChangeLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 6285
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanging:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    .line 6286
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanged:Z

    goto :goto_b

    .line 6288
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    :goto_b
    return-void
.end method

.method public final handleUserActivityTimeout()V
    .registers 3

    .line 4754
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4759
    :try_start_3
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4760
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 4761
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public final handleWakeLockDeath(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 5

    const-string v0, "PowerManagerService"

    .line 2603
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] handleWakeLockDeath : release WakeLock : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2604
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2610
    :try_start_19
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_23

    .line 2612
    monitor-exit v0

    return-void

    .line 2615
    :cond_23
    invoke-virtual {p0, p1, v1}, Lcom/android/server/power/PowerManagerService;->removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    .line 2616
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public final incrementBootCount()V
    .registers 4

    .line 7699
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7703
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "boot_count"

    .line 7702
    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_11
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_11} :catch_14
    .catchall {:try_start_3 .. :try_end_11} :catchall_12

    goto :goto_15

    :catchall_12
    move-exception p0

    goto :goto_26

    :catch_14
    const/4 v1, 0x0

    .line 7708
    :goto_15
    :try_start_15
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "boot_count"

    add-int/lit8 v1, v1, 0x1

    .line 7707
    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 7709
    monitor-exit v0

    return-void

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_15 .. :try_end_27} :catchall_12

    throw p0
.end method

.method public final initLCDFlashMode()V
    .registers 2

    const/4 v0, 0x0

    .line 8348
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLCDFlashModeLock:Lcom/android/server/power/PowerManagerService$LCDFlashModeLock;

    const-string p0, "PowerManagerService"

    const-string/jumbo v0, "mLCDFlashModeLock set to null"

    .line 8349
    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final interceptPowerKeyDownInternal(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 10317
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 10322
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mInterceptedPowerKeyForProximity:Z

    if-nez v0, :cond_15

    .line 10323
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal;->ignoreProximitySensorUntilChanged()V

    const/4 v0, 0x1

    .line 10324
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mInterceptedPowerKeyForProximity:Z

    .line 10325
    monitor-exit p1

    return v0

    .line 10327
    :cond_15
    monitor-exit p1

    const/4 p0, 0x0

    return p0

    :catchall_18
    move-exception p0

    monitor-exit p1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public final isAcquireCausesWakeupFlagAllowed(Ljava/lang/String;IZ)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    if-eqz p3, :cond_8

    return v1

    .line 2444
    :cond_8
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 p3, 0x3d

    invoke-virtual {p0, p3, p2, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_13

    return v1

    :cond_13
    return v0
.end method

.method public final isAttentiveTimeoutExpired(Lcom/android/server/power/PowerGroup;J)Z
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 4739
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getAttentiveTimeoutLocked()J

    move-result-wide v0

    .line 4741
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result p0

    if-nez p0, :cond_1b

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_1b

    .line 4742
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getLastUserActivityTimeLocked()J

    move-result-wide p0

    add-long/2addr p0, v0

    cmp-long p0, p2, p0

    if-ltz p0, :cond_1b

    const/4 p0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    return p0
.end method

.method public final isBeingKeptAwakeLocked(Lcom/android/server/power/PowerGroup;)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 4970
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHeadlessStayOn:Z

    if-nez v0, :cond_23

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    if-nez v0, :cond_23

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-nez v0, :cond_23

    .line 4973
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getWakeLockSummaryLocked()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_23

    .line 4974
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getUserActivitySummaryLocked()I

    move-result p1

    and-int/lit8 p1, p1, 0x3

    if-nez p1, :cond_23

    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

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

.method public final isBeingKeptFromInattentiveSleepLocked()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 4987
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHeadlessStayOn:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-nez v0, :cond_17

    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method public final isCoverClosedBySysfs()Z
    .registers 3

    .line 8018
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->isSupportCover()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    :cond_8
    const-string p0, "/sys/class/sec/hall_ic/hall_detect"

    .line 8021
    invoke-static {p0}, Lcom/android/server/power/PowerManagerUtil;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "CLOSE"

    .line 8022
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    return v0
.end method

.method public isDeviceIdleModeInternal()Z
    .registers 2

    .line 6012
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6013
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 6014
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final isInteractiveInternal()Z
    .registers 2

    .line 5934
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5935
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result p0

    invoke-static {p0}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_d
    move-exception p0

    .line 5936
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final isInteractiveInternal(II)Z
    .registers 7

    .line 5942
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5943
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v1, :cond_6c

    const/4 v1, -0x1

    if-ne p1, v1, :cond_b

    goto :goto_6c

    .line 5947
    :cond_b
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v2, p1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 5950
    iget p1, p1, Landroid/view/DisplayInfo;->displayGroupId:I

    goto :goto_17

    :cond_16
    move p1, v1

    .line 5953
    :goto_17
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 5954
    invoke-static {p2}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v3

    if-nez v3, :cond_25

    const/16 v3, 0x3e9

    if-ne v2, v3, :cond_62

    :cond_25
    if-eq p1, v1, :cond_62

    .line 5956
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked(I)I

    move-result p1

    .line 5957
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result p0

    invoke-static {p0}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result p0

    .line 5958
    invoke-static {p1}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result p1

    if-eq p0, p1, :cond_60

    const-string v1, "PowerManagerService"

    .line 5960
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isInteractiveInternal(): uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", interactive="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", interactive(internal)="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5963
    :cond_60
    monitor-exit v0

    return p1

    .line 5965
    :cond_62
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result p0

    invoke-static {p0}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 5944
    :cond_6c
    :goto_6c
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result p0

    invoke-static {p0}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_76
    move-exception p0

    .line 5967
    monitor-exit v0
    :try_end_78
    .catchall {:try_start_3 .. :try_end_78} :catchall_76

    throw p0
.end method

.method public final isInternalDisplayOffInternal()Z
    .registers 3

    .line 5998
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5999
    :try_start_3
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    const/4 v1, 0x0

    .line 6000
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/PowerGroup;

    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result p0

    .line 5999
    invoke-static {p0}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result p0

    if-nez p0, :cond_17

    const/4 v1, 0x1

    :cond_17
    monitor-exit v0

    return v1

    :catchall_19
    move-exception p0

    .line 6001
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public final isItBedTimeYetLocked(Lcom/android/server/power/PowerGroup;)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 4949
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 4953
    :cond_6
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v0

    .line 4954
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/power/PowerManagerService;->isAttentiveTimeoutExpired(Lcom/android/server/power/PowerGroup;J)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 4955
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptFromInattentiveSleepLocked()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 4957
    :cond_19
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked(Lcom/android/server/power/PowerGroup;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isLightDeviceIdleModeInternal()Z
    .registers 2

    .line 6018
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6019
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 6020
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 6457
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_13

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p0, v0, v2

    if-gez p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public final isPreSmartStayNeeded(J)Z
    .registers 8

    .line 10856
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->USE_PRE_SMART_STAY:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    .line 10857
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerGroup;

    invoke-virtual {v0}, Lcom/android/server/power/PowerGroup;->getUserActivitySummaryLocked()I

    move-result v0

    if-ne v0, v1, :cond_21

    iget-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mNextTimeoutForPreSmartStay:J

    cmp-long p1, p1, v3

    if-gez p1, :cond_21

    iget-wide p0, p0, Lcom/android/server/power/PowerManagerService;->mNextTimeoutForSmartStay:J

    cmp-long p0, v3, p0

    if-gez p0, :cond_21

    goto :goto_22

    :cond_21
    move v1, v2

    :goto_22
    return v1
.end method

.method public final isProfileBeingKeptAwakeLocked(Lcom/android/server/power/PowerManagerService$ProfilePowerState;J)Z
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3763
    iget-wide v0, p1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    iget-wide v2, p1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeout:J

    add-long/2addr v0, v2

    cmp-long p2, v0, p2

    if-gtz p2, :cond_1a

    iget p1, p1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    and-int/lit8 p2, p1, 0x20

    if-nez p2, :cond_1a

    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-eqz p0, :cond_18

    and-int/lit8 p0, p1, 0x10

    if-eqz p0, :cond_18

    goto :goto_1a

    :cond_18
    const/4 p0, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 p0, 0x1

    :goto_1b
    return p0
.end method

.method public final isProximityPositiveInternal()Z
    .registers 2

    .line 5990
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5991
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 5992
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final isScreenBrightnessBoostedInternal()Z
    .registers 2

    .line 6501
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6502
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 6503
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final isSmartStayNeeded(J)Z
    .registers 5

    .line 10864
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mNextTimeoutForSmartStay:J

    cmp-long p0, v0, p1

    if-lez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public final isSupportCover()Z
    .registers 3

    .line 8033
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cover.flip"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 8034
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.sec.feature.cover.sview"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez v0, :cond_1f

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

.method public final isWakeLockLevelSupportedInternal(I)Z
    .registers 6

    .line 2833
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_30

    const/4 v2, 0x6

    if-eq p1, v2, :cond_30

    const/16 v2, 0xa

    if-eq p1, v2, :cond_30

    const/16 v2, 0x1a

    if-eq p1, v2, :cond_30

    const/16 v2, 0x20

    const/4 v3, 0x0

    if-eq p1, v2, :cond_20

    const/16 p0, 0x40

    if-eq p1, p0, :cond_30

    const/16 p0, 0x80

    if-eq p1, p0, :cond_30

    .line 2847
    :try_start_1e
    monitor-exit v0

    return v3

    .line 2844
    :cond_20
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz p1, :cond_2d

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManagerInternal;->isProximitySensorAvailable()Z

    move-result p0

    if-eqz p0, :cond_2d

    goto :goto_2e

    :cond_2d
    move v1, v3

    :goto_2e
    monitor-exit v0

    return v1

    .line 2841
    :cond_30
    monitor-exit v0

    return v1

    :catchall_32
    move-exception p0

    .line 2849
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_1e .. :try_end_34} :catchall_32

    throw p0
.end method

.method public final isWakeUpPreventionNeededForEdgeLightingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .registers 7

    .line 3061
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->isInteractiveInternal()Z

    move-result v0

    const-string v1, "PowerManagerService"

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    const-string/jumbo p0, "isWakeUpPreventionNeededForEdgeLightingLocked - interactive"

    .line 3062
    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3065
    :cond_10
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v3, 0xffff

    and-int/2addr v0, v3

    const/4 v3, 0x6

    if-eq v0, v3, :cond_22

    const/16 v3, 0xa

    if-eq v0, v3, :cond_22

    const/16 v3, 0x1a

    if-eq v0, v3, :cond_22

    return v2

    .line 3074
    :cond_22
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$Injector;->getNotificationManager()Landroid/app/INotificationManager;

    move-result-object p0

    if-eqz p0, :cond_4c

    .line 3077
    :try_start_2a
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-interface {p0, v0, v3, v4, p1}, Landroid/app/INotificationManager;->dispatchDelayedWakelockAndBlocked(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result p0
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_36} :catch_37

    return p0

    :catch_37
    move-exception p0

    .line 3079
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to call NotificationManager : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    return v2
.end method

.method public final isWakeUpPreventionNeededLocked()Z
    .registers 5

    .line 3091
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    const/4 v1, 0x0

    const/16 v2, 0x70

    if-ne v0, v2, :cond_8

    return v1

    .line 3098
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    const/4 v2, 0x1

    const-string v3, "PowerManagerService"

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mInterceptedPowerKeyForProximity:Z

    if-nez v0, :cond_23

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mInterceptedKeyForProximity:Z

    if-nez v0, :cond_23

    const-string v0, "Screen__On : Cancel (proximity)"

    .line 3099
    invoke-static {v3, v0}, Lcom/android/server/power/Slog;->dk(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    .line 3100
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerLog;->sendLogEvent(I[Ljava/lang/Object;)V

    move v1, v2

    .line 3106
    :cond_23
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDualScreenPolicy:I

    if-eqz v0, :cond_4d

    .line 3107
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->screenBlockedByCoverLocked()Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsDualViewMode:Z

    if-nez v0, :cond_4d

    .line 3108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Screen__On : Cancel (coverType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mCoverType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/server/power/Slog;->dk(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    :cond_4d
    move v2, v1

    :goto_4e
    return v2
.end method

.method public final logSleepTimeoutRecapturedLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3604
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v0

    .line 3605
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_16

    .line 3607
    invoke-static {v2, v3}, Lcom/android/server/EventLogTags;->writePowerSoftSleepRequested(J)V

    const-wide/16 v0, -0x1

    .line 3608
    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    :cond_16
    return-void
.end method

.method public final makeDpucData([Ljava/lang/String;)V
    .registers 6

    .line 6845
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-nez v0, :cond_10

    .line 6846
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "DisplaySolution"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 6848
    :cond_10
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_33

    .line 6849
    array-length v1, p1

    .line 6850
    invoke-virtual {v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->getOnPixelRatioValueForPMS()Ljava/lang/String;

    move-result-object v0

    .line 6851
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, v1, -0x1

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    .line 6854
    :cond_33
    sget-object v0, Lcom/android/server/power/PowerManagerService;->LUBS_KEYS:[Ljava/lang/String;

    array-length v1, v0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/power/PowerManagerService;->parseBigData([Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "DPUC"

    .line 6855
    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/PowerManagerService;->handleSendBroadcastToHWParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final maybeHideInattentiveSleepWarningLocked(JJ)Z
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 4719
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getAttentiveTimeoutLocked()J

    move-result-wide v0

    .line 4721
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mInattentiveSleepWarningOverlayController:Lcom/android/server/power/InattentiveSleepWarningController;

    invoke-virtual {v2}, Lcom/android/server/power/InattentiveSleepWarningController;->isShown()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_e

    return v3

    .line 4725
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1b

    .line 4726
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mInattentiveSleepWarningOverlayController:Lcom/android/server/power/InattentiveSleepWarningController;

    invoke-virtual {p0, v3}, Lcom/android/server/power/InattentiveSleepWarningController;->dismiss(Z)V

    return v4

    :cond_1b
    const-wide/16 v5, 0x0

    cmp-long v0, v0, v5

    if-ltz v0, :cond_2d

    .line 4728
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptFromInattentiveSleepLocked()Z

    move-result v0

    if-nez v0, :cond_2d

    cmp-long p1, p1, p3

    if-gez p1, :cond_2c

    goto :goto_2d

    :cond_2c
    return v3

    .line 4730
    :cond_2d
    :goto_2d
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mInattentiveSleepWarningOverlayController:Lcom/android/server/power/InattentiveSleepWarningController;

    invoke-virtual {p0, v4}, Lcom/android/server/power/InattentiveSleepWarningController;->dismiss(Z)V

    return v4
.end method

.method public final maybeUpdateForegroundProfileLastActivityLocked(J)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3129
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mForegroundProfile:I

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    if-eqz p0, :cond_14

    .line 3137
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_14

    .line 3138
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    :cond_14
    return-void
.end method

.method public monitor()V
    .registers 2

    .line 6926
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 6927
    :try_start_3
    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public final needSuspendBlockerLocked()Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 5857
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->areAllPowerGroupsReadyLocked()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 5861
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-eqz v0, :cond_d

    return v1

    .line 5870
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_19

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeStartInProgress:Z

    if-eqz v0, :cond_19

    return v1

    :cond_19
    const/4 v0, 0x0

    move v2, v0

    .line 5874
    :goto_1b
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_39

    .line 5875
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerGroup;

    .line 5876
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    invoke-virtual {v3, v4, v5}, Lcom/android/server/power/PowerGroup;->needSuspendBlockerLocked(ZZ)Z

    move-result v3

    if-eqz v3, :cond_36

    return v1

    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_39
    return v0
.end method

.method public final notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2741
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_23

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-nez v0, :cond_23

    const/4 v0, 0x1

    .line 2742
    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    .line 2743
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iget-object v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v8, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mCallback:Landroid/os/IWakeLockCallback;

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/power/Notifier;->onWakeLockAcquired(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;)V

    .line 2746
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->restartNofifyLongTimerLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    :cond_23
    return-void
.end method

.method public final notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;)V
    .registers 34
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2789
    iget-boolean v2, v0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v2, :cond_75

    iget-boolean v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    if-eqz v2, :cond_75

    .line 2791
    iget v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v3, 0xffff

    and-int/2addr v2, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4a

    .line 2793
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    sub-long/2addr v4, v6

    const/16 v2, 0xaa9

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "CHG"

    aput-object v8, v6, v7

    .line 2794
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    invoke-static {v2, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2798
    :cond_4a
    iget-object v7, v0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v8, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v9, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v10, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v11, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v12, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iget-object v13, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v14, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    iget-object v15, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mCallback:Landroid/os/IWakeLockCallback;

    move/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move/from16 v19, p5

    move/from16 v20, p6

    move-object/from16 v21, p7

    move-object/from16 v22, p8

    move-object/from16 v23, p9

    invoke-virtual/range {v7 .. v23}, Lcom/android/server/power/Notifier;->onWakeLockChanging(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;)V

    .line 2802
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockLongFinishedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 2807
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->restartNofifyLongTimerLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    :cond_75
    return-void
.end method

.method public final notifyWakeLockLongFinishedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2778
    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    .line 2779
    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    .line 2780
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object p1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/power/Notifier;->onLongPartialWakeLockFinish(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V

    :cond_14
    return-void
.end method

.method public final notifyWakeLockLongStartedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2769
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-nez v0, :cond_18

    const/4 v0, 0x1

    .line 2770
    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    .line 2771
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object p1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/power/Notifier;->onLongPartialWakeLockStart(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V

    :cond_18
    return-void
.end method

.method public final notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2813
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_64

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    if-eqz v0, :cond_64

    .line 2815
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v1, 0xffff

    and-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_46

    .line 2817
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    sub-long/2addr v3, v5

    const/16 v0, 0xaa9

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "REL"

    aput-object v6, v5, v1

    .line 2818
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v0, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2822
    :cond_46
    iput-boolean v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    const-wide/16 v0, 0x0

    .line 2823
    iput-wide v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    .line 2824
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iget-object v8, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v9, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    iget-object v10, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mCallback:Landroid/os/IWakeLockCallback;

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/power/Notifier;->onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;)V

    .line 2827
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockLongFinishedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    :cond_64
    return-void
.end method

.method public onBootPhase(I)V
    .registers 9

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_8

    .line 1708
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->systemReady()V

    goto :goto_79

    :cond_8
    const/16 v0, 0x258

    if-ne p1, v0, :cond_10

    .line 1711
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->incrementBootCount()V

    goto :goto_79

    :cond_10
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_79

    .line 1714
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1715
    :try_start_17
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v2

    const/4 v0, 0x1

    .line 1716
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    .line 1717
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1719
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    invoke-virtual {v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->onBootCompleted()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    move-object v1, p0

    .line 1720
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 1723
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1724
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    if-eqz v0, :cond_52

    .line 1725
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/power/PowerGroup;

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    .line 1726
    invoke-interface {v0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v3

    const/16 v5, 0xa

    const/16 v6, 0x3e8

    move-object v1, p0

    .line 1725
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->sleepPowerGroupLocked(Lcom/android/server/power/PowerGroup;JII)Z

    .line 1731
    :cond_52
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/devicestate/DeviceStateManager;

    new-instance v1, Landroid/os/HandlerExecutor;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v2, Lcom/android/server/power/PowerManagerService$DeviceStateListener;

    invoke-direct {v2, p0}, Lcom/android/server/power/PowerManagerService$DeviceStateListener;-><init>(Lcom/android/server/power/PowerManagerService;)V

    invoke-virtual {v0, v1, v2}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 1736
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mCoverAuthReadyRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3a98

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1745
    monitor-exit p1

    goto :goto_79

    :catchall_76
    move-exception p0

    monitor-exit p1
    :try_end_78
    .catchall {:try_start_17 .. :try_end_78} :catchall_76

    throw p0

    :cond_79
    :goto_79
    return-void
.end method

.method public onPowerGroupEventLocked(ILcom/android/server/power/PowerGroup;)V
    .registers 15
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3561
    invoke-virtual {p2}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_c

    .line 3563
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->delete(I)V

    .line 3565
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v2

    .line 3566
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->recalculateGlobalWakefulnessLocked()I

    move-result v3

    if-nez p1, :cond_27

    if-ne v3, v1, :cond_27

    .line 3571
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v4}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3e8

    move-object v5, p0

    move-object v6, p2

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(Lcom/android/server/power/PowerGroup;JIII)Z

    :cond_27
    if-eq v2, v3, :cond_64

    const/16 p2, 0xb

    if-eq v3, v1, :cond_39

    const/4 v2, 0x3

    if-eq v3, v2, :cond_33

    const/4 p1, 0x0

    move v4, p1

    goto :goto_3e

    :cond_33
    if-ne p1, v1, :cond_36

    goto :goto_3d

    :cond_36
    const/16 p2, 0xc

    goto :goto_3d

    :cond_39
    if-nez p1, :cond_3d

    const/16 p2, 0xa

    :cond_3d
    :goto_3d
    move v4, p2

    .line 3591
    :goto_3e
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {p1}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v2

    const/16 v5, 0x3e8

    const/16 v6, 0x3e8

    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 3592
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "groupId: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v1, p0

    .line 3591
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/power/PowerManagerService;->updateGlobalWakefulnessLocked(JIIILjava/lang/String;Ljava/lang/String;)V

    .line 3594
    :cond_64
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    const/high16 p2, 0x10000

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3595
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    return-void
.end method

.method public onStart()V
    .registers 5

    .line 1697
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBinderService:Lcom/android/server/power/PowerManagerService$BinderService;

    const-string/jumbo v1, "power"

    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 1699
    const-class v0, Landroid/os/PowerManagerInternal;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLocalService:Lcom/android/server/power/PowerManagerService$LocalService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1701
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 1702
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;)V

    return-void
.end method

.method public onUserActivity()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 6665
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6666
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerGroup;

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    .line 6667
    invoke-interface {p0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v2

    .line 6666
    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/PowerGroup;->setLastUserActivityTimeLocked(J)V

    .line 6668
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public final onUserAttention()V
    .registers 10

    .line 2914
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2915
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/server/power/PowerGroup;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    .line 2916
    invoke-interface {v1}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/16 v8, 0x3e8

    move-object v2, p0

    .line 2915
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(Lcom/android/server/power/PowerGroup;JIII)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2920
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2922
    :cond_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public final parseBigData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 p0, 0x0

    .line 6882
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_6} :catch_c

    .line 6883
    :try_start_6
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception p0

    goto :goto_f

    :catch_c
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    .line 6886
    :goto_f
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 6889
    :goto_12
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\{"

    const-string p2, ""

    .line 6890
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\}"

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final parseBigData([Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;
    .registers 7

    const/4 p0, 0x0

    .line 6861
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_6} :catch_15

    const/4 p0, 0x0

    :goto_7
    if-ge p0, p3, :cond_1b

    .line 6863
    :try_start_9
    aget-object v1, p1, p0

    aget-object v2, p2, p0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_10} :catch_13

    add-int/lit8 p0, p0, 0x1

    goto :goto_7

    :catch_13
    move-exception p0

    goto :goto_18

    :catch_15
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    .line 6867
    :goto_18
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 6870
    :cond_1b
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\{"

    const-string p2, ""

    .line 6871
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\}"

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final printWakeLockLocked()V
    .registers 20

    move-object/from16 v0, p0

    .line 8194
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerGroup;

    .line 8195
    invoke-virtual {v1}, Lcom/android/server/power/PowerGroup;->getUserActivitySummaryLocked()I

    move-result v3

    .line 8196
    invoke-virtual {v1}, Lcom/android/server/power/PowerGroup;->getDisplayPowerRequestLocked()Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v4

    .line 8197
    invoke-virtual {v1}, Lcom/android/server/power/PowerGroup;->isReadyLocked()Z

    move-result v5

    .line 8199
    iget-boolean v6, v0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    const/4 v9, 0x2

    const/4 v10, 0x4

    const-wide/16 v11, 0x3e8

    const/4 v13, 0x1

    const-string v14, "PowerManagerService"

    if-eqz v6, :cond_205

    invoke-virtual {v1}, Lcom/android/server/power/PowerGroup;->isBrightOrDimLocked()Z

    move-result v6

    if-nez v6, :cond_205

    invoke-virtual {v1}, Lcom/android/server/power/PowerGroup;->isPolicyVrLocked()Z

    move-result v1

    if-eqz v1, :cond_30

    goto/16 :goto_205

    .line 8230
    :cond_30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[PWL] Off : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->timeSinceScreenWasLastOn()J

    move-result-wide v15

    div-long v7, v15, v11

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "s ago"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x14

    new-array v7, v13, [Ljava/lang/Object;

    .line 8231
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->timeSinceScreenWasLastOn()J

    move-result-wide v15

    div-long/2addr v15, v11

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v1, v7}, Lcom/android/server/power/PowerManagerLog;->sendLogEvent(I[Ljava/lang/Object;)V

    .line 8233
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_68
    :goto_68
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2bb

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/SuspendBlocker;

    .line 8234
    move-object v8, v7

    check-cast v8, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    .line 8235
    invoke-virtual {v8}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->isHeld()Z

    move-result v11

    if-eqz v11, :cond_68

    .line 8236
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[PWL]   "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8238
    iget-object v7, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15f

    .line 8241
    iget v7, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v7, v7, -0x11

    if-eqz v7, :cond_68

    .line 8243
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[PWL]     mWakeLockSummary : 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 8244
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 8243
    invoke-static {v14, v7}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8246
    iget v7, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/2addr v7, v13

    const-string v8, "[PWL]       "

    if-eqz v7, :cond_12e

    .line 8247
    iget-object v7, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_c6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_12e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 8248
    iget v12, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v15, 0xffff

    and-int/2addr v12, v15

    if-ne v12, v13, :cond_129

    .line 8249
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v14, v12}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    .line 8252
    iget v15, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    .line 8253
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v12, v2

    iget-object v15, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    aput-object v15, v12, v13

    move-object/from16 v16, v7

    iget-wide v6, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    iget-object v15, v0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    .line 8254
    invoke-interface {v15}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v17

    sub-long v6, v6, v17

    invoke-static {v6, v7}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v12, v9

    iget v6, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    .line 8255
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v12, v7

    .line 8256
    iget-object v6, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v6, :cond_11f

    invoke-virtual {v6}, Landroid/os/WorkSource;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_121

    :cond_11f
    const-string v6, " "

    :goto_121
    aput-object v6, v12, v10

    const/16 v6, 0x19

    .line 8252
    invoke-static {v6, v12}, Lcom/android/server/power/PowerManagerLog;->sendLogEvent(I[Ljava/lang/Object;)V

    goto :goto_12b

    :cond_129
    move-object/from16 v16, v7

    :goto_12b
    move-object/from16 v7, v16

    goto :goto_c6

    .line 8261
    :cond_12e
    iget v7, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v7, v7, -0x2

    if-eqz v7, :cond_68

    .line 8262
    iget-object v7, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_13a
    :goto_13a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_68

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 8263
    invoke-static {v11}, Lcom/android/server/power/PowerManagerService;->isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v12

    if-eqz v12, :cond_13a

    .line 8264
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v14, v11}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13a

    .line 8270
    :cond_15f
    iget-object v7, v0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_68

    if-eqz v3, :cond_18e

    .line 8272
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[PWL]     userActivitySummary : 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, 0x15

    new-array v8, v13, [Ljava/lang/Object;

    .line 8276
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v2

    .line 8275
    invoke-static {v7, v8}, Lcom/android/server/power/PowerManagerLog;->sendLogEvent(I[Ljava/lang/Object;)V

    .line 8280
    :cond_18e
    iget v7, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eqz v7, :cond_1b7

    .line 8281
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[PWL]     displayPowerRequest.policy : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, 0x17

    new-array v8, v13, [Ljava/lang/Object;

    .line 8284
    iget v11, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 8285
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v2

    .line 8284
    invoke-static {v7, v8}, Lcom/android/server/power/PowerManagerLog;->sendLogEvent(I[Ljava/lang/Object;)V

    :cond_1b7
    if-nez v5, :cond_1da

    .line 8290
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[PWL]     displayReady : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, 0x16

    new-array v8, v13, [Ljava/lang/Object;

    .line 8294
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v8, v2

    .line 8293
    invoke-static {v7, v8}, Lcom/android/server/power/PowerManagerLog;->sendLogEvent(I[Ljava/lang/Object;)V

    .line 8298
    :cond_1da
    iget-boolean v7, v0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v7, :cond_68

    .line 8299
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[PWL]     mBootCompleted : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, 0x18

    new-array v8, v13, [Ljava/lang/Object;

    .line 8302
    iget-boolean v11, v0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    .line 8303
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v8, v2

    .line 8302
    invoke-static {v7, v8}, Lcom/android/server/power/PowerManagerLog;->sendLogEvent(I[Ljava/lang/Object;)V

    goto/16 :goto_68

    .line 8201
    :cond_205
    :goto_205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PWL] On : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mLastGlobalWakeTime:J

    invoke-static {v4, v5}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PWL]  mStayOn: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "  mWakeLockSummary & WAKE_LOCK_STAY_AWAKE: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v4, v4, 0x20

    .line 8206
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  mUserActivitySummary: 0x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8207
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8203
    invoke-static {v14, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x13

    new-array v4, v10, [Ljava/lang/Object;

    .line 8211
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, v0, Lcom/android/server/power/PowerManagerService;->mLastGlobalWakeTime:J

    sub-long/2addr v7, v9

    div-long/2addr v7, v11

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v2

    iget-boolean v2, v0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v13

    iget v2, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v2, v2, 0x20

    .line 8212
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v4, v5

    .line 8213
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v4, v3

    .line 8210
    invoke-static {v1, v4}, Lcom/android/server/power/PowerManagerLog;->sendLogEvent(I[Ljava/lang/Object;)V

    .line 8216
    iget v1, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2bb

    .line 8217
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2bb

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 8218
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v2

    if-eqz v2, :cond_2b8

    .line 8219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PWL]  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x19

    .line 8222
    invoke-static {v2, v1}, Lcom/android/server/power/PowerManagerLog;->sendLogEvent(ILcom/android/server/power/PowerManagerService$WakeLock;)V

    goto :goto_28c

    :cond_2b8
    const/16 v2, 0x19

    goto :goto_28c

    :cond_2bb
    return-void
.end method

.method public readConfigurationLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2043
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    .line 2050
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    .line 2058
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    .line 2061
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    const v2, 0x1110024

    .line 2064
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    .line 2072
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    const v1, 0x10e0029

    .line 2075
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mAttentiveTimeoutConfig:I

    const v1, 0x10e002a

    .line 2077
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mAttentiveWarningDurationConfig:J

    const v1, 0x1110128

    .line 2079
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    const v1, 0x1110125

    .line 2081
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    const v1, 0x1110124

    .line 2083
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    const v1, 0x1110123

    .line 2085
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    const v1, 0x1110126

    .line 2087
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    const v1, 0x10e008a

    .line 2089
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    const v1, 0x10e0089

    .line 2091
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    const v1, 0x10e0088

    .line 2093
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    const v1, 0x111011d

    .line 2095
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOff:Z

    const v1, 0x10e00d1

    .line 2097
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:J

    const-wide/16 v1, 0x4e20

    .line 2105
    iput-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:J

    const v1, 0x3eaa7efa    # 0.333f

    .line 2106
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    const v1, 0x11101c9

    .line 2109
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSupportsDoubleTapWakeConfig:Z

    const v1, 0x10e010a

    .line 2114
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 2113
    invoke-static {v1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessForClearCoverConfig:F

    const v1, 0x10e003f

    .line 2116
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mBrightnessLimitByCoverConfig:I

    return-void
.end method

.method public recalculateGlobalWakefulnessLocked()I
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 3542
    :goto_2
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2c

    .line 3543
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerGroup;

    invoke-virtual {v2}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1a

    return v3

    :cond_1a
    const/4 v3, 0x2

    const/4 v4, 0x3

    if-ne v2, v3, :cond_24

    if-eqz v1, :cond_22

    if-ne v1, v4, :cond_24

    :cond_22
    move v1, v3

    goto :goto_29

    :cond_24
    if-ne v2, v4, :cond_29

    if-nez v1, :cond_29

    move v1, v4

    :cond_29
    :goto_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2c
    return v1
.end method

.method public final registerUserActivityStateListenerInternal(Landroid/os/PowerManagerInternal$UserActivityStateListener;)V
    .registers 3

    .line 6786
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6787
    :try_start_3
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityStateListenerListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6788
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final releaseAbuseWakelockLocked()V
    .registers 4

    .line 4271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "releaseAbuseWakelockLocked; size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mAbuseWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerService"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4272
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mAbuseWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 4273
    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/power/PowerManagerService;->disableAbusiveWakeLockInternal(Landroid/os/IBinder;Z)V

    goto :goto_23

    :cond_36
    return-void
.end method

.method public final releaseWakeLockInternal(Landroid/os/IBinder;I)V
    .registers 9

    .line 2551
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2552
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result p1

    if-gez p1, :cond_b

    .line 2558
    monitor-exit v0

    return-void

    .line 2561
    :cond_b
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    const/4 v2, 0x1

    and-int/2addr p2, v2

    if-eqz p2, :cond_19

    .line 2568
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    .line 2571
    :cond_19
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mPowerHistorian:Lcom/android/server/power/PowerHistorian;

    invoke-virtual {v3, v1}, Lcom/android/server/power/PowerHistorian;->onWakeLockReleased(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 2574
    iget v3, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v4, 0xffff

    and-int/2addr v3, v4

    const/4 v4, 0x6

    if-eq v3, v4, :cond_3c

    const/16 v4, 0xa

    if-eq v3, v4, :cond_3c

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_3c

    const/16 v4, 0x20

    if-eq v3, v4, :cond_3c

    const/16 v4, 0x40

    if-eq v3, v4, :cond_3c

    const/16 v4, 0x80

    if-eq v3, v4, :cond_3c

    goto :goto_6f

    :cond_3c
    const-string v3, ""

    if-eqz p2, :cond_51

    .line 2585
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (WAIT_FOR_NO_PROXIMITY)"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_51
    const-string p2, "PowerManagerService"

    .line 2587
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[api] release WakeLock "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x1e

    .line 2588
    invoke-static {p2, v1}, Lcom/android/server/power/PowerManagerLog;->sendLogEvent(ILcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 2593
    :goto_6f
    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerService$WakeLock;->unlinkToDeath()V

    const/4 p2, 0x0

    .line 2595
    invoke-virtual {v1, v2, p2}, Lcom/android/server/power/PowerManagerService$WakeLock;->setDisabled(ZI)Z

    .line 2598
    invoke-virtual {p0, v1, p1}, Lcom/android/server/power/PowerManagerService;->removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    .line 2599
    monitor-exit v0

    return-void

    :catchall_7b
    move-exception p0

    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_3 .. :try_end_7d} :catchall_7b

    throw p0
.end method

.method public final removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2621
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2622
    iget-object p2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    .line 2623
    iget v0, p2, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p2, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    if-gtz v0, :cond_1c

    .line 2624
    iget v0, p2, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1c

    .line 2626
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    iget p2, p2, Lcom/android/server/power/PowerManagerService$UidState;->mUid:I

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 2628
    :cond_1c
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 2630
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->applyWakeLockFlagsOnReleaseLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 2631
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2632
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    return-void
.end method

.method public final restartNofifyLongTimerLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2760
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    .line 2761
    iget p1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v2, 0xffff

    and-int/2addr p1, v2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_20

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_20

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    .line 2763
    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->enqueueNotifyLongMsgLocked(J)V

    :cond_20
    return-void
.end method

.method public final scheduleAttentiveTimeout(J)V
    .registers 5

    .line 4645
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 4646
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4647
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public final scheduleSandmanLocked()V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 5016
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    if-nez v0, :cond_3c

    const/4 v0, 0x1

    .line 5017
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    const/4 v1, 0x0

    .line 5018
    :goto_8
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3c

    .line 5019
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerGroup;

    .line 5020
    invoke-virtual {v2}, Lcom/android/server/power/PowerGroup;->supportsSandmanLocked()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 5021
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 5022
    invoke-virtual {v2}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v2

    iput v2, v3, Landroid/os/Message;->arg1:I

    .line 5023
    invoke-virtual {v3, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 5024
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v4}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_3c
    return-void
.end method

.method public final scheduleUserInactivityTimeout(J)V
    .registers 5

    .line 4639
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4640
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4641
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public final screenBlockedByCoverLocked()Z
    .registers 3

    .line 8054
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mCoverType:I

    if-eqz v0, :cond_d

    const/4 v1, 0x7

    if-eq v0, v1, :cond_d

    const/16 v1, 0x64

    if-eq v0, v1, :cond_d

    const/4 p0, 0x0

    return p0

    .line 8058
    :cond_d
    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mIsCoverClosed:Z

    return p0
.end method

.method public final sendBrightnessLearningMaxLimitCount()V
    .registers 5

    .line 6829
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v0, :cond_5

    return-void

    .line 6833
    :cond_5
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal;->getBrightnessLearningMaxLimitCount()[I

    move-result-object v0

    if-eqz v0, :cond_31

    .line 6835
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 6836
    :goto_11
    array-length v3, v0

    if-ge v2, v3, :cond_1f

    .line 6837
    aget v3, v0, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 6839
    :cond_1f
    sget-object v0, Lcom/android/server/power/PowerManagerService;->ABLL_KEYS:[Ljava/lang/String;

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/power/PowerManagerService;->parseBigData([Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 6840
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_31
    return-void
.end method

.method public final sendCurrentBrightnessStatus()V
    .registers 5

    .line 6820
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 6823
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 6824
    sget-object v0, Lcom/android/server/power/PowerManagerService;->LCBS_KEYS:[Ljava/lang/String;

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/power/PowerManagerService;->parseBigData([Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 6825
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final sendDPSIDuration()V
    .registers 11

    .line 6806
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDPSIDuration:[J

    const/4 v1, 0x3

    aget-wide v2, v0, v1

    const-wide/32 v4, 0x15180

    cmp-long v2, v2, v4

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    if-gez v2, :cond_5e

    const/4 v2, 0x4

    aget-wide v6, v0, v2

    cmp-long v6, v6, v3

    if-lez v6, :cond_5e

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    .line 6807
    aget-wide v7, v0, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v5

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDPSIDuration:[J

    const/4 v7, 0x1

    aget-wide v8, v0, v7

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDPSIDuration:[J

    const/4 v7, 0x2

    aget-wide v8, v0, v7

    .line 6808
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDPSIDuration:[J

    aget-wide v7, v0, v1

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDPSIDuration:[J

    aget-wide v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    .line 6809
    sget-object v0, Lcom/android/server/power/PowerManagerService;->LD_KEYS:[Ljava/lang/String;

    array-length v1, v0

    invoke-virtual {p0, v0, v6, v1}, Lcom/android/server/power/PowerManagerService;->parseBigData([Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 6810
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_79

    .line 6812
    :cond_5e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDPSIDuration LOD : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDPSIDuration:[J

    aget-wide v1, v2, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerService"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6814
    :goto_79
    sget-object v0, Lcom/android/server/power/PowerManagerService;->LD_KEYS:[Ljava/lang/String;

    array-length v0, v0

    if-ge v5, v0, :cond_85

    .line 6815
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDPSIDuration:[J

    aput-wide v3, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_79

    :cond_85
    return-void
.end method

.method public final sendUserActivityIntentLocked(IJI)V
    .registers 6

    .line 4603
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_3a

    if-eqz p4, :cond_7

    goto :goto_3a

    .line 4607
    :cond_7
    new-instance p4, Landroid/content/Intent;

    const-string v0, "com.samsung.server.PowerManagerService.action.USER_ACTIVITY"

    invoke-direct {p4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_30

    const/4 v0, 0x1

    if-eq p1, v0, :cond_25

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1a

    const/4 p2, 0x4

    if-eq p1, p2, :cond_30

    goto :goto_3a

    .line 4617
    :cond_1a
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mHandlerPmsMisc:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p4, p2, p3}, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/content/Intent;J)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3a

    .line 4610
    :cond_25
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mHandlerPmsMisc:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p4}, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/content/Intent;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3a

    .line 4626
    :cond_30
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mHandlerPmsMisc:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0, p4}, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/content/Intent;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3a
    :goto_3a
    return-void
.end method

.method public final sensorBlockedByCoverLocked()Z
    .registers 3

    .line 8039
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mCoverType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    const/4 v1, 0x2

    if-eq v0, v1, :cond_13

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1a

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1a

    .line 8049
    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mIsCoverClosed:Z

    return p0

    .line 8042
    :cond_13
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mCoverAuthReady:Z

    if-nez v0, :cond_1a

    .line 8043
    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mIsCoverClosed:Z

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public final setAttentionLightInternal(ZI)V
    .registers 5

    .line 6463
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6464
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v1, :cond_9

    .line 6465
    monitor-exit v0

    return-void

    .line 6467
    :cond_9
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mAttentionLight:Lcom/android/server/lights/LogicalLight;

    .line 6468
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_19

    if-eqz p0, :cond_18

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p1, :cond_14

    const/4 p1, 0x3

    goto :goto_15

    :cond_14
    move p1, v1

    .line 6472
    :goto_15
    invoke-virtual {p0, p2, v0, p1, v1}, Lcom/android/server/lights/LogicalLight;->setFlashing(IIII)V

    :cond_18
    return-void

    :catchall_19
    move-exception p0

    .line 6468
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public setDeviceIdleModeInternal(Z)Z
    .registers 7

    .line 6204
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6205
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    const/4 v2, 0x0

    if-ne v1, p1, :cond_a

    .line 6206
    monitor-exit v0

    return v2

    .line 6208
    :cond_a
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    .line 6209
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    const/16 v1, 0x8

    .line 6210
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1a

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    if-eqz v3, :cond_1b

    :cond_1a
    move v2, v4

    :cond_1b
    invoke-virtual {p0, v1, v2}, Lcom/android/server/power/PowerManagerService;->setPowerModeInternal(IZ)Z

    .line 6211
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_2f

    if-eqz p1, :cond_28

    const-string/jumbo p0, "power"

    .line 6213
    invoke-static {p0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnPhase(Ljava/lang/String;)V

    goto :goto_2e

    :cond_28
    const-string/jumbo p0, "power"

    .line 6215
    invoke-static {p0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffPhase(Ljava/lang/String;)V

    :goto_2e
    return v4

    :catchall_2f
    move-exception p0

    .line 6211
    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public setDeviceIdleTempWhitelistInternal([I)V
    .registers 3

    .line 6241
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6242
    :try_start_3
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    .line 6243
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz p1, :cond_c

    .line 6244
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 6246
    :cond_c
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public setDeviceIdleWhitelistInternal([I)V
    .registers 3

    .line 6232
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6233
    :try_start_3
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    .line 6234
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz p1, :cond_c

    .line 6235
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 6237
    :cond_c
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public final setDozeAfterScreenOffInternal(Z)V
    .registers 3

    .line 6477
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6478
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOff:Z

    .line 6479
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final setDozeModeBySysfs(I)V
    .registers 5

    .line 7718
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mAlpmHlpmMode:I

    if-eq v0, p1, :cond_23

    const/4 v0, -0x1

    if-ne p1, v0, :cond_10

    const-string p0, "PowerManagerService"

    const-string/jumbo p1, "setDozeModeBySysfs:  value is -1 , we ignore it. "

    .line 7720
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7723
    :cond_10
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7724
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mAlpmHlpmMode:I

    .line 7727
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "/sys/class/lcd/panel/alpm"

    .line 7729
    invoke-static {p1, p0}, Lcom/android/server/power/PowerManagerUtil;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    return-void
.end method

.method public final setDozeOverrideFromDreamManagerInternal(IIZ)V
    .registers 6

    .line 6583
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6584
    :try_start_3
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    if-ne v1, p1, :cond_f

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    if-ne v1, p2, :cond_f

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mShouldWaitForTransitionToAodUi:Z

    if-eq v1, p3, :cond_24

    .line 6587
    :cond_f
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    .line 6588
    iput p2, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    .line 6590
    invoke-static {p2}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result p1

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManagerFloat:F

    .line 6591
    iput-boolean p3, p0, Lcom/android/server/power/PowerManagerService;->mShouldWaitForTransitionToAodUi:Z

    .line 6592
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 6593
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 6595
    :cond_24
    monitor-exit v0

    return-void

    :catchall_26
    move-exception p0

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public final setDrawWakeLockOverrideFromSidekickInternal(Z)V
    .registers 6

    .line 6599
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6600
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDrawWakeLockOverrideFromSidekick:Z

    if-eq v1, p1, :cond_2c

    const-string v1, "PowerManagerService"

    .line 6602
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[api] setDrawWakeLockOverrideFromSidekickInternal()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6603
    invoke-static {}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6602
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6605
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDrawWakeLockOverrideFromSidekick:Z

    .line 6606
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 6607
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 6609
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

.method public final setEnsureTransitionToDozingReleaserLocked(Z)V
    .registers 4

    if-eqz p1, :cond_1b

    .line 7978
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mEnsureTransitionToDozingReleaserRunning:Z

    if-nez p1, :cond_29

    const-string p1, "PowerManagerService"

    const-string/jumbo v0, "postDelayed mEnsureTransitionToDozingReleaserRunning"

    .line 7979
    invoke-static {p1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 7980
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mEnsureTransitionToDozingReleaserRunning:Z

    .line 7981
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mEnsureTransitionToDozingReleaser:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_29

    .line 7984
    :cond_1b
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mEnsureTransitionToDozingReleaserRunning:Z

    if-eqz p1, :cond_29

    .line 7985
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mEnsureTransitionToDozingReleaser:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 7986
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mEnsureTransitionToDozingReleaserRunning:Z

    :cond_29
    :goto_29
    return-void
.end method

.method public final setGoToSleepPreventionInternal(Z)V
    .registers 2

    .line 6007
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mGoToSleepPreventionEnabled:Z

    return-void
.end method

.method public final setHalAutoSuspendModeLocked(Z)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 5888
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    if-eq p1, v0, :cond_31

    .line 5892
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    .line 5893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setHalAutoSuspend("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5895
    :try_start_23
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSetAutoSuspend(Z)V
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_2c

    .line 5897
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_31

    :catchall_2c
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 5898
    throw p0

    :cond_31
    :goto_31
    return-void
.end method

.method public final setHalInteractiveModeLocked(Z)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 5904
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    if-ne p1, v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mForceSetHalInteractiveMode:Z

    if-eqz v0, :cond_66

    .line 5907
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting HAL interactive mode to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerService"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5911
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mForceSetHalInteractiveMode:Z

    if-eqz v0, :cond_2b

    const-string/jumbo v0, "setHalInteractiveModeLocked called by dual screen policy change"

    .line 5912
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 5913
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mForceSetHalInteractiveMode:Z

    .line 5917
    :cond_2b
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    .line 5918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setHalInteractive("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    if-nez p1, :cond_56

    .line 5921
    :try_start_4c
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-eqz v0, :cond_56

    const-string v0, "/sys/class/sec/tsp/prox_power_off"

    const/4 v3, 0x1

    .line 5922
    invoke-static {v0, v3}, Lcom/android/server/power/PowerManagerUtil;->fileWriteInt(Ljava/lang/String;I)V

    .line 5925
    :cond_56
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    const/4 v3, 0x7

    invoke-virtual {v0, v3, p1}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSetPowerMode(IZ)Z

    .line 5926
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mDualScreenPolicy:I

    invoke-virtual {v0, p1, p0}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSetInteractiveAsync(ZI)V
    :try_end_63
    .catchall {:try_start_4c .. :try_end_63} :catchall_67

    .line 5928
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    :cond_66
    return-void

    :catchall_67
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 5929
    throw p0
.end method

.method public setHbmBlockInternal(Z)V
    .registers 6

    .line 7742
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7743
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mHbmBlock:Z

    if-ne v1, p1, :cond_20

    const-string p0, "PowerManagerService"

    .line 7744
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHbmBlockInternal: already "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7745
    monitor-exit v0

    return-void

    .line 7748
    :cond_20
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mHbmBlock:Z

    const-string v1, "PowerManagerService"

    .line 7749
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setHbmBlockInternal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7751
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 7752
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 7753
    monitor-exit v0

    return-void

    :catchall_44
    move-exception p0

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_44

    throw p0
.end method

.method public final setLCDFlashModeInternal(ZLandroid/os/IBinder;)V
    .registers 5

    .line 8353
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8354
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLCDFlashModeLock:Lcom/android/server/power/PowerManagerService$LCDFlashModeLock;

    if-nez v1, :cond_e

    .line 8355
    new-instance v1, Lcom/android/server/power/PowerManagerService$LCDFlashModeLock;

    invoke-direct {v1, p0, p2}, Lcom/android/server/power/PowerManagerService$LCDFlashModeLock;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLCDFlashModeLock:Lcom/android/server/power/PowerManagerService$LCDFlashModeLock;

    .line 8358
    :cond_e
    iget-boolean p2, p0, Lcom/android/server/power/PowerManagerService;->mLCDFlashMode:Z

    if-eq p2, p1, :cond_1d

    .line 8359
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mLCDFlashMode:Z

    .line 8361
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 8362
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 8364
    :cond_1d
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public setLightDeviceIdleModeInternal(Z)Z
    .registers 7

    .line 6221
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6222
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    const/4 v2, 0x0

    if-eq v1, p1, :cond_19

    .line 6223
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    const/16 v1, 0x8

    .line 6224
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    const/4 v4, 0x1

    if-nez v3, :cond_13

    if-eqz p1, :cond_14

    :cond_13
    move v2, v4

    :cond_14
    invoke-virtual {p0, v1, v2}, Lcom/android/server/power/PowerManagerService;->setPowerModeInternal(IZ)Z

    .line 6225
    monitor-exit v0

    return v4

    .line 6227
    :cond_19
    monitor-exit v0

    return v2

    :catchall_1b
    move-exception p0

    .line 6228
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public final setLowPowerModeInternal(Z)Z
    .registers 6

    .line 5972
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "PowerManagerService"

    .line 5974
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLowPowerModeInternal "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mIsPowered="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5982
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    invoke-virtual {p0, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->setBatterySaverEnabledManually(Z)V

    const/4 p0, 0x1

    .line 5984
    monitor-exit v0

    return p0

    :catchall_2c
    move-exception p0

    .line 5985
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public setLowPowerStandbyActiveInternal(Z)V
    .registers 4

    .line 6259
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6260
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyActive:Z

    if-eq v1, p1, :cond_c

    .line 6261
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyActive:Z

    .line 6262
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 6264
    :cond_c
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public setLowPowerStandbyAllowlistInternal([I)V
    .registers 3

    .line 6250
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6251
    :try_start_3
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyAllowlist:[I

    .line 6252
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyActive:Z

    if-eqz p1, :cond_c

    .line 6253
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 6255
    :cond_c
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public final setMasterBrightnessLimitInternal(III)V
    .registers 7

    .line 10938
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 10939
    :try_start_3
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessLowerLimit:I

    .line 10940
    iput p2, p0, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessUpperLimit:I

    .line 10941
    iput p3, p0, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessLimitPeriod:I

    .line 10942
    invoke-static {}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessLimitLastCaller:Ljava/lang/String;

    const-string p3, "PowerManagerService"

    .line 10944
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] setMasterBrightnessLimit : lowerLimit : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  upperLimit : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  mMasterBrightnessLimitPeriod : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessLimitPeriod:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10947
    invoke-static {}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10944
    invoke-static {p3, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10949
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessLimitPeriod:I

    if-lez p1, :cond_62

    const/4 p1, 0x1

    .line 10950
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessLimitRunning:Z

    const/4 p1, -0x1

    if-eq p2, p1, :cond_49

    goto :goto_4b

    .line 10954
    :cond_49
    iget p2, p0, Lcom/android/server/power/PowerManagerService;->mScreenExtendedBrightnessMaximum:I

    :goto_4b
    iput p2, p0, Lcom/android/server/power/PowerManagerService;->mTargetBrightnessForLimit:I

    .line 10955
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getStartingLimitationOfBrightness()I

    move-result p1

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mLastRequestedLimitationOfBrightness:I

    .line 10956
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/server/power/PowerManagerService;->mBrightnessLimitRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10957
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mBrightnessLimitRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_77

    :cond_62
    const/4 p1, 0x0

    .line 10959
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessLimitRunning:Z

    .line 10960
    iput p2, p0, Lcom/android/server/power/PowerManagerService;->mLastRequestedLimitationOfBrightness:I

    .line 10961
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/server/power/PowerManagerService;->mBrightnessLimitRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10962
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 10963
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 10965
    :goto_77
    monitor-exit v0

    return-void

    :catchall_79
    move-exception p0

    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_3 .. :try_end_7b} :catchall_79

    throw p0
.end method

.method public setMaximumScreenOffTimeoutFromDeviceAdminInternal(IJ)V
    .registers 13

    if-gez p1, :cond_19

    const-string p0, "PowerManagerService"

    .line 6120
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Attempt to set screen off timeout for invalid user: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6123
    :cond_19
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_23

    .line 6126
    :try_start_1e
    iput-wide p2, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    goto :goto_5f

    :catchall_21
    move-exception p0

    goto :goto_6a

    :cond_23
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, p2, v1

    if-eqz v1, :cond_5a

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-nez v1, :cond_33

    goto :goto_5a

    .line 6130
    :cond_33
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    if-eqz v1, :cond_40

    .line 6132
    iput-wide p2, v1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeout:J

    goto :goto_5f

    .line 6134
    :cond_40
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    new-instance v8, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    .line 6135
    invoke-interface {v2}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v6

    move-object v2, v8

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/power/PowerManagerService$ProfilePowerState;-><init>(IJJ)V

    .line 6134
    invoke-virtual {v1, p1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6140
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    goto :goto_5f

    .line 6128
    :cond_5a
    :goto_5a
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 6143
    :goto_5f
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 6144
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 6145
    monitor-exit v0

    return-void

    :goto_6a
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_1e .. :try_end_6b} :catchall_21

    throw p0
.end method

.method public setMaximumScreenOffTimeoutFromKnoxInternal(IJ)V
    .registers 14

    if-gez p1, :cond_19

    const-string p0, "PowerManagerService"

    .line 6169
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Attempt to set screen off timeout for invalid user: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6172
    :cond_19
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6173
    :try_start_1c
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    if-eqz v1, :cond_4a

    const-string p1, "PowerManagerService"

    .line 6175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "profile timeout changed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeoutForUser:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6176
    iput-wide p2, v1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeoutForUser:J

    goto :goto_64

    .line 6178
    :cond_4a
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    new-instance v9, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v2}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v6

    const/4 v8, 0x1

    move-object v2, v9

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/server/power/PowerManagerService$ProfilePowerState;-><init>(IJJZ)V

    invoke-virtual {v1, p1, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6180
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 6182
    :goto_64
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 6183
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 6184
    monitor-exit v0

    return-void

    :catchall_6f
    move-exception p0

    monitor-exit v0
    :try_end_71
    .catchall {:try_start_1c .. :try_end_71} :catchall_6f

    throw p0
.end method

.method public final setPowerBoostInternal(II)V
    .registers 3

    .line 6644
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSetPowerBoost(II)V

    return-void
.end method

.method public final setPowerModeInternal(IZ)Z
    .registers 4

    const/4 v0, 0x5

    if-ne p1, v0, :cond_f

    if-eqz p2, :cond_f

    .line 6649
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v0}, Lcom/android/server/power/batterysaver/BatterySaverController;->isLaunchBoostDisabled()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 p0, 0x0

    return p0

    .line 6652
    :cond_f
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSetPowerMode(IZ)Z

    move-result p0

    return p0
.end method

.method public final setProximityDebounceTimeInternal(Landroid/os/IBinder;II)V
    .registers 6

    .line 2383
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2384
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result p1

    .line 2385
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 2386
    iput p2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mProximityPositiveDebounce:I

    .line 2387
    iput p3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mProximityNegativeDebounce:I

    .line 2389
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2390
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2391
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public final setQuickPanelBrightnessBarDisabled(Z)V
    .registers 4

    .line 11057
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hide QuickPanel Brightness Bar: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerService"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11058
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    xor-int/lit8 p1, p1, 0x1

    const/4 v0, -0x2

    const-string/jumbo v1, "pms_notification_panel_brightness_adjustment"

    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public final setScreenBrightnessOverrideFromWindowManagerInternal(F)V
    .registers 6

    .line 6524
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6525
    :try_start_3
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:F

    invoke-static {v1, p1}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v1

    if-nez v1, :cond_30

    const-string v1, "PowerManagerService"

    .line 6528
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[api] setScreenBrightnessOverrideFromWindowManagerInternal: brightness: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6530
    invoke-static {p1}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6528
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6532
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:F

    .line 6533
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 6534
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 6536
    :cond_30
    monitor-exit v0

    return-void

    :catchall_32
    move-exception p0

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw p0
.end method

.method public final setScreenDimDurationOverrideFromSqdInternal(Z)V
    .registers 11

    .line 6616
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const-wide/16 v1, -0x1

    if-eqz p1, :cond_6b

    .line 6618
    :try_start_7
    iget-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromSQD:J

    cmp-long p1, v3, v1

    if-nez p1, :cond_6d

    .line 6619
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getAttentiveTimeoutLocked()J

    move-result-wide v1

    .line 6620
    invoke-virtual {p0, v1, v2}, Lcom/android/server/power/PowerManagerService;->getSleepTimeoutLocked(J)J

    move-result-wide v3

    .line 6621
    invoke-virtual {p0, v3, v4, v1, v2}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked(JJ)J

    move-result-wide v1

    .line 6622
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 6624
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/power/PowerGroup;

    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getLastUserActivityTimeLocked()J

    move-result-wide v6

    add-long/2addr v6, v1

    sub-long/2addr v6, v3

    iput-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromSQD:J

    const-string p1, "PowerManagerService"

    .line 6626
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[api] setScreenDimDurationOverrideFromSqdInternal: enabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromSQD:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/PowerGroup;

    invoke-virtual {v5}, Lcom/android/server/power/PowerGroup;->getLastUserActivityTimeLocked()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " + "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d

    .line 6629
    :cond_6b
    iput-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromSQD:J

    :cond_6d
    :goto_6d
    const-string p1, "PowerManagerService"

    .line 6631
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] setScreenDimDurationOverrideFromSqdInternal: mScreenDimDurationOverrideFromSQD: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromSQD:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6632
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 6633
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 6634
    monitor-exit v0

    return-void

    :catchall_90
    move-exception p0

    monitor-exit v0
    :try_end_92
    .catchall {:try_start_7 .. :try_end_92} :catchall_90

    throw p0
.end method

.method public final setScreenDimDurationOverrideFromWindowManagerInternal(J)V
    .registers 7

    .line 5231
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5232
    :try_start_3
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromWindowManager:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_2a

    const-string v1, "PowerManagerService"

    .line 5233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[api] setScreenDimDurationOverrideFromWindowManagerInternal: timeoutMillis: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5237
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromWindowManager:J

    .line 5238
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 5239
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 5241
    :cond_2a
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public final setSmartStayLocked()V
    .registers 2

    .line 10756
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSmartStayEnabledSetting:Z

    if-eqz v0, :cond_8

    .line 10757
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->startSmartStayLocked()V

    goto :goto_b

    .line 10760
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->stopSmartStayLocked()V

    :goto_b
    return-void
.end method

.method public setStayOnSettingInternal(I)V
    .registers 3

    .line 6114
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "stay_on_while_plugged_in"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public final setUserActivityTimeoutForDexOverrideFromWindowManagerInternal(J)V
    .registers 7

    .line 6565
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6566
    :try_start_3
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutForDexOverrideFromWindowManager:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_2a

    const-string v1, "PowerManagerService"

    .line 6568
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[api] setUserActivityTimeoutForDexOverrideFromWindowManagerInternal: timeoutMillis: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6572
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutForDexOverrideFromWindowManager:J

    .line 6573
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 6574
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 6576
    :cond_2a
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public final setUserActivityTimeoutLocked(J)V
    .registers 5

    .line 8127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUserActivityTimeoutLocked SRUK : now="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerService"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8128
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_40

    .line 8129
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutSetting:I

    int-to-long v0, v0

    add-long/2addr p1, v0

    .line 8130
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mNoUserActivitySent:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_32

    .line 8131
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerPmsMisc:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTask:Lcom/android/server/power/PowerManagerService$UserActivityTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8132
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerPmsMisc:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTask:Lcom/android/server/power/PowerManagerService$UserActivityTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8134
    :cond_32
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerPmsMisc:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutTask:Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8135
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerPmsMisc:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutTask:Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_40
    return-void
.end method

.method public final setUserActivityTimeoutOverrideFromWindowManagerInternal(J)V
    .registers 7

    .line 6548
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6549
    :try_start_3
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_2d

    const-string v1, "PowerManagerService"

    .line 6551
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[api] setUserActivityTimeoutOverrideFromWindowManagerInternal: timeoutMillis: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6555
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    .line 6556
    invoke-static {p1, p2}, Lcom/android/server/EventLogTags;->writeUserActivityTimeoutOverride(J)V

    .line 6557
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 6558
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 6560
    :cond_2d
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception p0

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public final setUserInactiveOverrideFromWindowManagerInternal()V
    .registers 3

    .line 6540
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 6541
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    .line 6542
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 6543
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 6544
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public setVrModeEnabled(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 6639
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    return-void
.end method

.method public final setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 6384
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v1, 0xffff

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_ee

    .line 6387
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v4, 0x2710

    const/4 v5, 0x3

    if-lt v0, v4, :cond_89

    .line 6391
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    iget-boolean v4, v4, Lcom/android/server/power/PowerManagerService$Constants;->NO_CACHED_WAKE_LOCKS:Z

    const/16 v6, 0x14

    if-eqz v4, :cond_39

    .line 6392
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mForceSuspendActive:Z

    if-nez v4, :cond_32

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    iget-boolean v7, v4, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    if-nez v7, :cond_30

    iget v4, v4, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    if-eq v4, v6, :cond_30

    const/16 v7, 0xb

    if-le v4, v7, :cond_30

    goto :goto_32

    :cond_30
    move v4, v2

    goto :goto_33

    :cond_32
    :goto_32
    move v4, v3

    :goto_33
    if-eqz v4, :cond_37

    move v7, v3

    goto :goto_3b

    :cond_37
    move v7, v2

    goto :goto_3b

    :cond_39
    move v4, v2

    move v7, v4

    .line 6402
    :goto_3b
    iget-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz v8, :cond_5b

    .line 6405
    iget-object v8, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    .line 6406
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    invoke-static {v9, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v9

    if-gez v9, :cond_5b

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    .line 6407
    invoke-static {v9, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v9

    if-gez v9, :cond_5b

    iget v8, v8, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    if-eq v8, v6, :cond_5b

    const/4 v9, 0x5

    if-le v8, v9, :cond_5b

    or-int/lit8 v7, v7, 0x2

    move v4, v3

    .line 6415
    :cond_5b
    iget-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyActive:Z

    if-eqz v8, :cond_72

    .line 6416
    iget-object v8, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    .line 6417
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyAllowlist:[I

    invoke-static {v9, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v9

    if-gez v9, :cond_72

    iget v8, v8, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    if-eq v8, v6, :cond_72

    if-le v8, v5, :cond_72

    or-int/lit8 v7, v7, 0x4

    move v4, v3

    .line 6425
    :cond_72
    iget-boolean v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabledByFreecess:Z

    if-eqz v6, :cond_79

    or-int/lit8 v7, v7, 0x8

    move v4, v3

    .line 6431
    :cond_79
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mWakelockBlacklistAppid:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8b

    or-int/lit8 v7, v7, 0x10

    move v4, v3

    goto :goto_8b

    :cond_89
    move v4, v2

    move v7, v4

    .line 6438
    :cond_8b
    :goto_8b
    invoke-virtual {p1, v4, v7}, Lcom/android/server/power/PowerManagerService$WakeLock;->setDisabled(ZI)Z

    move-result p0

    if-eqz p0, :cond_ed

    .line 6440
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    and-int/2addr v0, v1

    if-ne v0, v3, :cond_ed

    .line 6442
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    sub-long/2addr v0, v6

    const/16 v4, 0xaa9

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "DIS"

    aput-object v6, v5, v2

    .line 6443
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6444
    iget-boolean v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz v1, :cond_de

    .line 6445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(disabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService$WakeLock;->-$$Nest$mgetDisableReasonString(Lcom/android/server/power/PowerManagerService$WakeLock;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_e0

    :cond_de
    const-string p1, "(enabled)"

    :goto_e0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    aput-object p1, v5, v0

    .line 6443
    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_ed
    return p0

    :cond_ee
    return v2
.end method

.method public setWakefulnessLocked(IIJIIILjava/lang/String;Ljava/lang/String;)V
    .registers 20
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object v0, p0

    .line 3401
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    move v1, p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/power/PowerGroup;

    move v2, p2

    move-wide v3, p3

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/power/PowerGroup;->setWakefulnessLocked(IJIIILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public final shouldBoostScreenBrightness()Z
    .registers 2

    .line 5512
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    if-nez v0, :cond_a

    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final shouldNapAtBedTimeLocked()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 4937
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    if-eqz v0, :cond_d

    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

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

.method public final shouldUseProximitySensorLocked()Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 5730
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_16

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    .line 5731
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/PowerGroup;

    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getWakeLockSummaryLocked()I

    move-result p0

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method public final shouldWakeUpWhenPluggedOrUnpluggedLocked(ZIZ)Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 p3, 0x0

    if-nez p1, :cond_8

    .line 3878
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz p1, :cond_8

    return p3

    .line 3884
    :cond_8
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    if-nez p1, :cond_d

    return p3

    .line 3906
    :cond_d
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    const/4 v0, 0x2

    if-eqz p1, :cond_19

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result p1

    if-ne p1, v0, :cond_19

    return p3

    .line 3911
    :cond_19
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    if-eqz p1, :cond_22

    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    if-nez p1, :cond_22

    return p3

    .line 3922
    :cond_22
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_29

    if-eq p2, v0, :cond_2d

    :cond_29
    if-ne p1, v0, :cond_34

    if-ne p2, v1, :cond_34

    :cond_2d
    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryOnline:I

    const/16 p1, 0x63

    if-ne p0, p1, :cond_34

    return p3

    .line 3932
    :cond_34
    invoke-static {}, Lcom/samsung/android/knox/custom/SettingsManager;->getInstance()Lcom/samsung/android/knox/custom/SettingsManager;

    move-result-object p0

    if-eqz p0, :cond_41

    .line 3933
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/SettingsManager;->getScreenWakeupOnPowerState()Z

    move-result p0

    if-nez p0, :cond_41

    return p3

    :cond_41
    return v1
.end method

.method public final shutdownOrRebootInternal(IZLjava/lang/String;Z)V
    .registers 6

    const-string/jumbo v0, "userspace"

    .line 6031
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 6032
    invoke-static {}, Landroid/os/PowerManager;->isRebootingUserspaceSupportedImpl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 6036
    invoke-static {}, Lcom/android/server/UserspaceRebootLogger;->noteUserspaceRebootWasRequested()V

    goto :goto_1b

    .line 6033
    :cond_13
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Attempted userspace reboot on a device that doesn\'t support it"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6038
    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v0, :cond_2c

    .line 6039
    :cond_23
    invoke-static {}, Lcom/android/server/RescueParty;->isAttemptingFactoryReset()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 6044
    invoke-static {p3}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V

    .line 6050
    :cond_2c
    new-instance v0, Lcom/android/server/power/PowerManagerService$2;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/android/server/power/PowerManagerService$2;-><init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;IZ)V

    .line 6081
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p0

    const/4 p1, 0x1

    .line 6082
    invoke-virtual {p0, p1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 6083
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    if-eqz p4, :cond_4e

    .line 6087
    monitor-enter v0

    .line 6090
    :catch_47
    :goto_47
    :try_start_47
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_4a
    .catch Ljava/lang/InterruptedException; {:try_start_47 .. :try_end_4a} :catch_47
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4b

    goto :goto_47

    :catchall_4b
    move-exception p0

    .line 6094
    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw p0

    :cond_4e
    return-void

    .line 6046
    :cond_4f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Too early to call shutdown() or reboot()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final sleepPowerGroupLocked(Lcom/android/server/power/PowerGroup;JII)Z
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3374
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_86

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v0, :cond_b

    goto/16 :goto_86

    .line 3379
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getLastWakeTimeLocked()J

    move-result-wide v2

    cmp-long v0, p2, v2

    if-ltz v0, :cond_86

    .line 3380
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_86

    .line 3386
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screen__Off(s) - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnOffCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffReason:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3387
    invoke-static {p4}, Landroid/os/PowerManager;->sleepReasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") groupId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3388
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PowerManagerService"

    .line 3386
    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->ik(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    .line 3389
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    .line 3390
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffReason:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 3391
    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnOffCount:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p0

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const/4 p0, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, p0

    invoke-static {v1, v0}, Lcom/android/server/power/PowerManagerLog;->sendLogEvent(I[Ljava/lang/Object;)V

    .line 3394
    invoke-virtual {p1, p2, p3, p5, p4}, Lcom/android/server/power/PowerGroup;->sleepLocked(JII)Z

    move-result p0

    return p0

    :cond_86
    :goto_86
    return v1
.end method

.method public final startSmartStayLocked()V
    .registers 4

    .line 10765
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSmartStayProgress:Z

    const-string v1, "PowerManagerService"

    if-eqz v0, :cond_c

    const-string p0, "SmartStay alredy started"

    .line 10766
    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    const-string v0, "SmartStay start"

    .line 10769
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 10770
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSmartStayProgress:Z

    .line 10772
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "[smart stay]"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThreadSmartStay:Landroid/os/HandlerThread;

    .line 10773
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 10775
    new-instance v0, Lcom/android/server/power/PowerManagerService$10;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThreadSmartStay:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/PowerManagerService$10;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerSmartStay:Landroid/os/Handler;

    .line 10795
    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x0

    const-string v2, "com.android.server.PowerManagerService.action.FAILED_TO_DETECT_FACE_BEFORE_DIM"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mFaceDetectedFailIntent:Landroid/content/Intent;

    return-void
.end method

.method public startUidChangesInternal()V
    .registers 3

    .line 6268
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 6269
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanging:Z

    .line 6270
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final stopSmartStayLocked()V
    .registers 3

    .line 10799
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSmartStayProgress:Z

    if-eqz v0, :cond_20

    const-string v0, "PowerManagerService"

    const-string v1, "SmartStay stop"

    .line 10800
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 10801
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSmartStayProgress:Z

    .line 10802
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerSmartStay:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 10803
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThreadSmartStay:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    .line 10804
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThreadSmartStay:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 10805
    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThreadSmartStay:Landroid/os/HandlerThread;

    :cond_20
    return-void
.end method

.method public final systemReady()V
    .registers 13

    .line 1750
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 1751
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    .line 1752
    const-class v1, Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {p0, v1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/dreams/DreamManagerInternal;

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    .line 1753
    const-class v1, Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {p0, v1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 1754
    const-class v1, Lcom/android/server/policy/WindowManagerPolicy;

    invoke-virtual {p0, v1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 1755
    const-class v1, Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0, v1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryManagerInternal;

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 1756
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mAttentionDetector:Lcom/android/server/power/AttentionDetector;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/power/AttentionDetector;->systemReady(Landroid/content/Context;)V

    .line 1758
    new-instance v1, Landroid/hardware/SystemSensorManager;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 1761
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService$Injector;->getWindowManagerService()Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 1766
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 1767
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    const-string v7, "PowerManagerService.Broadcasts"

    .line 1768
    invoke-virtual {v2, p0, v7}, Lcom/android/server/power/PowerManagerService$Injector;->createSuspendBlocker(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenUndimDetector:Lcom/android/server/power/ScreenUndimDetector;

    .line 1771
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v11

    .line 1767
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/power/PowerManagerService$Injector;->createNotifier(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/power/SuspendBlocker;Lcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/power/FaceDownDetector;Lcom/android/server/power/ScreenUndimDetector;Ljava/util/concurrent/Executor;)Lcom/android/server/power/Notifier;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    .line 1773
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    new-instance v10, Lcom/android/server/power/PowerGroup;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroupWakefulnessChangeListener:Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    .line 1775
    invoke-interface {v3}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v8

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/android/server/power/PowerGroup;-><init>(ILcom/android/server/power/PowerGroup$PowerGroupListener;Lcom/android/server/power/Notifier;Landroid/hardware/display/DisplayManagerInternal;J)V

    const/4 v3, 0x0

    .line 1773
    invoke-virtual {v2, v3, v10}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1776
    new-instance v2, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener-IA;)V

    .line 1778
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v5, v2}, Landroid/hardware/display/DisplayManagerInternal;->registerDisplayGroupListener(Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;)V

    .line 1780
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    const-string v5, "PowerManagerService.WirelessChargerDetector"

    .line 1781
    invoke-virtual {v2, p0, v5}, Lcom/android/server/power/PowerManagerService$Injector;->createSuspendBlocker(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    .line 1780
    invoke-virtual {v2, v1, v5, v6}, Lcom/android/server/power/PowerManagerService$Injector;->createWirelessChargerDetector(Landroid/hardware/SensorManager;Lcom/android/server/power/SuspendBlocker;Landroid/os/Handler;)Lcom/android/server/power/WirelessChargerDetector;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    .line 1784
    new-instance v2, Lcom/android/server/power/PowerManagerService$SettingsObserver;

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v5}, Lcom/android/server/power/PowerManagerService$SettingsObserver;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    .line 1786
    const-class v2, Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v2}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/lights/LightsManager;

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLightsManager:Lcom/android/server/lights/LightsManager;

    const/4 v5, 0x5

    .line 1787
    invoke-virtual {v2, v5}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/LogicalLight;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mAttentionLight:Lcom/android/server/lights/LogicalLight;

    .line 1790
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, v6, v1}, Landroid/hardware/display/DisplayManagerInternal;->initPowerManagement(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;)V
    :try_end_c8
    .catchall {:try_start_4 .. :try_end_c8} :catchall_320

    .line 1794
    :try_start_c8
    new-instance v1, Lcom/android/server/power/PowerManagerService$ForegroundProfileObserver;

    invoke-direct {v1, p0, v4}, Lcom/android/server/power/PowerManagerService$ForegroundProfileObserver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$ForegroundProfileObserver-IA;)V

    .line 1795
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    const-string v5, "PowerManagerService"

    invoke-interface {v2, v1, v5}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_d6
    .catch Landroid/os/RemoteException; {:try_start_c8 .. :try_end_d6} :catch_d6
    .catchall {:try_start_c8 .. :try_end_d6} :catchall_320

    .line 1801
    :catch_d6
    :try_start_d6
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mFeatureCoverSysfs:Z

    if-eqz v1, :cond_f4

    .line 1802
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$Injector;->createCoverManager(Landroid/content/Context;)Lcom/samsung/android/cover/CoverManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v1, :cond_ec

    .line 1805
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$CoverStateListener;)V

    goto :goto_f4

    :cond_ec
    const-string v1, "PowerManagerService"

    const-string/jumbo v2, "mCoverManager is null!!!!"

    .line 1807
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    :cond_f4
    :goto_f4
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.sensorhub"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_132

    .line 1814
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "scontext"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/scontext/SContextManager;

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v1, :cond_132

    const/16 v2, 0x2e

    .line 1816
    invoke-virtual {v1, v2}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsWirelessChargerSContextEnabled:Z

    const-string v1, "PowerManagerService"

    .line 1817
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "start : (mWirelessChargerSContextManager != null - mIsWirelessChargerSContextEnabled = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mIsWirelessChargerSContextEnabled:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    :cond_132
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyController:Lcom/android/server/power/LowPowerStandbyController;

    invoke-virtual {v1}, Lcom/android/server/power/LowPowerStandbyController;->systemReady()V

    .line 1825
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->readConfigurationLocked()V

    .line 1826
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateSettingsLocked()V

    .line 1827
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1828
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1829
    monitor-exit v0
    :try_end_147
    .catchall {:try_start_d6 .. :try_end_147} :catchall_320

    .line 1831
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1832
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    invoke-virtual {v1, v0}, Lcom/android/server/power/PowerManagerService$Constants;->start(Landroid/content/ContentResolver;)V

    .line 1834
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverController;->systemReady()V

    .line 1835
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->systemReady()V

    .line 1839
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenUndimDetector:Lcom/android/server/power/ScreenUndimDetector;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/power/ScreenUndimDetector;->systemReady(Landroid/content/Context;)V

    const-string/jumbo v1, "screensaver_enabled"

    .line 1842
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v5, -0x1

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "screensaver_activate_on_sleep"

    .line 1845
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "screensaver_activate_on_dock"

    .line 1848
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "screen_off_timeout"

    .line 1851
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "sleep_timeout"

    .line 1854
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "attentive_timeout"

    .line 1857
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "stay_on_while_plugged_in"

    .line 1860
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "screen_brightness_mode"

    .line 1863
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "screen_auto_brightness_adj"

    .line 1866
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "theater_mode_on"

    .line 1869
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "doze_always_on"

    .line 1872
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "double_tap_to_wake"

    .line 1875
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "device_demo_mode"

    .line 1878
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "user_activity_timeout"

    .line 1883
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "vrmanager"

    .line 1888
    invoke-virtual {p0, v1}, Lcom/android/server/SystemService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v1

    if-eqz v1, :cond_232

    .line 1891
    :try_start_215
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v1, v2}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_21a
    .catch Landroid/os/RemoteException; {:try_start_215 .. :try_end_21a} :catch_21b

    goto :goto_232

    :catch_21b
    move-exception v1

    const-string v2, "PowerManagerService"

    .line 1893
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to register VR mode state listener: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_232
    :goto_232
    const-string v1, "display_outdoor_mode"

    .line 1906
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1912
    invoke-virtual {p0, v3}, Lcom/android/server/power/PowerManagerService;->setQuickPanelBrightnessBarDisabled(Z)V

    .line 1916
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_WAKEUP_WHEN_PLUG_CHANGED:Z

    if-eqz v1, :cond_24f

    const-string v1, "aod_mode"

    .line 1917
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_24f
    const-string v1, "game_autobrightness_lock"

    .line 1924
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "sem_power_saving_adjust_brightness_factor"

    .line 1930
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1947
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 1948
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    .line 1949
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 1950
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/power/PowerManagerService$BatteryReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/power/PowerManagerService$BatteryReceiver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1952
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.DREAMING_STARTED"

    .line 1953
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DREAMING_STOPPED"

    .line 1954
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1955
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/power/PowerManagerService$DreamReceiver;

    invoke-direct {v2, p0, v4}, Lcom/android/server/power/PowerManagerService$DreamReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$DreamReceiver-IA;)V

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1957
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 1958
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1959
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1963
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.NO_USER_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNoUserActivityIntent:Landroid/content/Intent;

    .line 1964
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.USER_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityIntent:Landroid/content/Intent;

    .line 1965
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mNoUserActivitySent:Z

    .line 1970
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.factory.app.factorytest.FTA_ON"

    .line 1971
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.factory.app.factorytest.FTA_OFF"

    .line 1972
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1973
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/power/PowerManagerService$FTAModeChangeReceiver;

    invoke-direct {v2, p0, v4}, Lcom/android/server/power/PowerManagerService$FTAModeChangeReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$FTAModeChangeReceiver-IA;)V

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2024
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_HEADLESS_DEVICE:Z

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHeadlessStayOn:Z

    .line 2027
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "HqmManagerService"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SemHqmManager;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSemHqmManager:Landroid/os/SemHqmManager;

    if-eqz v0, :cond_309

    .line 2029
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    .line 2030
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2031
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/power/PowerManagerService$PmsLoggingReceiver;

    invoke-direct {v2, p0, v4}, Lcom/android/server/power/PowerManagerService$PmsLoggingReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$PmsLoggingReceiver-IA;)V

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2035
    :cond_309
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.DOCK_EVENT"

    .line 2036
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2037
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/power/PowerManagerService$DockReceiver;

    invoke-direct {v2, p0, v4}, Lcom/android/server/power/PowerManagerService$DockReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$DockReceiver-IA;)V

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v4, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void

    :catchall_320
    move-exception p0

    .line 1829
    :try_start_321
    monitor-exit v0
    :try_end_322
    .catchall {:try_start_321 .. :try_end_322} :catchall_320

    throw p0
.end method

.method public timeSinceScreenWasLastOn()J
    .registers 6

    .line 8313
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8314
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    const/4 v2, 0x0

    .line 8315
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerGroup;

    invoke-virtual {v1}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result v1

    .line 8314
    invoke-static {v1}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-wide/16 v1, 0x0

    .line 8316
    monitor-exit v0

    return-wide v1

    .line 8318
    :cond_1a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenOffEventElapsedRealTime:J

    sub-long/2addr v1, v3

    monitor-exit v0

    return-wide v1

    :catchall_23
    move-exception p0

    .line 8319
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public uidActiveInternal(I)V
    .registers 5

    .line 6331
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6332
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$UidState;

    if-nez v1, :cond_1b

    .line 6334
    new-instance v1, Lcom/android/server/power/PowerManagerService$UidState;

    invoke-direct {v1, p1}, Lcom/android/server/power/PowerManagerService$UidState;-><init>(I)V

    const/16 v2, 0x13

    .line 6335
    iput v2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    .line 6336
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1b
    const/4 p1, 0x1

    .line 6338
    iput-boolean p1, v1, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    .line 6339
    iget p1, v1, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    if-lez p1, :cond_25

    .line 6340
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->handleUidStateChangeLocked()V

    .line 6342
    :cond_25
    monitor-exit v0

    return-void

    :catchall_27
    move-exception p0

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public uidGoneInternal(I)V
    .registers 5

    .line 6316
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6317
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_2e

    .line 6319
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$UidState;

    const/16 v2, 0x14

    .line 6320
    iput v2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    const/4 v2, 0x0

    .line 6321
    iput-boolean v2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    .line 6322
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 6323
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-nez p1, :cond_27

    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyActive:Z

    if-eqz p1, :cond_2e

    :cond_27
    iget p1, v1, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    if-lez p1, :cond_2e

    .line 6324
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->handleUidStateChangeLocked()V

    .line 6327
    :cond_2e
    monitor-exit v0

    return-void

    :catchall_30
    move-exception p0

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw p0
.end method

.method public uidIdleInternal(I)V
    .registers 4

    .line 6346
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6347
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/power/PowerManagerService$UidState;

    if-eqz p1, :cond_17

    const/4 v1, 0x0

    .line 6349
    iput-boolean v1, p1, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    .line 6350
    iget p1, p1, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    if-lez p1, :cond_17

    .line 6351
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->handleUidStateChangeLocked()V

    .line 6354
    :cond_17
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public final unregisterUserActivityStateListenerInternal(Landroid/os/PowerManagerInternal$UserActivityStateListener;)V
    .registers 3

    .line 6792
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6793
    :try_start_3
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityStateListenerListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6794
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final updateAttentiveStateLocked(JI)V
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 4675
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getAttentiveTimeoutLocked()J

    move-result-wide v0

    .line 4677
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerGroup;

    .line 4678
    invoke-virtual {v2}, Lcom/android/server/power/PowerGroup;->getLastUserActivityTimeLocked()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 4679
    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mAttentiveWarningDurationConfig:J

    sub-long v4, v2, v4

    .line 4681
    invoke-virtual {p0, p1, p2, v4, v5}, Lcom/android/server/power/PowerManagerService;->maybeHideInattentiveSleepWarningLocked(JJ)Z

    move-result v6

    const-wide/16 v7, 0x0

    cmp-long v0, v0, v7

    if-ltz v0, :cond_4d

    if-nez v6, :cond_26

    and-int/lit16 p3, p3, 0x4ab2

    if-eqz p3, :cond_4d

    .line 4691
    :cond_26
    iget-object p3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-virtual {p3, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 4693
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptFromInattentiveSleepLocked()Z

    move-result p3

    if-eqz p3, :cond_33

    return-void

    :cond_33
    const-wide/16 v0, -0x1

    cmp-long p3, p1, v4

    if-gez p3, :cond_3b

    move-wide v2, v4

    goto :goto_46

    :cond_3b
    cmp-long p1, p1, v2

    if-gez p1, :cond_45

    .line 4707
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mInattentiveSleepWarningOverlayController:Lcom/android/server/power/InattentiveSleepWarningController;

    invoke-virtual {p1}, Lcom/android/server/power/InattentiveSleepWarningController;->show()V

    goto :goto_46

    :cond_45
    move-wide v2, v0

    :goto_46
    cmp-long p1, v2, v7

    if-ltz p1, :cond_4d

    .line 4712
    invoke-virtual {p0, v2, v3}, Lcom/android/server/power/PowerManagerService;->scheduleAttentiveTimeout(J)V

    :cond_4d
    return-void
.end method

.method public final updateDreamLocked(IZ)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const v0, 0x143ff

    and-int/2addr p1, v0

    if-nez p1, :cond_8

    if-eqz p2, :cond_11

    .line 5008
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->areAllPowerGroupsReadyLocked()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 5009
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->scheduleSandmanLocked()V

    :cond_11
    return-void
.end method

.method public final updateGlobalWakefulnessLocked(JIIILjava/lang/String;Ljava/lang/String;)V
    .registers 24
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    .line 3409
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->recalculateGlobalWakefulnessLocked()I

    move-result v5

    .line 3410
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v6

    if-ne v6, v5, :cond_13

    return-void

    :cond_13
    const/4 v7, 0x2

    const-string v8, ")..."

    const-string v9, "PowerManagerService"

    const/4 v10, 0x3

    const/4 v11, 0x1

    if-eqz v5, :cond_c6

    if-eq v5, v11, :cond_83

    if-eq v5, v7, :cond_66

    if-ne v5, v10, :cond_4f

    .line 3449
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Going to sleep due to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Landroid/os/PowerManager;->sleepReasonToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " (uid "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3452
    iput-wide v1, v0, Lcom/android/server/power/PowerManagerService;->mLastGlobalSleepTime:J

    .line 3453
    iput v3, v0, Lcom/android/server/power/PowerManagerService;->mLastGlobalSleepReason:I

    .line 3454
    iput-boolean v11, v0, Lcom/android/server/power/PowerManagerService;->mDozeStartInProgress:Z

    const-string/jumbo v8, "goToSleep"

    goto :goto_80

    .line 3458
    :cond_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected wakefulness: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3444
    :cond_66
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Nap time (uid "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "nap"

    :goto_80
    move-object/from16 v13, p7

    goto :goto_e8

    .line 3431
    :cond_83
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Waking up from "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3432
    invoke-static {v6}, Landroid/os/PowerManagerInternal;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " (uid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", reason="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3434
    invoke-static/range {p3 .. p3}, Landroid/os/PowerManager;->wakeReasonToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", details="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p7

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3431
    invoke-static {v9, v8}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3437
    iput-wide v1, v0, Lcom/android/server/power/PowerManagerService;->mLastGlobalWakeTime:J

    .line 3438
    iput v3, v0, Lcom/android/server/power/PowerManagerService;->mLastGlobalWakeReason:I

    .line 3439
    iput-wide v1, v0, Lcom/android/server/power/PowerManagerService;->mLastScreenWakeTime:J

    const-string/jumbo v8, "wakeUp"

    goto :goto_e8

    :cond_c6
    move-object/from16 v13, p7

    .line 3420
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Sleeping (uid "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v6, v10, :cond_e5

    .line 3424
    iput-wide v1, v0, Lcom/android/server/power/PowerManagerService;->mLastGlobalSleepTime:J

    .line 3425
    iput v3, v0, Lcom/android/server/power/PowerManagerService;->mLastGlobalSleepReason:I

    :cond_e5
    const-string/jumbo v8, "reallyGoToSleep"

    :goto_e8
    const-wide/32 v14, 0x20000

    .line 3461
    invoke-static {v14, v15, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3465
    :try_start_ee
    iget-object v8, v0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    invoke-virtual {v8}, Lcom/android/server/power/PowerManagerService$Injector;->invalidateIsInteractiveCaches()V

    .line 3466
    iput v5, v0, Lcom/android/server/power/PowerManagerService;->mWakefulnessRaw:I

    .line 3467
    iput-boolean v11, v0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    .line 3468
    iget v8, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/2addr v7, v8

    iput v7, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3471
    iget-boolean v7, v0, Lcom/android/server/power/PowerManagerService;->mDozeStartInProgress:Z

    const/4 v8, 0x0

    if-ne v5, v10, :cond_103

    move v9, v11

    goto :goto_104

    :cond_103
    move v9, v8

    :goto_104
    and-int/2addr v7, v9

    iput-boolean v7, v0, Lcom/android/server/power/PowerManagerService;->mDozeStartInProgress:Z

    .line 3473
    iget-object v7, v0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    if-eqz v7, :cond_10e

    .line 3474
    invoke-virtual {v7, v5, v3, v1, v2}, Lcom/android/server/power/Notifier;->onWakefulnessChangeStarted(IIJ)V

    .line 3476
    :cond_10e
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mAttentionDetector:Lcom/android/server/power/AttentionDetector;

    invoke-virtual {v1, v5}, Lcom/android/server/power/AttentionDetector;->onWakefulnessChangeStarted(I)V

    if-eqz v5, :cond_134

    if-eq v5, v11, :cond_11a

    if-eq v5, v10, :cond_134

    goto :goto_166

    .line 3481
    :cond_11a
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    move/from16 v2, p3

    move-object/from16 v3, p7

    move/from16 v4, p4

    move-object/from16 v5, p6

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/Notifier;->onWakeUp(ILjava/lang/String;ILjava/lang/String;I)V

    .line 3482
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    if-eqz v1, :cond_166

    .line 3483
    iget v1, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    goto :goto_166

    .line 3490
    :cond_134
    invoke-static {v6}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v1

    if-nez v1, :cond_13b

    goto :goto_166

    .line 3496
    :cond_13b
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v8

    :goto_142
    if-ge v8, v1, :cond_163

    .line 3498
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 3499
    iget v3, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v4, 0xffff

    and-int/2addr v3, v4

    const/4 v4, 0x6

    if-eq v3, v4, :cond_15e

    const/16 v4, 0xa

    if-eq v3, v4, :cond_15e

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_15e

    goto :goto_160

    :cond_15e
    add-int/lit8 v2, v2, 0x1

    :goto_160
    add-int/lit8 v8, v8, 0x1

    goto :goto_142

    .line 3507
    :cond_163
    invoke-static {v2}, Lcom/android/server/EventLogTags;->writePowerSleepRequested(I)V
    :try_end_166
    .catchall {:try_start_ee .. :try_end_166} :catchall_16a

    .line 3511
    :cond_166
    :goto_166
    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_16a
    move-exception v0

    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    .line 3512
    throw v0
.end method

.method public final updateIsPoweredLocked(I)V
    .registers 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_130

    .line 3777
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    .line 3778
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    .line 3779
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    .line 3780
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v2}, Landroid/os/BatteryManagerInternal;->getPlugType()I

    move-result v2

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    .line 3781
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v2}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    move-result v2

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    .line 3782
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v2}, Landroid/os/BatteryManagerInternal;->getBatteryLevelLow()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    .line 3783
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v2}, Landroid/os/BatteryManagerInternal;->getBatteryLevelCritical()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelCritical:Z

    .line 3784
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v2}, Landroid/os/BatteryManagerInternal;->getBatteryOnline()I

    move-result v2

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryOnline:I

    .line 3794
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-ne v0, v2, :cond_42

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    if-eq v1, v2, :cond_125

    .line 3796
    :cond_42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[api] updateIsPoweredLocked : mIsPowered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mPlugType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PowerManagerService"

    invoke-static {v3, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3799
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3802
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    invoke-virtual {v2, v4, v5}, Lcom/android/server/power/WirelessChargerDetector;->update(ZI)Z

    move-result v2

    .line 3807
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mIsWirelessChargerSContextEnabled:Z

    const/4 v5, 0x1

    const/4 v9, 0x0

    if-eqz v4, :cond_d5

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerSContextManager:Landroid/hardware/scontext/SContextManager;

    const/16 v6, 0x2e

    .line 3808
    invoke-virtual {v4, v6}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v4

    if-eqz v4, :cond_d5

    .line 3809
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    const/4 v7, 0x4

    if-ne v4, v7, :cond_aa

    .line 3810
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mIsWirelessChargerSContextRegistered:Z

    if-nez v4, :cond_9d

    const-string/jumbo v4, "updateIsPoweredLocked : Register SContextListener"

    .line 3811
    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3812
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerSContextListener:Landroid/hardware/scontext/SContextListener;

    invoke-virtual {v3, v4, v6}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;I)Z

    .line 3813
    iput-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mIsWirelessChargerSContextRegistered:Z

    goto :goto_d5

    .line 3814
    :cond_9d
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mIsDeviceMoving:Z

    if-nez v4, :cond_d5

    if-nez v0, :cond_d5

    const-string/jumbo v4, "updateIsPoweredLocked : Device is not moved, skip wakeup when connect wireless chager "

    .line 3816
    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d4

    :cond_aa
    if-ne v1, v7, :cond_d5

    .line 3819
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mIsDeviceMoving:Z

    if-eqz v4, :cond_c4

    .line 3820
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mIsWirelessChargerSContextRegistered:Z

    if-eqz v4, :cond_d5

    const-string/jumbo v4, "updateIsPoweredLocked : Unregister SContextListener"

    .line 3821
    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3822
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerSContextListener:Landroid/hardware/scontext/SContextListener;

    invoke-virtual {v3, v4, v6}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    .line 3823
    iput-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mIsWirelessChargerSContextRegistered:Z

    goto :goto_d5

    .line 3826
    :cond_c4
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v4, :cond_d5

    const-string/jumbo v4, "updateIsPoweredLocked : Device is not moved, skip wakeup when disconnect wireless charger"

    .line 3828
    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3829
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mPassedWakeupTime:J

    :goto_d4
    move v5, v9

    .line 3841
    :cond_d5
    :goto_d5
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v3}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v10

    .line 3842
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/power/PowerManagerService;->shouldWakeUpWhenPluggedOrUnpluggedLocked(ZIZ)Z

    move-result v0

    if-eqz v0, :cond_113

    if-eqz v5, :cond_113

    const-string v0, " powered change"

    .line 3845
    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    .line 3846
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/power/PowerGroup;

    const/4 v4, 0x3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.server.power:PLUGGED:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x3e8

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 3849
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x3e8

    move-object v0, p0

    move-wide v2, v10

    .line 3846
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/power/PowerManagerService;->wakePowerGroupLocked(Lcom/android/server/power/PowerGroup;JILjava/lang/String;ILjava/lang/String;I)V

    .line 3852
    :cond_113
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/power/PowerGroup;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    move-object v0, p0

    move-wide v2, v10

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(Lcom/android/server/power/PowerGroup;JIII)Z

    .line 3869
    :cond_125
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->setBatteryStatus(ZIZ)V

    :cond_130
    return-void
.end method

.method public final updateKnoxTimeoutValue(I)V
    .registers 12

    .line 6150
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 6152
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    const/4 v2, 0x0

    const-string/jumbo v3, "knox_screen_off_timeout"

    if-eqz v1, :cond_15

    .line 6153
    invoke-static {v0, v3, v2, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    goto :goto_19

    .line 6156
    :cond_15
    invoke-static {v0, v3, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 6159
    :goto_19
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    if-eqz v1, :cond_27

    int-to-long p0, v0

    .line 6161
    iput-wide p0, v1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeoutForUser:J

    goto :goto_3b

    .line 6163
    :cond_27
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    new-instance v9, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    int-to-long v4, v0

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {p0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v6

    const/4 v8, 0x1

    move-object v2, v9

    move v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/power/PowerManagerService$ProfilePowerState;-><init>(IJJZ)V

    invoke-virtual {v1, p1, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_3b
    return-void
.end method

.method public updateMasterBrightnessLimitLocked(II)V
    .registers 3

    .line 10993
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessLowerLimit:I

    .line 10994
    iput p2, p0, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessUpperLimit:I

    .line 10999
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 11000
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    return-void
.end method

.method public final updatePowerGroupsLocked(I)Z
    .registers 28
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 5257
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->areAllPowerGroupsReadyLocked()Z

    move-result v2

    const v3, 0x1383f

    and-int/2addr v3, v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_257

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_23

    .line 5263
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->areAllPowerGroupsReadyLocked()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 5264
    sput-boolean v5, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    goto :goto_23

    .line 5266
    :cond_1d
    iget v1, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    :cond_23
    :goto_23
    move v1, v5

    .line 5270
    :goto_24
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_253

    .line 5271
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerGroup;

    .line 5272
    invoke-virtual {v3}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v8

    .line 5275
    invoke-virtual {v3}, Lcom/android/server/power/PowerGroup;->getDisplayPowerRequestLocked()Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v6

    .line 5282
    iget-boolean v7, v0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v7, :cond_46

    .line 5286
    iget v7, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDefault:F

    move v10, v5

    move v9, v7

    move v7, v10

    goto :goto_6d

    .line 5287
    :cond_46
    iget v7, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:F

    invoke-static {v7}, Lcom/android/server/power/PowerManagerService;->isValidBrightness(F)Z

    move-result v7

    if-eqz v7, :cond_54

    .line 5289
    iget v7, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:F

    move v10, v4

    move v9, v7

    move v7, v5

    goto :goto_6d

    .line 5292
    :cond_54
    iget v7, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    if-ne v7, v4, :cond_5a

    move v7, v4

    goto :goto_5b

    :cond_5a
    move v7, v5

    .line 5295
    :goto_5b
    sget-boolean v9, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_COVER_DISPLAY_AUTO_BRIGHTNESS:Z

    if-eqz v9, :cond_6a

    iget v9, v0, Lcom/android/server/power/PowerManagerService;->mDualScreenPolicy:I

    if-ne v9, v4, :cond_6a

    .line 5297
    iget v7, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSettingForCoverDisplay:I

    if-ne v7, v4, :cond_69

    move v7, v4

    goto :goto_6a

    :cond_69
    move v7, v5

    :cond_6a
    :goto_6a
    const/high16 v9, 0x7fc00000    # Float.NaN

    move v10, v5

    .line 5305
    :goto_6d
    iget-boolean v11, v0, Lcom/android/server/power/PowerManagerService;->mLastBrightnessOverrideState:Z

    if-eq v10, v11, :cond_76

    .line 5306
    iput-boolean v10, v0, Lcom/android/server/power/PowerManagerService;->mLastBrightnessOverrideState:Z

    .line 5307
    invoke-virtual {v0, v10}, Lcom/android/server/power/PowerManagerService;->setQuickPanelBrightnessBarDisabled(Z)V

    .line 5312
    :cond_76
    iget-boolean v10, v0, Lcom/android/server/power/PowerManagerService;->mCoverAuthReady:Z

    if-nez v10, :cond_9a

    .line 5313
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->isCoverClosedBySysfs()Z

    move-result v10

    iput-boolean v10, v0, Lcom/android/server/power/PowerManagerService;->mIsCoverClosed:Z

    .line 5314
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isCoverClosedBySysfs called on closed = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v0, Lcom/android/server/power/PowerManagerService;->mIsCoverClosed:Z

    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/android/server/power/PowerManagerService;->mlastUpdateCoverStateReason:Ljava/lang/String;

    .line 5319
    :cond_9a
    iget v10, v0, Lcom/android/server/power/PowerManagerService;->mCoverType:I

    const/16 v11, 0x8

    if-ne v10, v11, :cond_b9

    iget-boolean v10, v0, Lcom/android/server/power/PowerManagerService;->mIsCoverClosed:Z

    if-eqz v10, :cond_b9

    iget-object v10, v0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    .line 5320
    invoke-virtual {v10}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isUltraPowerSavingModeEnabled()Z

    move-result v10

    if-nez v10, :cond_b9

    .line 5321
    iget v9, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessForClearCoverConfig:F

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-nez v9, :cond_b7

    .line 5322
    iget v9, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessForClearCoverConfig:F

    goto :goto_b9

    :cond_b7
    const/high16 v9, 0x3f800000    # 1.0f

    :cond_b9
    :goto_b9
    move/from16 v24, v9

    .line 5328
    iget-boolean v9, v0, Lcom/android/server/power/PowerManagerService;->mGameAutobrightnessLocked:Z

    if-nez v9, :cond_c7

    iget-boolean v9, v0, Lcom/android/server/power/PowerManagerService;->mFreezingScreenBrightness:Z

    if-eqz v9, :cond_c4

    goto :goto_c7

    :cond_c4
    move/from16 v25, v7

    goto :goto_c9

    :cond_c7
    :goto_c7
    move/from16 v25, v5

    :goto_c9
    if-nez v8, :cond_ee

    .line 5340
    iget-wide v9, v0, Lcom/android/server/power/PowerManagerService;->mLastAutoBrightnessLimitTime:J

    iget-object v7, v0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 5341
    invoke-virtual {v7}, Landroid/hardware/display/DisplayManagerInternal;->getLastUserSetScreenBrightnessTime()J

    move-result-wide v11

    cmp-long v7, v9, v11

    if-lez v7, :cond_ee

    .line 5342
    iget v7, v0, Lcom/android/server/power/PowerManagerService;->mAutoBrightnessLowerLimit:I

    .line 5343
    invoke-static {v7}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v7

    iput v7, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessLowerLimit:F

    .line 5344
    iget v7, v0, Lcom/android/server/power/PowerManagerService;->mAutoBrightnessUpperLimit:I

    .line 5345
    invoke-static {v7}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v7

    iput v7, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessUpperLimit:F

    .line 5348
    iget-boolean v7, v0, Lcom/android/server/power/PowerManagerService;->mForceSlowChange:Z

    iput-boolean v7, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceSlowChange:Z

    .line 5349
    iput-boolean v5, v0, Lcom/android/server/power/PowerManagerService;->mForceSlowChange:Z

    goto :goto_f4

    :cond_ee
    const/high16 v7, -0x40800000    # -1.0f

    .line 5352
    iput v7, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessLowerLimit:F

    .line 5353
    iput v7, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessUpperLimit:F

    .line 5356
    :goto_f4
    invoke-virtual {v3}, Lcom/android/server/power/PowerGroup;->getLastGoToSleepReasonLocked()I

    move-result v7

    iput v7, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastGoToSleepReason:I

    .line 5358
    iget-boolean v7, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    const/4 v9, -0x1

    if-eqz v7, :cond_10c

    .line 5359
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->getMaxProximityPositiveDebounce()I

    move-result v7

    iput v7, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityPositiveDebounce:I

    .line 5360
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->getMaxProximityNegativeDebounce()I

    move-result v7

    iput v7, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityNegativeDebounce:I

    goto :goto_110

    .line 5362
    :cond_10c
    iput v9, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityPositiveDebounce:I

    .line 5363
    iput v9, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityNegativeDebounce:I

    .line 5368
    :goto_110
    iget v7, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessScaleFactor:F

    iput v7, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessScaleFactor:F

    .line 5372
    iget-boolean v7, v0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelCritical:Z

    iput-boolean v7, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->batteryLevelCritical:Z

    .line 5373
    iget-boolean v7, v0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    iput-boolean v7, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isPowered:Z

    .line 5377
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->sensorBlockedByCoverLocked()Z

    move-result v7

    iput-boolean v7, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    .line 5378
    iget v7, v0, Lcom/android/server/power/PowerManagerService;->mCoverType:I

    iput v7, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverType:I

    .line 5382
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->sensorBlockedByCoverLocked()Z

    move-result v7

    if-eqz v7, :cond_137

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->brightnessLimitByCoverLocked()Z

    move-result v7

    if-eqz v7, :cond_137

    .line 5383
    iget v7, v0, Lcom/android/server/power/PowerManagerService;->mBrightnessLimitByCoverConfig:I

    iput v7, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->brightnessLimitByCover:I

    goto :goto_139

    .line 5385
    :cond_137
    iput v9, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->brightnessLimitByCover:I

    .line 5389
    :goto_139
    iget-boolean v7, v0, Lcom/android/server/power/PowerManagerService;->mFTAMode:Z

    iput-boolean v7, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->mFTAMode:Z

    if-nez v8, :cond_145

    .line 5392
    iget-boolean v7, v0, Lcom/android/server/power/PowerManagerService;->mOutdoorModeSetting:Z

    if-eqz v7, :cond_145

    move v7, v4

    goto :goto_146

    :cond_145
    move v7, v5

    :goto_146
    iput-boolean v7, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isOutdoorMode:Z

    if-eqz v7, :cond_172

    .line 5396
    invoke-virtual {v3}, Lcom/android/server/power/PowerGroup;->isPoweringOnLocked()Z

    move-result v7

    if-eqz v7, :cond_172

    iget v7, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eqz v7, :cond_156

    if-ne v7, v4, :cond_172

    .line 5399
    :cond_156
    iget-object v7, v0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v7}, Lcom/android/server/power/PowerManagerService$Clock;->elapsedRealtime()J

    move-result-wide v9

    iget-wide v11, v0, Lcom/android/server/power/PowerManagerService;->mLastOutdoorModeEnabledTime:J

    sub-long/2addr v9, v11

    const-wide/32 v11, 0xdbba0

    cmp-long v7, v9, v11

    if-lez v7, :cond_172

    .line 5400
    iput-boolean v5, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isOutdoorMode:Z

    .line 5402
    iget-object v7, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v9, v0}, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/power/PowerManagerService;)V

    invoke-virtual {v7, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_172
    if-nez v8, :cond_182

    .line 5414
    iget-boolean v7, v0, Lcom/android/server/power/PowerManagerService;->mEarlyWakeUp:Z

    iput-boolean v7, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->earlyWakeUp:Z

    .line 5415
    iput-boolean v5, v0, Lcom/android/server/power/PowerManagerService;->mEarlyWakeUp:Z

    .line 5417
    iget v7, v0, Lcom/android/server/power/PowerManagerService;->mDualScreenPolicy:I

    iput v7, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dualScreenPolicy:I

    .line 5418
    iget v7, v0, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    iput v7, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastWakeUpReason:I

    .line 5422
    :cond_182
    iget-boolean v7, v0, Lcom/android/server/power/PowerManagerService;->mLCDFlashMode:Z

    iput-boolean v7, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lcdFlashMode:Z

    .line 5423
    iget-boolean v7, v0, Lcom/android/server/power/PowerManagerService;->mHbmBlock:Z

    iput-boolean v7, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->hbmBlock:Z

    .line 5426
    iget v7, v0, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessLowerLimit:I

    invoke-static {v7}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v7

    iput v7, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->minBrightness:F

    .line 5428
    iget v7, v0, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessUpperLimit:I

    invoke-static {v7}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v7

    iput v7, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->maxBrightness:F

    .line 5433
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->shouldUseProximitySensorLocked()Z

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->shouldBoostScreenBrightness()Z

    move-result v10

    iget v11, v0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    iget v12, v0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManagerFloat:F

    iget-boolean v13, v0, Lcom/android/server/power/PowerManagerService;->mDrawWakeLockOverrideFromSidekick:Z

    iget-object v6, v0, Lcom/android/server/power/PowerManagerService;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    const/4 v7, 0x7

    .line 5437
    invoke-virtual {v6, v7}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getBatterySaverPolicy(I)Landroid/os/PowerSaveState;

    move-result-object v14

    sget-boolean v15, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    iget-boolean v6, v0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOff:Z

    move/from16 v16, v6

    iget-boolean v6, v0, Lcom/android/server/power/PowerManagerService;->mIsVrModeEnabled:Z

    move/from16 v17, v6

    iget-boolean v6, v0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    move/from16 v18, v6

    iget-boolean v6, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    move/from16 v19, v6

    iget-boolean v6, v0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    move/from16 v20, v6

    iget-wide v6, v0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromWindowManager:J

    move-wide/from16 v21, v6

    iget v6, v0, Lcom/android/server/power/PowerManagerService;->mBatterySavingAdjustBrightnessFactor:F

    move/from16 v23, v6

    move-object v6, v3

    move/from16 v7, v24

    move v5, v8

    move/from16 v8, v25

    .line 5432
    invoke-virtual/range {v6 .. v23}, Lcom/android/server/power/PowerGroup;->updateLocked(FZZZIFZLandroid/os/PowerSaveState;ZZZZZZJF)Z

    move-result v6

    .line 5442
    invoke-virtual {v3}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result v7

    .line 5463
    invoke-virtual {v3}, Lcom/android/server/power/PowerGroup;->isReadyLocked()Z

    move-result v8

    const-string v9, "PowerManagerService"

    if-eq v6, v8, :cond_1ff

    .line 5464
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "displayReady: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " groupId="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5468
    :cond_1ff
    invoke-virtual {v3, v6}, Lcom/android/server/power/PowerGroup;->setReadyLocked(Z)Z

    move-result v8

    .line 5469
    invoke-virtual {v3}, Lcom/android/server/power/PowerGroup;->isPoweringOnLocked()Z

    move-result v10

    if-eqz v6, :cond_24e

    if-eqz v8, :cond_24e

    if-eqz v10, :cond_24e

    if-ne v7, v4, :cond_24e

    const/4 v6, 0x0

    .line 5472
    invoke-virtual {v3, v6}, Lcom/android/server/power/PowerGroup;->setIsPoweringOnLocked(Z)V

    .line 5473
    iget-object v6, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    const-wide/32 v6, 0x20000

    const-string v8, "Screen turning on"

    .line 5474
    invoke-static {v6, v7, v8, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 5475
    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v5}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v5

    .line 5476
    invoke-virtual {v3}, Lcom/android/server/power/PowerGroup;->getLastPowerOnTimeLocked()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-int v3, v5

    const/16 v5, 0xc8

    if-lt v3, v5, :cond_24e

    .line 5478
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Screen on took "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24e
    add-int/lit8 v1, v1, 0x1

    const/4 v5, 0x0

    goto/16 :goto_24

    :cond_253
    move v1, v5

    .line 5482
    iput-boolean v1, v0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    goto :goto_258

    :cond_257
    move v1, v5

    .line 5485
    :goto_258
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->areAllPowerGroupsReadyLocked()Z

    move-result v0

    if-eqz v0, :cond_261

    if-nez v2, :cond_261

    goto :goto_262

    :cond_261
    move v4, v1

    :goto_262
    return v4
.end method

.method public final updatePowerStateLocked()V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3671
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_70

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    if-eqz v0, :cond_70

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mUpdatePowerStateInProgress:Z

    if-eqz v0, :cond_d

    goto :goto_70

    .line 3674
    :cond_d
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "PowerManagerService"

    const-string v1, "Power manager lock was not held when calling updatePowerStateLocked"

    .line 3675
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    const-wide/32 v0, 0x20000

    const-string/jumbo v2, "updatePowerState"

    .line 3678
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v2, 0x1

    .line 3679
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mUpdatePowerStateInProgress:Z

    const/4 v2, 0x0

    .line 3682
    :try_start_29
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-virtual {p0, v3}, Lcom/android/server/power/PowerManagerService;->updateIsPoweredLocked(I)V

    .line 3683
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-virtual {p0, v3}, Lcom/android/server/power/PowerManagerService;->updateStayOnLocked(I)V

    .line 3684
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-virtual {p0, v3}, Lcom/android/server/power/PowerManagerService;->updateScreenBrightnessBoostLocked(I)V

    .line 3689
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v3}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v3

    move v5, v2

    .line 3692
    :cond_3f
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/2addr v5, v6

    .line 3694
    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3696
    invoke-virtual {p0, v6}, Lcom/android/server/power/PowerManagerService;->updateWakeLockSummaryLocked(I)V

    .line 3697
    invoke-virtual {p0, v3, v4, v6}, Lcom/android/server/power/PowerManagerService;->updateUserActivitySummaryLocked(JI)V

    .line 3698
    invoke-virtual {p0, v3, v4, v6}, Lcom/android/server/power/PowerManagerService;->updateAttentiveStateLocked(JI)V

    .line 3699
    invoke-virtual {p0, v6}, Lcom/android/server/power/PowerManagerService;->updateWakefulnessLocked(I)Z

    move-result v6

    if-nez v6, :cond_3f

    .line 3705
    invoke-virtual {p0, v3, v4}, Lcom/android/server/power/PowerManagerService;->updateProfilesLocked(J)V

    .line 3708
    invoke-virtual {p0, v5}, Lcom/android/server/power/PowerManagerService;->updatePowerGroupsLocked(I)Z

    move-result v3

    .line 3711
    invoke-virtual {p0, v5, v3}, Lcom/android/server/power/PowerManagerService;->updateDreamLocked(IZ)V

    .line 3714
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->finishWakefulnessChangeIfNeededLocked()V

    .line 3719
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateSuspendBlockerLocked()V
    :try_end_63
    .catchall {:try_start_29 .. :try_end_63} :catchall_69

    .line 3721
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3722
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mUpdatePowerStateInProgress:Z

    return-void

    :catchall_69
    move-exception v3

    .line 3721
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3722
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mUpdatePowerStateInProgress:Z

    .line 3723
    throw v3

    :cond_70
    :goto_70
    return-void
.end method

.method public updateProfileActivityTimeFromKnoxInternal(IJ)V
    .registers 4

    .line 6188
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 6189
    :try_start_3
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    .line 6199
    monitor-exit p2

    return-void

    :catchall_d
    move-exception p0

    monitor-exit p2
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final updateProfilesLocked(J)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3731
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_2c

    .line 3733
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    .line 3739
    invoke-virtual {p0, v3, p1, p2}, Lcom/android/server/power/PowerManagerService;->isProfileBeingKeptAwakeLocked(Lcom/android/server/power/PowerManagerService$ProfilePowerState;J)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 3740
    iput-boolean v1, v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLockingNotified:Z

    goto :goto_29

    .line 3741
    :cond_1b
    iget-boolean v4, v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLockingNotified:Z

    if-nez v4, :cond_29

    const/4 v4, 0x1

    .line 3742
    iput-boolean v4, v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLockingNotified:Z

    .line 3743
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v3, v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mUserId:I

    invoke-virtual {v4, v3}, Lcom/android/server/power/Notifier;->onProfileTimeout(I)V

    :cond_29
    :goto_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_2c
    return-void
.end method

.method public final updateScreenBrightnessBoostLocked(I)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    and-int/lit16 p1, p1, 0x800

    if-eqz p1, :cond_3e

    .line 5491
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-eqz p1, :cond_3e

    .line 5492
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {p1}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v1

    .line 5493
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 5494
    iget-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    iget-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mLastGlobalSleepTime:J

    cmp-long p1, v3, v5

    if-lez p1, :cond_33

    const-wide/16 v5, 0x1388

    add-long/2addr v3, v5

    cmp-long p1, v3, v1

    if-lez p1, :cond_33

    .line 5498
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x1

    .line 5499
    invoke-virtual {p1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 5500
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v3, v4}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void

    :cond_33
    const/4 p1, 0x0

    .line 5504
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x3e8

    move-object v0, p0

    .line 5505
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    :cond_3e
    return-void
.end method

.method public final updateSettingsLocked()V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2123
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2127
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    const-string/jumbo v2, "screensaver_enabled"

    const/4 v3, -0x2

    .line 2125
    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_16

    move v1, v2

    goto :goto_17

    :cond_16
    move v1, v4

    :goto_17
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    .line 2131
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    const-string/jumbo v5, "screensaver_activate_on_sleep"

    .line 2129
    invoke-static {v0, v5, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_26

    move v1, v2

    goto :goto_27

    :cond_26
    move v1, v4

    :goto_27
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    .line 2135
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    const-string/jumbo v5, "screensaver_activate_on_dock"

    .line 2133
    invoke-static {v0, v5, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_36

    move v1, v2

    goto :goto_37

    :cond_36
    move v1, v4

    :goto_37
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    const/16 v1, 0x3a98

    const-string/jumbo v5, "screen_off_timeout"

    .line 2137
    invoke-static {v0, v5, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    int-to-long v5, v1

    iput-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:J

    const/4 v1, -0x1

    const-string/jumbo v5, "sleep_timeout"

    .line 2140
    invoke-static {v0, v5, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    int-to-long v5, v1

    iput-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:J

    .line 2143
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mAttentiveTimeoutConfig:I

    const-string v5, "attentive_timeout"

    invoke-static {v0, v5, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    int-to-long v5, v1

    iput-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mAttentiveTimeoutSetting:J

    const-string/jumbo v1, "stay_on_while_plugged_in"

    .line 2146
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    .line 2148
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v5, "theater_mode_on"

    invoke-static {v1, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_75

    move v1, v2

    goto :goto_76

    :cond_75
    move v1, v4

    :goto_76
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    .line 2150
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-virtual {v1, v3}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mAlwaysOnEnabled:Z

    const-string/jumbo v1, "user_activity_timeout"

    .line 2155
    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutSetting:I

    .line 2173
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mOutdoorModeSetting:Z

    const-string v5, "display_outdoor_mode"

    .line 2174
    invoke-static {v0, v5, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v2, :cond_95

    move v5, v2

    goto :goto_96

    :cond_95
    move v5, v4

    :goto_96
    iput-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mOutdoorModeSetting:Z

    const-string v6, "PowerManagerService"

    if-eq v1, v5, :cond_ab

    if-eqz v5, :cond_ab

    .line 2178
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v1}, Lcom/android/server/power/PowerManagerService$Clock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/power/PowerManagerService;->mLastOutdoorModeEnabledTime:J

    const-string v1, "[api] updateSettingsLocked : Update OutdoorMode enabled time"

    .line 2179
    invoke-static {v6, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    :cond_ab
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSupportsDoubleTapWakeConfig:Z

    if-eqz v1, :cond_c5

    const-string v1, "double_tap_to_wake"

    .line 2184
    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_b9

    move v1, v2

    goto :goto_ba

    :cond_b9
    move v1, v4

    .line 2187
    :goto_ba
    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    if-eq v1, v5, :cond_c5

    .line 2188
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    .line 2189
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-virtual {v5, v4, v1}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeSetPowerMode(IZ)Z

    .line 2193
    :cond_c5
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_d0

    const-string v1, "1"

    goto :goto_d2

    :cond_d0
    const-string v1, "0"

    .line 2194
    :goto_d2
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mSystemProperties:Lcom/android/server/power/SystemPropertiesWrapper;

    const/4 v7, 0x0

    const-string/jumbo v8, "sys.retaildemo.enabled"

    .line 2195
    invoke-interface {v5, v8, v7}, Lcom/android/server/power/SystemPropertiesWrapper;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2194
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e7

    .line 2196
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mSystemProperties:Lcom/android/server/power/SystemPropertiesWrapper;

    invoke-interface {v5, v8, v1}, Lcom/android/server/power/SystemPropertiesWrapper;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e7
    const-string/jumbo v5, "screen_brightness_mode"

    .line 2199
    invoke-static {v0, v5, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    iput v5, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    .line 2212
    sget-boolean v5, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_WAKEUP_WHEN_PLUG_CHANGED:Z

    if-eqz v5, :cond_101

    const-string v7, "aod_mode"

    .line 2213
    invoke-static {v0, v7, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-eqz v7, :cond_fe

    move v7, v2

    goto :goto_ff

    :cond_fe
    move v7, v4

    :goto_ff
    iput-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mAodMode:Z

    :cond_101
    const-string v7, "game_autobrightness_lock"

    .line 2219
    invoke-static {v0, v7, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_10a

    goto :goto_10b

    :cond_10a
    move v2, v4

    .line 2220
    :goto_10b
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mGameAutobrightnessLocked:Z

    const/high16 v2, 0x3f800000    # 1.0f

    const-string/jumbo v3, "sem_power_saving_adjust_brightness_factor"

    .line 2224
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySavingAdjustBrightnessFactor:F

    .line 2241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] updateSettingsLocked : mDreamsEnabledSetting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mDreamsActivateOnSleepSetting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mDreamsActivateOnDockSetting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mScreenOffTimeoutSetting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " mSleepTimeoutSetting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " mStayOnWhilePluggedInSetting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mTheaterModeEnabled: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mAlwaysOnEnabled: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mAlwaysOnEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mSmartStayEnabledSetting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSmartStayEnabledSetting:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mDoubleTapWakeEnabled: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " retailDemoValue: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mScreenBrightnessModeSetting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mGameAutobrightnessLocked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mGameAutobrightnessLocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mBatterySavingAdjustBrightnessFactor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mBatterySavingAdjustBrightnessFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2260
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_COVER_DISPLAY_AUTO_BRIGHTNESS:Z

    const-string v2, ""

    if-eqz v1, :cond_1c1

    .line 2261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mScreenBrightnessModeSettingForCoverDisplay: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSettingForCoverDisplay:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1c2

    :cond_1c1
    move-object v1, v2

    :goto_1c2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_1da

    .line 2262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mAodMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mAodMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1da
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2241
    invoke-static {v6, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2265
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    return-void
.end method

.method public final updateStayOnLocked(I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    and-int/lit16 p1, p1, 0x120

    if-eqz p1, :cond_28

    .line 3951
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    .line 3952
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    if-eqz v0, :cond_1b

    .line 3953
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 3954
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    invoke-virtual {v0, v1}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    goto :goto_1e

    :cond_1b
    const/4 v0, 0x0

    .line 3956
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    .line 3959
    :goto_1e
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    if-eq v0, p1, :cond_28

    .line 3960
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    :cond_28
    return-void
.end method

.method public final updateSuspendBlockerLocked()V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 5778
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, v2

    .line 5779
    :goto_a
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->needSuspendBlockerLocked()Z

    move-result v3

    xor-int/lit8 v4, v3, 0x1

    .line 5782
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/PowerGroup;

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mShouldWaitForTransitionToAodUi:Z

    .line 5783
    invoke-virtual {v5, v6, v7}, Lcom/android/server/power/PowerGroup;->shouldEnableInteractiveModeLocked(ZZ)Z

    move-result v5

    if-nez v4, :cond_29

    .line 5794
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    if-eqz v6, :cond_29

    .line 5795
    invoke-virtual {p0, v2}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    .line 5799
    :cond_29
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v6, :cond_38

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mHoldingBootingSuspendBlocker:Z

    if-nez v6, :cond_38

    .line 5800
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mBootingSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v6}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 5801
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mHoldingBootingSuspendBlocker:Z

    :cond_38
    if-eqz v0, :cond_45

    .line 5803
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    if-nez v6, :cond_45

    .line 5804
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v6}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 5805
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    :cond_45
    const-string/jumbo v6, "holding display"

    if-eqz v3, :cond_55

    .line 5807
    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    if-nez v7, :cond_55

    .line 5808
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v7, v6}, Lcom/android/server/power/SuspendBlocker;->acquire(Ljava/lang/String;)V

    .line 5809
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    .line 5818
    :cond_55
    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    if-eqz v7, :cond_68

    if-eqz v5, :cond_65

    .line 5825
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->areAllPowerGroupsReadyLocked()Z

    move-result v7

    if-eqz v7, :cond_68

    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mDefaultDisplayReadyByProximity:Z

    if-eqz v7, :cond_68

    .line 5828
    :cond_65
    invoke-virtual {p0, v5}, Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(Z)V

    .line 5833
    :cond_68
    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v5, :cond_77

    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mHoldingBootingSuspendBlocker:Z

    if-eqz v5, :cond_77

    .line 5834
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mBootingSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v5}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 5835
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHoldingBootingSuspendBlocker:Z

    :cond_77
    if-nez v0, :cond_84

    .line 5837
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    if-eqz v0, :cond_84

    .line 5838
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 5839
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    :cond_84
    if-nez v3, :cond_91

    .line 5841
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    if-eqz v0, :cond_91

    .line 5842
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0, v6}, Lcom/android/server/power/SuspendBlocker;->release(Ljava/lang/String;)V

    .line 5843
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    :cond_91
    if-eqz v4, :cond_9a

    .line 5847
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    if-eqz v0, :cond_9a

    .line 5848
    invoke-virtual {p0, v1}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    :cond_9a
    return-void
.end method

.method public updateUidProcStateInternal(II)V
    .registers 9

    .line 6293
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6294
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$UidState;

    if-nez v1, :cond_17

    .line 6296
    new-instance v1, Lcom/android/server/power/PowerManagerService$UidState;

    invoke-direct {v1, p1}, Lcom/android/server/power/PowerManagerService$UidState;-><init>(I)V

    .line 6297
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6299
    :cond_17
    iget p1, v1, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0xb

    if-gt p1, v4, :cond_21

    move p1, v2

    goto :goto_22

    :cond_21
    move p1, v3

    .line 6301
    :goto_22
    iput p2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    .line 6302
    iget v5, v1, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    if-lez v5, :cond_42

    .line 6303
    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-nez v5, :cond_3f

    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyActive:Z

    if-eqz v5, :cond_31

    goto :goto_3f

    .line 6305
    :cond_31
    iget-boolean v1, v1, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    if-nez v1, :cond_42

    if-gt p2, v4, :cond_38

    goto :goto_39

    :cond_38
    move v2, v3

    :goto_39
    if-eq p1, v2, :cond_42

    .line 6309
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->handleUidStateChangeLocked()V

    goto :goto_42

    .line 6304
    :cond_3f
    :goto_3f
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->handleUidStateChangeLocked()V

    .line 6312
    :cond_42
    :goto_42
    monitor-exit v0

    return-void

    :catchall_44
    move-exception p0

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_44

    throw p0
.end method

.method public final updateUserActivitySummaryLocked(JI)V
    .registers 32
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const v3, 0x14027

    and-int v3, p3, v3

    if-nez v3, :cond_c

    return-void

    .line 4347
    :cond_c
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 4363
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->getAttentiveTimeoutLocked()J

    move-result-wide v5

    .line 4364
    invoke-virtual {v0, v5, v6}, Lcom/android/server/power/PowerManagerService;->getSleepTimeoutLocked(J)J

    move-result-wide v7

    .line 4365
    invoke-virtual {v0, v7, v8, v5, v6}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked(JJ)J

    move-result-wide v5

    .line 4367
    invoke-virtual {v0, v5, v6}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(J)J

    move-result-wide v9

    .line 4374
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    move-wide/from16 v16, v5

    const-wide/16 v4, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 4377
    :goto_2a
    iget-object v6, v0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    const-wide/16 v18, 0x0

    if-ge v14, v6, :cond_1d9

    .line 4380
    iget-object v6, v0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v6, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/PowerGroup;

    .line 4381
    invoke-virtual {v6}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v11

    .line 4383
    iget-boolean v12, v0, Lcom/android/server/power/PowerManagerService;->mIsDualViewMode:Z

    const/4 v13, 0x2

    if-eqz v12, :cond_53

    invoke-virtual {v6}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v12

    if-ne v12, v13, :cond_53

    .line 4384
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutForDexLocked()J

    move-result-wide v9

    move-wide/from16 v16, v9

    move-wide/from16 v9, v18

    .line 4388
    :cond_53
    invoke-virtual {v6}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result v12

    if-eqz v12, :cond_12c

    move v12, v14

    .line 4390
    invoke-virtual {v6}, Lcom/android/server/power/PowerGroup;->getLastUserActivityTimeLocked()J

    move-result-wide v13

    move/from16 v20, v11

    move/from16 v21, v12

    .line 4392
    invoke-virtual {v6}, Lcom/android/server/power/PowerGroup;->getLastUserActivityTimeNoChangeLightsLocked()J

    move-result-wide v11

    .line 4393
    invoke-virtual {v6}, Lcom/android/server/power/PowerGroup;->getLastWakeTimeLocked()J

    move-result-wide v22

    cmp-long v22, v13, v22

    if-ltz v22, :cond_89

    add-long v22, v13, v16

    sub-long v24, v22, v9

    cmp-long v26, v1, v24

    if-gez v26, :cond_79

    const/16 v22, 0x1

    goto :goto_8d

    :cond_79
    cmp-long v24, v1, v22

    if-gez v24, :cond_86

    cmp-long v24, v13, v11

    if-ltz v24, :cond_86

    move-wide/from16 v24, v22

    const/16 v22, 0x2

    goto :goto_8d

    :cond_86
    move-wide/from16 v24, v22

    goto :goto_8b

    :cond_89
    move-wide/from16 v24, v18

    :goto_8b
    const/16 v22, 0x0

    :goto_8d
    if-nez v22, :cond_bb

    .line 4410
    invoke-virtual {v6}, Lcom/android/server/power/PowerGroup;->getLastWakeTimeLocked()J

    move-result-wide v26

    cmp-long v23, v11, v26

    if-ltz v23, :cond_bb

    add-long v23, v11, v16

    cmp-long v25, v1, v23

    if-gez v25, :cond_bd

    .line 4413
    invoke-virtual {v6}, Lcom/android/server/power/PowerGroup;->isPolicyBrightLocked()Z

    move-result v25

    if-nez v25, :cond_b3

    invoke-virtual {v6}, Lcom/android/server/power/PowerGroup;->isPolicyVrLocked()Z

    move-result v25

    if-eqz v25, :cond_aa

    goto :goto_b3

    .line 4420
    :cond_aa
    invoke-virtual {v6}, Lcom/android/server/power/PowerGroup;->isPolicyDimLocked()Z

    move-result v25

    if-eqz v25, :cond_bd

    const/16 v22, 0x2

    goto :goto_bd

    .line 4417
    :cond_b3
    :goto_b3
    invoke-virtual {v6, v11, v12}, Lcom/android/server/power/PowerGroup;->setLastUserActivityTimeLocked(J)V

    sub-long v23, v23, v9

    const/16 v22, 0x1

    goto :goto_bd

    :cond_bb
    move-wide/from16 v23, v24

    :cond_bd
    :goto_bd
    if-nez v22, :cond_e0

    cmp-long v18, v7, v18

    if-ltz v18, :cond_dc

    .line 4428
    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 4430
    invoke-virtual {v6}, Lcom/android/server/power/PowerGroup;->getLastWakeTimeLocked()J

    move-result-wide v13

    cmp-long v13, v11, v13

    if-ltz v13, :cond_d7

    add-long/2addr v11, v7

    cmp-long v13, v1, v11

    if-gez v13, :cond_d9

    const/16 v22, 0x4

    goto :goto_d9

    :cond_d7
    move-wide/from16 v11, v23

    :cond_d9
    :goto_d9
    move/from16 v13, v22

    goto :goto_e4

    :cond_dc
    const-wide/16 v11, -0x1

    const/4 v13, 0x4

    goto :goto_e4

    :cond_e0
    move/from16 v13, v22

    move-wide/from16 v11, v23

    :goto_e4
    const/4 v14, 0x4

    if-eq v13, v14, :cond_fa

    if-eqz v3, :cond_fa

    and-int/lit8 v13, v13, 0x3

    if-eqz v13, :cond_f7

    .line 4447
    iget-wide v13, v0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    const-wide/16 v18, -0x1

    cmp-long v13, v13, v18

    if-nez v13, :cond_f7

    .line 4449
    iput-wide v11, v0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    :cond_f7
    const-wide/16 v11, -0x1

    const/4 v13, 0x4

    :cond_fa
    and-int/lit8 v14, v13, 0x1

    if-eqz v14, :cond_10c

    .line 4457
    invoke-virtual {v6}, Lcom/android/server/power/PowerGroup;->getWakeLockSummaryLocked()I

    move-result v14

    and-int/lit8 v14, v14, 0x20

    if-nez v14, :cond_10c

    .line 4459
    iget-object v14, v0, Lcom/android/server/power/PowerManagerService;->mAttentionDetector:Lcom/android/server/power/AttentionDetector;

    invoke-virtual {v14, v11, v12, v9, v10}, Lcom/android/server/power/AttentionDetector;->updateUserActivity(JJ)J

    move-result-wide v11

    .line 4463
    :cond_10c
    invoke-virtual {v0, v6, v1, v2}, Lcom/android/server/power/PowerManagerService;->isAttentiveTimeoutExpired(Lcom/android/server/power/PowerGroup;J)Z

    move-result v14

    if-eqz v14, :cond_115

    const-wide/16 v11, -0x1

    const/4 v13, 0x0

    :cond_115
    if-eqz v13, :cond_119

    const/4 v14, 0x1

    goto :goto_11a

    :cond_119
    const/4 v14, 0x0

    :goto_11a
    or-int/2addr v15, v14

    const-wide/16 v18, -0x1

    cmp-long v14, v4, v18

    if-nez v14, :cond_123

    move-wide v4, v11

    goto :goto_131

    :cond_123
    cmp-long v14, v11, v18

    if-eqz v14, :cond_131

    .line 4503
    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    goto :goto_131

    :cond_12c
    move/from16 v20, v11

    move/from16 v21, v14

    const/4 v13, 0x0

    .line 4509
    :cond_131
    :goto_131
    invoke-virtual {v6}, Lcom/android/server/power/PowerGroup;->getUserActivitySummaryLocked()I

    move-result v11

    if-eq v11, v13, :cond_1d1

    move/from16 v11, v20

    .line 4511
    invoke-virtual {v0, v13, v9, v10, v11}, Lcom/android/server/power/PowerManagerService;->sendUserActivityIntentLocked(IJI)V

    .line 4513
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "UserActivityState : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4514
    invoke-virtual {v6}, Lcom/android/server/power/PowerGroup;->getUserActivitySummaryLocked()I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " -> "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " groupId="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v14, "PowerManagerService"

    .line 4513
    invoke-static {v14, v12}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v11, :cond_186

    const/4 v11, 0x4

    if-ne v13, v11, :cond_17f

    const-wide/16 v11, -0x1

    cmp-long v18, v4, v11

    if-nez v18, :cond_17f

    .line 4519
    invoke-virtual {v0, v6}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked(Lcom/android/server/power/PowerGroup;)Z

    move-result v18

    if-eqz v18, :cond_17f

    .line 4520
    iget-object v11, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v12, v0, Lcom/android/server/power/PowerManagerService;->mPrintWakeLockAperiodicallyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_186

    .line 4522
    :cond_17f
    iget-object v11, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v12, v0, Lcom/android/server/power/PowerManagerService;->mPrintWakeLockAperiodicallyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4527
    :cond_186
    :goto_186
    iget-object v11, v0, Lcom/android/server/power/PowerManagerService;->mAbuseWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_1ba

    .line 4528
    invoke-virtual {v6}, Lcom/android/server/power/PowerGroup;->getUserActivitySummaryLocked()I

    move-result v11

    const/4 v12, 0x1

    and-int/2addr v11, v12

    if-eqz v11, :cond_1ba

    .line 4529
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "set mNeedCheckAbuseWakelocks to true as mAbuseWakeLocks.size : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/android/server/power/PowerManagerService;->mAbuseWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v14, v11}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x1

    .line 4530
    iput-boolean v11, v0, Lcom/android/server/power/PowerManagerService;->mNeedCheckAbuseWakelocks:Z

    .line 4531
    iget v12, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/2addr v12, v11

    iput v12, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    goto :goto_1d1

    .line 4532
    :cond_1ba
    iget-boolean v11, v0, Lcom/android/server/power/PowerManagerService;->mAbuseWakeLockDisabled:Z

    if-eqz v11, :cond_1d1

    and-int/lit8 v11, v13, 0x1

    if-eqz v11, :cond_1d1

    const-string/jumbo v11, "set mNeedCheckAbuseWakelocks to true because there are disabled wake lock"

    .line 4533
    invoke-static {v14, v11}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x1

    .line 4534
    iput-boolean v11, v0, Lcom/android/server/power/PowerManagerService;->mNeedCheckAbuseWakelocks:Z

    .line 4535
    iget v12, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/2addr v12, v11

    iput v12, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    goto :goto_1d2

    :cond_1d1
    :goto_1d1
    const/4 v11, 0x1

    .line 4541
    :goto_1d2
    invoke-virtual {v6, v13}, Lcom/android/server/power/PowerGroup;->setUserActivitySummaryLocked(I)V

    add-int/lit8 v14, v21, 0x1

    goto/16 :goto_2a

    :cond_1d9
    if-nez v15, :cond_1e0

    .line 4554
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mAbuseWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 4558
    :cond_1e0
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/power/PowerManagerService;->getNextProfileTimeoutLocked(J)J

    move-result-wide v1

    cmp-long v3, v1, v18

    if-lez v3, :cond_1ec

    .line 4560
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    :cond_1ec
    if-eqz v15, :cond_1f5

    cmp-long v1, v4, v18

    if-ltz v1, :cond_1f5

    .line 4564
    invoke-virtual {v0, v4, v5}, Lcom/android/server/power/PowerManagerService;->scheduleUserInactivityTimeout(J)V

    :cond_1f5
    return-void
.end method

.method public final updateWakeLockCallbackInternal(Landroid/os/IBinder;Landroid/os/IWakeLockCallback;I)V
    .registers 15

    .line 2692
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2693
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v1

    if-ltz v1, :cond_31

    .line 2703
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 2709
    iget-object p3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mCallback:Landroid/os/IWakeLockCallback;

    invoke-static {p2, p3}, Lcom/android/server/power/PowerManagerService;->isSameCallback(Landroid/os/IWakeLockCallback;Landroid/os/IWakeLockCallback;)Z

    move-result p3

    if-nez p3, :cond_2f

    .line 2710
    iget v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iget-object v8, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v9, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v10, p2

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;)V

    .line 2713
    iput-object p2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mCallback:Landroid/os/IWakeLockCallback;

    .line 2715
    :cond_2f
    monitor-exit v0

    return-void

    .line 2699
    :cond_31
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wake lock not active: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " from uid "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_50
    move-exception p0

    .line 2715
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_50

    throw p0
.end method

.method public final updateWakeLockDisabledStatesLocked()V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 6360
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    const/4 v3, 0x1

    if-ge v1, v0, :cond_30

    .line 6362
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 6363
    iget v5, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v6, 0xffff

    and-int/2addr v5, v6

    if-ne v5, v3, :cond_2d

    .line 6365
    invoke-virtual {p0, v4}, Lcom/android/server/power/PowerManagerService;->setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 6367
    iget-boolean v2, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz v2, :cond_29

    .line 6369
    invoke-virtual {p0, v4}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    goto :goto_2c

    .line 6371
    :cond_29
    invoke-virtual {p0, v4}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    :goto_2c
    move v2, v3

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_30
    if-eqz v2, :cond_3a

    .line 6377
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/2addr v0, v3

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 6378
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    :cond_3a
    return-void
.end method

.method public final updateWakeLockSummaryLocked(I)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3974
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3975
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mNeedCheckAbuseWakelocks:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_49

    .line 3976
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mAbuseWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-lez v1, :cond_2f

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    .line 3977
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerGroup;

    invoke-virtual {v1}, Lcom/android/server/power/PowerGroup;->getUserActivitySummaryLocked()I

    move-result v1

    and-int/lit8 v1, v1, 0x6

    if-eqz v1, :cond_2f

    .line 3979
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->releaseAbuseWakelockLocked()V

    .line 3980
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mAbuseWakeLockDisabled:Z

    .line 3981
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mAbuseWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_47

    .line 3982
    :cond_2f
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mAbuseWakeLockDisabled:Z

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    .line 3983
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerGroup;

    invoke-virtual {v1}, Lcom/android/server/power/PowerGroup;->getUserActivitySummaryLocked()I

    move-result v1

    and-int/2addr v1, v3

    if-eqz v1, :cond_47

    .line 3985
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->acquireAbuseWakelockLocked()V

    .line 3986
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mAbuseWakeLockDisabled:Z

    .line 3988
    :cond_47
    :goto_47
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mNeedCheckAbuseWakelocks:Z

    :cond_49
    const v1, 0x10003

    and-int/2addr p1, v1

    if-eqz p1, :cond_134

    .line 3994
    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 3996
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    move v1, v2

    :goto_58
    if-ge v1, p1, :cond_67

    .line 3998
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    iput v2, v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_58

    :cond_67
    move v1, v2

    .line 4001
    :goto_68
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_7e

    .line 4002
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerGroup;

    invoke-virtual {v3, v2}, Lcom/android/server/power/PowerGroup;->setWakeLockSummaryLocked(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_68

    :cond_7e
    move v1, v2

    move v3, v1

    :goto_80
    if-ge v1, v0, :cond_e7

    .line 4010
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 4011
    invoke-virtual {v4}, Lcom/android/server/power/PowerManagerService$WakeLock;->getPowerGroupId()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_e4

    .line 4013
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_a4

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    .line 4014
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->contains(I)Z

    move-result v6

    if-nez v6, :cond_a4

    goto :goto_e4

    .line 4018
    :cond_a4
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/PowerGroup;

    .line 4019
    invoke-virtual {p0, v4}, Lcom/android/server/power/PowerManagerService;->getWakeLockSummaryFlags(Lcom/android/server/power/PowerManagerService$WakeLock;)I

    move-result v8

    .line 4020
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/2addr v9, v8

    iput v9, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 4022
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v7, :cond_c8

    .line 4023
    invoke-virtual {v6}, Lcom/android/server/power/PowerGroup;->getWakeLockSummaryLocked()I

    move-result v5

    or-int/2addr v5, v8

    .line 4025
    invoke-virtual {v6, v5}, Lcom/android/server/power/PowerGroup;->setWakeLockSummaryLocked(I)V

    goto :goto_c9

    :cond_c8
    or-int/2addr v3, v8

    :goto_c9
    move v5, v2

    :goto_ca
    if-ge v5, p1, :cond_e4

    .line 4031
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    .line 4032
    iget v7, v6, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mUserId:I

    invoke-virtual {p0, v4, v7}, Lcom/android/server/power/PowerManagerService;->wakeLockAffectsUser(Lcom/android/server/power/PowerManagerService$WakeLock;I)Z

    move-result v7

    if-eqz v7, :cond_e1

    .line 4033
    iget v7, v6, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    or-int/2addr v7, v8

    iput v7, v6, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    :cond_e1
    add-int/lit8 v5, v5, 0x1

    goto :goto_ca

    :cond_e4
    :goto_e4
    add-int/lit8 v1, v1, 0x1

    goto :goto_80

    :cond_e7
    move v0, v2

    .line 4038
    :goto_e8
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_10f

    .line 4039
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerGroup;

    .line 4040
    invoke-virtual {v1}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result v4

    .line 4041
    invoke-virtual {v1}, Lcom/android/server/power/PowerGroup;->getWakeLockSummaryLocked()I

    move-result v5

    or-int/2addr v5, v3

    .line 4042
    invoke-virtual {v1}, Lcom/android/server/power/PowerGroup;->getLastGoToSleepReasonLocked()I

    move-result v6

    .line 4040
    invoke-static {v4, v5, v6}, Lcom/android/server/power/PowerManagerService;->adjustWakeLockSummary(III)I

    move-result v4

    .line 4043
    invoke-virtual {v1, v4}, Lcom/android/server/power/PowerGroup;->setWakeLockSummaryLocked(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e8

    .line 4046
    :cond_10f
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v0

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->adjustWakeLockSummary(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    :goto_11b
    if-ge v2, p1, :cond_134

    .line 4050
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    .line 4051
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v1

    iget v3, v0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    invoke-static {v1, v3}, Lcom/android/server/power/PowerManagerService;->adjustWakeLockSummary(II)I

    move-result v1

    iput v1, v0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_11b

    :cond_134
    return-void
.end method

.method public final updateWakeLockWorkSourceInternal(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V
    .registers 16

    .line 2663
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2664
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v1

    if-ltz v1, :cond_30

    .line 2674
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 2680
    invoke-virtual {p1, p2}, Lcom/android/server/power/PowerManagerService$WakeLock;->hasSameWorkSource(Landroid/os/WorkSource;)Z

    move-result p4

    if-nez p4, :cond_2e

    .line 2681
    iget v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v8, p2

    move-object v9, p3

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;)V

    .line 2684
    iput-object p3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    .line 2685
    invoke-virtual {p1, p2}, Lcom/android/server/power/PowerManagerService$WakeLock;->updateWorkSource(Landroid/os/WorkSource;)V

    .line 2687
    :cond_2e
    monitor-exit v0

    return-void

    .line 2670
    :cond_30
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Wake lock not active: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " from uid "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_4f
    move-exception p0

    .line 2687
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_4f

    throw p0
.end method

.method public final updateWakefulnessLocked(I)Z
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    and-int/lit16 p1, p1, 0x4eb7

    const/4 v0, 0x0

    if-nez p1, :cond_6

    return v0

    .line 4900
    :cond_6
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {p1}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v7

    move p1, v0

    move v1, p1

    .line 4901
    :goto_e
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge p1, v2, :cond_5c

    .line 4902
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerGroup;

    .line 4903
    invoke-virtual {v2}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result v4

    if-ne v4, v3, :cond_59

    .line 4904
    invoke-virtual {p0, v2}, Lcom/android/server/power/PowerManagerService;->isItBedTimeYetLocked(Lcom/android/server/power/PowerGroup;)Z

    move-result v3

    if-nez v3, :cond_2c

    goto :goto_59

    .line 4911
    :cond_2c
    invoke-virtual {p0, v2, v7, v8}, Lcom/android/server/power/PowerManagerService;->isAttentiveTimeoutExpired(Lcom/android/server/power/PowerGroup;J)Z

    move-result v1

    if-eqz v1, :cond_3d

    const/16 v5, 0x9

    const/16 v6, 0x3e8

    move-object v1, p0

    move-wide v3, v7

    .line 4915
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->sleepPowerGroupLocked(Lcom/android/server/power/PowerGroup;JII)Z

    move-result v1

    goto :goto_59

    .line 4917
    :cond_3d
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->shouldNapAtBedTimeLocked()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 4918
    invoke-virtual {v2}, Lcom/android/server/power/PowerGroup;->supportsSandmanLocked()Z

    move-result v1

    if-eqz v1, :cond_50

    const/16 v1, 0x3e8

    .line 4919
    invoke-virtual {p0, v2, v7, v8, v1}, Lcom/android/server/power/PowerManagerService;->dreamPowerGroupLocked(Lcom/android/server/power/PowerGroup;JI)Z

    move-result v1

    goto :goto_59

    :cond_50
    const/4 v5, 0x2

    const/16 v6, 0x3e8

    move-object v1, p0

    move-wide v3, v7

    .line 4921
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->dozePowerGroupLocked(Lcom/android/server/power/PowerGroup;JII)Z

    move-result v1

    :cond_59
    :goto_59
    add-int/lit8 p1, p1, 0x1

    goto :goto_e

    :cond_5c
    if-nez v1, :cond_62

    .line 4927
    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mNeedCheckAbuseWakelocks:Z

    if-eqz p0, :cond_63

    :cond_62
    move v0, v3

    :cond_63
    return v0
.end method

.method public final userActivityFromNative(JIII)V
    .registers 18

    move-object v0, p0

    .line 2856
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mIsUserActivityNativeInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 2857
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] userActivityFromNative :  (event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " displayId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") eventTime = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v6, p1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PowerManagerService"

    invoke-static {v3, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2860
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mHandlerPmsMisc:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iget-object v8, v0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    .line 2861
    invoke-interface {v8}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    add-long/2addr v8, v10

    .line 2860
    invoke-virtual {v1, v3, v8, v9}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_59

    :cond_53
    move-wide v6, p1

    move v4, p3

    move/from16 v2, p4

    move/from16 v5, p5

    :goto_59
    const/16 v8, 0x3e8

    move-object v0, p0

    move/from16 v1, p4

    move-wide v2, p1

    move v4, p3

    move/from16 v5, p5

    move v6, v8

    .line 2864
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityInternal(IJIII)V

    return-void
.end method

.method public final userActivityInternal(IJIII)V
    .registers 15

    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_59

    .line 2873
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastAndroidAutoBoostTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    .line 2874
    iput-wide p2, p0, Lcom/android/server/power/PowerManagerService;->mLastAndroidAutoBoostTime:J

    :cond_e
    const-string v0, "PowerManagerService"

    .line 2876
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "userActivityInternal PowerManager.USER_ACTIVITY_FLAG_INDIRECT : 2 (event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") eventTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mLastAndroidAutoBoostTime :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastAndroidAutoBoostTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2878
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastAndroidAutoBoostTime:J

    sub-long v0, p2, v0

    const-wide/16 v2, 0x76c

    cmp-long v0, v0, v2

    if-lez v0, :cond_59

    .line 2879
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.intent.action.ANDROID_AUTO_BOOSTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2880
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2881
    iput-wide p2, p0, Lcom/android/server/power/PowerManagerService;->mLastAndroidAutoBoostTime:J

    .line 2885
    :cond_59
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2887
    :try_start_5c
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v1, :cond_62

    .line 2888
    monitor-exit v0

    return-void

    :cond_62
    const/4 v1, -0x1

    if-ne p1, v1, :cond_75

    move-object v1, p0

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    .line 2892
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    move-result p1

    if-eqz p1, :cond_73

    .line 2893
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2895
    :cond_73
    monitor-exit v0

    return-void

    .line 2898
    :cond_75
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v2, p1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object p1

    if-nez p1, :cond_7f

    .line 2900
    monitor-exit v0

    return-void

    .line 2902
    :cond_7f
    iget p1, p1, Landroid/view/DisplayInfo;->displayGroupId:I

    if-ne p1, v1, :cond_85

    .line 2904
    monitor-exit v0

    return-void

    .line 2906
    :cond_85
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/android/server/power/PowerGroup;

    move-object v1, p0

    move-wide v3, p2

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(Lcom/android/server/power/PowerGroup;JIII)Z

    move-result p1

    if-eqz p1, :cond_9c

    .line 2908
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2910
    :cond_9c
    monitor-exit v0

    return-void

    :catchall_9e
    move-exception p0

    monitor-exit v0
    :try_end_a0
    .catchall {:try_start_5c .. :try_end_a0} :catchall_9e

    throw p0
.end method

.method public final userActivityNoUpdateLocked(JIII)Z
    .registers 16
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 2930
    :goto_2
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_22

    .line 2931
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/server/power/PowerGroup;

    move-object v3, p0

    move-wide v5, p1

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(Lcom/android/server/power/PowerGroup;JIII)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v1, 0x1

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_22
    return v1
.end method

.method public final userActivityNoUpdateLocked(Lcom/android/server/power/PowerGroup;JIII)Z
    .registers 23
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, p4

    move/from16 v4, p5

    .line 2943
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    .line 2950
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/power/PowerGroup;->getLastSleepTimeLocked()J

    move-result-wide v5

    cmp-long v5, v1, v5

    const/4 v6, 0x0

    if-ltz v5, :cond_157

    .line 2951
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/power/PowerGroup;->getLastWakeTimeLocked()J

    move-result-wide v7

    cmp-long v5, v1, v7

    if-ltz v5, :cond_157

    iget-boolean v5, v0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v5, :cond_22

    goto/16 :goto_157

    :cond_22
    const-wide/32 v7, 0x20000

    const-string/jumbo v5, "userActivity"

    .line 2955
    invoke-static {v7, v8, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2957
    :try_start_2b
    iget-wide v9, v0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    cmp-long v5, v1, v9

    const/4 v9, 0x7

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-lez v5, :cond_5b

    if-ne v3, v10, :cond_3a

    and-int/lit16 v5, v4, 0x4000

    if-eqz v5, :cond_4a

    :cond_3a
    if-nez v3, :cond_40

    and-int/lit16 v5, v4, 0x2000

    if-nez v5, :cond_4a

    :cond_40
    if-ne v3, v11, :cond_48

    const v5, 0x8000

    and-int/2addr v5, v4

    if-nez v5, :cond_4a

    :cond_48
    if-ne v3, v9, :cond_5b

    :cond_4a
    and-int/lit16 v5, v4, 0x1000

    if-eqz v5, :cond_50

    move v5, v11

    goto :goto_51

    :cond_50
    move v5, v6

    :goto_51
    if-eqz v5, :cond_55

    const/4 v5, -0x1

    goto :goto_56

    :cond_55
    move v5, v6

    .line 2965
    :goto_56
    invoke-virtual {v0, v5, v6}, Lcom/android/server/power/PowerManagerService;->setPowerBoostInternal(II)V

    .line 2966
    iput-wide v1, v0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    :cond_5b
    if-eq v3, v10, :cond_5f

    if-ne v3, v11, :cond_72

    .line 2971
    :cond_5f
    iget-wide v12, v0, Lcom/android/server/power/PowerManagerService;->mLastNormalTouchBoostTime:J

    sub-long v12, v1, v12

    const-wide/16 v14, 0x64

    cmp-long v5, v12, v14

    if-lez v5, :cond_72

    const-string v5, "NORMAL_TOUCH_BOOSTER"

    const-string v12, "TRUE"

    .line 2975
    invoke-static {v5, v12}, Lcom/samsung/android/os/SemPerfManager;->sendCommandToSsrm(Ljava/lang/String;Ljava/lang/String;)V

    .line 2976
    iput-wide v1, v0, Lcom/android/server/power/PowerManagerService;->mLastNormalTouchBoostTime:J

    .line 2980
    :cond_72
    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v12

    move/from16 v13, p6

    invoke-virtual {v5, v12, v3, v13}, Lcom/android/server/power/Notifier;->onUserActivity(III)V

    .line 2981
    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mAttentionDetector:Lcom/android/server/power/AttentionDetector;

    invoke-virtual {v5, v1, v2, v3}, Lcom/android/server/power/AttentionDetector;->onUserActivity(JI)I
    :try_end_82
    .catchall {:try_start_2b .. :try_end_82} :catchall_152

    const-string v5, "PowerManagerService"

    if-eq v3, v10, :cond_88

    if-ne v3, v9, :cond_d4

    .line 2984
    :cond_88
    :try_start_88
    iget-wide v9, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityStateListenerCalledTime:J

    cmp-long v9, v1, v9

    if-lez v9, :cond_d4

    .line 2987
    iput-wide v1, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityStateListenerCalledTime:J

    .line 2989
    iget v9, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityStateListenerState:I

    if-nez v9, :cond_c4

    .line 2990
    iput v11, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityStateListenerState:I

    .line 2991
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UserActivityStateListenerState: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityStateListenerState:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2993
    iget-object v9, v0, Lcom/android/server/power/PowerManagerService;->mUserActivityStateListenerListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_b2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/PowerManagerInternal$UserActivityStateListener;

    .line 2994
    iget v12, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityStateListenerState:I

    invoke-interface {v10, v12}, Landroid/os/PowerManagerInternal$UserActivityStateListener;->onChanged(I)V

    goto :goto_b2

    .line 2998
    :cond_c4
    iget-object v9, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v10, v0, Lcom/android/server/power/PowerManagerService;->mUserActivityStateListenerTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2999
    iget-object v9, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v10, v0, Lcom/android/server/power/PowerManagerService;->mUserActivityStateListenerTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v12, 0xbb8

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3003
    :cond_d4
    iget-boolean v9, v0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    if-eqz v9, :cond_e4

    const-string/jumbo v9, "userActivityNoUpdateLocked: mUserInactiveOverrideFromWindowManager : false"

    .line 3004
    invoke-static {v5, v9}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3005
    iput-boolean v6, v0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    const-wide/16 v9, -0x1

    .line 3006
    iput-wide v9, v0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    .line 3008
    :cond_e4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result v9

    if-eqz v9, :cond_14e

    const/4 v10, 0x3

    if-eq v9, v10, :cond_14e

    and-int/lit8 v9, v4, 0x2

    if-eqz v9, :cond_f2

    goto :goto_14e

    .line 3015
    :cond_f2
    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/PowerManagerService;->maybeUpdateForegroundProfileLastActivityLocked(J)V

    and-int/2addr v4, v11

    if-eqz v4, :cond_11b

    .line 3018
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/power/PowerGroup;->getLastUserActivityTimeNoChangeLightsLocked()J

    move-result-wide v4

    cmp-long v4, v1, v4

    if-lez v4, :cond_14a

    .line 3019
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/power/PowerGroup;->getLastUserActivityTimeLocked()J

    move-result-wide v4

    cmp-long v4, v1, v4

    if-lez v4, :cond_14a

    .line 3020
    invoke-virtual/range {p1 .. p3}, Lcom/android/server/power/PowerGroup;->setLastUserActivityTimeNoChangeLightsLocked(J)V

    .line 3021
    iget v1, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    if-ne v3, v11, :cond_117

    or-int/lit16 v1, v1, 0x1000

    .line 3023
    iput v1, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I
    :try_end_117
    .catchall {:try_start_88 .. :try_end_117} :catchall_152

    .line 3054
    :cond_117
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    return v11

    .line 3029
    :cond_11b
    :try_start_11b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/power/PowerGroup;->getLastUserActivityTimeLocked()J

    move-result-wide v9

    cmp-long v4, v1, v9

    if-lez v4, :cond_14a

    .line 3030
    invoke-virtual/range {p1 .. p3}, Lcom/android/server/power/PowerGroup;->setLastUserActivityTimeLocked(J)V

    .line 3031
    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    if-ne v3, v11, :cond_132

    or-int/lit16 v4, v4, 0x1000

    .line 3033
    iput v4, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3040
    :cond_132
    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutSetting:I

    if-lez v4, :cond_146

    if-nez v3, :cond_13e

    .line 3042
    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_146

    :cond_13e
    const-string v3, "call changes for MDM"

    .line 3043
    invoke-static {v5, v3}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3044
    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/PowerManagerService;->setUserActivityTimeoutLocked(J)V
    :try_end_146
    .catchall {:try_start_11b .. :try_end_146} :catchall_152

    .line 3054
    :cond_146
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    return v11

    :cond_14a
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    return v6

    :cond_14e
    :goto_14e
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    return v6

    :catchall_152
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 3055
    throw v0

    :cond_157
    :goto_157
    return v6
.end method

.method public final verifiedCoverClosedLocked()Z
    .registers 3

    .line 8065
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mCoverType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    .line 8070
    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mIsCoverClosed:Z

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public final wakeLockAffectsUser(Lcom/android/server/power/PowerManagerService$WakeLock;I)Z
    .registers 7

    .line 4151
    iget-object p0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_42

    move p0, v0

    .line 4152
    :goto_7
    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2}, Landroid/os/WorkSource;->size()I

    move-result v2

    if-ge p0, v2, :cond_1f

    .line 4153
    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, p0}, Landroid/os/WorkSource;->getUid(I)I

    move-result v2

    .line 4154
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne p2, v2, :cond_1c

    return v1

    :cond_1c
    add-int/lit8 p0, p0, 0x1

    goto :goto_7

    .line 4159
    :cond_1f
    iget-object p0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {p0}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_42

    move v2, v0

    .line 4161
    :goto_28
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_42

    .line 4162
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/WorkSource$WorkChain;

    invoke-virtual {v3}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v3

    .line 4163
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne p2, v3, :cond_3f

    return v1

    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 4169
    :cond_42
    iget p0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    if-ne p2, p0, :cond_4b

    move v0, v1

    :cond_4b
    return v0
.end method

.method public final wakePowerGroupLocked(Lcom/android/server/power/PowerGroup;JILjava/lang/String;ILjava/lang/String;I)V
    .registers 19
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    .line 3146
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/power/PowerManagerService;->wakePowerGroupLocked(Lcom/android/server/power/PowerGroup;JILjava/lang/String;ILjava/lang/String;IZ)V

    return-void
.end method

.method public final wakePowerGroupLocked(Lcom/android/server/power/PowerGroup;JILjava/lang/String;ILjava/lang/String;IZ)V
    .registers 24
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    move-object v9, p0

    move/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p6

    const-string v0, "::"

    .line 3159
    iput v10, v9, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    .line 3160
    iget-boolean v1, v9, Lcom/android/server/power/PowerManagerService;->mForceSuspendActive:Z

    if-nez v1, :cond_196

    iget-boolean v1, v9, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v1, :cond_15

    goto/16 :goto_196

    .line 3165
    :cond_15
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getLastSleepTimeLocked()J

    move-result-wide v1

    cmp-long v1, p2, v1

    if-ltz v1, :cond_196

    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_26

    goto/16 :goto_196

    .line 3171
    :cond_26
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_32

    iget-boolean v1, v9, Lcom/android/server/power/PowerManagerService;->mIsDualViewMode:Z

    if-nez v1, :cond_32

    return-void

    .line 3177
    :cond_32
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v1

    if-nez v1, :cond_4b

    const/16 v1, 0x71

    if-ne v10, v1, :cond_4b

    .line 3179
    iget-boolean v1, v9, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-eqz v1, :cond_4b

    iget-boolean v1, v9, Lcom/android/server/power/PowerManagerService;->mInterceptedKeyForProximity:Z

    if-nez v1, :cond_4b

    .line 3180
    iget-object v1, v9, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerInternal;->ignoreProximitySensorUntilChanged()V

    .line 3181
    iput-boolean v2, v9, Lcom/android/server/power/PowerManagerService;->mInterceptedKeyForProximity:Z

    .line 3187
    :cond_4b
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->isWakeUpPreventionNeededLocked()Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_55

    .line 3188
    iput v4, v9, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    return-void

    .line 3194
    :cond_55
    iget v1, v9, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    const-string v5, ""

    if-ne v1, v3, :cond_7d

    if-nez p9, :cond_7d

    const/16 v6, 0x3e8

    if-ne v12, v6, :cond_7d

    .line 3198
    :try_start_61
    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7d

    .line 3199
    invoke-virtual {v11, v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7d

    .line 3201
    array-length v6, v0

    if-ne v6, v3, :cond_7d

    aget-object v6, v0, v2

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7d

    .line 3202
    aget-object v0, v0, v2
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_7a} :catch_7b

    goto :goto_7e

    :catch_7b
    move-object v0, v5

    goto :goto_92

    :cond_7d
    move-object v0, v5

    .line 3207
    :goto_7e
    :try_start_7e
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_87

    move-object/from16 v6, p7

    goto :goto_88

    :cond_87
    move-object v6, v0

    .line 3209
    :goto_88
    iget-object v7, v9, Lcom/android/server/power/PowerManagerService;->mHandlerPmsMisc:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0, v12, v1, v6}, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/PowerManagerService;IILjava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_92} :catch_92

    .line 3219
    :catch_92
    :goto_92
    iget-object v1, v9, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    invoke-interface {v1}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v6

    sub-long v6, v6, p2

    long-to-int v1, v6

    .line 3220
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Screen__On  - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v9, Lcom/android/server/power/PowerManagerService;->mScreenOnOffCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v9, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3221
    invoke-static/range {p4 .. p4}, Landroid/os/PowerManager;->wakeReasonToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3222
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_de

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_df

    :cond_de
    move-object v0, v5

    :goto_df
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms) groupId="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3223
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "PowerManagerService"

    .line 3220
    invoke-static {v6, v0}, Lcom/android/server/power/Slog;->ik(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x4

    new-array v0, v13, [Ljava/lang/Object;

    .line 3224
    iget v6, v9, Lcom/android/server/power/PowerManagerService;->mScreenOnOffCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v4

    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v2

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v3

    const/4 v3, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v3

    invoke-static {v2, v0}, Lcom/android/server/power/PowerManagerLog;->sendLogEvent(I[Ljava/lang/Object;)V

    .line 3226
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->sCurrentScreenOnProfiler:Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->clearAll()V

    .line 3227
    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->noteWakeupDiff(I)V

    .line 3228
    iget v1, v9, Lcom/android/server/power/PowerManagerService;->mScreenOnOffCount:I

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->noteWakeupStart(I)V

    .line 3230
    iput-object v5, v9, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    .line 3231
    iput-object v5, v9, Lcom/android/server/power/PowerManagerService;->mScreenOffReason:Ljava/lang/String;

    .line 3232
    iget v0, v9, Lcom/android/server/power/PowerManagerService;->mScreenOnOffCount:I

    add-int/2addr v0, v2

    iput v0, v9, Lcom/android/server/power/PowerManagerService;->mScreenOnOffCount:I

    .line 3236
    iget-boolean v0, v9, Lcom/android/server/power/PowerManagerService;->mIsDualViewMode:Z

    if-nez v0, :cond_146

    const/16 v0, 0x6d

    if-ne v10, v0, :cond_146

    .line 3237
    iget-object v0, v9, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0, v4}, Lcom/android/server/power/Notifier;->onScreenStateChangeStartedByProximity(Z)V

    .line 3257
    :cond_146
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->CARLIFE_DISPLAY_GROUP:Z

    if-eqz v0, :cond_180

    .line 3258
    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v0

    if-nez v0, :cond_180

    iget-object v0, v9, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    .line 3259
    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_180

    .line 3260
    iget-object v0, v9, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/power/PowerGroup;

    const/16 v4, 0xb

    move-object v0, p0

    move-wide/from16 v2, p2

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/power/PowerManagerService;->wakePowerGroupLocked(Lcom/android/server/power/PowerGroup;JILjava/lang/String;ILjava/lang/String;I)V

    .line 3264
    iget-object v0, v9, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/power/PowerGroup;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(Lcom/android/server/power/PowerGroup;JIII)Z

    .line 3270
    :cond_180
    iget-object v0, v9, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 3271
    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v8

    move-object v0, p1

    move-wide/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    .line 3270
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/power/PowerGroup;->wakeUpLocked(JILjava/lang/String;ILjava/lang/String;ILcom/android/internal/util/LatencyTracker;)V

    :cond_196
    :goto_196
    return-void
.end method

.method public wasDeviceIdleForInternal(J)Z
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 6657
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6658
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerGroup;

    invoke-virtual {v1}, Lcom/android/server/power/PowerGroup;->getLastUserActivityTimeLocked()J

    move-result-wide v3

    add-long/2addr v3, p1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Clock;

    .line 6659
    invoke-interface {p0}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide p0

    cmp-long p0, v3, p0

    if-gez p0, :cond_1c

    const/4 v2, 0x1

    :cond_1c
    monitor-exit v0

    return v2

    :catchall_1e
    move-exception p0

    .line 6660
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p0
.end method
