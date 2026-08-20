.class public final Lcom/android/server/display/DisplayPowerController;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Lcom/android/server/display/AutomaticBrightnessController$Callbacks;
.implements Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayPowerController$BrightnessDynamicRampRatePair;,
        Lcom/android/server/display/DisplayPowerController$ColorFadeStateRunnable;,
        Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;,
        Lcom/android/server/display/DisplayPowerController$SeamlessAodReadyListener;,
        Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;,
        Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;,
        Lcom/android/server/display/DisplayPowerController$BrightnessReason;,
        Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;,
        Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;,
        Lcom/android/server/display/DisplayPowerController$SettingsObserver;,
        Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;,
        Lcom/android/server/display/DisplayPowerController$BrightnessEvent;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field public static final AB_LEARNING_SPLIT_LUX:F = 20.0f

.field public static final AB_LEARNING_SPLIT_NUM:I = 0x5

.field public static final AB_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.apps.turbo"

.field public static final BRIGHTNESS_CHANGE_STATSD_REPORT_INTERVAL_MS:I = 0x1f4

.field public static final COLOR_FADE_OFF_ANIMATION_DURATION_MILLIS:I = 0xf0

.field public static final COLOR_FADE_ON_ANIMATION_DURATION_MILLIS:I = 0xa0

.field public static final DEBUG:Z = false

.field public static final DEBUG_PRETEND_PROXIMITY_SENSOR_ABSENT:Z = false

.field public static final DEFAULT_WEIGHT_FOR_BRIGHTNESS_TRANSITION:I = 0xb4

.field public static final DEFAULT_WEIGHT_FOR_BRIGHTNESS_TRANSITION_AT_HBM:I = 0xf

.field public static final DOZE_MAXIMUM_BRIGHTNESS:F = 0.38f

.field public static final FORCE_UPDATE_AB_INTERVAL:I = 0x36ee80

.field public static final FORCE_UPDATE_AB_JOB_ID:I = 0x68

.field public static final MAX_AUTO_BRIGHTNESS_TRANSITION_TIME:I = 0xea60

.field public static final MAX_AUTO_BRIGHTNESS_TRANSITION_TIME_AT_HBM:I = 0x7530

.field public static final MAX_BRIGHTNESS_LOWER_THRESHOLD:I = 0xe6

.field public static final MSG_BRIGHTNESS_RAMP_DONE:I = 0xc

.field public static final MSG_CONFIGURE_BRIGHTNESS:I = 0x5

.field public static final MSG_FORCE_UPDATE_AB_JOB:I = 0xf

.field public static final MSG_IGNORE_PROXIMITY:I = 0x8

.field public static final MSG_PROXIMITY_SENSOR_DEBOUNCED:I = 0x2

.field public static final MSG_RESTART_ADAPTIVE_BRIGHTNESS_LONGTERM_MODEL_BUILDER_FROM_BNR:I = 0x10

.field public static final MSG_SCREEN_OFF_UNBLOCKED:I = 0x4

.field public static final MSG_SCREEN_ON_UNBLOCKED:I = 0x3

.field public static final MSG_SEAMLESS_AOD_READY:I = 0xe

.field public static final MSG_SET_TEMPORARY_AUTO_BRIGHTNESS_ADJUSTMENT:I = 0x7

.field public static final MSG_SET_TEMPORARY_BRIGHTNESS:I = 0x6

.field public static final MSG_STATSD_HBM_BRIGHTNESS:I = 0xd

.field public static final MSG_STOP:I = 0x9

.field public static final MSG_UPDATE_BRIGHTNESS:I = 0xa

.field public static final MSG_UPDATE_POWER_STATE:I = 0x1

.field public static final MSG_UPDATE_RBC:I = 0xb

.field public static final PROXIMITY_NEGATIVE:I = 0x0

.field public static final PROXIMITY_POSITIVE:I = 0x1

.field public static final PROXIMITY_SENSOR_NEGATIVE_DEBOUNCE_DELAY:I = 0x32

.field public static final PROXIMITY_SENSOR_POSITIVE_DEBOUNCE_DELAY:I = 0x0

.field public static final PROXIMITY_SENSOR_POSITIVE_DEBOUNCE_DELAY_FOR_VIEW_COVER:I = 0x32

.field public static final PROXIMITY_UNKNOWN:I = -0x1

.field public static final RAMP_STATE_SKIP_AUTOBRIGHT:I = 0x2

.field public static final RAMP_STATE_SKIP_INITIAL:I = 0x1

.field public static final RAMP_STATE_SKIP_NONE:I = 0x0

.field public static final REFERESH_RATE_MIN_LIMIT_RELEASE_MS:J = 0xc8L

.field public static final REPORTED_TO_POLICY_SCREEN_OFF:I = 0x0

.field public static final REPORTED_TO_POLICY_SCREEN_ON:I = 0x2

.field public static final REPORTED_TO_POLICY_SCREEN_TURNING_OFF:I = 0x3

.field public static final REPORTED_TO_POLICY_SCREEN_TURNING_ON:I = 0x1

.field public static final REPORTED_TO_POLICY_UNREPORTED:I = -0x1

.field public static final RINGBUFFER_MAX:I = 0x64

.field public static SAMSUNG_UX_COLOR_FADE_OFF_EFFECT_ENABLED:Z = true

.field public static final SCREEN_ANIMATION_RATE_MINIMUM:F = 0.0f

.field public static final SCREEN_OFF_BLOCKED_TRACE_NAME:Ljava/lang/String; = "Screen off blocked"

.field public static final SCREEN_ON_BLOCKED_TRACE_NAME:Ljava/lang/String; = "Screen on blocked"

.field public static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f

.field public static final USE_COLOR_FADE_ON_ANIMATION:Z = false


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mActualDisplayState:I

.field public final mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

.field public final mAllowAutoBrightnessWhileDozingConfig:Z

.field public final mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field public mAodManagerInternal:Lcom/samsung/android/aod/AODManagerInternal;

.field public mAppliedAutoBrightness:Z

.field public mAppliedBrightnessBoost:Z

.field public mAppliedDimming:Z

.field public mAppliedForceDimming:Z

.field public mAppliedLowPower:Z

.field public mAppliedScreenBrightnessOverride:Z

.field public mAppliedTemporaryAutoBrightnessAdjustment:Z

.field public mAppliedTemporaryBrightness:Z

.field public mAppliedThrottling:Z

.field public mAutoBrightnessAdjustment:F

.field public mAutoBrightnessEnabled:Z

.field public mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

.field public mBatteryLevelCritical:Z

.field public final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public mBeforeScreenBrightness:F

.field public mBeforeScreenState:I

.field public final mBlanker:Lcom/android/server/display/DisplayBlanker;

.field public final mBrightnessBucketsInDozeConfig:Z

.field public mBrightnessChangedByUser:Z

.field public mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

.field public mBrightnessEventRingBuffer:Lcom/android/internal/util/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Lcom/android/server/display/DisplayPowerController$BrightnessEvent;",
            ">;"
        }
    .end annotation
.end field

.field public mBrightnessLevelBin:I

.field public mBrightnessLevelDuration:[J

.field public mBrightnessLevelTriggeredTime:[J

.field public mBrightnessRampDecreaseMaxTimeMillis:J

.field public mBrightnessRampIncreaseMaxTimeMillis:J

.field public mBrightnessRampRateFastDecrease:F

.field public mBrightnessRampRateFastIncrease:F

.field public mBrightnessRampRateSlowDecrease:F

.field public mBrightnessRampRateSlowIncrease:F

.field public final mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

.field public final mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

.field public final mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

.field public mBrightnessSettingListener:Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;

.field public final mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

.field public final mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

.field public final mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCachedBrightnessInfo"
        }
    .end annotation
.end field

.field public final mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

.field public final mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

.field public final mCleanListener:Ljava/lang/Runnable;

.field public final mColorFadeEnabled:Z

.field public final mColorFadeFadesConfig:Z

.field public mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

.field public mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

.field public mColorFadeStateRunnable:Lcom/android/server/display/DisplayPowerController$ColorFadeStateRunnable;

.field public final mContext:Landroid/content/Context;

.field public final mCoverDisplayEnabled:Z

.field public mCurrentScreenBrightnessSetting:F

.field public final mDisplayBlanksAfterDozeConfig:Z

.field public mDisplayDevice:Lcom/android/server/display/DisplayDevice;

.field public mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

.field public final mDisplayId:I

.field public mDisplayReadyLocked:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mDisplayStatsId:I

.field public final mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

.field public final mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

.field public mDozing:Z

.field public mDualScreenPolicy:I

.field public mEarlyWakeUpManager:Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;

.field public final mEarlyWakeupEnabled:Z

.field public mExtraDimIsActive:Z

.field public mExtraDimStrength:I

.field public mForceSlowChange:Z

.field public final mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

.field public final mHbmController:Lcom/android/server/display/HighBrightnessModeController;

.field public mHbmLux:I

.field public mIdleModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field public mIgnoreProximityUntilChanged:Z

.field public mInitialAutoBrightness:F

.field public mInitialAutoBrightnessUpdated:Z

.field public mInteractiveModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field public mIsEarsenseProximity:Z

.field public mIsInTransition:Z

.field public mIsInternalDisplay:Z

.field public mIsOutdoorModeEnabled:Z

.field public mIsProximitySensorOnFoldingSide:Z

.field public mIsRbcActive:Z

.field public mIsSupportedAodMode:Z

.field public mLastAmbientLux:F

.field public mLastAutomaticScreenBrightness:F

.field public mLastBatteryLevelCriticalTime:J

.field public mLastBrightnessConfigurationTime:J

.field public final mLastBrightnessEvent:Lcom/android/server/display/DisplayPowerController$BrightnessEvent;

.field public mLastCoverClosedState:Z

.field public mLastNotifiedBrightness:F

.field public mLastOriginalTarget:F

.field public mLastScreenBrightnessSettingBeforeForceDim:F

.field public mLastScreenBrightnessSettingChangedTime:J

.field public mLastStatsBrightness:F

.field public mLastUserSetScreenBrightness:F

.field public mLcdFlashModeEnabled:Z

.field public mLightSensor:Landroid/hardware/Sensor;

.field public final mLock:Ljava/lang/Object;

.field public final mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

.field public final mMoreFastRampRate:F

.field public mNeedPrepareColorFade:Z

.field public mNeedSkipDozeState:Z

.field public mNitsRange:[F

.field public mOnBrightnessAnimationSupplier:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final mOnBrightnessChangeRunnable:Ljava/lang/Runnable;

.field public mOnProximityNegativeMessages:I

.field public final mOnProximityNegativeRunnable:Ljava/lang/Runnable;

.field public mOnProximityPositiveMessages:I

.field public final mOnProximityPositiveRunnable:Ljava/lang/Runnable;

.field public mOnStateChangedPending:Z

.field public final mOnStateChangedRunnable:Ljava/lang/Runnable;

.field public mPassRampAnimation:Z

.field public mPendingAutoBrightnessAdjustment:F

.field public mPendingEarlyWakeUpRequestLocked:Z

.field public mPendingForceSlowChangeLocked:Z

.field public mPendingForceUpdateAb:Z

.field public mPendingProximity:I

.field public mPendingProximityDebounceTime:J

.field public mPendingRequestChangedLocked:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mPendingScreenBrightnessSetting:F

.field public mPendingScreenOff:Z

.field public mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

.field public mPendingScreenOnByAodReady:Z

.field public mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

.field public mPendingUpdatePowerStateLocked:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mPendingWaitForNegativeProximityLocked:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mPowerHistorian:Lcom/android/server/power/PowerHistorian;

.field public mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field public mPowerState:Lcom/android/server/display/DisplayPowerState;

.field public mProximity:I

.field public mProximitySensor:Landroid/hardware/Sensor;

.field public mProximitySensorEnabled:Z

.field public final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field public mProximityThreshold:F

.field public final mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

.field public mRefreshRateMinLimitReleaseRunnable:Ljava/lang/Runnable;

.field public mRefreshRateMinLimitRequested:Z

.field public mReportedScreenStateToPolicy:I

.field public mResetBrightnessConfiguration:Z

.field public final mScreenBrightnessDefault:F

.field public final mScreenBrightnessDimConfig:F

.field public final mScreenBrightnessDozeConfig:F

.field public final mScreenBrightnessForCoverDisplayRangeMaximum:F

.field public mScreenBrightnessForVr:F

.field public final mScreenBrightnessForVrDefault:F

.field public final mScreenBrightnessForVrRangeMaximum:F

.field public final mScreenBrightnessForVrRangeMinimum:F

.field public final mScreenBrightnessMinimumDimAmount:F

.field public mScreenBrightnessModeSetting:I

.field public mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/display/RampAnimator$DualRampAnimator<",
            "Lcom/android/server/display/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end field

.field public final mScreenExtendedBrightnessRangeMaximum:F

.field public mScreenOffBecauseOfProximity:Z

.field public mScreenOffBlockStartRealTime:J

.field public mScreenOnBlockStartRealTime:J

.field public mSeamlessAodReady:Z

.field public mSeamlessAodReadyListener:Lcom/android/server/display/DisplayPowerController$SeamlessAodReadyListener;

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public mSensorNegativeDebounceDelay:I

.field public mSensorPositiveDebounceDelay:I

.field public final mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

.field public mShutdownReceiver:Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;

.field public mSkipRampState:I

.field public final mSkipScreenOnBrightnessRamp:Z

.field public mStopped:Z

.field public final mSuspendBlockerIdEarlyWakeup:Ljava/lang/String;

.field public final mSuspendBlockerIdOnStateChanged:Ljava/lang/String;

.field public final mSuspendBlockerIdProxDebounce:Ljava/lang/String;

.field public final mSuspendBlockerIdProxNegative:Ljava/lang/String;

.field public final mSuspendBlockerIdProxPositive:Ljava/lang/String;

.field public final mSuspendBlockerIdRefreshRate:Ljava/lang/String;

.field public final mSuspendBlockerIdUnfinishedBusiness:Ljava/lang/String;

.field public final mTempBrightnessEvent:Lcom/android/server/display/DisplayPowerController$BrightnessEvent;

.field public mTemporaryAutoBrightnessAdjustment:F

.field public mTemporaryScreenBrightness:F

.field public mUnfinishedBusiness:Z

.field public mUniqueDisplayId:Ljava/lang/String;

.field public mUseHbmAtManualMax:Z

.field public mUseLuxErrorCorrection:Z

.field public mUseSoftwareAutoBrightnessConfig:Z

.field public mWaitingForNegativeProximity:Z

.field public final mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;


# direct methods
.method public static synthetic $r8$lambda$0xHtT8yA5W_XvacgJDRgwKosFdE(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->lambda$createBrightnessThrottlerLocked$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$UYym6kik3PHnLK71lE8-Wsm-ins(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayDevice;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;IIZ)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Lcom/android/server/display/DisplayPowerController;->lambda$onDisplayChanged$1(Lcom/android/server/display/DisplayDevice;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;IIZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$XoXPhAr7-MZBzoFSaYw8RCaKEt0(Lcom/android/server/display/DisplayPowerController;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->lambda$initialize$2(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z32sUadC8jedc0ykx6JFk7SmoCc(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->lambda$createHbmControllerLocked$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$caCOegVr_EqI9dEKbPO4jsy1dcQ(Lcom/android/server/display/DisplayPowerController;Ljava/io/PrintWriter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->lambda$dump$5(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tDAjTa-HJrq6OAaVFhgoCDgC2lM(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method public static synthetic $r8$lambda$xw179nA-UzzjGgu8JJagdN7ASps(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->lambda$new$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetTAG(Lcom/android/server/display/DisplayPowerController;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppliedForceDimming(Lcom/android/server/display/DisplayPowerController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAutomaticBrightnessController(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/AutomaticBrightnessController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBlanker(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayBlanker;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallbacks(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayDeviceConfig(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayDeviceConfig;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayId(Lcom/android/server/display/DisplayPowerController;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInteractiveModeBrightnessMapper(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/BrightnessMappingStrategy;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mInteractiveModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastScreenBrightnessSettingBeforeForceDim(Lcom/android/server/display/DisplayPowerController;)F
    .registers 1

    iget p0, p0, Lcom/android/server/display/DisplayPowerController;->mLastScreenBrightnessSettingBeforeForceDim:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLogicalDisplay(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/LogicalDisplay;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOnBrightnessAnimationSupplier(Lcom/android/server/display/DisplayPowerController;)Ljava/util/function/Consumer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mOnBrightnessAnimationSupplier:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOnProximityNegativeMessages(Lcom/android/server/display/DisplayPowerController;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeMessages:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOnProximityPositiveMessages(Lcom/android/server/display/DisplayPowerController;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveMessages:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingScreenOffUnblocker(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingScreenOnUnblocker(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerRequest(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerState(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerState;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProximity(Lcom/android/server/display/DisplayPowerController;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProximitySensorEnabled(Lcom/android/server/display/DisplayPowerController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProximityThreshold(Lcom/android/server/display/DisplayPowerController;)F
    .registers 1

    iget p0, p0, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRefreshRateMinLimitReleaseRunnable(Lcom/android/server/display/DisplayPowerController;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mRefreshRateMinLimitReleaseRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRefreshRateMinLimitRequested(Lcom/android/server/display/DisplayPowerController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerController;->mRefreshRateMinLimitRequested:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScreenBrightnessModeSetting(Lcom/android/server/display/DisplayPowerController;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessModeSetting:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScreenBrightnessRampAnimator(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/RampAnimator$DualRampAnimator;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStopped(Lcom/android/server/display/DisplayPowerController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerController;->mStopped:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSuspendBlockerIdEarlyWakeup(Lcom/android/server/display/DisplayPowerController;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mSuspendBlockerIdEarlyWakeup:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSuspendBlockerIdOnStateChanged(Lcom/android/server/display/DisplayPowerController;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mSuspendBlockerIdOnStateChanged:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSuspendBlockerIdProxNegative(Lcom/android/server/display/DisplayPowerController;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mSuspendBlockerIdProxNegative:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSuspendBlockerIdProxPositive(Lcom/android/server/display/DisplayPowerController;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mSuspendBlockerIdProxPositive:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSuspendBlockerIdRefreshRate(Lcom/android/server/display/DisplayPowerController;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mSuspendBlockerIdRefreshRate:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmAppliedForceDimming(Lcom/android/server/display/DisplayPowerController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmBrightnessConfiguration(Lcom/android/server/display/DisplayPowerController;Landroid/hardware/display/BrightnessConfiguration;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmExtraDimIsActive(Lcom/android/server/display/DisplayPowerController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mExtraDimIsActive:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmExtraDimStrength(Lcom/android/server/display/DisplayPowerController;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mExtraDimStrength:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmForceSlowChange(Lcom/android/server/display/DisplayPowerController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mForceSlowChange:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmOnProximityNegativeMessages(Lcom/android/server/display/DisplayPowerController;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeMessages:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmOnProximityPositiveMessages(Lcom/android/server/display/DisplayPowerController;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveMessages:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmOnStateChangedPending(Lcom/android/server/display/DisplayPowerController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mOnStateChangedPending:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRefreshRateMinLimitRequested(Lcom/android/server/display/DisplayPowerController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mRefreshRateMinLimitRequested:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmResetBrightnessConfiguration(Lcom/android/server/display/DisplayPowerController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mResetBrightnessConfiguration:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSeamlessAodReady(Lcom/android/server/display/DisplayPowerController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mSeamlessAodReady:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTemporaryAutoBrightnessAdjustment(Lcom/android/server/display/DisplayPowerController;F)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTemporaryScreenBrightness(Lcom/android/server/display/DisplayPowerController;F)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$mapplyReduceBrightColorsSplineAdjustment(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->applyReduceBrightColorsSplineAdjustment()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcleanupHandlerThreadAfterStop(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->cleanupHandlerThreadAfterStop()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdebounceProximitySensor(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->debounceProximitySensor()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleProximitySensorEvent(Lcom/android/server/display/DisplayPowerController;JZ)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/DisplayPowerController;->handleProximitySensorEvent(JZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleRbcChanged(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->handleRbcChanged()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleSettingsChange(Lcom/android/server/display/DisplayPowerController;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->handleSettingsChange(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mignoreProximitySensorUntilChangedInternal(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->ignoreProximitySensorUntilChangedInternal()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlogHbmBrightnessStats(Lcom/android/server/display/DisplayPowerController;FI)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayPowerController;->logHbmBrightnessStats(FI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreportStats(Lcom/android/server/display/DisplayPowerController;F)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->reportStats(F)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendUpdatePowerState(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munblockScreenOff(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOff()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munblockScreenOn(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateLastBrightnessSettingChangedTime(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->updateLastBrightnessSettingChangedTime()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdatePowerState(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/BrightnessTracker;Lcom/android/server/display/BrightnessSetting;Ljava/lang/Runnable;)V
    .registers 21

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 709
    invoke-direct/range {v0 .. v10}, Lcom/android/server/display/DisplayPowerController;-><init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/BrightnessTracker;Lcom/android/server/display/BrightnessSetting;Ljava/lang/Runnable;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/BrightnessTracker;Lcom/android/server/display/BrightnessSetting;Ljava/lang/Runnable;Ljava/util/function/Consumer;)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;",
            "Landroid/os/Handler;",
            "Landroid/hardware/SensorManager;",
            "Lcom/android/server/display/DisplayBlanker;",
            "Lcom/android/server/display/LogicalDisplay;",
            "Lcom/android/server/display/BrightnessTracker;",
            "Lcom/android/server/display/BrightnessSetting;",
            "Ljava/lang/Runnable;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p10

    .line 718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    .line 280
    new-instance v3, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    invoke-direct {v3}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;-><init>()V

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    const/4 v3, -0x1

    .line 359
    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    .line 362
    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    const-wide/16 v4, -0x1

    .line 363
    iput-wide v4, v0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 387
    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    .line 407
    new-instance v6, Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$BrightnessReason-IA;)V

    iput-object v6, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    .line 408
    new-instance v6, Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-direct {v6, p0, v7}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$BrightnessReason-IA;)V

    iput-object v6, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v6, 0x0

    .line 418
    iput v6, v0, Lcom/android/server/display/DisplayPowerController;->mLastStatsBrightness:F

    const/4 v6, 0x0

    .line 448
    iput v6, v0, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    const/high16 v8, 0x7fc00000    # Float.NaN

    .line 474
    iput v8, v0, Lcom/android/server/display/DisplayPowerController;->mLastUserSetScreenBrightness:F

    .line 554
    iput-boolean v6, v0, Lcom/android/server/display/DisplayPowerController;->mUseHbmAtManualMax:Z

    .line 560
    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    .line 561
    iput-boolean v6, v0, Lcom/android/server/display/DisplayPowerController;->mNeedPrepareColorFade:Z

    .line 562
    iput-boolean v6, v0, Lcom/android/server/display/DisplayPowerController;->mNeedSkipDozeState:Z

    .line 576
    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mSensorPositiveDebounceDelay:I

    .line 577
    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mSensorNegativeDebounceDelay:I

    .line 581
    iput-boolean v6, v0, Lcom/android/server/display/DisplayPowerController;->mLcdFlashModeEnabled:Z

    .line 582
    iput-boolean v6, v0, Lcom/android/server/display/DisplayPowerController;->mPassRampAnimation:Z

    .line 586
    iput-boolean v6, v0, Lcom/android/server/display/DisplayPowerController;->mIsOutdoorModeEnabled:Z

    .line 591
    iput-boolean v6, v0, Lcom/android/server/display/DisplayPowerController;->mSeamlessAodReady:Z

    .line 592
    iput-boolean v6, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnByAodReady:Z

    .line 600
    iput v8, v0, Lcom/android/server/display/DisplayPowerController;->mLastOriginalTarget:F

    const/4 v9, 0x3

    new-array v10, v9, [J

    .line 606
    iput-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessLevelTriggeredTime:[J

    new-array v10, v9, [J

    .line 607
    iput-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessLevelDuration:[J

    .line 609
    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessLevelBin:I

    .line 610
    iput v8, v0, Lcom/android/server/display/DisplayPowerController;->mBeforeScreenBrightness:F

    const/4 v10, 0x2

    .line 611
    iput v10, v0, Lcom/android/server/display/DisplayPowerController;->mBeforeScreenState:I

    .line 623
    iput-wide v4, v0, Lcom/android/server/display/DisplayPowerController;->mLastScreenBrightnessSettingChangedTime:J

    .line 638
    iput v8, v0, Lcom/android/server/display/DisplayPowerController;->mLastAutomaticScreenBrightness:F

    .line 639
    iput v8, v0, Lcom/android/server/display/DisplayPowerController;->mLastAmbientLux:F

    .line 652
    iput v10, v0, Lcom/android/server/display/DisplayPowerController;->mActualDisplayState:I

    .line 655
    iput v8, v0, Lcom/android/server/display/DisplayPowerController;->mLastNotifiedBrightness:F

    .line 682
    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mExtraDimStrength:I

    .line 683
    iput-boolean v6, v0, Lcom/android/server/display/DisplayPowerController;->mExtraDimIsActive:Z

    .line 693
    invoke-static {}, Lcom/android/server/power/PowerHistorian;->getInstance()Lcom/android/server/power/PowerHistorian;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mPowerHistorian:Lcom/android/server/power/PowerHistorian;

    .line 1587
    new-instance v3, Lcom/android/server/display/DisplayPowerController$4;

    invoke-direct {v3, p0}, Lcom/android/server/display/DisplayPowerController$4;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 1609
    new-instance v3, Lcom/android/server/display/DisplayPowerController$5;

    invoke-direct {v3, p0}, Lcom/android/server/display/DisplayPowerController$5;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mRefreshRateMinLimitReleaseRunnable:Ljava/lang/Runnable;

    .line 1622
    new-instance v3, Lcom/android/server/display/DisplayPowerController$6;

    invoke-direct {v3, p0}, Lcom/android/server/display/DisplayPowerController$6;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

    .line 3377
    new-instance v3, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    .line 3706
    new-instance v3, Lcom/android/server/display/DisplayPowerController$8;

    invoke-direct {v3, p0}, Lcom/android/server/display/DisplayPowerController$8;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    .line 3721
    new-instance v3, Lcom/android/server/display/DisplayPowerController$9;

    invoke-direct {v3, p0}, Lcom/android/server/display/DisplayPowerController$9;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    .line 3736
    new-instance v3, Lcom/android/server/display/DisplayPowerController$10;

    invoke-direct {v3, p0}, Lcom/android/server/display/DisplayPowerController$10;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    .line 4307
    new-instance v3, Lcom/android/server/display/DisplayPowerController$11;

    invoke-direct {v3, p0}, Lcom/android/server/display/DisplayPowerController$11;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    move-object/from16 v3, p6

    .line 720
    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 721
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v4

    iput v4, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    .line 722
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "]"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 723
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DisplayPowerController"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    .line 724
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "unfinished business"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mSuspendBlockerIdUnfinishedBusiness:Ljava/lang/String;

    .line 725
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "on state changed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mSuspendBlockerIdOnStateChanged:Ljava/lang/String;

    .line 726
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "prox positive"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mSuspendBlockerIdProxPositive:Ljava/lang/String;

    .line 727
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "prox negative"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mSuspendBlockerIdProxNegative:Ljava/lang/String;

    .line 728
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "prox debounce"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mSuspendBlockerIdProxDebounce:Ljava/lang/String;

    .line 731
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "vrr ramp anitmion"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mSuspendBlockerIdRefreshRate:Ljava/lang/String;

    .line 732
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "early wakeup"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mSuspendBlockerIdEarlyWakeup:Ljava/lang/String;

    .line 735
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 736
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mUniqueDisplayId:Ljava/lang/String;

    .line 737
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    iput v5, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayStatsId:I

    .line 738
    new-instance v5, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual/range {p3 .. p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v11

    invoke-direct {v5, p0, v11}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;-><init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Looper;)V

    iput-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 739
    new-instance v11, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;

    invoke-direct {v11, p0, v4}, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;-><init>(Lcom/android/server/display/DisplayPowerController;I)V

    iput-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessEvent:Lcom/android/server/display/DisplayPowerController$BrightnessEvent;

    .line 740
    new-instance v11, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;

    invoke-direct {v11, p0, v4}, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;-><init>(Lcom/android/server/display/DisplayPowerController;I)V

    iput-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/DisplayPowerController$BrightnessEvent;

    if-eqz v4, :cond_19f

    .line 748
    iput-object v7, v0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    goto :goto_1a5

    .line 746
    :cond_19f
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v11

    iput-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 751
    :goto_1a5
    new-instance v11, Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    invoke-direct {v11, p0, v5}, Lcom/android/server/display/DisplayPowerController$SettingsObserver;-><init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Handler;)V

    iput-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    move-object/from16 v11, p2

    .line 752
    iput-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    move-object/from16 v11, p4

    .line 753
    iput-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 754
    const-class v11, Lcom/android/server/policy/WindowManagerPolicy;

    invoke-static {v11}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 755
    const-class v11, Lcom/samsung/android/aod/AODManagerInternal;

    invoke-static {v11}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/aod/AODManagerInternal;

    iput-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mAodManagerInternal:Lcom/samsung/android/aod/AODManagerInternal;

    move-object/from16 v11, p5

    .line 756
    iput-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    .line 757
    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    move-object/from16 v11, p8

    .line 762
    iput-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    move-object/from16 v11, p9

    .line 763
    iput-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mOnBrightnessChangeRunnable:Ljava/lang/Runnable;

    if-nez v4, :cond_1dc

    if-eqz v2, :cond_1dc

    .line 767
    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mOnBrightnessAnimationSupplier:Ljava/util/function/Consumer;

    .line 771
    :cond_1dc
    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 773
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/4 v12, 0x4

    .line 777
    invoke-virtual {v2, v12}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v12

    .line 776
    invoke-static {v12}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(F)F

    move-result v12

    iput v12, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:F

    .line 779
    invoke-virtual {v2, v9}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v9

    .line 778
    invoke-static {v9}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(F)F

    move-result v9

    iput v9, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:F

    const v9, 0x10500d2

    .line 780
    invoke-virtual {v11, v9}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v9

    iput v9, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessMinimumDimAmount:F

    const/high16 v9, 0x3f800000    # 1.0f

    const v12, 0x10e0109

    .line 784
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x437f0000    # 255.0f

    div-float/2addr v12, v13

    invoke-static {v9, v12}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, v0, Lcom/android/server/display/DisplayPowerController;->mScreenExtendedBrightnessRangeMaximum:F

    .line 790
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v12

    iget v12, v12, Landroid/view/DisplayInfo;->brightnessDefault:F

    .line 789
    invoke-static {v12}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(F)F

    move-result v12

    iput v12, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDefault:F

    const/4 v12, 0x7

    .line 794
    invoke-virtual {v2, v12}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v12

    .line 793
    invoke-static {v12}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(F)F

    move-result v12

    iput v12, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrDefault:F

    const/4 v12, 0x6

    .line 796
    invoke-virtual {v2, v12}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v12

    .line 795
    invoke-static {v12}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(F)F

    move-result v12

    iput v12, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMaximum:F

    const/4 v12, 0x5

    .line 798
    invoke-virtual {v2, v12}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v2

    .line 797
    invoke-static {v2}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(F)F

    move-result v2

    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMinimum:F

    const v2, 0x1110036

    .line 803
    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    const/4 v12, 0x1

    if-eqz v2, :cond_254

    if-nez v4, :cond_254

    move v2, v12

    goto :goto_255

    :cond_254
    move v2, v6

    :goto_255
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    const v2, 0x1110016

    .line 808
    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    .line 811
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v2

    .line 812
    invoke-virtual {v2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 814
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->loadBrightnessRampRates()V

    .line 815
    iput v9, v0, Lcom/android/server/display/DisplayPowerController;->mMoreFastRampRate:F

    .line 816
    iput-boolean v6, v0, Lcom/android/server/display/DisplayPowerController;->mSkipScreenOnBrightnessRamp:Z

    const v2, 0x10e002d

    .line 820
    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mHbmLux:I

    if-gez v2, :cond_280

    const/16 v2, 0x4e20

    .line 823
    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mHbmLux:I

    .line 827
    :cond_280
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->createHbmControllerLocked()Lcom/android/server/display/HighBrightnessModeController;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 829
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->createBrightnessThrottlerLocked()Lcom/android/server/display/BrightnessThrottler;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    .line 832
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessSetting()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/display/DisplayPowerController;->saveBrightnessInfo(F)Z

    .line 848
    iput-object v7, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    .line 849
    iput-object v7, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    .line 851
    invoke-virtual {p0, v11}, Lcom/android/server/display/DisplayPowerController;->loadNitsRange(Landroid/content/res/Resources;)V

    .line 883
    iput-object v7, v0, Lcom/android/server/display/DisplayPowerController;->mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    move-object/from16 v2, p3

    .line 886
    invoke-virtual {p0, v11, v2}, Lcom/android/server/display/DisplayPowerController;->setUpAutoBrightness(Landroid/content/res/Resources;Landroid/os/Handler;)V

    .line 889
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    if-eqz v2, :cond_2b7

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mInteractiveModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v2, :cond_2b7

    .line 890
    iput-object v7, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    .line 891
    new-instance v2, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mHbmLux:I

    iget-object v9, v0, Lcom/android/server/display/DisplayPowerController;->mInteractiveModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-direct {v2, p1, v3, v7, v9}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;-><init>(Landroid/content/Context;ILcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;Lcom/android/server/display/BrightnessMappingStrategy;)V

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    goto :goto_2bd

    :cond_2b7
    move-object/from16 v1, p7

    .line 894
    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    .line 895
    iput-object v7, v0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 899
    :goto_2bd
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    xor-int/2addr v1, v12

    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    const v1, 0x111002a

    .line 900
    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    const v1, 0x1110116

    .line 903
    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBlanksAfterDozeConfig:Z

    const v1, 0x1110117

    .line 906
    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessBucketsInDozeConfig:Z

    .line 909
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->loadProximitySensor()V

    .line 921
    iput-boolean v6, v0, Lcom/android/server/display/DisplayPowerController;->mCoverDisplayEnabled:Z

    .line 922
    iput v8, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForCoverDisplayRangeMaximum:F

    .line 928
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessSettingOnBootPhase()F

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:F

    .line 930
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessForVrSetting()F

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVr:F

    .line 931
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->getAutoBrightnessAdjustmentSetting()F

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    .line 932
    iput v8, v0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:F

    .line 933
    iput v8, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:F

    .line 934
    iput v8, v0, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    .line 935
    iput v8, v0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    .line 936
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessModeSetting()I

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessModeSetting:I

    if-eqz v4, :cond_30a

    move v1, v6

    goto :goto_30b

    :cond_30a
    move v1, v12

    .line 939
    :goto_30b
    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mIsInternalDisplay:Z

    if-eqz v1, :cond_31e

    .line 943
    new-instance v1, Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;

    invoke-direct {v1, p0, v7}, Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$ShutdownReceiver-IA;)V

    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mShutdownReceiver:Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;

    .line 944
    new-instance v1, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    invoke-virtual {v5, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_31e
    if-eqz v4, :cond_322

    move v1, v6

    goto :goto_323

    :cond_322
    move v1, v12

    .line 953
    :goto_323
    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mEarlyWakeupEnabled:Z

    if-eqz v1, :cond_32e

    .line 956
    new-instance v1, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mEarlyWakeUpManager:Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;

    .line 961
    :cond_32e
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_WA_WAITING_AOD_WHEN_WAKINGUP_FROM_DOZE:Z

    if-eqz v1, :cond_337

    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mIsInternalDisplay:Z

    if-eqz v1, :cond_337

    move v6, v12

    :cond_337
    iput-boolean v6, v0, Lcom/android/server/display/DisplayPowerController;->mIsSupportedAodMode:Z

    if-eqz v6, :cond_342

    .line 964
    new-instance v1, Lcom/android/server/display/DisplayPowerController$SeamlessAodReadyListener;

    invoke-direct {v1, p0, v7}, Lcom/android/server/display/DisplayPowerController$SeamlessAodReadyListener;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$SeamlessAodReadyListener-IA;)V

    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mSeamlessAodReadyListener:Lcom/android/server/display/DisplayPowerController$SeamlessAodReadyListener;

    .line 967
    :cond_342
    new-instance v1, Lcom/android/server/display/DisplayPowerController$ColorFadeStateRunnable;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayPowerController$ColorFadeStateRunnable;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeStateRunnable:Lcom/android/server/display/DisplayPowerController$ColorFadeStateRunnable;

    if-nez v4, :cond_34e

    .line 971
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->resetScreenBrightnessLevelDuration()V

    .line 976
    :cond_34e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create new DPC instance, mDisplayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " AutomaticBrightnessController="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mInteractiveModeBrightnessMapper="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mInteractiveModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static clampAbsoluteBrightness(F)F
    .registers 3

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3996
    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p0

    return p0
.end method

.method public static clampAutoBrightnessAdjustment(F)F
    .registers 3

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 4001
    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p0

    return p0
.end method

.method private synthetic lambda$createBrightnessThrottlerLocked$4()V
    .registers 1

    .line 2876
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 2877
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->postBrightnessChangeRunnable()V

    return-void
.end method

.method private synthetic lambda$createHbmControllerLocked$3()V
    .registers 1

    .line 2860
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 2861
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->postBrightnessChangeRunnable()V

    .line 2863
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz p0, :cond_d

    .line 2864
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->update()V

    :cond_d
    return-void
.end method

.method private synthetic lambda$dump$5(Ljava/io/PrintWriter;)V
    .registers 2

    .line 3816
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->dumpLocal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private synthetic lambda$initialize$2(F)V
    .registers 4

    .line 1387
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1388
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 5

    .line 945
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 946
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 947
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mShutdownReceiver:Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private synthetic lambda$onDisplayChanged$1(Lcom/android/server/display/DisplayDevice;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;IIZ)V
    .registers 9

    .line 1196
    iget-object p8, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-eq p8, p1, :cond_15

    .line 1197
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 1198
    iput-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mUniqueDisplayId:Ljava/lang/String;

    .line 1199
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayStatsId:I

    .line 1200
    iput-object p3, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1201
    invoke-virtual {p0, p4, p5}, Lcom/android/server/display/DisplayPowerController;->loadFromDisplayDeviceConfig(Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;)V

    const/4 p1, 0x1

    goto :goto_23

    .line 1217
    :cond_15
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 1218
    invoke-virtual {p1, p6, p7}, Lcom/android/server/display/HighBrightnessModeController;->isResolutionChanged(II)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 1219
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {p1, p6, p7}, Lcom/android/server/display/HighBrightnessModeController;->handleResolutionChange(II)V

    :cond_22
    const/4 p1, 0x0

    :goto_23
    if-eqz p1, :cond_28

    .line 1236
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    :cond_28
    return-void
.end method

.method public static proximityToString(I)Ljava/lang/String;
    .registers 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_13

    if-eqz p0, :cond_10

    const/4 v0, 0x1

    if-eq p0, v0, :cond_d

    .line 3951
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const-string p0, "Positive"

    return-object p0

    :cond_10
    const-string p0, "Negative"

    return-object p0

    :cond_13
    const-string p0, "Unknown"

    return-object p0
.end method

.method public static reportedToPolicyToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_13

    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    .line 3964
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const-string p0, "REPORTED_TO_POLICY_SCREEN_ON"

    return-object p0

    :cond_10
    const-string p0, "REPORTED_TO_POLICY_SCREEN_TURNING_ON"

    return-object p0

    :cond_13
    const-string p0, "REPORTED_TO_POLICY_SCREEN_OFF"

    return-object p0
.end method

.method public static skipRampStateToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_13

    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    .line 3977
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const-string p0, "RAMP_STATE_SKIP_AUTOBRIGHT"

    return-object p0

    :cond_10
    const-string p0, "RAMP_STATE_SKIP_INITIAL"

    return-object p0

    :cond_13
    const-string p0, "RAMP_STATE_SKIP_NONE"

    return-object p0
.end method


# virtual methods
.method public addBrightnessWeights(FFFF)V
    .registers 5

    .line 5163
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    if-eqz p0, :cond_7

    .line 5164
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->addBrightnessWeightDirectly(FFFF)V

    :cond_7
    return-void
.end method

.method public final addScreenBrightnessLevelDuration()V
    .registers 10

    .line 5080
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    if-eqz v0, :cond_5

    goto :goto_22

    .line 5082
    :cond_5
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessLevelBin:I

    if-ltz v0, :cond_22

    .line 5083
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessLevelDuration:[J

    aget-wide v2, v1, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessLevelTriggeredTime:[J

    iget p0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessLevelBin:I

    aget-wide v7, v6, p0

    sub-long/2addr v4, v7

    const-wide/16 v7, 0x3e8

    div-long/2addr v4, v7

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    const-wide/16 v0, 0x0

    .line 5085
    aput-wide v0, v6, p0

    :cond_22
    :goto_22
    return-void
.end method

.method public final animateScreenBrightness(FFFF)V
    .registers 12

    .line 3114
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animating brightness: target="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmpl-float v2, p1, p2

    const-string v3, ""

    if-eqz v2, :cond_2f

    .line 3115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", sdrTarget="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_30

    :cond_2f
    move-object v2, v3

    :goto_30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    .line 3116
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, ", rate=%.3f"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3117
    invoke-static {p4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_5a

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    const-string v4, ", rateAtHbm=%.3f"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_5a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", reason="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    .line 3118
    invoke-virtual {v3}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->changesToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3114
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3121
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->hasLoggableChanges(Lcom/android/server/display/DisplayPowerController$BrightnessReason;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 3122
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerHistorian:Lcom/android/server/power/PowerHistorian;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    .line 3123
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->changesToString()Ljava/lang/String;

    move-result-object v1

    .line 3122
    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerHistorian;->onBrightnessReasonChanged(Ljava/lang/String;)V

    .line 3127
    :cond_87
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->animateTo(FFFF)Z

    move-result p2

    if-eqz p2, :cond_c8

    .line 3130
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_TOKEN:Z

    if-eqz p2, :cond_b0

    .line 3131
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mOnBrightnessAnimationSupplier:Ljava/util/function/Consumer;

    if-eqz p2, :cond_b0

    const/4 p2, 0x0

    cmpl-float p2, p3, p2

    if-eqz p2, :cond_b0

    iget-boolean p2, p0, Lcom/android/server/display/DisplayPowerController;->mRefreshRateMinLimitRequested:Z

    if-nez p2, :cond_b0

    .line 3134
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object p3, p0, Lcom/android/server/display/DisplayPowerController;->mSuspendBlockerIdRefreshRate:Ljava/lang/String;

    invoke-interface {p2, p3}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker(Ljava/lang/String;)V

    .line 3135
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mRefreshRateMinLimitRequested:Z

    .line 3136
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mOnBrightnessAnimationSupplier:Ljava/util/function/Consumer;

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_b0
    const-wide/32 p2, 0x20000

    float-to-int p4, p1

    const-string v0, "TargetScreenBrightness"

    .line 3141
    invoke-static {p2, p3, v0, p4}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 3143
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    const-string p3, "debug.tracing.screen_brightness"

    invoke-static {p3, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3144
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->noteScreenBrightness(F)V

    .line 3145
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->updateScreenBrightnessLevelDuration(F)V

    :cond_c8
    return-void
.end method

.method public final animateScreenStateChange(IZ)V
    .registers 11

    .line 3151
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animateScreenStateChange: target="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mLogicalDisplay.isEnabled()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 3152
    invoke-virtual {v2}, Lcom/android/server/display/LogicalDisplay;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3151
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3156
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 3157
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_3f

    :cond_3a
    if-eq p1, v2, :cond_3d

    return-void

    .line 3168
    :cond_3d
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 3171
    :cond_3f
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBlanksAfterDozeConfig:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 3172
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    invoke-static {v0}, Landroid/view/Display;->isDozeState(I)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 3173
    invoke-static {p1}, Landroid/view/Display;->isDozeState(I)Z

    move-result v0

    if-nez v0, :cond_73

    .line 3176
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 3177
    iget-boolean v5, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    if-eqz v5, :cond_60

    move v5, v2

    goto :goto_61

    :cond_60
    move v5, v1

    .line 3176
    :goto_61
    invoke-virtual {v0, v4, v5}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    .line 3178
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_6b

    .line 3179
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    :cond_6b
    if-eq p1, v3, :cond_6f

    move v0, v3

    goto :goto_70

    :cond_6f
    move v0, v1

    .line 3186
    :goto_70
    invoke-virtual {p0, v3, v0}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IZ)Z

    .line 3192
    :cond_73
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    if-eqz v0, :cond_83

    if-eq p1, v3, :cond_83

    .line 3193
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    .line 3194
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 3195
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFadeResources()V

    :cond_83
    const/4 v0, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x4

    const/4 v6, 0x3

    if-ne p1, v2, :cond_114

    .line 3200
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mIsSupportedAodMode:Z

    if-eqz p1, :cond_9d

    sget-boolean p1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_AOD_DISABLE_CLOCK_TRANSITION:Z

    if-eqz p1, :cond_9d

    .line 3202
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result p1

    if-ne p1, v5, :cond_9d

    .line 3203
    invoke-virtual {p0, v6}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    .line 3209
    :cond_9d
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mNeedPrepareColorFade:Z

    if-eqz p1, :cond_cb

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget p1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastWakeUpReason:I

    const/16 p2, 0x9

    if-ne p1, p2, :cond_cb

    .line 3211
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result p1

    cmpl-float p1, p1, v0

    if-nez p1, :cond_c9

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 3212
    invoke-virtual {p1, p2, v2}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_c9

    .line 3213
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    const-string p2, "draw ColorFade due to unfolding"

    invoke-static {p1, p2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3214
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 3216
    :cond_c9
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mNeedPrepareColorFade:Z

    .line 3219
    :cond_cb
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mNeedSkipDozeState:Z

    if-eqz p1, :cond_d1

    .line 3220
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mNeedSkipDozeState:Z

    .line 3227
    :cond_d1
    invoke-virtual {p0, v2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result p1

    if-nez p1, :cond_d8

    return-void

    .line 3232
    :cond_d8
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz p1, :cond_108

    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean p2, p2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz p2, :cond_108

    .line 3234
    invoke-virtual {p1}, Lcom/android/server/display/AutomaticBrightnessController;->isAmbientLuxValid()Z

    move-result p1

    if-nez p1, :cond_108

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 3235
    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result p1

    if-ne p1, v2, :cond_108

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget p1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:F

    .line 3236
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_108

    .line 3237
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->isLightSensorCovered()Z

    move-result p1

    if-nez p1, :cond_108

    .line 3238
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    const-string p1, "animateScreenStateChange is returned because lux is not yet valid!"

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3257
    :cond_108
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 3258
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto/16 :goto_224

    :cond_114
    const/4 v7, 0x5

    if-ne p1, v7, :cond_13b

    .line 3264
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-virtual {p1}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_128

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 3265
    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result p1

    if-ne p1, v2, :cond_128

    return-void

    .line 3270
    :cond_128
    invoke-virtual {p0, v7}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result p1

    if-nez p1, :cond_12f

    return-void

    .line 3275
    :cond_12f
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 3276
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto/16 :goto_224

    :cond_13b
    if-ne p1, v6, :cond_165

    .line 3282
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-virtual {p1}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_14d

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 3283
    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result p1

    if-eq p1, v2, :cond_151

    :cond_14d
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mNeedSkipDozeState:Z

    if-eqz p1, :cond_152

    :cond_151
    return-void

    .line 3289
    :cond_152
    invoke-virtual {p0, v6}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result p1

    if-nez p1, :cond_159

    return-void

    .line 3294
    :cond_159
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 3295
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto/16 :goto_224

    :cond_165
    if-ne p1, v5, :cond_19a

    .line 3300
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-virtual {p1}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_177

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 3301
    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result p1

    if-ne p1, v5, :cond_17b

    :cond_177
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mNeedSkipDozeState:Z

    if-eqz p1, :cond_17c

    :cond_17b
    return-void

    .line 3308
    :cond_17c
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result p1

    if-eq p1, v5, :cond_18e

    .line 3309
    invoke-virtual {p0, v6}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result p1

    if-nez p1, :cond_18b

    return-void

    .line 3312
    :cond_18b
    invoke-virtual {p0, v5}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    .line 3316
    :cond_18e
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 3317
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto/16 :goto_224

    :cond_19a
    const/4 v5, 0x6

    if-ne p1, v5, :cond_1cb

    .line 3322
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-virtual {p1}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_1ae

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 3323
    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result p1

    if-eq p1, v5, :cond_1ae

    return-void

    .line 3329
    :cond_1ae
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result p1

    if-eq p1, v5, :cond_1c0

    .line 3330
    invoke-virtual {p0, v2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result p1

    if-nez p1, :cond_1bd

    return-void

    .line 3333
    :cond_1bd
    invoke-virtual {p0, v5}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    .line 3337
    :cond_1c0
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 3338
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto :goto_224

    .line 3341
    :cond_1cb
    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 3342
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    if-nez p1, :cond_1d6

    .line 3343
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 3346
    :cond_1d6
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result p1

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1eb

    .line 3349
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    .line 3350
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 3351
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFadeResources()V

    goto :goto_224

    .line 3355
    :cond_1eb
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    if-nez p1, :cond_1f7

    .line 3356
    sget-boolean p1, Lcom/android/server/display/DisplayPowerController;->SAMSUNG_UX_COLOR_FADE_OFF_EFFECT_ENABLED:Z

    if-eqz p1, :cond_1f5

    move p1, v6

    goto :goto_1f8

    :cond_1f5
    move p1, v3

    goto :goto_1f8

    :cond_1f7
    move p1, v2

    :goto_1f8
    if-eqz p2, :cond_218

    .line 3358
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget p2, p2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastGoToSleepReason:I

    if-eq p2, v6, :cond_218

    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 3360
    invoke-virtual {p2, v0, p1}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_218

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 3361
    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result p1

    if-eq p1, v3, :cond_218

    .line 3363
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_224

    .line 3366
    :cond_218
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2, v2}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    .line 3370
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->end()V

    :goto_224
    return-void
.end method

.method public final applyReduceBrightColorsSplineAdjustment()V
    .registers 3

    .line 983
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 984
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method public final blockScreenOff()V
    .registers 5

    .line 2902
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    if-nez v0, :cond_22

    const-wide/32 v0, 0x20000

    const/4 v2, 0x0

    const-string v3, "Screen off blocked"

    .line 2903
    invoke-static {v0, v1, v3, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 2904
    new-instance v0, Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker-IA;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    .line 2905
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBlockStartRealTime:J

    .line 2906
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    const-string v0, "Blocking screen off"

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    return-void
.end method

.method public final blockScreenOn()V
    .registers 5

    .line 2882
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v0, :cond_27

    const-wide/32 v0, 0x20000

    const/4 v2, 0x0

    const-string v3, "Screen on blocked"

    .line 2883
    invoke-static {v0, v1, v3, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 2884
    new-instance v0, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker-IA;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 2885
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    .line 2886
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    const-string v0, "Blocking screen on until initial contents have been drawn."

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2887
    sget-object p0, Lcom/android/server/power/PowerManagerUtil;->sCurrentScreenOnProfiler:Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->noteWmsStart()V

    :cond_27
    return-void
.end method

.method public final calculateTransitionTime(IFFFF)D
    .registers 6

    int-to-double p0, p1

    div-float/2addr p3, p2

    div-float/2addr p4, p5

    mul-float/2addr p3, p4

    float-to-double p2, p3

    .line 5594
    invoke-static {p2, p3}, Ljava/lang/Math;->log10(D)D

    move-result-wide p2

    div-double/2addr p0, p2

    const-wide p2, 0x408f400000000000L    # 1000.0

    mul-double/2addr p0, p2

    return-wide p0
.end method

.method public final clampScreenBrightness(F)F
    .registers 3

    .line 3090
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p1, 0x0

    .line 3093
    :cond_7
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 3094
    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMin()F

    move-result v0

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMax()F

    move-result p0

    .line 3093
    invoke-static {p1, v0, p0}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p0

    return p0
.end method

.method public final clampScreenBrightnessForFinal(F)F
    .registers 3

    .line 3075
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p1, 0x0

    .line 3078
    :cond_7
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 3079
    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMin()F

    move-result v0

    iget p0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenExtendedBrightnessRangeMaximum:F

    .line 3078
    invoke-static {p1, v0, p0}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p0

    return p0
.end method

.method public final clampScreenBrightnessForVr(F)F
    .registers 3

    .line 3084
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMinimum:F

    iget p0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMaximum:F

    invoke-static {p1, v0, p0}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p0

    return p0
.end method

.method public final cleanupHandlerThreadAfterStop()V
    .registers 6

    const/4 v0, 0x0

    .line 1641
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 1642
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v1}, Lcom/android/server/display/HighBrightnessModeController;->stop()V

    .line 1643
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    invoke-virtual {v1}, Lcom/android/server/display/BrightnessThrottler;->stop()V

    .line 1644
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1647
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    if-eqz v1, :cond_21

    .line 1648
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mSuspendBlockerIdUnfinishedBusiness:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker(Ljava/lang/String;)V

    .line 1649
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    .line 1651
    :cond_21
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnStateChangedPending:Z

    if-eqz v1, :cond_2e

    .line 1652
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mSuspendBlockerIdOnStateChanged:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker(Ljava/lang/String;)V

    .line 1653
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mOnStateChangedPending:Z

    :cond_2e
    move v1, v0

    .line 1655
    :goto_2f
    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveMessages:I

    if-ge v1, v3, :cond_3d

    .line 1656
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSuspendBlockerIdProxPositive:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 1658
    :cond_3d
    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveMessages:I

    move v1, v0

    .line 1659
    :goto_40
    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeMessages:I

    if-ge v1, v3, :cond_4e

    .line 1660
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSuspendBlockerIdProxNegative:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 1662
    :cond_4e
    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeMessages:I

    .line 1664
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    if-eqz v0, :cond_59

    .line 1665
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()F

    move-result v0

    goto :goto_5a

    :cond_59
    const/4 v0, 0x0

    .line 1667
    :goto_5a
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerController;->reportStats(F)V

    .line 1669
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    if-eqz v0, :cond_66

    .line 1670
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->stop()V

    .line 1671
    iput-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 1675
    :cond_66
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mShutdownReceiver:Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;

    if-eqz v0, :cond_6f

    .line 1676
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_6f
    return-void
.end method

.method public clearAdaptiveBrightnessLongtermModelBuilder()V
    .registers 1

    .line 5182
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    if-eqz p0, :cond_7

    .line 5183
    invoke-virtual {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->clearBrightnessEvents()V

    :cond_7
    return-void
.end method

.method public final clearPendingProximityDebounceTime()V
    .registers 5

    .line 3474
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_13

    const-wide/16 v0, -0x1

    .line 3475
    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 3476
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mSuspendBlockerIdProxDebounce:Ljava/lang/String;

    invoke-interface {v0, p0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker(Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public convertToBrightness(F)I
    .registers 2

    .line 4985
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mInteractiveModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz p0, :cond_9

    .line 4986
    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToBrightness(F)I

    move-result p0

    return p0

    :cond_9
    const/4 p0, -0x1

    return p0
.end method

.method public final convertToNits(F)F
    .registers 2

    .line 3679
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-nez p0, :cond_7

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    .line 3682
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->convertToNits(F)F

    move-result p0

    return p0
.end method

.method public final createBrightnessThrottlerLocked()Lcom/android/server/display/BrightnessThrottler;
    .registers 5

    .line 2870
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    .line 2871
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2873
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessThrottlingData()Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 2874
    :goto_12
    new-instance v1, Lcom/android/server/display/BrightnessThrottler;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    new-instance v3, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    invoke-direct {v1, v2, v0, v3}, Lcom/android/server/display/BrightnessThrottler;-><init>(Landroid/os/Handler;Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;Ljava/lang/Runnable;)V

    return-object v1
.end method

.method public final createHbmControllerLocked()Lcom/android/server/display/HighBrightnessModeController;
    .registers 15

    .line 2823
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    .line 2824
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    .line 2825
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 2826
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v6

    .line 2827
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 2828
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v7

    if-eqz v0, :cond_25

    .line 2830
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getHighBrightnessModeData()Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    move-result-object v0

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    move-object v10, v0

    .line 2833
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 2839
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const/4 v2, 0x0

    .line 2840
    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v1

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 2844
    new-instance v1, Lcom/android/server/display/HighBrightnessModeController;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget v4, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v5, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v9, p0, Lcom/android/server/display/DisplayPowerController;->mScreenExtendedBrightnessRangeMaximum:F

    new-instance v11, Lcom/android/server/display/DisplayPowerController$7;

    invoke-direct {v11, p0}, Lcom/android/server/display/DisplayPowerController$7;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    new-instance v12, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda0;

    invoke-direct {v12, p0}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iget-object v13, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    move-object v2, v1

    invoke-direct/range {v2 .. v13}, Lcom/android/server/display/HighBrightnessModeController;-><init>(Landroid/os/Handler;IILandroid/os/IBinder;Ljava/lang/String;FFLcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;Ljava/lang/Runnable;Landroid/content/Context;)V

    return-object v1
.end method

.method public final debounceProximitySensor()V
    .registers 5

    .line 3450
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_5a

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5a

    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_5a

    .line 3453
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 3454
    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    cmp-long v0, v2, v0

    if-gtz v0, :cond_4c

    .line 3455
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    if-eq v0, v1, :cond_41

    const/4 v0, 0x0

    .line 3457
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mIgnoreProximityUntilChanged:Z

    .line 3458
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No longer ignoring proximity ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3461
    :cond_41
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    .line 3462
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    .line 3463
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->clearPendingProximityDebounceTime()V

    goto :goto_5a

    .line 3467
    :cond_4c
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3468
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :cond_5a
    :goto_5a
    return-void
.end method

.method public doShortTermReset()V
    .registers 5

    .line 5147
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_1e

    .line 5148
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerHistorian:Lcom/android/server/power/PowerHistorian;

    const-string v1, "ShortTermModel: shell cmd"

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerHistorian;->onAutoBrightnessEvent(Ljava/lang/String;)V

    const/16 v0, 0xa

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "shell cmd"

    aput-object v3, v1, v2

    .line 5149
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerLog;->sendLogEvent(I[Ljava/lang/Object;)V

    .line 5150
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    :cond_1e
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 5

    .line 3746
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3747
    :try_start_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, "Display Power Controller:"

    .line 3748
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3749
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3750
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLightSensor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3752
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, "Display Power Controller Locked State:"

    .line 3753
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3754
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayReadyLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3755
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3756
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestChangedLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3757
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingWaitForNegativeProximityLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3759
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingUpdatePowerStateLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3760
    monitor-exit v0
    :try_end_ae
    .catchall {:try_start_3 .. :try_end_ae} :catchall_33b

    .line 3762
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Display Power Controller Configuration:"

    .line 3763
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDefault:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDozeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDimConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessForVrRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMinimum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessForVrRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMaximum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessForVrDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrDefault:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseSoftwareAutoBrightnessConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAllowAutoBrightnessWhileDozingConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSkipScreenOnBrightnessRamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mSkipScreenOnBrightnessRamp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeFadesConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3776
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    monitor-enter v1

    .line 3777
    :try_start_1ab
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCachedBrightnessInfo.brightness="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightness:Landroid/util/MutableFloat;

    iget v2, v2, Landroid/util/MutableFloat;->value:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCachedBrightnessInfo.adjustedBrightness="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->adjustedBrightness:Landroid/util/MutableFloat;

    iget v2, v2, Landroid/util/MutableFloat;->value:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCachedBrightnessInfo.brightnessMin="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMin:Landroid/util/MutableFloat;

    iget v2, v2, Landroid/util/MutableFloat;->value:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCachedBrightnessInfo.brightnessMax="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMax:Landroid/util/MutableFloat;

    iget v2, v2, Landroid/util/MutableFloat;->value:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCachedBrightnessInfo.hbmMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmMode:Landroid/util/MutableInt;

    iget v2, v2, Landroid/util/MutableInt;->value:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCachedBrightnessInfo.hbmTransitionPoint="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmTransitionPoint:Landroid/util/MutableFloat;

    iget v2, v2, Landroid/util/MutableFloat;->value:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCachedBrightnessInfo.brightnessMaxReason ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMaxReason:Landroid/util/MutableInt;

    iget v2, v2, Landroid/util/MutableInt;->value:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3790
    monitor-exit v1
    :try_end_262
    .catchall {:try_start_1ab .. :try_end_262} :catchall_338

    .line 3791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayBlanksAfterDozeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBlanksAfterDozeConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessBucketsInDozeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessBucketsInDozeConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --SEC_PMS"

    .line 3795
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  AUTO_BRIGHTNESS_TYPE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/power/PowerManagerUtil;->AUTO_BRIGHTNESS_TYPE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  USE_SEC_LONG_TERM_MODEL="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  extraDim mExtraDimStrength= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mExtraDimStrength:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  extraDim mExtraDimIsActive= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mExtraDimIsActive:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  AUTO_BRIGHTNESS_TYPE="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  USE_SEC_LONG_TERM_MODEL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  USE_PERMISSIBLE_RATIO_FOR_LONGTERM_MODEL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->USE_PERMISSIBLE_RATIO_FOR_LONGTERM_MODEL:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3816
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    new-instance v1, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/DisplayPowerController;Ljava/io/PrintWriter;)V

    const-wide/16 p0, 0x3e8

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_338
    move-exception p0

    .line 3790
    :try_start_339
    monitor-exit v1
    :try_end_33a
    .catchall {:try_start_339 .. :try_end_33a} :catchall_338

    throw p0

    :catchall_33b
    move-exception p0

    .line 3760
    :try_start_33c
    monitor-exit v0
    :try_end_33d
    .catchall {:try_start_33c .. :try_end_33d} :catchall_33b

    throw p0
.end method

.method public final dumpBrightnessEvents(Ljava/io/PrintWriter;)V
    .registers 6

    .line 3982
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_f

    const-string p0, "No Automatic Brightness Adjustments"

    .line 3984
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 3988
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Automatic Brightness Adjustments Last "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Events: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3989
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/display/DisplayPowerController$BrightnessEvent;

    const/4 v1, 0x0

    .line 3990
    :goto_31
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v2}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v2

    if-ge v1, v2, :cond_56

    .line 3991
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    :cond_56
    return-void
.end method

.method public final dumpLocal(Ljava/io/PrintWriter;)V
    .registers 5

    .line 3820
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Display Power Controller Thread State:"

    .line 3821
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPowerRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUnfinishedBusiness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWaitingForNegativeProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximitySensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximitySensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximityThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingProximityDebounceTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 3831
    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3830
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOffBecauseOfProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastUserSetScreenBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mLastUserSetScreenBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenBrightnessSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTemporaryScreenBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTemporaryAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessForVrFloat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVr:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedDimming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedLowPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedThrottling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedThrottling:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedScreenBrightnessOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedScreenBrightnessOverride:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedTemporaryBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3848
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedTemporaryAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedBrightnessBoost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedBrightnessBoost:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDozing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mDozing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSkipRampState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->skipRampStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOnBlockStartRealTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOffBlockStartRealTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBlockStartRealTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOnUnblocker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOffUnblocker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mReportedToPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    .line 3859
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->reportedToPolicyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3858
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsRbcActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mIsRbcActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mOnStateChangePending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnStateChangedPending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mOnProximityPositiveMessages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveMessages:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mOnProximityNegativeMessages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeMessages:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3865
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    if-eqz v0, :cond_37e

    .line 3866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRampAnimator.isAnimating()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 3867
    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3866
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3870
    :cond_37e
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_39c

    .line 3871
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeOnAnimator.isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 3872
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3871
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3874
    :cond_39c
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3ba

    .line 3875
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeOffAnimator.isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 3876
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3875
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3879
    :cond_3ba
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    if-eqz v0, :cond_3c1

    .line 3880
    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayPowerState;->dump(Ljava/io/PrintWriter;)V

    .line 3883
    :cond_3c1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_3cb

    .line 3884
    invoke-virtual {v0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->dump(Ljava/io/PrintWriter;)V

    .line 3885
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->dumpBrightnessEvents(Ljava/io/PrintWriter;)V

    .line 3888
    :cond_3cb
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    if-eqz v0, :cond_3d2

    .line 3889
    invoke-virtual {v0, p1}, Lcom/android/server/display/HighBrightnessModeController;->dump(Ljava/io/PrintWriter;)V

    .line 3892
    :cond_3d2
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    if-eqz v0, :cond_3d9

    .line 3893
    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessThrottler;->dump(Ljava/io/PrintWriter;)V

    .line 3896
    :cond_3d9
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3897
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz v0, :cond_3e8

    .line 3898
    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->dump(Ljava/io/PrintWriter;)V

    .line 3899
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->dump(Ljava/io/PrintWriter;)V

    .line 3903
    :cond_3e8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastBrightnessConfigurationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessConfigurationTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingForceUpdateAb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingForceUpdateAb:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3910
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    if-eqz v0, :cond_424

    .line 3911
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    if-eqz v0, :cond_424

    .line 3912
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3913
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    invoke-virtual {v0, p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->dump(Ljava/io/PrintWriter;)V

    :cond_424
    const-string v0, "  SEC_FEATURE_EARLY_WAKEUP=true"

    .line 3925
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3926
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mEarlyWakeUpManager:Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;

    if-eqz p0, :cond_430

    .line 3927
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->dump(Ljava/io/PrintWriter;)V

    .line 3932
    :cond_430
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string p0, "  USE_LONG_RAMP_RATE_FOR_NON_HBM=true"

    .line 3933
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  SEC_FEATURE_BRIGHTNESS_CONTROL_BY_EXTRA_DIM=false"

    .line 3937
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final forceUpdateAbJob()V
    .registers 1

    return-void
.end method

.method public getAmbientBrightnessInfo(F)Ljava/lang/String;
    .registers 2

    .line 5140
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz p0, :cond_9

    .line 5141
    invoke-virtual {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->getAmbientBrightnessInfo(F)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAmbientBrightnessStats(I)Landroid/content/pm/ParceledListSlice;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;"
        }
    .end annotation

    .line 1049
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    if-eqz v0, :cond_b

    .line 1050
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    const-string v1, "getAmbientBrightnessStats: not supported"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    :cond_b
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-nez p0, :cond_11

    const/4 p0, 0x0

    return-object p0

    .line 1057
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessTracker;->getAmbientBrightnessStats(I)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public getAppliedBackupConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Landroid/hardware/display/BrightnessConfiguration;
    .registers 2

    .line 1156
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz p0, :cond_9

    .line 1157
    invoke-virtual {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->getAppliedBackupConfig(Landroid/hardware/display/BrightnessConfiguration;)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getAutoBrightnessAdjustmentSetting()F
    .registers 4

    .line 3547
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_auto_brightness_adj"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result p0

    .line 3549
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_1a

    :cond_16
    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController;->clampAutoBrightnessAdjustment(F)F

    move-result v1

    :goto_1a
    return v1
.end method

.method public final getBrightnessDynamicRampRatePair(FF)Lcom/android/server/display/DisplayPowerController$BrightnessDynamicRampRatePair;
    .registers 15

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const v2, 0x3b83126f    # 0.004f

    if-gtz v1, :cond_9

    move p1, v2

    .line 5554
    :cond_9
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->getCurrentValue()F

    move-result v1

    cmpg-float v3, v1, v0

    if-gtz v3, :cond_14

    move v1, v2

    .line 5557
    :cond_14
    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mLastAmbientLux:F

    cmpg-float v3, p2, v0

    const v4, 0x3f666666    # 0.9f

    if-gtz v3, :cond_1e

    move p2, v4

    :cond_1e
    cmpg-float v0, v2, v0

    if-gtz v0, :cond_23

    move v2, v4

    .line 5561
    :cond_23
    sget v0, Lcom/android/server/display/DisplayPowerController;->DEFAULT_WEIGHT_FOR_BRIGHTNESS_TRANSITION:I

    const-string/jumbo v3, "sys.display.transition.weight"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/16 v0, 0xf

    const-string/jumbo v3, "sys.display.transition.weight.hbm"

    .line 5563
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    cmpg-float v3, p1, v1

    const/high16 v10, 0x7fc00000    # Float.NaN

    if-gez v3, :cond_5b

    .line 5567
    sget v9, Lcom/android/server/display/DisplayPowerController;->MAX_AUTO_BRIGHTNESS_TRANSITION_TIME:I

    move-object v3, p0

    move v5, p1

    move v6, v1

    move v7, v2

    move v8, p2

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/display/DisplayPowerController;->getDynamicRampRate(IFFFFI)F

    move-result v11

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v3

    if-lez v3, :cond_58

    const/16 v9, 0x7530

    move-object v3, p0

    move v4, v0

    move v5, p1

    move v6, v1

    move v7, v2

    move v8, p2

    .line 5571
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/display/DisplayPowerController;->getDynamicRampRate(IFFFFI)F

    move-result v10

    :cond_58
    move p0, v10

    move v10, v11

    goto :goto_5c

    :cond_5b
    move p0, v10

    .line 5576
    :goto_5c
    new-instance p1, Lcom/android/server/display/DisplayPowerController$BrightnessDynamicRampRatePair;

    invoke-direct {p1, v10, p0}, Lcom/android/server/display/DisplayPowerController$BrightnessDynamicRampRatePair;-><init>(FF)V

    return-object p1
.end method

.method public getBrightnessEvents(IZ)Landroid/content/pm/ParceledListSlice;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/hardware/display/BrightnessChangeEvent;",
            ">;"
        }
    .end annotation

    .line 1023
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    if-eqz v0, :cond_b

    .line 1024
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    const-string v1, "getBrightnessEvents: not supported"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :cond_b
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-nez p0, :cond_11

    const/4 p0, 0x0

    return-object p0

    .line 1031
    :cond_11
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/BrightnessTracker;->getEvents(IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public getBrightnessInfo()Landroid/hardware/display/BrightnessInfo;
    .registers 11

    .line 2756
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    monitor-enter v0

    .line 2757
    :try_start_3
    new-instance v9, Landroid/hardware/display/BrightnessInfo;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightness:Landroid/util/MutableFloat;

    iget v2, v1, Landroid/util/MutableFloat;->value:F

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->adjustedBrightness:Landroid/util/MutableFloat;

    iget v3, v1, Landroid/util/MutableFloat;->value:F

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMin:Landroid/util/MutableFloat;

    iget v4, v1, Landroid/util/MutableFloat;->value:F

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMax:Landroid/util/MutableFloat;

    iget v5, v1, Landroid/util/MutableFloat;->value:F

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmMode:Landroid/util/MutableInt;

    iget v6, v1, Landroid/util/MutableInt;->value:I

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmTransitionPoint:Landroid/util/MutableFloat;

    iget v7, v1, Landroid/util/MutableFloat;->value:F

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMaxReason:Landroid/util/MutableInt;

    iget v8, p0, Landroid/util/MutableInt;->value:I

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroid/hardware/display/BrightnessInfo;-><init>(FFFFIFI)V

    monitor-exit v0

    return-object v9

    :catchall_29
    move-exception p0

    .line 2765
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public getBrightnessLearningMaxLimitCount()[I
    .registers 1

    .line 5489
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    if-eqz p0, :cond_9

    .line 5490
    invoke-virtual {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->getBrightnessLearningMaxLimitCount()[I

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentScreenBrightness()F
    .registers 1

    .line 5477
    iget p0, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:F

    return p0
.end method

.method public getDefaultBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;
    .registers 1

    .line 1148
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 1151
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public final getDynamicRampRate(IFFFFI)F
    .registers 7

    .line 5583
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/display/DisplayPowerController;->calculateTransitionTime(IFFFF)D

    move-result-wide p0

    int-to-double p2, p6

    .line 5585
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    const-wide/16 p2, 0x0

    cmpl-double p2, p0, p2

    if-lez p2, :cond_17

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    div-double/2addr p2, p0

    double-to-float p0, p2

    const/high16 p1, 0x447a0000    # 1000.0f

    mul-float/2addr p0, p1

    goto :goto_19

    :cond_17
    const/high16 p0, 0x7fc00000    # Float.NaN

    :goto_19
    return p0
.end method

.method public final getFinalBrightness(FI)F
    .registers 9

    const/4 v0, 0x0

    .line 4833
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPassRampAnimation:Z

    .line 4837
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessScaleFactor:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    const/high16 v4, 0x3f800000    # 1.0f

    if-ltz v3, :cond_1e

    cmpl-float v3, v1, v4

    if-eqz v3, :cond_1e

    mul-float/2addr p1, v1

    .line 4842
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightnessForFinal(F)F

    move-result p1

    .line 4843
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/16 v3, 0x10

    invoke-virtual {v1, v3, p1}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->addModifier(IF)V

    .line 4849
    :cond_1e
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    if-eqz v1, :cond_41

    invoke-static {p2}, Landroid/view/Display;->isDozeState(I)Z

    move-result v1

    if-nez v1, :cond_41

    cmpl-float v1, p1, v2

    if-lez v1, :cond_41

    .line 4851
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    .line 4852
    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float/2addr p1, v1

    .line 4854
    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 4855
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v3, 0x2

    invoke-virtual {v1, v3, p1}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->addModifier(IF)V

    .line 4862
    :cond_41
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->hbmBlock:Z

    if-eqz v1, :cond_53

    cmpl-float v1, p1, v4

    if-lez v1, :cond_53

    .line 4864
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/16 v1, 0x100

    invoke-virtual {p1, v1, v4}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->addModifier(IF)V

    move p1, v4

    .line 4870
    :cond_53
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->minBrightness:F

    cmpl-float v3, v1, v2

    const/16 v5, 0x20

    if-ltz v3, :cond_67

    cmpg-float v3, p1, v1

    if-gez v3, :cond_67

    .line 4872
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {p1, v5, v1}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->addModifier(IF)V

    move p1, v1

    .line 4876
    :cond_67
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->maxBrightness:F

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_79

    cmpl-float v3, p1, v1

    if-lez v3, :cond_79

    .line 4878
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {p1, v5, v1}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->addModifier(IF)V

    move p1, v1

    .line 4884
    :cond_79
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->brightnessLimitByCover:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_8d

    int-to-float v3, v1

    cmpl-float v3, p1, v3

    if-lez v3, :cond_8d

    int-to-float p1, v1

    .line 4886
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/16 v3, 0x80

    invoke-virtual {v1, v3, p1}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->addModifier(IF)V

    .line 4892
    :cond_8d
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    if-eqz v1, :cond_bf

    .line 4893
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessUpperLimit:F

    cmpl-float v3, v1, v2

    const/16 v5, 0x40

    if-ltz v3, :cond_a5

    cmpl-float v3, p1, v1

    if-lez v3, :cond_a5

    .line 4896
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {p1, v5, v1}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->addModifier(IF)V

    move p1, v1

    .line 4900
    :cond_a5
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessLowerLimit:F

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_bf

    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    if-nez v3, :cond_bf

    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    if-nez v3, :cond_bf

    cmpg-float v3, p1, v1

    if-gez v3, :cond_bf

    .line 4904
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {p1, v5, v1}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->addModifier(IF)V

    move p1, v1

    .line 4912
    :cond_bf
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->isFakeAodAvailable()Z

    move-result v1

    const v3, 0x3ec28f5c    # 0.38f

    if-eqz v1, :cond_da

    invoke-static {p2}, Landroid/view/Display;->isDozeState(I)Z

    move-result p2

    if-eqz p2, :cond_da

    cmpl-float p2, p1, v3

    if-lez p2, :cond_da

    .line 4915
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/16 p2, 0x800

    invoke-virtual {p1, p2, v3}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->addModifier(IF)V

    move p1, v3

    .line 4922
    :cond_da
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean p2, p2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceLcdBacklightOffEnabled:Z

    if-eqz p2, :cond_e8

    .line 4924
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/16 p2, 0x400

    invoke-virtual {p1, p2, v2}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->addModifier(IF)V

    goto :goto_e9

    :cond_e8
    move v2, p1

    .line 4930
    :goto_e9
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean p2, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isOutdoorMode:Z

    const/4 v1, 0x1

    if-nez p2, :cond_f4

    iget-boolean p2, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lcdFlashMode:Z

    if-eqz p2, :cond_113

    :cond_f4
    iget p2, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v3, 0x3

    if-ne p2, v3, :cond_113

    .line 4932
    iget p1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenExtendedBrightnessRangeMaximum:F

    invoke-static {p1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 4934
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/16 p2, 0x200

    invoke-virtual {p1, p2, v2}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->addModifier(IF)V

    .line 4936
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mIsOutdoorModeEnabled:Z

    .line 4938
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean p1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lcdFlashMode:Z

    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mLcdFlashModeEnabled:Z

    if-eqz p1, :cond_125

    .line 4940
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPassRampAnimation:Z

    goto :goto_125

    .line 4943
    :cond_113
    iget-boolean p2, p0, Lcom/android/server/display/DisplayPowerController;->mIsOutdoorModeEnabled:Z

    if-eqz p2, :cond_125

    iget p1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eqz p1, :cond_125

    .line 4945
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mIsOutdoorModeEnabled:Z

    .line 4947
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mLcdFlashModeEnabled:Z

    if-eqz p1, :cond_125

    .line 4948
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mLcdFlashModeEnabled:Z

    .line 4949
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPassRampAnimation:Z

    .line 4956
    :cond_125
    :goto_125
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mLastCoverClosedState:Z

    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean p2, p2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    if-eq p1, p2, :cond_133

    .line 4957
    iput-boolean p2, p0, Lcom/android/server/display/DisplayPowerController;->mLastCoverClosedState:Z

    if-nez p2, :cond_133

    .line 4959
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPassRampAnimation:Z

    :cond_133
    return v2
.end method

.method public getLastAnimationTarget()F
    .registers 1

    .line 5483
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-virtual {p0}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->getTarget()F

    move-result p0

    return p0
.end method

.method public getLastAutomaticScreenBrightness()F
    .registers 1

    .line 5473
    iget p0, p0, Lcom/android/server/display/DisplayPowerController;->mLastAutomaticScreenBrightness:F

    return p0
.end method

.method public getLastUserSetScreenBrightnessTime()J
    .registers 3

    .line 5045
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mLastScreenBrightnessSettingChangedTime:J

    return-wide v0
.end method

.method public final getScreenBrightnessForVrSetting()F
    .registers 5

    .line 3562
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrDefault:F

    const-string/jumbo v2, "screen_brightness_for_vr_float"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 3565
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightnessForVr(F)F

    move-result p0

    return p0
.end method

.method public final getScreenBrightnessModeSetting()I
    .registers 4

    .line 4764
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_brightness_mode"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public getScreenBrightnessSetting()F
    .registers 4

    .line 3553
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessSetting;->getBrightness()F

    move-result v0

    .line 3554
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 3555
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getScreenBrightnessSetting: default: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDefault:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3556
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDefault:F

    .line 3558
    :cond_27
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(F)F

    move-result p0

    return p0
.end method

.method public final getScreenBrightnessSettingOnBootPhase()F
    .registers 5

    .line 4732
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    const/4 v1, -0x2

    if-nez v0, :cond_39

    .line 4733
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, -0x1

    const-string/jumbo v3, "screen_brightness"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 4736
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v0

    .line 4737
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 4738
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getScreenBrightnessSettingOnBootPhase: default: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDefault:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4740
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDefault:F

    goto :goto_66

    .line 4742
    :cond_39
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mCoverDisplayEnabled:Z

    if-eqz v0, :cond_64

    .line 4743
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e0126

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 4745
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sub_screen_brightness"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 4748
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v0

    .line 4749
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 4750
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDefault:F

    goto :goto_66

    .line 4753
    :cond_64
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDefault:F

    .line 4756
    :cond_66
    :goto_66
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    invoke-virtual {p0, v0}, Lcom/android/server/display/BrightnessSetting;->setBrightness(F)V

    return v0
.end method

.method public final getTransitionTimeWithHbm(FFFF)I
    .registers 9

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_10

    cmpg-float v1, p2, v0

    if-gtz v1, :cond_10

    sub-float v2, p1, v0

    sub-float p0, v0, p2

    goto :goto_48

    :cond_10
    cmpg-float v0, v0, p2

    if-gez v0, :cond_1c

    cmpg-float v0, p2, p1

    if-gez v0, :cond_1c

    sub-float/2addr p1, p2

    move p0, v2

    move v2, p1

    goto :goto_48

    .line 4787
    :cond_1c
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getTransitionTimeWithHbm: rateAtHbm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " currentBrightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " targetBrightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sub-float/2addr p1, p2

    .line 4791
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    :goto_48
    float-to-double p1, v2

    float-to-double v0, p4

    div-double/2addr p1, v0

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr p1, v0

    .line 4794
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p1, p1

    float-to-double v2, p0

    float-to-double p2, p3

    div-double/2addr v2, p2

    mul-double/2addr v2, v0

    .line 4795
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide p2

    long-to-int p0, p2

    add-int/2addr p1, p0

    return p1
.end method

.method public final handleProximitySensorEvent(JZ)V
    .registers 10

    .line 3407
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_60

    .line 3408
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    if-nez v0, :cond_b

    if-nez p3, :cond_b

    return-void

    :cond_b
    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    if-eqz p3, :cond_11

    return-void

    .line 3418
    :cond_11
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v0, 0x32

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_51

    .line 3420
    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    const-wide/16 v4, 0x0

    add-long/2addr v4, p1

    .line 3421
    invoke-virtual {p0, v4, v5}, Lcom/android/server/display/DisplayPowerController;->setPendingProximityDebounceTime(J)V

    .line 3424
    iget-object p3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget p3, p3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverType:I

    const/16 v4, 0x8

    if-eq p3, v4, :cond_3b

    const/16 v4, 0xf

    if-eq p3, v4, :cond_3b

    const/16 v4, 0x10

    if-eq p3, v4, :cond_3b

    const/16 v4, 0x11

    if-ne p3, v4, :cond_3a

    goto :goto_3b

    :cond_3a
    move v1, v3

    .line 3429
    :cond_3b
    :goto_3b
    iget p3, p0, Lcom/android/server/display/DisplayPowerController;->mSensorPositiveDebounceDelay:I

    if-eq p3, v2, :cond_40

    goto :goto_41

    :cond_40
    move p3, v3

    :goto_41
    int-to-long v4, p3

    add-long/2addr p1, v4

    .line 3431
    iget-boolean p3, p0, Lcom/android/server/display/DisplayPowerController;->mIsEarsenseProximity:Z

    if-eqz p3, :cond_4a

    if-eqz v1, :cond_4a

    goto :goto_4b

    :cond_4a
    move v0, v3

    :goto_4b
    int-to-long v0, v0

    add-long/2addr p1, v0

    .line 3428
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayPowerController;->setPendingProximityDebounceTime(J)V

    goto :goto_5d

    .line 3435
    :cond_51
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 3439
    iget p3, p0, Lcom/android/server/display/DisplayPowerController;->mSensorNegativeDebounceDelay:I

    if-eq p3, v2, :cond_58

    move v0, p3

    :cond_58
    int-to-long v0, v0

    add-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayPowerController;->setPendingProximityDebounceTime(J)V

    .line 3445
    :goto_5d
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->debounceProximitySensor()V

    :cond_60
    return-void
.end method

.method public final handleRbcChanged()V
    .registers 5

    .line 988
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-nez v0, :cond_5

    return-void

    .line 991
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->isInIdleMode()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mInteractiveModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v0, :cond_1b

    :cond_f
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 993
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->isInIdleMode()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mIdleModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-nez v0, :cond_23

    .line 995
    :cond_1b
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    const-string v0, "No brightness mapping available to recalculate splines for this mode"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 999
    :cond_23
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mNitsRange:[F

    array-length v0, v0

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 1000
    :goto_29
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mNitsRange:[F

    array-length v3, v2

    if-ge v1, v3, :cond_3b

    .line 1001
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    aget v2, v2, v1

    invoke-virtual {v3, v2}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->getReduceBrightColorsAdjustedBrightnessNits(F)F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 1003
    :cond_3b
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->isReduceBrightColorsActivated()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mIsRbcActive:Z

    .line 1004
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/AutomaticBrightnessController;->recalculateSplines(Z[F)V

    return-void
.end method

.method public final handleSettingsChange(Z)V
    .registers 7

    .line 3503
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessSetting()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:F

    if-eqz p1, :cond_16

    .line 3506
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerController;->setCurrentScreenBrightness(F)V

    .line 3508
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    if-nez v0, :cond_16

    .line 3510
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_16

    .line 3511
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    .line 3515
    :cond_16
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:F

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mBeforeScreenBrightness:F

    .line 3517
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessModeSetting:I

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessModeSetting()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_4b

    .line 3518
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessModeSetting()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessModeSetting:I

    if-nez v0, :cond_48

    .line 3519
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_48

    .line 3521
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerHistorian:Lcom/android/server/power/PowerHistorian;

    const-string v1, "ShortTermModel: reset data, manual"

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerHistorian;->onAutoBrightnessEvent(Ljava/lang/String;)V

    const/16 v0, 0xa

    new-array v1, v2, [Ljava/lang/Object;

    const-string/jumbo v4, "manual"

    aput-object v4, v1, v3

    .line 3522
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerLog;->sendLogEvent(I[Ljava/lang/Object;)V

    .line 3523
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    .line 3525
    :cond_48
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->updateLastBrightnessSettingChangedTime()V

    .line 3529
    :cond_4b
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->getAutoBrightnessAdjustmentSetting()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    .line 3532
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessForVrSetting()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVr:F

    .line 3535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 3536
    iget v4, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessModeSetting:I

    .line 3537
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    .line 3538
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVr:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, " sm: %1d sb: %.3f abAdj: %.3f sbVr: %.3f"

    .line 3536
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3540
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[api] handleSettingsChange:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_9b

    const-string p1, " userSwitch"

    goto :goto_9d

    :cond_9b
    const-string p1, ""

    :goto_9d
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3541
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3540
    invoke-static {v1, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3543
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method public ignoreProximitySensorUntilChanged()V
    .registers 2

    .line 2707
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final ignoreProximitySensorUntilChangedInternal()V
    .registers 3

    .line 3697
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mIgnoreProximityUntilChanged:Z

    if-nez v0, :cond_15

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 3700
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mIgnoreProximityUntilChanged:Z

    .line 3701
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    const-string v1, "Ignoring proximity"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3702
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    :cond_15
    return-void
.end method

.method public final initialize(I)V
    .registers 6

    .line 1339
    new-instance v0, Lcom/android/server/display/DisplayPowerState;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    .line 1340
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    if-eqz v2, :cond_10

    new-instance v2, Lcom/android/server/display/ColorFade;

    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    invoke-direct {v2, v3}, Lcom/android/server/display/ColorFade;-><init>(I)V

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/android/server/display/DisplayPowerState;-><init>(Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/ColorFade;II)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 1342
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    if-eqz p1, :cond_4f

    .line 1343
    sget-object p1, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_ec

    invoke-static {v0, p1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xa0

    .line 1345
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1346
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1348
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    new-array v1, v1, [F

    fill-array-data v1, :array_f4

    invoke-static {v0, p1, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0xf0

    .line 1350
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1351
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1354
    :cond_4f
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeStateRunnable:Lcom/android/server/display/DisplayPowerController$ColorFadeStateRunnable;

    invoke-virtual {p1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeStateRunnable(Lcom/android/server/display/DisplayPowerController$ColorFadeStateRunnable;)V

    .line 1356
    new-instance p1, Lcom/android/server/display/RampAnimator$DualRampAnimator;

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v1, Lcom/android/server/display/DisplayPowerState;->SCREEN_BRIGHTNESS_FLOAT:Landroid/util/FloatProperty;

    sget-object v2, Lcom/android/server/display/DisplayPowerState;->SCREEN_SDR_BRIGHTNESS_FLOAT:Landroid/util/FloatProperty;

    invoke-direct {p1, v0, v1, v2}, Lcom/android/server/display/RampAnimator$DualRampAnimator;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;Landroid/util/FloatProperty;)V

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 1359
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampIncreaseMaxTimeMillis:J

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampDecreaseMaxTimeMillis:J

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->setAnimationTimeLimits(JJ)V

    .line 1362
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

    invoke-virtual {p1, v0}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->setListener(Lcom/android/server/display/RampAnimator$Listener;)V

    .line 1364
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->noteScreenState(I)V

    .line 1365
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->noteScreenBrightness(F)V

    .line 1374
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->convertToNits(F)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_a3

    .line 1377
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    if-eqz v0, :cond_9e

    .line 1378
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    if-eqz v0, :cond_a3

    .line 1379
    invoke-virtual {v0, p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->start(F)V

    goto :goto_a3

    .line 1383
    :cond_9e
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessTracker;->start(F)V

    .line 1386
    :cond_a3
    :goto_a3
    new-instance p1, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessSettingListener:Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;

    .line 1391
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessSetting;->registerListener(Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;)V

    .line 1392
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "screen_brightness_for_vr_float"

    .line 1393
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 1392
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1395
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "screen_auto_brightness_adj"

    .line 1396
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 1395
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1399
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mIsInternalDisplay:Z

    if-eqz p1, :cond_eb

    .line 1400
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "screen_brightness_mode"

    .line 1401
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 1400
    invoke-virtual {p1, v0, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_eb
    return-void

    :array_ec
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_f4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final isFakeAodAvailable()Z
    .registers 3

    .line 5132
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_AOD_LOOK_CHARGING_UI:Z

    const/4 v1, 0x1

    if-nez v0, :cond_f

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_AOD_LOOK_CHARGING_UI_ON_SUB_DISPLAY:Z

    if-eqz v0, :cond_e

    iget p0, p0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    if-ne p0, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :cond_f
    :goto_f
    return v1
.end method

.method public final isLightSensorCovered()Z
    .registers 1

    .line 4724
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean p0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    return p0
.end method

.method public isProximitySensorAvailable()Z
    .registers 1

    .line 1011
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public final isProximitySensorCovered()Z
    .registers 3

    .line 4716
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    const/4 v1, 0x1

    if-nez v0, :cond_11

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    if-ne v0, v1, :cond_10

    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerController;->mIsProximitySensorOnFoldingSide:Z

    if-eqz p0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :cond_11
    :goto_11
    return v1
.end method

.method public final isValidBrightnessValue(F)Z
    .registers 3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_d

    .line 3099
    iget p0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenExtendedBrightnessRangeMaximum:F

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public final loadAmbientLightSensor()V
    .registers 5

    .line 3022
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getAmbientLightSensor()Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    move-result-object v0

    .line 3026
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    if-nez v1, :cond_e

    const v1, 0x10041

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    .line 3037
    :goto_f
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, v0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->type:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->name:Ljava/lang/String;

    invoke-static {v2, v3, v0, v1}, Lcom/android/server/display/utils/SensorUtils;->findSensor(Landroid/hardware/SensorManager;Ljava/lang/String;Ljava/lang/String;I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    .line 3041
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    if-nez v1, :cond_2c

    if-nez v0, :cond_2c

    .line 3043
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x10044

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    :cond_2c
    return-void
.end method

.method public final loadBrightnessRampRates()V
    .registers 3

    .line 1548
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessRampFastDecrease()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFastDecrease:F

    .line 1549
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessRampFastIncrease()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFastIncrease:F

    .line 1550
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessRampSlowDecrease()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowDecrease:F

    .line 1551
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessRampSlowIncrease()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowIncrease:F

    .line 1552
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1553
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessRampDecreaseMaxMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampDecreaseMaxTimeMillis:J

    .line 1554
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1555
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessRampIncreaseMaxMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampIncreaseMaxTimeMillis:J

    return-void
.end method

.method public final loadFromDisplayDeviceConfig(Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;)V
    .registers 15

    .line 1300
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->loadBrightnessRampRates()V

    .line 1301
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->loadProximitySensor()V

    .line 1302
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerController;->loadNitsRange(Landroid/content/res/Resources;)V

    .line 1303
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/DisplayPowerController;->setUpAutoBrightness(Landroid/content/res/Resources;Landroid/os/Handler;)V

    .line 1304
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->reloadReduceBrightColours()V

    .line 1305
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    if-eqz v0, :cond_28

    .line 1306
    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampIncreaseMaxTimeMillis:J

    iget-wide v3, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampDecreaseMaxTimeMillis:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->setAnimationTimeLimits(JJ)V

    .line 1310
    :cond_28
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    iget v6, p2, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v7, p2, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iget-object v9, p2, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1311
    invoke-virtual {p2}, Lcom/android/server/display/DisplayDeviceConfig;->getHighBrightnessModeData()Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    move-result-object v10

    new-instance v11, Lcom/android/server/display/DisplayPowerController$3;

    invoke-direct {v11, p0}, Lcom/android/server/display/DisplayPowerController$3;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object v8, p1

    .line 1310
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/display/HighBrightnessModeController;->resetHbmData(IILandroid/os/IBinder;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;)V

    .line 1318
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1319
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessThrottlingData()Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;

    move-result-object p0

    .line 1318
    invoke-virtual {p1, p0}, Lcom/android/server/display/BrightnessThrottler;->resetThrottlingData(Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;)V

    return-void
.end method

.method public final loadNitsRange(Landroid/content/res/Resources;)V
    .registers 4

    .line 1559
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getNits()[F

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1560
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDeviceConfig;->getNits()[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mNitsRange:[F

    goto :goto_27

    .line 1562
    :cond_13
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    const-string v1, "Screen brightness nits configuration is unavailable; falling back"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x1070115

    .line 1564
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1563
    invoke-static {p1}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mNitsRange:[F

    :goto_27
    return-void
.end method

.method public final loadProximitySensor()V
    .registers 6

    .line 3052
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 3053
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getProximitySensor()Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    move-result-object v0

    .line 3057
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    const/4 v2, 0x0

    if-nez v1, :cond_e

    const/16 v1, 0x8

    goto :goto_f

    :cond_e
    move v1, v2

    .line 3060
    :goto_f
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, v0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->type:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->name:Ljava/lang/String;

    invoke-static {v3, v4, v0, v1}, Lcom/android/server/display/utils/SensorUtils;->findSensor(Landroid/hardware/SensorManager;Ljava/lang/String;Ljava/lang/String;I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_50

    .line 3063
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    .line 3066
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Palm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 3067
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ear Hover"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_46

    :cond_45
    const/4 v2, 0x1

    :cond_46
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mIsEarsenseProximity:Z

    .line 3068
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->semIsOnFoldingSide()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mIsProximitySensorOnFoldingSide:Z

    :cond_50
    return-void
.end method

.method public final logDisplayPolicyChanged(I)V
    .registers 3

    .line 3496
    new-instance p0, Landroid/metrics/LogMaker;

    const/16 v0, 0x6a0

    invoke-direct {p0, v0}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v0, 0x6

    .line 3497
    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 3498
    invoke-virtual {p0, p1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 3499
    invoke-static {p0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method public final logHbmBrightnessStats(FI)V
    .registers 4

    .line 4088
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    monitor-enter p0

    const/16 v0, 0x1a1

    .line 4089
    :try_start_5
    invoke-static {v0, p2, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIF)V

    .line 4091
    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public final noteScreenBrightness(F)V
    .registers 2

    .line 4036
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    if-eqz p0, :cond_b

    .line 4045
    :try_start_4
    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_b

    :catch_b
    :cond_b
    return-void
.end method

.method public final noteScreenState(I)V
    .registers 2

    .line 4005
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    if-eqz p0, :cond_7

    .line 4027
    :try_start_4
    invoke-interface {p0, p1}, Lcom/android/internal/app/IBatteryStats;->noteScreenState(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_7

    :catch_7
    :cond_7
    return-void
.end method

.method public final notifyBrightnessTrackerChanged(FZZ)V
    .registers 16

    .line 3646
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mLastNotifiedBrightness:F

    invoke-static {v0, p1}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v0

    if-nez v0, :cond_58

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessScaleFactor:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-ltz v2, :cond_18

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_18

    goto :goto_58

    .line 3651
    :cond_18
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mLastNotifiedBrightness:F

    .line 3654
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->convertToNits(F)F

    move-result v5

    .line 3655
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v0, :cond_58

    cmpl-float v0, v5, v1

    if-ltz v0, :cond_58

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_58

    .line 3660
    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    if-eqz v1, :cond_32

    .line 3661
    iget v3, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    :cond_32
    move v7, v3

    .line 3664
    sget-boolean p1, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    if-eqz p1, :cond_4b

    .line 3665
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 3667
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->isDefaultConfig()Z

    move-result v9

    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController;->mUniqueDisplayId:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 3668
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->getBrightnessSpline()Landroid/util/Spline;

    move-result-object v11

    move v6, p2

    move v8, p3

    .line 3665
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->notifyBrightnessChanged(FZFZZLjava/lang/String;Landroid/util/Spline;)V

    goto :goto_58

    .line 3671
    :cond_4b
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    .line 3673
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->isDefaultConfig()Z

    move-result v9

    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController;->mUniqueDisplayId:Ljava/lang/String;

    move v6, p2

    move v8, p3

    .line 3671
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/display/BrightnessTracker;->notifyBrightnessChanged(FZFZZLjava/lang/String;)V

    :cond_58
    :goto_58
    return-void
.end method

.method public onAmbientLuxChanged(F)V
    .registers 3

    .line 5539
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    if-eqz p0, :cond_b

    .line 5541
    invoke-virtual {p0, p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->notifyAmbientLuxChanged(F)V

    :cond_b
    return-void
.end method

.method public onDeviceStateTransition()V
    .registers 1

    .line 1251
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method public onDisplayChanged()V
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "DisplayManagerService.mSyncRoot"
        }
    .end annotation

    .line 1171
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v3

    if-nez v3, :cond_25

    .line 1173
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display Device is null in DisplayPowerController for display: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 1174
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1173
    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1178
    :cond_25
    invoke-virtual {v3}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    .line 1179
    invoke-virtual {v3}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v5

    .line 1180
    invoke-virtual {v3}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v6

    .line 1181
    invoke-virtual {v3}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v7

    .line 1184
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 1185
    iget v8, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 1186
    iget v9, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1190
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 1191
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getPhase()I

    move-result v0

    if-nez v0, :cond_49

    const/4 v0, 0x1

    goto :goto_4a

    :cond_49
    const/4 v0, 0x0

    :goto_4a
    move v10, v0

    .line 1194
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    new-instance v11, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda2;

    move-object v1, v11

    move-object v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayDevice;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;IIZ)V

    invoke-virtual {v0, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onShortTermReset()V
    .registers 2

    .line 5528
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    if-eqz v0, :cond_8

    .line 5529
    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->notifyShortTermResetValid()V

    goto :goto_b

    .line 5531
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    :goto_b
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 3

    const/4 v0, 0x1

    .line 1035
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerController;->handleSettingsChange(Z)V

    .line 1037
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    if-nez v0, :cond_f

    .line 1039
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-eqz p0, :cond_f

    .line 1040
    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessTracker;->onSwitchUser(I)V

    :cond_f
    return-void
.end method

.method public onUserPointAdded(FI)V
    .registers 5

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 5520
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mBeforeScreenBrightness:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    .line 5521
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {p0, p1, p2, v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->onAutoBrightnessAdjutmentApplied(III)V

    return-void
.end method

.method public persistBrightnessTrackerState()V
    .registers 2

    .line 1065
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    if-eqz v0, :cond_c

    .line 1066
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    if-eqz p0, :cond_13

    .line 1067
    invoke-virtual {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->persistAdaptiveBrightnessLongtermModelBuilderState()V

    goto :goto_13

    .line 1071
    :cond_c
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-eqz p0, :cond_13

    .line 1072
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessTracker;->persistBrightnessTrackerState()V

    :cond_13
    :goto_13
    return-void
.end method

.method public postBrightnessChangeRunnable()V
    .registers 2

    .line 2819
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mOnBrightnessChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final putAutoBrightnessAdjustmentSetting(F)V
    .registers 4

    .line 3602
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    if-nez v0, :cond_13

    .line 3603
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    .line 3604
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string/jumbo v1, "screen_auto_brightness_adj"

    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    :cond_13
    return-void
.end method

.method public final putAutoBrightnessTransitionTime(FFF)V
    .registers 6

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2c

    .line 4806
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-virtual {v0}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->getCurrentValue()F

    move-result v0

    .line 4811
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_18

    .line 4816
    invoke-virtual {p0, v0, p3, p1, p2}, Lcom/android/server/display/DisplayPowerController;->getTransitionTimeWithHbm(FFFF)I

    move-result p1

    goto :goto_2d

    :cond_18
    sub-float/2addr v0, p3

    .line 4819
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-double p2, p2

    float-to-double v0, p1

    div-double/2addr p2, v0

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr p2, v0

    .line 4820
    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p1, p1

    goto :goto_2d

    :cond_2c
    const/4 p1, 0x0

    .line 4824
    :goto_2d
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "putAutoBrightnessTransitionTime: transitionTime="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4825
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, -0x2

    const-string p3, "auto_brightness_transition_time"

    invoke-static {p0, p3, p1, p2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public final reloadReduceBrightColours()V
    .registers 2

    .line 1569
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->isReduceBrightColorsActivated()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1570
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->applyReduceBrightColorsSplineAdjustment()V

    :cond_d
    return-void
.end method

.method public final reportStats(F)V
    .registers 7

    .line 4055
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mLastStatsBrightness:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_7

    return-void

    .line 4060
    :cond_7
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    monitor-enter v0

    .line 4061
    :try_start_a
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v1, v1, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmTransitionPoint:Landroid/util/MutableFloat;

    if-nez v1, :cond_12

    .line 4062
    monitor-exit v0

    return-void

    .line 4064
    :cond_12
    iget v1, v1, Landroid/util/MutableFloat;->value:F

    .line 4065
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_55

    cmpl-float v0, p1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v0, :cond_1d

    move v0, v2

    goto :goto_1e

    :cond_1d
    move v0, v3

    .line 4068
    :goto_1e
    iget v4, p0, Lcom/android/server/display/DisplayPowerController;->mLastStatsBrightness:F

    cmpl-float v1, v4, v1

    if-lez v1, :cond_25

    goto :goto_26

    :cond_25
    move v2, v3

    :goto_26
    if-nez v0, :cond_2a

    if-eqz v2, :cond_54

    .line 4071
    :cond_2a
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mLastStatsBrightness:F

    .line 4072
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    if-eq v0, v2, :cond_3b

    .line 4075
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayStatsId:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayPowerController;->logHbmBrightnessStats(FI)V

    goto :goto_54

    .line 4078
    :cond_3b
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 4079
    iput v3, v0, Landroid/os/Message;->what:I

    .line 4080
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 4081
    iget p1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayStatsId:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 4082
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_54
    :goto_54
    return-void

    :catchall_55
    move-exception p0

    .line 4065
    :try_start_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw p0
.end method

.method public requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z
    .registers 7

    .line 1098
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1099
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mStopped:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    .line 1100
    monitor-exit v0

    return v2

    :cond_a
    const/4 v1, 0x0

    if-eqz p2, :cond_15

    .line 1105
    iget-boolean p2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    if-nez p2, :cond_15

    .line 1107
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    move p2, v2

    goto :goto_16

    :cond_15
    move p2, v1

    .line 1111
    :goto_16
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-nez v3, :cond_23

    .line 1112
    new-instance p2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {p2, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    iput-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    :goto_21
    move p2, v2

    goto :goto_2f

    .line 1114
    :cond_23
    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->equals(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 1115
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {p2, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    goto :goto_21

    .line 1120
    :cond_2f
    :goto_2f
    iget-boolean v3, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceSlowChange:Z

    if-eqz v3, :cond_3a

    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingForceSlowChangeLocked:Z

    if-nez v3, :cond_3a

    .line 1122
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingForceSlowChangeLocked:Z

    move p2, v2

    .line 1128
    :cond_3a
    iget-boolean p1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->earlyWakeUp:Z

    if-eqz p1, :cond_45

    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingEarlyWakeUpRequestLocked:Z

    if-nez p1, :cond_45

    .line 1130
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingEarlyWakeUpRequestLocked:Z

    move p2, v2

    :cond_45
    if-eqz p2, :cond_52

    .line 1136
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 1137
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez p1, :cond_52

    .line 1138
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 1139
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 1143
    :cond_52
    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    monitor-exit v0

    return p0

    :catchall_56
    move-exception p0

    .line 1144
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_3 .. :try_end_58} :catchall_56

    throw p0
.end method

.method public final resetScreenBrightnessLevelDuration()V
    .registers 5

    .line 5091
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    if-eqz v0, :cond_5

    goto :goto_19

    :cond_5
    const/4 v0, -0x1

    .line 5093
    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessLevelBin:I

    const/4 v0, 0x0

    :goto_9
    const/4 v1, 0x3

    if-ge v0, v1, :cond_19

    .line 5095
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessLevelTriggeredTime:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 5096
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessLevelDuration:[J

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_19
    :goto_19
    return-void
.end method

.method public restartAdaptiveBrightnessLongtermModelBuilderFromBnr()V
    .registers 2

    .line 5169
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 5171
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public restartAdaptiveBrightnessLongtermModelBuilderInternal(Z)V
    .registers 3

    .line 5175
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    if-eqz v0, :cond_f

    .line 5176
    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 5177
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    invoke-virtual {p0, p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->restartAdaptiveBrightnessStatsTracker(Z)V

    :cond_f
    return-void
.end method

.method public final saveBrightnessInfo(F)Z
    .registers 2

    .line 2769
    invoke-virtual {p0, p1, p1}, Lcom/android/server/display/DisplayPowerController;->saveBrightnessInfo(FF)Z

    move-result p0

    return p0
.end method

.method public final saveBrightnessInfo(FF)Z
    .registers 10

    .line 2773
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    monitor-enter v0

    .line 2774
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v1}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMin()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    .line 2775
    invoke-virtual {v2}, Lcom/android/server/display/BrightnessThrottler;->getBrightnessCap()F

    move-result v2

    .line 2774
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 2776
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v2}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMax()F

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    .line 2777
    invoke-virtual {v3}, Lcom/android/server/display/BrightnessThrottler;->getBrightnessCap()F

    move-result v3

    .line 2776
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 2780
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v4, v3, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightness:Landroid/util/MutableFloat;

    .line 2781
    invoke-virtual {v3, v4, p1}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->checkAndSetFloat(Landroid/util/MutableFloat;F)Z

    move-result v3

    or-int/lit8 v3, v3, 0x0

    .line 2783
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v5, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->adjustedBrightness:Landroid/util/MutableFloat;

    .line 2784
    invoke-virtual {v4, v5, p2}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->checkAndSetFloat(Landroid/util/MutableFloat;F)Z

    move-result v4

    or-int/2addr v3, v4

    .line 2786
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v5, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMin:Landroid/util/MutableFloat;

    .line 2787
    invoke-virtual {v4, v5, v1}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->checkAndSetFloat(Landroid/util/MutableFloat;F)Z

    move-result v4

    or-int/2addr v3, v4

    .line 2789
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v5, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMax:Landroid/util/MutableFloat;

    .line 2790
    invoke-virtual {v4, v5, v2}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->checkAndSetFloat(Landroid/util/MutableFloat;F)Z

    move-result v4

    or-int/2addr v3, v4

    .line 2792
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v5, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmMode:Landroid/util/MutableInt;

    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 2794
    invoke-virtual {v6}, Lcom/android/server/display/HighBrightnessModeController;->getHighBrightnessMode()I

    move-result v6

    .line 2793
    invoke-virtual {v4, v5, v6}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->checkAndSetInt(Landroid/util/MutableInt;I)Z

    move-result v4

    or-int/2addr v3, v4

    .line 2795
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v5, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmTransitionPoint:Landroid/util/MutableFloat;

    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 2797
    invoke-virtual {v6}, Lcom/android/server/display/HighBrightnessModeController;->getTransitionPoint()F

    move-result v6

    .line 2796
    invoke-virtual {v4, v5, v6}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->checkAndSetFloat(Landroid/util/MutableFloat;F)Z

    move-result v4

    or-int/2addr v3, v4

    .line 2798
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v5, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMaxReason:Landroid/util/MutableInt;

    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    .line 2800
    invoke-virtual {v6}, Lcom/android/server/display/BrightnessThrottler;->getBrightnessMaxReason()I

    move-result v6

    .line 2799
    invoke-virtual {v4, v5, v6}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->checkAndSetInt(Landroid/util/MutableInt;I)Z

    move-result v4

    or-int/2addr v3, v4

    if-eqz v3, :cond_d0

    .line 2804
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "saveBrightnessInfo: brt:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " adjBrt:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " min:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " max:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " hbm:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 2808
    invoke-virtual {p1}, Lcom/android/server/display/HighBrightnessModeController;->getHighBrightnessMode()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " tp:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 2809
    invoke-virtual {p1}, Lcom/android/server/display/HighBrightnessModeController;->getTransitionPoint()F

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " throttler:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    .line 2810
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessThrottler;->getBrightnessMaxReason()I

    move-result p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2804
    invoke-static {v4, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2814
    :cond_d0
    monitor-exit v0

    return v3

    :catchall_d2
    move-exception p0

    .line 2815
    monitor-exit v0
    :try_end_d4
    .catchall {:try_start_3 .. :try_end_d4} :catchall_d2

    throw p0
.end method

.method public final sendOnProximityNegativeWithWakelock()V
    .registers 3

    .line 3731
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeMessages:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeMessages:I

    .line 3732
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mSuspendBlockerIdProxNegative:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker(Ljava/lang/String;)V

    .line 3733
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendOnProximityPositiveWithWakelock()V
    .registers 3

    .line 3716
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mSuspendBlockerIdProxPositive:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker(Ljava/lang/String;)V

    .line 3717
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3718
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveMessages:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveMessages:I

    return-void
.end method

.method public final sendOnStateChangedWithWakelock()V
    .registers 3

    .line 3488
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mOnStateChangedPending:Z

    if-nez v0, :cond_15

    const/4 v0, 0x1

    .line 3489
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mOnStateChangedPending:Z

    .line 3490
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mSuspendBlockerIdOnStateChanged:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker(Ljava/lang/String;)V

    .line 3491
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_15
    return-void
.end method

.method public final sendScreenBrightnessLevelDuration(I)V
    .registers 4

    .line 5102
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    if-eqz v0, :cond_5

    goto :goto_22

    .line 5104
    :cond_5
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mBeforeScreenState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_20

    const/4 v0, 0x1

    if-eq p1, v0, :cond_13

    .line 5105
    invoke-static {p1}, Landroid/view/Display;->isDozeState(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 5106
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->addScreenBrightnessLevelDuration()V

    .line 5107
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessLevelDuration:[J

    invoke-interface {v0, v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->updateDuration([J)V

    .line 5108
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->resetScreenBrightnessLevelDuration()V

    .line 5110
    :cond_20
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mBeforeScreenState:I

    :goto_22
    return-void
.end method

.method public final sendUpdatePowerState()V
    .registers 2

    .line 1324
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1325
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 1326
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final sendUpdatePowerStateLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1331
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mStopped:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    if-nez v0, :cond_16

    const/4 v0, 0x1

    .line 1332
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 1333
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1334
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_16
    return-void
.end method

.method public setActualDisplayState(I)V
    .registers 6

    .line 5117
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5118
    :try_start_3
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mActualDisplayState:I

    if-eq p1, v1, :cond_35

    .line 5119
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setActualDisplayState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mActualDisplayState:I

    invoke-static {v3}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5120
    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5119
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5122
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mActualDisplayState:I

    .line 5124
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 5126
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

.method public setAmbientColorTemperatureOverride(F)V
    .registers 3

    .line 4375
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz v0, :cond_a

    .line 4376
    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setAmbientColorTemperatureOverride(F)Z

    .line 4380
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    :cond_a
    return-void
.end method

.method public setAutoBrightnessLoggingEnabled(Z)V
    .registers 2

    .line 4357
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz p0, :cond_7

    .line 4358
    invoke-virtual {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->setLoggingEnabled(Z)Z

    :cond_7
    return-void
.end method

.method public setAutomaticScreenBrightnessMode(Z)V
    .registers 3

    .line 1575
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_d

    if-eqz p1, :cond_a

    .line 1577
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->switchToIdleMode()V

    goto :goto_d

    .line 1579
    :cond_a
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->switchToInteractiveScreenBrightnessMode()V

    .line 1582
    :cond_d
    :goto_d
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz p0, :cond_14

    .line 1583
    invoke-virtual {p0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setStrongModeEnabled(Z)V

    :cond_14
    return-void
.end method

.method public setBrightness(F)V
    .registers 2

    .line 3571
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessSetting;->setBrightness(F)V

    return-void
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V
    .registers 7

    .line 2711
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_8

    move v3, v1

    goto :goto_9

    :cond_8
    move v3, v2

    :goto_9
    const/4 v4, 0x5

    invoke-virtual {v0, v4, v3, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2713
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2716
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingForceUpdateAb:Z

    if-eqz p1, :cond_22

    .line 2717
    invoke-virtual {p1}, Landroid/hardware/display/BrightnessConfiguration;->getDescription()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "sec-backup"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eq p1, v1, :cond_24

    .line 2718
    :cond_22
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessChangedByUser:Z

    .line 2720
    :cond_24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessConfigurationTime:J

    .line 2721
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2722
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 2723
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const-wide/32 v0, 0x36ee80

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final setCurrentScreenBrightness(F)V
    .registers 5

    .line 3594
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_22

    .line 3595
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCurrentScreenBrightness : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3596
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:F

    .line 3597
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->postBrightnessChangeRunnable()V

    :cond_22
    return-void
.end method

.method public setDisplayWhiteBalanceLoggingEnabled(Z)V
    .registers 3

    .line 4368
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz v0, :cond_c

    .line 4369
    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setLoggingEnabled(Z)Z

    .line 4370
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    invoke-virtual {p0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->setLoggingEnabled(Z)Z

    :cond_c
    return-void
.end method

.method public final setPendingProximityDebounceTime(J)V
    .registers 7

    .line 3481
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_f

    .line 3482
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mSuspendBlockerIdProxDebounce:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker(Ljava/lang/String;)V

    .line 3484
    :cond_f
    iput-wide p1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    return-void
.end method

.method public final setProximitySensorEnabled(Z)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_21

    .line 3381
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-nez p1, :cond_46

    const/4 p1, 0x1

    .line 3384
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    .line 3385
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mIgnoreProximityUntilChanged:Z

    .line 3386
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setProximitySensorEnabled::registerListener"

    invoke-static {p1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3387
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_46

    .line 3391
    :cond_21
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz p1, :cond_46

    .line 3394
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    const/4 p1, -0x1

    .line 3395
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    .line 3396
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mIgnoreProximityUntilChanged:Z

    .line 3397
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 3398
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 3399
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setProximitySensorEnabled::unregisterListener"

    invoke-static {p1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3400
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 3401
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->clearPendingProximityDebounceTime()V

    :cond_46
    :goto_46
    return-void
.end method

.method public final setReportedScreenState(I)V
    .registers 5

    const-wide/32 v0, 0x20000

    const-string v2, "ReportedScreenStateToPolicy"

    .line 3017
    invoke-static {v0, v1, v2, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 3018
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    return-void
.end method

.method public final setScreenState(I)Z
    .registers 3

    const/4 v0, 0x0

    .line 2920
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IZ)Z

    move-result p0

    return p0
.end method

.method public final setScreenState(IZ)Z
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    .line 2926
    :goto_7
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x3

    if-ne v3, p1, :cond_15

    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-ne v3, v4, :cond_a3

    .line 2929
    :cond_15
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v3

    if-eq v3, v5, :cond_29

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2930
    invoke-virtual {v3}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v3

    const/4 v6, 0x4

    if-ne v3, v6, :cond_27

    goto :goto_29

    :cond_27
    move v3, v1

    goto :goto_2a

    :cond_29
    :goto_29
    move v3, v0

    .line 2931
    :goto_2a
    iget-boolean v6, p0, Lcom/android/server/display/DisplayPowerController;->mIsSupportedAodMode:Z

    const/4 v7, 0x2

    if-eqz v6, :cond_51

    if-eqz v3, :cond_4d

    if-ne p1, v7, :cond_4d

    .line 2933
    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mSeamlessAodReady:Z

    if-nez v3, :cond_4d

    .line 2936
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "setScreenState(): mSeamlessAodReady : false AOD"

    invoke-static {p1, p2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2937
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnByAodReady:Z

    if-nez p1, :cond_4c

    .line 2938
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mAodManagerInternal:Lcom/samsung/android/aod/AODManagerInternal;

    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mSeamlessAodReadyListener:Lcom/android/server/display/DisplayPowerController$SeamlessAodReadyListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/aod/AODManagerInternal;->screenTurningOn(Lcom/samsung/android/aod/AODManager$AODChangeListener;)V

    .line 2939
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnByAodReady:Z

    :cond_4c
    return v1

    .line 2943
    :cond_4d
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mSeamlessAodReady:Z

    .line 2944
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnByAodReady:Z

    :cond_51
    if-eqz v2, :cond_7d

    .line 2950
    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v3, :cond_7d

    .line 2951
    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-eq v3, v7, :cond_63

    if-ne v3, v4, :cond_5e

    goto :goto_63

    .line 2958
    :cond_5e
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    if-eqz v3, :cond_7d

    return v1

    .line 2953
    :cond_63
    :goto_63
    invoke-virtual {p0, v5}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 2954
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->blockScreenOff()V

    .line 2955
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "mWindowManagerPolicy.screenTurningOff()"

    invoke-static {v3, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2956
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v6, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    iget-object v7, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    invoke-interface {v3, v6, v7}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurningOff(ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    .line 2957
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOff()V

    :cond_7d
    if-nez p2, :cond_a3

    .line 2964
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p2}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result p2

    if-eq p2, p1, :cond_a3

    const-wide/32 v6, 0x20000

    const-string p2, "ScreenState"

    .line 2965
    invoke-static {v6, v7, p2, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 2967
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v3, "debug.tracing.screen_state"

    invoke-static {v3, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2968
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p2, p1}, Lcom/android/server/display/DisplayPowerState;->setScreenState(I)V

    .line 2970
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->noteScreenState(I)V

    .line 2971
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->sendScreenBrightnessLevelDuration(I)V

    :cond_a3
    if-eqz v2, :cond_c3

    .line 2981
    iget p1, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-eqz p1, :cond_c3

    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez p1, :cond_c3

    .line 2983
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 2984
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    .line 2985
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "mWindowManagerPolicy.screenTurnedOff()"

    invoke-static {p1, p2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2986
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget p2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    invoke-interface {p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurnedOff(I)V

    goto :goto_de

    :cond_c3
    if-nez v2, :cond_de

    .line 2987
    iget p1, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-ne p1, v5, :cond_de

    .line 2992
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOff()V

    .line 2994
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "mWindowManagerPolicy.screenTurnedOff()(transitional)"

    invoke-static {p1, p2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2995
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget p2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    invoke-interface {p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurnedOff(I)V

    .line 2996
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    :cond_de
    :goto_de
    if-nez v2, :cond_114

    .line 2998
    iget p1, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-eqz p1, :cond_e6

    if-ne p1, v4, :cond_114

    .line 3001
    :cond_e6
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 3002
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_f8

    .line 3003
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->blockScreenOn()V

    goto :goto_fb

    .line 3005
    :cond_f8
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    .line 3007
    :goto_fb
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "mWindowManagerPolicy.screenTurningOn() +"

    invoke-static {p1, p2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3008
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget p2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-interface {p1, p2, v2}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurningOn(ILcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V

    .line 3009
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "mWindowManagerPolicy.screenTurningOn() -"

    invoke-static {p1, p2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3013
    :cond_114
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez p0, :cond_119

    goto :goto_11a

    :cond_119
    move v0, v1

    :goto_11a
    return v0
.end method

.method public setTemporaryAutoBrightnessAdjustment(F)V
    .registers 5

    .line 2748
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 2749
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    const/4 v1, 0x7

    const/4 v2, 0x0

    .line 2748
    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 2750
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 2752
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->updateLastBrightnessSettingChangedTime()V

    return-void
.end method

.method public setTemporaryBrightness(F)V
    .registers 6

    .line 2728
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 2729
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x0

    .line 2728
    invoke-virtual {v0, v2, v1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2730
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_17

    .line 2734
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->updateLastBrightnessSettingChangedTime()V

    :cond_17
    return-void
.end method

.method public setTemporaryBrightnessForSlowChange(FZ)V
    .registers 5

    .line 2741
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 2742
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x6

    .line 2741
    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 2743
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setTestModeEnabled(Z)V
    .registers 2

    .line 5157
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    if-eqz p0, :cond_7

    .line 5158
    invoke-virtual {p0, p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->setTestModeEnabled(Z)V

    :cond_7
    return-void
.end method

.method public final setUpAutoBrightness(Landroid/content/res/Resources;Landroid/os/Handler;)V
    .registers 34

    move-object/from16 v14, p0

    move-object/from16 v0, p1

    .line 1408
    iget-boolean v1, v14, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-nez v1, :cond_9

    return-void

    :cond_9
    const v1, 0x111013b

    .line 1412
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 1414
    iget-object v2, v14, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v3, v14, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    invoke-static {v0, v2, v3}, Lcom/android/server/display/BrightnessMappingStrategy;->create(Landroid/content/res/Resources;Lcom/android/server/display/DisplayDeviceConfig;Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;)Lcom/android/server/display/BrightnessMappingStrategy;

    move-result-object v2

    iput-object v2, v14, Lcom/android/server/display/DisplayPowerController;->mInteractiveModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v1, :cond_26

    .line 1417
    iget-object v1, v14, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v2, v14, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    invoke-static {v0, v1, v2}, Lcom/android/server/display/BrightnessMappingStrategy;->createForIdleMode(Landroid/content/res/Resources;Lcom/android/server/display/DisplayDeviceConfig;Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;)Lcom/android/server/display/BrightnessMappingStrategy;

    move-result-object v1

    iput-object v1, v14, Lcom/android/server/display/DisplayPowerController;->mIdleModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 1421
    :cond_26
    iget-object v1, v14, Lcom/android/server/display/DisplayPowerController;->mInteractiveModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    const/4 v2, 0x0

    if-eqz v1, :cond_14b

    .line 1423
    instance-of v1, v1, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;

    const/4 v3, 0x1

    if-eqz v1, :cond_33

    .line 1424
    sput-boolean v3, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    goto :goto_35

    .line 1426
    :cond_33
    sput-boolean v2, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    :goto_35
    const v1, 0x1130006

    .line 1430
    invoke-virtual {v0, v1, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v9

    const/16 v18, 0x0

    const v1, 0x1070055

    .line 1466
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    const v2, 0x1070056

    .line 1468
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    const v3, 0x1070057

    .line 1470
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    const v4, 0x1070058

    .line 1472
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    .line 1474
    new-instance v15, Lcom/android/server/display/HysteresisLevels;

    invoke-direct {v15, v1, v2, v3, v4}, Lcom/android/server/display/HysteresisLevels;-><init>([I[I[I[I)V

    .line 1482
    sget-boolean v3, Lcom/android/server/power/PowerManagerUtil;->SEC_LIGHT_SENSOR_BLOCKING_PREVENTION_MULTI:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_8f

    const v3, 0x1070059

    .line 1483
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    const v4, 0x107005a

    .line 1485
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    const v5, 0x107005b

    .line 1487
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    const v6, 0x107005c

    .line 1489
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    .line 1491
    new-instance v7, Lcom/android/server/display/HysteresisLevels;

    invoke-direct {v7, v1, v2, v3, v4}, Lcom/android/server/display/HysteresisLevels;-><init>([I[I[I[I)V

    .line 1493
    new-instance v3, Lcom/android/server/display/HysteresisLevels;

    invoke-direct {v3, v1, v2, v5, v6}, Lcom/android/server/display/HysteresisLevels;-><init>([I[I[I[I)V

    move-object/from16 v26, v3

    move-object/from16 v25, v7

    goto :goto_93

    :cond_8f
    move-object/from16 v25, v4

    move-object/from16 v26, v25

    :goto_93
    const v1, 0x10e002b

    .line 1498
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v12, v1

    const v1, 0x10e002c

    .line 1500
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v10, v1

    const v1, 0x1110030

    .line 1502
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v16

    const v1, 0x10e00b1

    .line 1505
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    const v1, 0x10e002f

    .line 1507
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/16 v0, 0x32

    if-le v0, v1, :cond_df

    .line 1514
    iget-object v2, v14, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected config_autoBrightnessInitialLightSensorRate ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") to be less than or equal to config_autoBrightnessLightSensorRate ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_df
    const/16 v17, 0x32

    .line 1519
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->loadAmbientLightSensor()V

    .line 1520
    iget-object v0, v14, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-eqz v0, :cond_ed

    .line 1521
    iget-object v2, v14, Lcom/android/server/display/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v2}, Lcom/android/server/display/BrightnessTracker;->setLightSensor(Landroid/hardware/Sensor;)V

    .line 1524
    :cond_ed
    iget-object v0, v14, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_f4

    .line 1525
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->stop()V

    .line 1527
    :cond_f4
    new-instance v8, Lcom/android/server/display/AutomaticBrightnessController;

    move-object v0, v8

    .line 1528
    invoke-virtual/range {p2 .. p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, v14, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, v14, Lcom/android/server/display/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    iget-object v5, v14, Lcom/android/server/display/DisplayPowerController;->mInteractiveModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    const/4 v7, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    move-object/from16 v28, v8

    move/from16 v8, v19

    iget-object v7, v14, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v7

    iget-object v7, v14, Lcom/android/server/display/DisplayPowerController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    move-object/from16 v20, v7

    iget-object v7, v14, Lcom/android/server/display/DisplayPowerController;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    move-object/from16 v21, v7

    iget-object v7, v14, Lcom/android/server/display/DisplayPowerController;->mIdleModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    move-object/from16 v22, v7

    iget-object v7, v14, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1535
    invoke-virtual {v7}, Lcom/android/server/display/DisplayDeviceConfig;->getAmbientHorizonShort()I

    move-result v23

    iget-object v7, v14, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 1536
    invoke-virtual {v7}, Lcom/android/server/display/DisplayDeviceConfig;->getAmbientHorizonLong()I

    move-result v24

    iget v7, v14, Lcom/android/server/display/DisplayPowerController;->mHbmLux:I

    move/from16 v27, v7

    move v7, v1

    move-object/from16 v1, p0

    move-wide/from16 v29, v10

    move v10, v7

    move/from16 v11, v17

    move-object v7, v14

    move-object/from16 v17, v15

    move-wide/from16 v14, v29

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v27}, Lcom/android/server/display/AutomaticBrightnessController;-><init>(Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Lcom/android/server/display/BrightnessMappingStrategy;IFFFIIJJZLcom/android/server/display/HysteresisLevels;Lcom/android/server/display/HysteresisLevels;Landroid/content/Context;Lcom/android/server/display/HighBrightnessModeController;Lcom/android/server/display/BrightnessThrottler;Lcom/android/server/display/BrightnessMappingStrategy;IILcom/android/server/display/HysteresisLevels;Lcom/android/server/display/HysteresisLevels;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 1540
    new-instance v1, Lcom/android/internal/util/RingBuffer;

    const-class v2, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    goto :goto_14e

    :cond_14b
    move-object v0, v14

    .line 1543
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    :goto_14e
    return-void
.end method

.method public final shouldEnableMoreFastRampRateCase()Z
    .registers 6

    .line 2686
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->hasModifier(I)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    .line 2687
    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->hasModifier(I)Z

    move-result v0

    if-nez v0, :cond_33

    :cond_11
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    iget v2, v0, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->reason:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1e

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    iget v2, v2, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->reason:I

    if-ne v2, v3, :cond_33

    :cond_1e
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v4, 0x7

    .line 2690
    invoke-virtual {v0, v2, v4}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->isReasonChanged(Lcom/android/server/display/DisplayPowerController$BrightnessReason;I)Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    .line 2692
    invoke-virtual {v0, p0, v3}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->isModifierChanged(Lcom/android/server/display/DisplayPowerController$BrightnessReason;I)Z

    move-result p0

    if-eqz p0, :cond_32

    goto :goto_33

    :cond_32
    const/4 v1, 0x0

    :cond_33
    :goto_33
    return v1
.end method

.method public stop()V
    .registers 4

    .line 1261
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 1262
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mStopped:Z

    .line 1263
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1264
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1266
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz v1, :cond_1b

    const/4 v2, 0x0

    .line 1267
    invoke-virtual {v1, v2}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setEnabled(Z)Z

    .line 1270
    :cond_1b
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v1, :cond_22

    .line 1271
    invoke-virtual {v1}, Lcom/android/server/display/AutomaticBrightnessController;->stop()V

    .line 1274
    :cond_22
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    if-eqz v1, :cond_2b

    .line 1275
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessSettingListener:Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;

    invoke-virtual {v1, v2}, Lcom/android/server/display/BrightnessSetting;->unregisterListener(Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;)V

    .line 1278
    :cond_2b
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1279
    monitor-exit v0

    return-void

    :catchall_38
    move-exception p0

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_4 .. :try_end_3a} :catchall_38

    throw p0
.end method

.method public final unblockScreenOff()V
    .registers 5

    .line 2911
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    if-eqz v0, :cond_32

    const/4 v0, 0x0

    .line 2912
    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    .line 2913
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBlockStartRealTime:J

    sub-long/2addr v0, v2

    .line 2914
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unblocked screen off after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v0, 0x20000

    const/4 p0, 0x0

    const-string v2, "Screen off blocked"

    .line 2915
    invoke-static {v0, v1, v2, p0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_32
    return-void
.end method

.method public final unblockScreenOn()V
    .registers 5

    .line 2892
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-eqz v0, :cond_37

    const/4 v0, 0x0

    .line 2893
    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 2894
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    sub-long/2addr v0, v2

    .line 2895
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unblocked screen on after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v0, 0x20000

    const/4 p0, 0x0

    const-string v2, "Screen on blocked"

    .line 2896
    invoke-static {v0, v1, v2, p0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 2897
    sget-object p0, Lcom/android/server/power/PowerManagerUtil;->sCurrentScreenOnProfiler:Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->noteWmsEnd()V

    :cond_37
    return-void
.end method

.method public final updateAutoBrightnessAdjustment()Z
    .registers 5

    .line 3611
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 3614
    :cond_a
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    cmpl-float v0, v0, v2

    const/high16 v3, 0x7fc00000    # Float.NaN

    if-nez v0, :cond_17

    .line 3615
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    return v1

    .line 3618
    :cond_17
    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    .line 3619
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    const/4 p0, 0x1

    return p0
.end method

.method public updateBrightness()V
    .registers 1

    .line 2699
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method public final updateForceUpdateAbJob()V
    .registers 1

    return-void
.end method

.method public final updateLastBrightnessSettingChangedTime()V
    .registers 3

    const/4 v0, 0x0

    .line 5040
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    .line 5041
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mLastScreenBrightnessSettingChangedTime:J

    return-void
.end method

.method public final updatePendingProximityRequestsLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3687
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    const/4 v0, 0x0

    .line 3688
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 3690
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mIgnoreProximityUntilChanged:Z

    if-eqz v1, :cond_10

    .line 3692
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    :cond_10
    return-void
.end method

.method public final updatePowerState()V
    .registers 34

    move-object/from16 v0, p0

    .line 1687
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->set(Lcom/android/server/display/DisplayPowerController$BrightnessReason;)V

    .line 1688
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/DisplayPowerController$BrightnessEvent;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->reset()V

    .line 1695
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1696
    :try_start_10
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mStopped:Z

    if-eqz v2, :cond_16

    .line 1697
    monitor-exit v1

    return-void

    :cond_16
    const/4 v2, 0x0

    .line 1699
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 1700
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-nez v3, :cond_1f

    .line 1701
    monitor-exit v1

    return-void

    .line 1704
    :cond_1f
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v6, 0x1

    if-nez v4, :cond_49

    .line 1705
    new-instance v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v3, v4}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 1706
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->updatePendingProximityRequestsLocked()V

    .line 1708
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityPositiveDebounce:I

    iput v4, v0, Lcom/android/server/display/DisplayPowerController;->mSensorPositiveDebounceDelay:I

    .line 1709
    iget v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityNegativeDebounce:I

    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mSensorNegativeDebounceDelay:I

    .line 1713
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mPendingForceSlowChangeLocked:Z

    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mForceSlowChange:Z

    .line 1714
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingForceSlowChangeLocked:Z

    .line 1718
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mPendingEarlyWakeUpRequestLocked:Z

    .line 1719
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingEarlyWakeUpRequestLocked:Z

    .line 1722
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    move v4, v6

    const/4 v7, 0x3

    goto :goto_77

    .line 1727
    :cond_49
    iget-boolean v7, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-eqz v7, :cond_73

    .line 1728
    iget v7, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 1729
    invoke-virtual {v4, v3}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 1730
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->updatePendingProximityRequestsLocked()V

    .line 1732
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityPositiveDebounce:I

    iput v4, v0, Lcom/android/server/display/DisplayPowerController;->mSensorPositiveDebounceDelay:I

    .line 1733
    iget v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityNegativeDebounce:I

    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mSensorNegativeDebounceDelay:I

    .line 1737
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mForceSlowChange:Z

    iget-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mPendingForceSlowChangeLocked:Z

    or-int/2addr v3, v4

    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mForceSlowChange:Z

    .line 1738
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingForceSlowChangeLocked:Z

    .line 1742
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mPendingEarlyWakeUpRequestLocked:Z

    or-int/2addr v3, v2

    .line 1743
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingEarlyWakeUpRequestLocked:Z

    .line 1746
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 1747
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    move v4, v2

    goto :goto_77

    .line 1749
    :cond_73
    iget v7, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    move v3, v2

    move v4, v3

    .line 1752
    :goto_77
    iget-boolean v8, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    if-nez v8, :cond_7d

    move v8, v6

    goto :goto_7e

    :cond_7d
    move v8, v2

    .line 1753
    :goto_7e
    iget v9, v0, Lcom/android/server/display/DisplayPowerController;->mActualDisplayState:I

    .line 1754
    monitor-exit v1
    :try_end_81
    .catchall {:try_start_10 .. :try_end_81} :catchall_939

    .line 1762
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v10, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/16 v11, 0xa

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/high16 v14, 0x7fc00000    # Float.NaN

    const/4 v15, 0x2

    if-eqz v10, :cond_c3

    if-eq v10, v6, :cond_99

    if-eq v10, v13, :cond_96

    move v5, v2

    move v10, v14

    move v1, v15

    goto :goto_c6

    :cond_96
    move v5, v2

    move v1, v12

    goto :goto_c5

    .line 1768
    :cond_99
    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    if-eqz v1, :cond_9e

    goto :goto_9f

    :cond_9e
    const/4 v1, 0x3

    .line 1773
    :goto_9f
    iget-boolean v10, v0, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    if-nez v10, :cond_c1

    .line 1774
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->isFakeAodAvailable()Z

    move-result v10

    if-nez v10, :cond_c1

    .line 1775
    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v10, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:F

    .line 1776
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v5, v15, v10}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(IF)V

    .line 1779
    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_bf

    .line 1780
    iget v10, v0, Lcom/android/server/display/DisplayPowerController;->mLastOriginalTarget:F

    .line 1781
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v5, v11, v10}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(IF)V

    :cond_bf
    move v5, v2

    goto :goto_c6

    :cond_c1
    move v5, v2

    goto :goto_c5

    :cond_c3
    move v1, v6

    move v5, v1

    :goto_c5
    move v10, v14

    .line 1799
    :goto_c6
    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v11, :cond_11a

    .line 1800
    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v11, v11, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    if-eqz v11, :cond_eb

    .line 1801
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->isProximitySensorCovered()Z

    move-result v11

    if-nez v11, :cond_eb

    .line 1805
    invoke-virtual {v0, v6}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 1806
    iget-boolean v11, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v11, :cond_108

    iget v11, v0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    if-ne v11, v6, :cond_108

    iget-boolean v11, v0, Lcom/android/server/display/DisplayPowerController;->mIgnoreProximityUntilChanged:Z

    if-nez v11, :cond_108

    .line 1812
    iput-boolean v6, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 1813
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityPositiveWithWakelock()V

    goto :goto_108

    .line 1815
    :cond_eb
    iget-boolean v11, v0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    if-eqz v11, :cond_103

    iget-boolean v11, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v11, :cond_103

    iget v11, v0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    if-ne v11, v6, :cond_103

    if-eq v1, v6, :cond_103

    .line 1819
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->isProximitySensorCovered()Z

    move-result v11

    if-nez v11, :cond_103

    .line 1823
    invoke-virtual {v0, v6}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    goto :goto_108

    .line 1827
    :cond_103
    invoke-virtual {v0, v2}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 1828
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 1831
    :cond_108
    :goto_108
    iget-boolean v11, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v11, :cond_11e

    iget v11, v0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    if-ne v11, v6, :cond_114

    iget-boolean v11, v0, Lcom/android/server/display/DisplayPowerController;->mIgnoreProximityUntilChanged:Z

    if-eqz v11, :cond_11e

    .line 1836
    :cond_114
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 1837
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityNegativeWithWakelock()V

    goto :goto_11e

    .line 1840
    :cond_11a
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 1841
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mIgnoreProximityUntilChanged:Z

    .line 1844
    :cond_11e
    :goto_11e
    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v11}, Lcom/android/server/display/LogicalDisplay;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_132

    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 1845
    invoke-virtual {v11}, Lcom/android/server/display/LogicalDisplay;->getPhase()I

    move-result v11

    if-eqz v11, :cond_132

    iget-boolean v11, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v11, :cond_133

    :cond_132
    move v1, v6

    .line 1851
    :cond_133
    iget v11, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    if-ne v11, v13, :cond_13e

    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v11, v11, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    if-nez v11, :cond_13e

    move v1, v6

    :cond_13e
    if-eqz v4, :cond_143

    .line 1858
    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController;->initialize(I)V

    .line 1864
    :cond_143
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v4

    .line 1867
    iget-boolean v11, v0, Lcom/android/server/display/DisplayPowerController;->mEarlyWakeupEnabled:Z

    if-eqz v11, :cond_154

    .line 1868
    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mEarlyWakeUpManager:Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;

    if-eqz v11, :cond_154

    .line 1869
    invoke-virtual {v11, v3, v9}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->update(ZI)V

    .line 1875
    :cond_154
    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    iget-object v9, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dualScreenPolicy:I

    if-eq v3, v9, :cond_16c

    .line 1876
    iput v9, v0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    if-nez v9, :cond_16c

    .line 1878
    iput-boolean v6, v0, Lcom/android/server/display/DisplayPowerController;->mNeedPrepareColorFade:Z

    if-ne v4, v6, :cond_16c

    .line 1880
    invoke-static {v1}, Landroid/view/Display;->isDozeState(I)Z

    move-result v3

    if-eqz v3, :cond_16c

    .line 1881
    iput-boolean v6, v0, Lcom/android/server/display/DisplayPowerController;->mNeedSkipDozeState:Z

    .line 1891
    :cond_16c
    invoke-virtual {v0, v1, v5}, Lcom/android/server/display/DisplayPowerController;->animateScreenStateChange(IZ)V

    .line 1892
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    const/4 v3, 0x0

    if-ne v1, v6, :cond_17e

    .line 1896
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v5, v12, v3}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(IF)V

    move v10, v3

    :cond_17e
    if-ne v1, v12, :cond_188

    .line 1902
    iget v10, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVr:F

    .line 1903
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v9, 0x6

    invoke-virtual {v5, v9, v10}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(IF)V

    .line 1907
    :cond_188
    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_1a5

    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v5, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:F

    .line 1908
    invoke-virtual {v0, v5}, Lcom/android/server/display/DisplayPowerController;->isValidBrightnessValue(F)Z

    move-result v5

    if-eqz v5, :cond_1a5

    .line 1909
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v10, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:F

    .line 1910
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v9, 0x7

    invoke-virtual {v5, v9, v10}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(IF)V

    .line 1912
    iput-boolean v6, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedScreenBrightnessOverride:Z

    goto :goto_1a7

    .line 1914
    :cond_1a5
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedScreenBrightnessOverride:Z

    .line 1918
    :goto_1a7
    sget-boolean v5, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_COVER_DISPLAY_AUTO_BRIGHTNESS:Z

    if-eqz v5, :cond_1b7

    iget v5, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    if-ne v5, v6, :cond_1b7

    iget v5, v0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    if-eq v5, v6, :cond_1b7

    .line 1921
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput-boolean v2, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    .line 1925
    :cond_1b7
    iget-boolean v5, v0, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    if-nez v5, :cond_1c1

    .line 1926
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->isFakeAodAvailable()Z

    move-result v5

    if-eqz v5, :cond_1c9

    .line 1927
    :cond_1c1
    invoke-static {v1}, Landroid/view/Display;->isDozeState(I)Z

    move-result v5

    if-eqz v5, :cond_1c9

    move v5, v6

    goto :goto_1ca

    :cond_1c9
    move v5, v2

    .line 1928
    :goto_1ca
    iget-object v9, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v9, :cond_1e6

    if-eq v1, v15, :cond_1d4

    if-eqz v5, :cond_1e6

    .line 1930
    :cond_1d4
    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-eqz v9, :cond_1e6

    iget-object v9, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v9, :cond_1e6

    .line 1932
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->isLightSensorCovered()Z

    move-result v9

    if-nez v9, :cond_1e6

    move v9, v6

    goto :goto_1e7

    :cond_1e6
    move v9, v2

    .line 1933
    :goto_1e7
    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v11, v11, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v11, :cond_1f3

    if-eq v1, v15, :cond_1f3

    if-nez v5, :cond_1f3

    move v5, v6

    goto :goto_1f4

    :cond_1f3
    move v5, v2

    :goto_1f4
    if-eqz v9, :cond_1f9

    move/from16 v19, v6

    goto :goto_200

    :cond_1f9
    if-eqz v5, :cond_1fe

    const/16 v19, 0x3

    goto :goto_200

    :cond_1fe
    move/from16 v19, v15

    .line 1942
    :goto_200
    iget-boolean v5, v0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessEnabled:Z

    if-eq v5, v9, :cond_210

    .line 1943
    iput-boolean v9, v0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessEnabled:Z

    if-eqz v9, :cond_210

    .line 1944
    iget-boolean v5, v0, Lcom/android/server/display/DisplayPowerController;->mDozing:Z

    if-nez v5, :cond_20e

    if-ne v7, v6, :cond_210

    .line 1946
    :cond_20e
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mInitialAutoBrightnessUpdated:Z

    .line 1951
    :cond_210
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->updateUserSetScreenBrightness()Z

    move-result v5

    .line 1953
    iget v11, v0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:F

    iget v12, v0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:F

    cmpl-float v11, v11, v12

    if-nez v11, :cond_21e

    .line 1954
    iput v14, v0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:F

    .line 1960
    :cond_21e
    iget v11, v0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:F

    invoke-virtual {v0, v11}, Lcom/android/server/display/DisplayPowerController;->isValidBrightnessValue(F)Z

    move-result v11

    const/16 v12, 0x8

    if-eqz v11, :cond_232

    .line 1961
    iget v10, v0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:F

    .line 1962
    iput-boolean v6, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryBrightness:Z

    .line 1963
    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v11, v12, v10}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(IF)V

    goto :goto_234

    .line 1966
    :cond_232
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryBrightness:Z

    .line 1969
    :goto_234
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->updateAutoBrightnessAdjustment()Z

    move-result v11

    if-eqz v11, :cond_23c

    .line 1971
    iput v14, v0, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    .line 1976
    :cond_23c
    iget v14, v0, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v14

    if-nez v14, :cond_24b

    .line 1977
    iget v14, v0, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    .line 1979
    iput-boolean v6, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    move/from16 v29, v6

    goto :goto_251

    .line 1981
    :cond_24b
    iget v14, v0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    .line 1983
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    move/from16 v29, v15

    .line 1989
    :goto_251
    iget-object v15, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v15, v15, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    const/high16 v12, 0x3f800000    # 1.0f

    if-eqz v15, :cond_268

    cmpl-float v15, v10, v3

    if-eqz v15, :cond_268

    .line 1992
    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/16 v15, 0x9

    invoke-virtual {v10, v15, v12}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(IF)V

    .line 1994
    iput-boolean v6, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedBrightnessBoost:Z

    move v10, v12

    goto :goto_26a

    .line 1996
    :cond_268
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedBrightnessBoost:Z

    .line 2027
    :goto_26a
    iget-boolean v15, v0, Lcom/android/server/display/DisplayPowerController;->mResetBrightnessConfiguration:Z

    if-eqz v15, :cond_27d

    .line 2029
    sget-boolean v15, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    if-eqz v15, :cond_278

    .line 2030
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->clearAdaptiveBrightnessLongtermModelBuilder()V

    .line 2031
    invoke-virtual {v0, v2}, Lcom/android/server/display/DisplayPowerController;->restartAdaptiveBrightnessLongtermModelBuilderInternal(Z)V

    .line 2036
    :cond_278
    iget-boolean v15, v0, Lcom/android/server/display/DisplayPowerController;->mResetBrightnessConfiguration:Z

    .line 2037
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mResetBrightnessConfiguration:Z

    goto :goto_27e

    :cond_27d
    move v15, v2

    .line 2043
    :goto_27e
    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v18

    if-eqz v18, :cond_28b

    if-nez v11, :cond_288

    if-eqz v5, :cond_28b

    :cond_288
    move/from16 v30, v6

    goto :goto_28d

    :cond_28b
    move/from16 v30, v2

    .line 2047
    :goto_28d
    iget-object v12, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v12, :cond_2c1

    .line 2048
    invoke-virtual {v12}, Lcom/android/server/display/AutomaticBrightnessController;->hasUserDataPoints()Z

    move-result v12

    .line 2049
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object v6, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mLastUserSetScreenBrightness:F

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    move/from16 v31, v12

    iget-boolean v12, v0, Lcom/android/server/display/DisplayPowerController;->mUseHbmAtManualMax:Z

    move/from16 v32, v7

    iget v7, v0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    move-object/from16 v18, v13

    move-object/from16 v20, v6

    move/from16 v21, v2

    move/from16 v22, v5

    move/from16 v23, v14

    move/from16 v24, v11

    move/from16 v25, v3

    move/from16 v26, v12

    move/from16 v27, v15

    move/from16 v28, v7

    invoke-virtual/range {v18 .. v28}, Lcom/android/server/display/AutomaticBrightnessController;->configure(ILandroid/hardware/display/BrightnessConfiguration;FZFZIZZI)V

    move/from16 v12, v31

    goto :goto_2c4

    :cond_2c1
    move/from16 v32, v7

    const/4 v12, 0x0

    .line 2059
    :goto_2c4
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-eqz v2, :cond_2cd

    .line 2060
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v2, v3}, Lcom/android/server/display/BrightnessTracker;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V

    .line 2074
    :cond_2cd
    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_36a

    if-eqz v9, :cond_2e4

    .line 2077
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/DisplayPowerController$BrightnessEvent;

    invoke-virtual {v2, v3}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightness(Lcom/android/server/display/DisplayPowerController$BrightnessEvent;)F

    move-result v10

    .line 2079
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 2080
    invoke-virtual {v2}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightnessAdjustment()F

    move-result v2

    goto :goto_2e5

    :cond_2e4
    move v2, v14

    .line 2082
    :goto_2e5
    invoke-virtual {v0, v10}, Lcom/android/server/display/DisplayPowerController;->isValidBrightnessValue(F)Z

    move-result v3

    if-nez v3, :cond_306

    const/4 v3, 0x0

    cmpl-float v6, v10, v3

    if-nez v6, :cond_2f1

    goto :goto_306

    :cond_2f1
    if-eqz v9, :cond_2fc

    .line 2115
    iget v10, v0, Lcom/android/server/display/DisplayPowerController;->mLastOriginalTarget:F

    .line 2116
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/16 v6, 0xa

    invoke-virtual {v3, v6, v10}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(IF)V

    :cond_2fc
    const/4 v3, 0x0

    .line 2120
    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    const/high16 v6, 0x7fc00000    # Float.NaN

    const/high16 v7, 0x7fc00000    # Float.NaN

    const/4 v11, 0x0

    const/4 v13, 0x0

    goto :goto_35c

    .line 2085
    :cond_306
    :goto_306
    invoke-virtual {v0, v10}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    move-result v10

    .line 2087
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v3}, Lcom/android/server/display/AutomaticBrightnessController;->getAmbientLux()F

    move-result v3

    .line 2088
    iget v6, v0, Lcom/android/server/display/DisplayPowerController;->mLastAutomaticScreenBrightness:F

    cmpl-float v6, v10, v6

    if-eqz v6, :cond_31a

    .line 2090
    iput v10, v0, Lcom/android/server/display/DisplayPowerController;->mLastAutomaticScreenBrightness:F

    const/4 v6, 0x1

    goto :goto_31b

    :cond_31a
    const/4 v6, 0x0

    .line 2093
    :goto_31b
    iget-boolean v7, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    if-eqz v7, :cond_33b

    if-nez v11, :cond_33b

    if-eqz v6, :cond_33b

    .line 2098
    sget-boolean v6, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS_V3:Z

    if-nez v6, :cond_331

    sget-boolean v6, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS_V4:Z

    if-eqz v6, :cond_32c

    goto :goto_331

    :cond_32c
    const/high16 v6, 0x7fc00000    # Float.NaN

    const/high16 v7, 0x7fc00000    # Float.NaN

    goto :goto_339

    .line 2100
    :cond_331
    :goto_331
    invoke-virtual {v0, v10, v3}, Lcom/android/server/display/DisplayPowerController;->getBrightnessDynamicRampRatePair(FF)Lcom/android/server/display/DisplayPowerController$BrightnessDynamicRampRatePair;

    move-result-object v6

    .line 2101
    iget v7, v6, Lcom/android/server/display/DisplayPowerController$BrightnessDynamicRampRatePair;->brightnessRampRateDynamic:F

    .line 2102
    iget v6, v6, Lcom/android/server/display/DisplayPowerController$BrightnessDynamicRampRatePair;->brightnessRampRateDynamicAtHbm:F

    :goto_339
    const/4 v11, 0x1

    goto :goto_340

    :cond_33b
    const/high16 v6, 0x7fc00000    # Float.NaN

    const/high16 v7, 0x7fc00000    # Float.NaN

    const/4 v11, 0x0

    .line 2106
    :goto_340
    iget v13, v0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:F

    .line 2107
    invoke-static {v10}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(F)F

    move-result v18

    cmpl-float v13, v13, v18

    move/from16 v18, v6

    const/4 v6, 0x1

    if-eqz v13, :cond_34f

    const/4 v13, 0x1

    goto :goto_350

    :cond_34f
    const/4 v13, 0x0

    .line 2108
    :goto_350
    iput-boolean v6, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    .line 2109
    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mLastAmbientLux:F

    .line 2110
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v6, 0x4

    invoke-virtual {v3, v6, v10}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(IF)V

    move/from16 v6, v18

    :goto_35c
    cmpl-float v3, v14, v2

    if-eqz v3, :cond_364

    .line 2125
    invoke-virtual {v0, v2}, Lcom/android/server/display/DisplayPowerController;->putAutoBrightnessAdjustmentSetting(F)V

    goto :goto_366

    :cond_364
    const/16 v29, 0x0

    :goto_366
    move/from16 v2, v29

    const/4 v3, 0x3

    goto :goto_379

    .line 2135
    :cond_36a
    invoke-virtual {v0, v10}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightnessForFinal(F)F

    move-result v10

    const/4 v2, 0x0

    .line 2136
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/high16 v6, 0x7fc00000    # Float.NaN

    const/high16 v7, 0x7fc00000    # Float.NaN

    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_379
    if-eq v1, v3, :cond_381

    const/4 v3, 0x4

    if-ne v1, v3, :cond_37f

    goto :goto_381

    :cond_37f
    const/4 v3, 0x0

    goto :goto_382

    :cond_381
    :goto_381
    const/4 v3, 0x1

    .line 2144
    :goto_382
    iget-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mIsSupportedAodMode:Z

    if-eqz v14, :cond_3a1

    .line 2145
    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v14

    if-eqz v14, :cond_3a1

    if-nez v3, :cond_392

    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnByAodReady:Z

    if-eqz v3, :cond_3a1

    .line 2147
    :cond_392
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->isFakeAodAvailable()Z

    move-result v3

    if-nez v3, :cond_3a1

    .line 2148
    iget v10, v0, Lcom/android/server/display/DisplayPowerController;->mLastOriginalTarget:F

    .line 2149
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/16 v14, 0xa

    invoke-virtual {v3, v14, v10}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(IF)V

    .line 2156
    :cond_3a1
    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_3bf

    .line 2157
    invoke-static {v1}, Landroid/view/Display;->isDozeState(I)Z

    move-result v3

    if-eqz v3, :cond_3bf

    .line 2158
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->isFakeAodAvailable()Z

    move-result v3

    if-nez v3, :cond_3bf

    .line 2159
    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:F

    invoke-virtual {v0, v3}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    move-result v10

    .line 2160
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v14, 0x3

    invoke-virtual {v3, v14, v10}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(IF)V

    .line 2165
    :cond_3bf
    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_401

    .line 2166
    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:F

    invoke-virtual {v0, v3}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    move-result v3

    .line 2167
    iget v10, v0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:F

    cmpl-float v10, v3, v10

    if-eqz v10, :cond_3d2

    const/4 v13, 0x1

    .line 2173
    :cond_3d2
    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v14, 0x1

    invoke-virtual {v10, v14, v3}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(IF)V

    .line 2178
    iget-boolean v10, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    if-eqz v10, :cond_3e5

    .line 2179
    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mLastScreenBrightnessSettingBeforeForceDim:F

    .line 2180
    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/16 v14, 0x2000

    invoke-virtual {v10, v14, v3}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->addModifier(IF)V

    :cond_3e5
    move v10, v3

    .line 2187
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mUseHbmAtManualMax:Z

    if-eqz v3, :cond_401

    .line 2188
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v3}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightness()F

    move-result v3

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v18, v3, v14

    if-lez v18, :cond_401

    .line 2190
    invoke-virtual {v0, v3}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    move-result v10

    .line 2191
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/16 v14, 0x4000

    invoke-virtual {v3, v14, v10}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->addModifier(IF)V

    .line 2202
    :cond_401
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mBatteryLevelCritical:Z

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->batteryLevelCritical:Z

    if-eq v3, v14, :cond_41d

    if-eqz v14, :cond_414

    move v14, v10

    move v3, v11

    .line 2204
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iput-wide v10, v0, Lcom/android/server/display/DisplayPowerController;->mLastBatteryLevelCriticalTime:J

    goto :goto_416

    :cond_414
    move v14, v10

    move v3, v11

    .line 2206
    :goto_416
    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v10, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->batteryLevelCritical:Z

    iput-boolean v10, v0, Lcom/android/server/display/DisplayPowerController;->mBatteryLevelCritical:Z

    goto :goto_41f

    :cond_41d
    move v14, v10

    move v3, v11

    .line 2209
    :goto_41f
    iget-boolean v10, v0, Lcom/android/server/display/DisplayPowerController;->mIsInternalDisplay:Z

    if-eqz v10, :cond_4a8

    iget-boolean v10, v0, Lcom/android/server/display/DisplayPowerController;->mCoverDisplayEnabled:Z

    if-nez v10, :cond_4a8

    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v11, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    move/from16 v18, v3

    const/4 v3, 0x3

    if-ne v11, v3, :cond_4aa

    .line 2211
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mBatteryLevelCritical:Z

    if-eqz v3, :cond_454

    move v3, v13

    move v11, v14

    .line 2212
    iget-wide v13, v0, Lcom/android/server/display/DisplayPowerController;->mLastBatteryLevelCriticalTime:J

    move/from16 v16, v5

    move/from16 v19, v6

    iget-wide v5, v0, Lcom/android/server/display/DisplayPowerController;->mLastScreenBrightnessSettingChangedTime:J

    cmp-long v5, v13, v5

    if-lez v5, :cond_45a

    iget-boolean v5, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isPowered:Z

    if-nez v5, :cond_45a

    if-eqz v9, :cond_452

    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v5, :cond_45a

    .line 2215
    invoke-virtual {v5}, Lcom/android/server/display/AutomaticBrightnessController;->isAmbientLuxValid()Z

    move-result v5

    if-eqz v5, :cond_45a

    :cond_452
    const/4 v5, 0x1

    goto :goto_45b

    :cond_454
    move/from16 v16, v5

    move/from16 v19, v6

    move v3, v13

    move v11, v14

    :cond_45a
    const/4 v5, 0x0

    :goto_45b
    if-eqz v5, :cond_46f

    .line 2220
    iget-boolean v6, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    if-nez v6, :cond_46f

    const/4 v6, 0x1

    .line 2221
    iput-boolean v6, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    .line 2222
    iget v5, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessModeSetting:I

    if-nez v5, :cond_46c

    .line 2224
    iget v5, v0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:F

    iput v5, v0, Lcom/android/server/display/DisplayPowerController;->mLastScreenBrightnessSettingBeforeForceDim:F

    :cond_46c
    move v10, v11

    :goto_46d
    const/4 v5, 0x1

    goto :goto_489

    :cond_46f
    if-nez v5, :cond_487

    .line 2227
    iget-boolean v5, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    if-eqz v5, :cond_487

    const/4 v5, 0x0

    .line 2228
    iput-boolean v5, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    .line 2229
    iget v5, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessModeSetting:I

    if-nez v5, :cond_46c

    .line 2231
    iget v10, v0, Lcom/android/server/display/DisplayPowerController;->mLastScreenBrightnessSettingBeforeForceDim:F

    .line 2232
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/16 v5, 0x2000

    invoke-virtual {v3, v5, v10}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->addModifier(IF)V

    const/4 v3, 0x1

    goto :goto_46d

    :cond_487
    move v10, v11

    const/4 v5, 0x0

    .line 2239
    :goto_489
    iget-boolean v6, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    if-eqz v6, :cond_4b2

    const/4 v6, 0x0

    cmpl-float v11, v10, v6

    if-lez v11, :cond_4b2

    .line 2241
    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessMinimumDimAmount:F

    sub-float/2addr v10, v3

    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:F

    .line 2242
    invoke-static {v10, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 2241
    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 2244
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/16 v6, 0x1000

    invoke-virtual {v3, v6, v10}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->addModifier(IF)V

    const/4 v3, 0x1

    goto :goto_4b2

    :cond_4a8
    move/from16 v18, v3

    :cond_4aa
    move/from16 v16, v5

    move/from16 v19, v6

    move v3, v13

    move v11, v14

    move v10, v11

    const/4 v5, 0x0

    .line 2260
    :cond_4b2
    :goto_4b2
    iget-object v6, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    invoke-virtual {v6}, Lcom/android/server/display/BrightnessThrottler;->isThrottled()Z

    move-result v6

    if-eqz v6, :cond_4e1

    .line 2261
    iget-object v6, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/DisplayPowerController$BrightnessEvent;

    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    invoke-virtual {v11}, Lcom/android/server/display/BrightnessThrottler;->getBrightnessCap()F

    move-result v11

    iput v11, v6, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->thermalMax:F

    .line 2262
    iget-object v6, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    invoke-virtual {v6}, Lcom/android/server/display/BrightnessThrottler;->getBrightnessCap()F

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 2263
    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/16 v13, 0x8

    invoke-virtual {v11, v13, v6}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->addModifier(IF)V

    .line 2265
    iget-boolean v11, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedThrottling:Z

    if-nez v11, :cond_4dd

    const/4 v11, 0x1

    const/16 v18, 0x0

    goto :goto_4de

    :cond_4dd
    const/4 v11, 0x1

    .line 2270
    :goto_4de
    iput-boolean v11, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedThrottling:Z

    goto :goto_4e9

    .line 2271
    :cond_4e1
    iget-boolean v6, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedThrottling:Z

    if-eqz v6, :cond_4e8

    const/4 v6, 0x0

    .line 2272
    iput-boolean v6, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedThrottling:Z

    :cond_4e8
    move v6, v10

    :goto_4e9
    move/from16 v11, v18

    if-eqz v3, :cond_4f9

    .line 2275
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v13, 0x2

    if-eq v3, v13, :cond_4fa

    .line 2285
    invoke-virtual {v0, v6}, Lcom/android/server/display/DisplayPowerController;->updateScreenBrightnessSetting(F)Z

    move-result v3

    goto :goto_4fb

    :cond_4f9
    const/4 v13, 0x2

    :cond_4fa
    const/4 v3, 0x0

    .line 2291
    :goto_4fb
    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-ne v14, v13, :cond_523

    const/4 v13, 0x0

    cmpl-float v14, v6, v13

    if-lez v14, :cond_51a

    .line 2293
    iget v14, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessMinimumDimAmount:F

    sub-float/2addr v6, v14

    iget v14, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:F

    .line 2294
    invoke-static {v6, v14}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 2293
    invoke-static {v6, v13}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 2297
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v14, 0x1

    invoke-virtual {v13, v14, v6}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->addModifier(IF)V

    goto :goto_51b

    :cond_51a
    const/4 v14, 0x1

    .line 2300
    :goto_51b
    iget-boolean v13, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    if-nez v13, :cond_520

    const/4 v11, 0x0

    .line 2303
    :cond_520
    iput-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    goto :goto_52b

    .line 2304
    :cond_523
    iget-boolean v13, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    if-eqz v13, :cond_52b

    const/4 v13, 0x0

    .line 2306
    iput-boolean v13, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    const/4 v11, 0x0

    .line 2310
    :cond_52b
    :goto_52b
    iget v13, v0, Lcom/android/server/display/DisplayPowerController;->mLastOriginalTarget:F

    cmpl-float v13, v13, v6

    if-eqz v13, :cond_533

    .line 2311
    iput v6, v0, Lcom/android/server/display/DisplayPowerController;->mLastOriginalTarget:F

    .line 2314
    :cond_533
    invoke-virtual {v0, v6, v1}, Lcom/android/server/display/DisplayPowerController;->getFinalBrightness(FI)F

    move-result v6

    .line 2336
    iget-boolean v13, v0, Lcom/android/server/display/DisplayPowerController;->mForceSlowChange:Z

    if-eqz v13, :cond_543

    .line 2338
    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    const-string v13, "ForceSlowChange is requested, set slowChange as true"

    invoke-static {v11, v13}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x1

    .line 2347
    :cond_543
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    .line 2348
    invoke-virtual {v14}, Lcom/android/server/display/BrightnessThrottler;->getBrightnessMaxReason()I

    move-result v14

    .line 2347
    invoke-virtual {v13, v6, v10, v14}, Lcom/android/server/display/HighBrightnessModeController;->onBrightnessChanged(FFI)V

    .line 2353
    iget-boolean v10, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    if-nez v10, :cond_740

    .line 2354
    iget-boolean v10, v0, Lcom/android/server/display/DisplayPowerController;->mSkipScreenOnBrightnessRamp:Z

    if-eqz v10, :cond_586

    const/4 v10, 0x2

    if-ne v1, v10, :cond_583

    .line 2356
    iget v10, v0, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    if-nez v10, :cond_567

    iget-boolean v13, v0, Lcom/android/server/display/DisplayPowerController;->mDozing:Z

    if-eqz v13, :cond_567

    .line 2357
    iput v6, v0, Lcom/android/server/display/DisplayPowerController;->mInitialAutoBrightness:F

    const/4 v13, 0x1

    .line 2358
    iput v13, v0, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    goto :goto_586

    :cond_567
    const/4 v13, 0x1

    if-ne v10, v13, :cond_57a

    .line 2359
    iget-boolean v10, v0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v10, :cond_57a

    iget v10, v0, Lcom/android/server/display/DisplayPowerController;->mInitialAutoBrightness:F

    .line 2361
    invoke-static {v6, v10}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v10

    if-nez v10, :cond_57a

    const/4 v10, 0x2

    .line 2363
    iput v10, v0, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    goto :goto_586

    :cond_57a
    const/4 v10, 0x2

    .line 2364
    iget v13, v0, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    if-ne v13, v10, :cond_586

    const/4 v10, 0x0

    .line 2365
    iput v10, v0, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    goto :goto_586

    :cond_583
    const/4 v10, 0x0

    .line 2368
    iput v10, v0, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    :cond_586
    :goto_586
    const/4 v10, 0x5

    if-eq v1, v10, :cond_58e

    if-ne v4, v10, :cond_58c

    goto :goto_58e

    :cond_58c
    const/4 v10, 0x0

    goto :goto_58f

    :cond_58e
    :goto_58e
    const/4 v10, 0x1

    :goto_58f
    const/4 v13, 0x2

    if-ne v1, v13, :cond_598

    .line 2374
    iget v13, v0, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    if-eqz v13, :cond_598

    const/4 v13, 0x1

    goto :goto_599

    :cond_598
    const/4 v13, 0x0

    :goto_599
    if-eqz v9, :cond_5a3

    .line 2377
    iget-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mInitialAutoBrightnessUpdated:Z

    if-eqz v14, :cond_5a1

    if-eqz v15, :cond_5a3

    :cond_5a1
    const/4 v14, 0x1

    goto :goto_5a4

    :cond_5a3
    const/4 v14, 0x0

    .line 2384
    :goto_5a4
    invoke-static {v1}, Landroid/view/Display;->isDozeState(I)Z

    move-result v15

    if-eqz v15, :cond_5b2

    iget-boolean v15, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessBucketsInDozeConfig:Z

    if-eqz v15, :cond_5b2

    move/from16 v17, v8

    const/4 v15, 0x1

    goto :goto_5b5

    :cond_5b2
    move/from16 v17, v8

    const/4 v15, 0x0

    .line 2387
    :goto_5b5
    iget-boolean v8, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    if-eqz v8, :cond_5c9

    iget-object v8, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2388
    invoke-virtual {v8}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v8

    const/high16 v18, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v18

    if-nez v8, :cond_5c9

    move/from16 v18, v9

    const/4 v8, 0x1

    goto :goto_5cc

    :cond_5c9
    move/from16 v18, v9

    const/4 v8, 0x0

    .line 2389
    :goto_5cc
    iget-boolean v9, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryBrightness:Z

    if-nez v9, :cond_5d9

    iget-boolean v9, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    if-eqz v9, :cond_5d5

    goto :goto_5d9

    :cond_5d5
    move/from16 v20, v2

    const/4 v9, 0x0

    goto :goto_5dc

    :cond_5d9
    :goto_5d9
    move/from16 v20, v2

    const/4 v9, 0x1

    .line 2401
    :goto_5dc
    invoke-virtual {v0, v6}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightnessForFinal(F)F

    move-result v2

    move/from16 v21, v3

    .line 2410
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v3}, Lcom/android/server/display/HighBrightnessModeController;->getHighBrightnessMode()I

    move-result v3

    move/from16 v22, v6

    const/4 v6, 0x2

    if-ne v3, v6, :cond_617

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    iget v3, v3, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->modifier:I

    and-int/lit8 v23, v3, 0x1

    if-eqz v23, :cond_5f8

    and-int/2addr v3, v6

    if-nez v3, :cond_617

    .line 2414
    :cond_5f8
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v3}, Lcom/android/server/display/HighBrightnessModeController;->getHdrBrightnessValue()F

    move-result v3

    .line 2415
    iget-object v6, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    move/from16 v23, v12

    const/4 v12, 0x4

    invoke-virtual {v6, v12, v3}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->addModifier(IF)V

    .line 2419
    iget-object v6, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v6, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->maxBrightness:F

    cmpl-float v24, v3, v6

    if-ltz v24, :cond_61a

    .line 2421
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/16 v12, 0x20

    invoke-virtual {v3, v12, v6}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->addModifier(IF)V

    move v3, v6

    goto :goto_61a

    :cond_617
    move/from16 v23, v12

    move v3, v2

    .line 2427
    :cond_61a
    :goto_61a
    iget-object v6, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v6}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()F

    move-result v6

    .line 2428
    iget-object v12, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v12}, Lcom/android/server/display/DisplayPowerState;->getSdrScreenBrightness()F

    move-result v12

    .line 2434
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->shouldEnableMoreFastRampRateCase()Z

    move-result v24

    move/from16 v25, v7

    .line 2438
    iget-object v7, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 2439
    invoke-virtual {v7}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->getCurrentValue()F

    move-result v7

    .line 2438
    invoke-static {v7}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v7

    .line 2440
    invoke-static {v3}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v26

    sub-int v7, v7, v26

    .line 2438
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    move/from16 v26, v11

    const/4 v11, 0x1

    if-gt v7, v11, :cond_64f

    .line 2441
    iget-object v7, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 2442
    invoke-virtual {v7}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result v7

    if-nez v7, :cond_64f

    const/4 v7, 0x1

    goto :goto_650

    :cond_64f
    const/4 v7, 0x0

    .line 2445
    :goto_650
    invoke-virtual {v0, v3}, Lcom/android/server/display/DisplayPowerController;->isValidBrightnessValue(F)Z

    move-result v11

    if-eqz v11, :cond_6dd

    cmpl-float v6, v3, v6

    if-nez v6, :cond_65e

    cmpl-float v11, v2, v12

    if-eqz v11, :cond_6dd

    :cond_65e
    if-nez v13, :cond_6d7

    if-nez v15, :cond_6d7

    if-nez v10, :cond_6d7

    if-eqz v8, :cond_6d7

    if-eqz v9, :cond_66c

    .line 2448
    iget-boolean v8, v0, Lcom/android/server/display/DisplayPowerController;->mForceSlowChange:Z

    if-eqz v8, :cond_6d7

    :cond_66c
    const/4 v8, 0x1

    if-eq v4, v8, :cond_6d7

    .line 2450
    invoke-static {v4}, Landroid/view/Display;->isDozeState(I)Z

    move-result v4

    if-nez v4, :cond_6d7

    invoke-static {v1}, Landroid/view/Display;->isDozeState(I)Z

    move-result v4

    if-nez v4, :cond_6d7

    iget-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mPassRampAnimation:Z

    if-nez v4, :cond_6d7

    if-nez v14, :cond_6d7

    iget-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedScreenBrightnessOverride:Z

    if-eqz v4, :cond_695

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    iget-object v8, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    .line 2455
    invoke-virtual {v4, v8}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->isStartBrightnessChanged(Lcom/android/server/display/DisplayPowerController$BrightnessReason;)Z

    move-result v4

    if-eqz v4, :cond_695

    if-nez v24, :cond_695

    iget-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    if-eqz v4, :cond_6d7

    :cond_695
    if-nez v5, :cond_6d7

    if-eqz v7, :cond_69a

    goto :goto_6d7

    :cond_69a
    if-lez v6, :cond_69e

    const/4 v4, 0x1

    goto :goto_69f

    :cond_69e
    const/4 v4, 0x0

    :goto_69f
    if-eqz v4, :cond_6a8

    if-eqz v26, :cond_6a8

    .line 2474
    iget v4, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowIncrease:F

    :goto_6a5
    const/high16 v14, 0x7fc00000    # Float.NaN

    goto :goto_6c5

    :cond_6a8
    if-eqz v4, :cond_6af

    if-nez v26, :cond_6af

    .line 2476
    iget v4, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFastIncrease:F

    goto :goto_6a5

    :cond_6af
    if-nez v4, :cond_6c2

    if-eqz v26, :cond_6c2

    .line 2480
    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_6bc

    move/from16 v7, v25

    goto :goto_6be

    .line 2482
    :cond_6bc
    iget v7, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowDecrease:F

    :goto_6be
    move v4, v7

    move/from16 v14, v19

    goto :goto_6c5

    .line 2486
    :cond_6c2
    iget v4, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFastDecrease:F

    goto :goto_6a5

    :goto_6c5
    if-eqz v24, :cond_6c9

    .line 2491
    iget v4, v0, Lcom/android/server/display/DisplayPowerController;->mMoreFastRampRate:F

    .line 2495
    :cond_6c9
    iget-object v6, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-virtual {v6}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->getTarget()F

    move-result v6

    cmpl-float v6, v6, v3

    if-eqz v6, :cond_6e0

    .line 2496
    invoke-virtual {v0, v3, v2, v4, v14}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(FFFF)V

    goto :goto_6e0

    :cond_6d7
    :goto_6d7
    const/4 v4, 0x0

    .line 2465
    invoke-virtual {v0, v3, v2, v4, v4}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(FFFF)V

    move v14, v4

    goto :goto_6e0

    :cond_6dd
    const/4 v4, 0x0

    const/high16 v14, 0x7fc00000    # Float.NaN

    .line 2503
    :cond_6e0
    :goto_6e0
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-virtual {v2}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result v2

    if-nez v2, :cond_6ef

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mForceSlowChange:Z

    if-eqz v2, :cond_6ef

    const/4 v2, 0x0

    .line 2504
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mForceSlowChange:Z

    :cond_6ef
    if-nez v9, :cond_72a

    .line 2511
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v2, :cond_72a

    .line 2513
    invoke-virtual {v2}, Lcom/android/server/display/AutomaticBrightnessController;->isInIdleMode()Z

    move-result v2

    if-nez v2, :cond_72a

    if-eqz v30, :cond_715

    .line 2514
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v2, :cond_70f

    .line 2515
    invoke-virtual {v2}, Lcom/android/server/display/AutomaticBrightnessController;->hasValidAmbientLux()Z

    move-result v2

    if-eqz v2, :cond_70f

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 2516
    invoke-virtual {v2}, Lcom/android/server/display/AutomaticBrightnessController;->isHbmLux()Z

    move-result v2

    if-eqz v2, :cond_715

    :cond_70f
    move/from16 v7, v22

    move/from16 v6, v23

    const/4 v2, 0x0

    goto :goto_71b

    :cond_715
    move/from16 v7, v22

    move/from16 v6, v23

    move/from16 v2, v30

    .line 2521
    :goto_71b
    invoke-virtual {v0, v7, v2, v6}, Lcom/android/server/display/DisplayPowerController;->notifyBrightnessTrackerChanged(FZZ)V

    .line 2525
    iget-boolean v6, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    if-nez v6, :cond_724

    if-eqz v5, :cond_727

    :cond_724
    const/4 v5, 0x1

    .line 2526
    iput-boolean v5, v0, Lcom/android/server/display/DisplayPowerController;->mInitialAutoBrightnessUpdated:Z

    :cond_727
    move/from16 v30, v2

    goto :goto_72c

    :cond_72a
    move/from16 v7, v22

    :goto_72c
    if-eqz v21, :cond_737

    if-nez v30, :cond_737

    .line 2532
    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    if-nez v2, :cond_737

    .line 2535
    invoke-virtual {v0, v4, v14, v3}, Lcom/android/server/display/DisplayPowerController;->putAutoBrightnessTransitionTime(FFF)V

    .line 2541
    :cond_737
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessSetting()F

    move-result v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/DisplayPowerController;->saveBrightnessInfo(FF)Z

    move-result v2

    goto :goto_74f

    :cond_740
    move/from16 v20, v2

    move v7, v6

    move/from16 v17, v8

    move/from16 v18, v9

    .line 2543
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessSetting()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/display/DisplayPowerController;->saveBrightnessInfo(F)Z

    move-result v2

    :goto_74f
    if-eqz v2, :cond_754

    .line 2547
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->postBrightnessChangeRunnable()V

    .line 2551
    :cond_754
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_788

    if-eqz v20, :cond_761

    goto :goto_788

    .line 2556
    :cond_761
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    iget v2, v2, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->reason:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_785

    if-eqz v16, :cond_785

    .line 2558
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Brightness ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "] manual adjustment."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_785
    move/from16 v5, v20

    goto :goto_7c4

    .line 2552
    :cond_788
    :goto_788
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Brightness ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "] reason changing to: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    move/from16 v5, v20

    .line 2553
    invoke-virtual {v4, v5}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\', previous reason: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2552
    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2555
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->set(Lcom/android/server/display/DisplayPowerController$BrightnessReason;)V

    .line 2565
    :goto_7c4
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/DisplayPowerController$BrightnessEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->time:J

    .line 2566
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/DisplayPowerController$BrightnessEvent;

    iput v7, v2, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->brightness:F

    .line 2567
    iget-object v2, v2, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->reason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->set(Lcom/android/server/display/DisplayPowerController$BrightnessReason;)V

    .line 2568
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/DisplayPowerController$BrightnessEvent;

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v3}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMax()F

    move-result v3

    iput v3, v2, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->hbmMax:F

    .line 2569
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/DisplayPowerController$BrightnessEvent;

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v3}, Lcom/android/server/display/HighBrightnessModeController;->getHighBrightnessMode()I

    move-result v3

    iput v3, v2, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->hbmMode:I

    .line 2570
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/DisplayPowerController$BrightnessEvent;

    iget v3, v2, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->flags:I

    iget-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mIsRbcActive:Z

    or-int/2addr v3, v4

    iput v3, v2, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->flags:I

    .line 2573
    iget-object v3, v2, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->reason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    iget v3, v3, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->reason:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_806

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessEvent:Lcom/android/server/display/DisplayPowerController$BrightnessEvent;

    iget-object v3, v3, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->reason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    iget v3, v3, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->reason:I

    if-ne v3, v4, :cond_806

    const/4 v3, 0x1

    goto :goto_807

    :cond_806
    const/4 v3, 0x0

    .line 2576
    :goto_807
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessEvent:Lcom/android/server/display/DisplayPowerController$BrightnessEvent;

    invoke-virtual {v2, v4}, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->equalsMainData(Lcom/android/server/display/DisplayPowerController$BrightnessEvent;)Z

    move-result v2

    if-nez v2, :cond_811

    if-eqz v3, :cond_813

    :cond_811
    if-eqz v5, :cond_83e

    .line 2578
    :cond_813
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessEvent:Lcom/android/server/display/DisplayPowerController$BrightnessEvent;

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/DisplayPowerController$BrightnessEvent;

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->copyFrom(Lcom/android/server/display/DisplayPowerController$BrightnessEvent;)V

    .line 2579
    new-instance v2, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/DisplayPowerController$BrightnessEvent;

    invoke-direct {v2, v0, v3}, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$BrightnessEvent;)V

    .line 2583
    iput v5, v2, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->adjustmentFlags:I

    .line 2584
    iget v3, v2, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->flags:I

    if-eqz v16, :cond_829

    const/4 v13, 0x4

    goto :goto_82a

    :cond_829
    const/4 v13, 0x0

    :goto_82a
    or-int/2addr v3, v13

    iput v3, v2, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->flags:I

    .line 2585
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2587
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    if-eqz v3, :cond_83e

    .line 2588
    invoke-virtual {v3, v2}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 2593
    :cond_83e
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz v2, :cond_85f

    const/4 v2, 0x2

    if-ne v1, v2, :cond_859

    .line 2594
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    invoke-virtual {v2}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_859

    .line 2595
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setEnabled(Z)Z

    .line 2596
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    invoke-virtual {v2}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->updateDisplayColorTemperature()V

    goto :goto_85f

    .line 2598
    :cond_859
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setEnabled(Z)Z

    .line 2603
    :cond_85f
    :goto_85f
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mInteractiveModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v2, :cond_86a

    instance-of v2, v2, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;

    if-eqz v2, :cond_86a

    .line 2605
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->updateForceUpdateAbJob()V

    .line 2613
    :cond_86a
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v2, :cond_892

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    if-eqz v2, :cond_882

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 2615
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v2

    if-nez v2, :cond_892

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v2

    if-nez v2, :cond_892

    :cond_882
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    .line 2616
    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayPowerState;->waitUntilClean(Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_892

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnByAodReady:Z

    if-nez v2, :cond_892

    const/4 v2, 0x1

    goto :goto_893

    :cond_892
    const/4 v2, 0x0

    :goto_893
    if-eqz v2, :cond_89f

    .line 2618
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 2619
    invoke-virtual {v3}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result v3

    if-nez v3, :cond_89f

    const/4 v3, 0x1

    goto :goto_8a0

    :cond_89f
    const/4 v3, 0x0

    :goto_8a0
    if-eqz v2, :cond_8b4

    const/4 v4, 0x1

    if-eq v1, v4, :cond_8b4

    .line 2622
    iget v5, v0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-ne v5, v4, :cond_8b4

    const/4 v4, 0x2

    .line 2624
    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 2625
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v5, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    invoke-interface {v4, v5}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurnedOn(I)V

    :cond_8b4
    if-nez v3, :cond_8c4

    .line 2629
    iget-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    if-nez v4, :cond_8c4

    .line 2633
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mSuspendBlockerIdUnfinishedBusiness:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 2634
    iput-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    :cond_8c4
    if-eqz v18, :cond_8d1

    .line 2638
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 2639
    invoke-virtual {v4}, Lcom/android/server/display/AutomaticBrightnessController;->isAmbientLuxValid()Z

    move-result v4

    if-eqz v4, :cond_8cf

    goto :goto_8d1

    :cond_8cf
    const/4 v4, 0x0

    goto :goto_8d2

    :cond_8d1
    :goto_8d1
    const/4 v4, 0x1

    :goto_8d2
    if-eqz v2, :cond_8ea

    if-eqz v17, :cond_8ea

    if-eqz v4, :cond_8ea

    .line 2646
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2647
    :try_start_8db
    iget-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez v4, :cond_8e2

    const/4 v4, 0x1

    .line 2648
    iput-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 2654
    :cond_8e2
    monitor-exit v2
    :try_end_8e3
    .catchall {:try_start_8db .. :try_end_8e3} :catchall_8e7

    .line 2655
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnStateChangedWithWakelock()V

    goto :goto_8ea

    :catchall_8e7
    move-exception v0

    .line 2654
    :try_start_8e8
    monitor-exit v2
    :try_end_8e9
    .catchall {:try_start_8e8 .. :try_end_8e9} :catchall_8e7

    throw v0

    :cond_8ea
    :goto_8ea
    if-eqz v3, :cond_923

    .line 2659
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    if-eqz v2, :cond_923

    const/4 v2, 0x2

    if-ne v1, v2, :cond_917

    .line 2664
    sget-object v2, Lcom/android/server/power/PowerManagerUtil;->sCurrentScreenOnProfiler:Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;

    .line 2665
    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_917

    iget-boolean v3, v2, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->saved:Z

    if-nez v3, :cond_917

    const/4 v3, 0x1

    .line 2667
    iput-boolean v3, v2, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->saved:Z

    .line 2668
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->TAG:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2669
    sget-object v4, Lcom/android/server/power/PowerManagerUtil;->sScreenOnProfiler:Lcom/android/internal/util/RingBuffer;

    new-instance v6, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;

    invoke-direct {v6, v2}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;-><init>(Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;)V

    invoke-virtual {v4, v6}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    goto :goto_919

    :cond_917
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 2672
    :goto_919
    iput-boolean v5, v0, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    .line 2673
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mSuspendBlockerIdUnfinishedBusiness:Ljava/lang/String;

    invoke-interface {v2, v4}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker(Ljava/lang/String;)V

    goto :goto_925

    :cond_923
    const/4 v3, 0x1

    const/4 v5, 0x0

    :goto_925
    const/4 v2, 0x2

    if-eq v1, v2, :cond_92a

    move v2, v3

    goto :goto_92b

    :cond_92a
    move v2, v5

    .line 2677
    :goto_92b
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mDozing:Z

    .line 2679
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    move/from16 v7, v32

    if-eq v7, v1, :cond_938

    .line 2680
    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController;->logDisplayPolicyChanged(I)V

    :cond_938
    return-void

    :catchall_939
    move-exception v0

    .line 1754
    :try_start_93a
    monitor-exit v1
    :try_end_93b
    .catchall {:try_start_93a .. :try_end_93b} :catchall_939

    throw v0
.end method

.method public final updateScreenBrightnessLevelDuration(F)V
    .registers 7

    .line 5051
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    if-eqz v0, :cond_5

    goto :goto_45

    .line 5053
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 5054
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    .line 5055
    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v0, v3, :cond_19

    if-ne v0, v4, :cond_45

    :cond_19
    if-ne v1, v4, :cond_45

    const/4 v0, -0x1

    .line 5060
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:F

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_24

    const/4 v4, 0x0

    goto :goto_32

    :cond_24
    const/16 p1, 0xe6

    const/16 v1, 0xff

    if-lt v2, p1, :cond_2e

    if-gt v2, v1, :cond_2e

    const/4 v4, 0x1

    goto :goto_32

    :cond_2e
    if-le v2, v1, :cond_31

    goto :goto_32

    :cond_31
    move v4, v0

    .line 5068
    :goto_32
    iget p1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessLevelBin:I

    if-eq p1, v4, :cond_45

    if-ltz v4, :cond_40

    .line 5070
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessLevelTriggeredTime:[J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    aput-wide v0, p1, v4

    .line 5072
    :cond_40
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->addScreenBrightnessLevelDuration()V

    .line 5073
    iput v4, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessLevelBin:I

    :cond_45
    :goto_45
    return-void
.end method

.method public final updateScreenBrightnessSetting(F)Z
    .registers 3

    .line 3578
    invoke-static {p1}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(F)F

    move-result p1

    .line 3580
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->isValidBrightnessValue(F)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_11

    goto :goto_1b

    .line 3587
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->setCurrentScreenBrightness(F)V

    .line 3588
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessSetting;->setBrightness(F)V

    const/4 p0, 0x1

    return p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x0

    return p0
.end method

.method public final updateUserSetScreenBrightness()Z
    .registers 5

    .line 3627
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2b

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:F

    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gez v2, :cond_11

    goto :goto_2b

    .line 3631
    :cond_11
    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:F

    cmpl-float v2, v2, v0

    const/high16 v3, 0x7fc00000    # Float.NaN

    if-nez v2, :cond_1e

    .line 3632
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:F

    .line 3633
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:F

    return v1

    .line 3636
    :cond_1e
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerController;->setCurrentScreenBrightness(F)V

    .line 3637
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:F

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mLastUserSetScreenBrightness:F

    .line 3638
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:F

    .line 3639
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:F

    const/4 p0, 0x1

    return p0

    :cond_2b
    :goto_2b
    return v1
.end method

.method public updateWhiteBalance()V
    .registers 1

    .line 4364
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method
