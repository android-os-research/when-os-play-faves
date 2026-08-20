.class public Lcom/android/server/display/AutomaticBrightnessController;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/AutomaticBrightnessController$Injector;,
        Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;,
        Lcom/android/server/display/AutomaticBrightnessController$Clock;,
        Lcom/android/server/display/AutomaticBrightnessController$Callbacks;,
        Lcom/android/server/display/AutomaticBrightnessController$TaskStackListenerImpl;,
        Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;
    }
.end annotation


# static fields
.field public static final AMBIENT_BRIGHTNESS_THRESHOLD_DEFAULT:I = 0x0

.field public static final AMBIENT_BRIGHTNESS_THRESHOLD_TOUCH_HIGH:I = 0x1

.field public static final AMBIENT_BRIGHTNESS_THRESHOLD_TOUCH_LOW:I = 0x2

.field public static final AMBIENT_LIGHT_LONG_HORIZON_MILLIS:I = 0x9c4

.field public static final AMBIENT_LIGHT_PREDICTION_TIME_MILLIS:J = 0x64L

.field public static final AMBIENT_LIGHT_SHORT_HORIZON_MILLIS:I = 0x258

.field public static final AUTO_BRIGHTNESS_DISABLED:I = 0x2

.field public static final AUTO_BRIGHTNESS_ENABLED:I = 0x1

.field public static final AUTO_BRIGHTNESS_OFF_DUE_TO_DISPLAY_STATE:I = 0x3

.field public static final BRIGHTENING_DEBOUNCE_AT_USER_BRIGHTNESS_CHANGE:J = 0x9c4L

.field public static final BRIGHTNESS_ADJUSTMENT_SAMPLE_DEBOUNCE_MILLIS:I = 0x2710

.field public static final COVER_LUX_PATH:Ljava/lang/String; = "/sys/class/lcd/panel1/lux"

.field public static final DEBUG_PRETEND_LIGHT_SENSOR_ABSENT:Z = false

.field public static final FRONT_REAR_LUX_DIFF_THRESHOLD:F = 5.0f

.field public static final LIGHT_SENSOR_POSITION_UPDATE_DELAY_MILLS:J = 0x12cL

.field public static final MDNIE_LUX_PATH:Ljava/lang/String; = "/sys/class/lcd/panel/lux"

.field public static final MSG_BRIGHTNESS_ADJUSTMENT_SAMPLE:I = 0x2

.field public static final MSG_HANDLE_SENSOR_TIMEOUT:I = 0x7

.field public static final MSG_INVALIDATE_SHORT_TERM_MODEL:I = 0x3

.field public static final MSG_RUN_UPDATE:I = 0x6

.field public static final MSG_UPDATE_AMBIENT_LUX:I = 0x1

.field public static final MSG_UPDATE_FOREGROUND_APP:I = 0x4

.field public static final MSG_UPDATE_FOREGROUND_APP_SYNC:I = 0x5

.field public static final PROXIMITY_NEGATIVE:I = 0x0

.field public static final PROXIMITY_POSITIVE:I = 0x1

.field public static final PROXIMITY_SENSOR_DEBOUNCE_DELAY:I = 0xc8

.field public static final PROXIMITY_UNKNOWN:I = -0x1

.field public static final REAR_LUX_THRESHOLD:F = 50.0f

.field public static final TAG:Ljava/lang/String; = "AutomaticBrightnessController"

.field public static final TOUCH_LIGHT_PROXIMITY_POSITIVE:F = 21.0f

.field public static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f


# instance fields
.field public final ACTION_CAMERA_ADAPTIVE_BRIGHTNESS:Ljava/lang/String;

.field public final LIGHT_SENSOR_UPDATE_TIMEOUT_MILLIS:J

.field public final TAG_CAB:Ljava/lang/String;

.field public mActivityTaskManager:Landroid/app/IActivityTaskManager;

.field public mAmbientBrighteningThreshold:F

.field public final mAmbientBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

.field public final mAmbientBrightnessThresholdsTouchHigh:Lcom/android/server/display/HysteresisLevels;

.field public final mAmbientBrightnessThresholdsTouchLow:Lcom/android/server/display/HysteresisLevels;

.field public mAmbientDarkeningThreshold:F

.field public final mAmbientLightHorizonLong:I

.field public final mAmbientLightHorizonShort:I

.field public mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

.field public mAmbientLux:F

.field public mAmbientLuxValid:Z

.field public mBrighteningLightDebounceConfig:J

.field public mBrightnessAdjustmentSampleOldBrightness:F

.field public mBrightnessAdjustmentSampleOldLux:F

.field public mBrightnessAdjustmentSamplePending:Z

.field public mBrightnessThresoldsType:I

.field public mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

.field public final mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

.field public mClock:Lcom/android/server/display/AutomaticBrightnessController$Clock;

.field public mContext:Landroid/content/Context;

.field public mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field public mCurrentLightSensorRate:I

.field public mDarkeningLightDebounceConfig:J

.field public mDexDualViewMode:Z

.field public mDisplayPolicy:I

.field public final mDozeScaleFactor:F

.field public mDualScreenPolicy:I

.field public mEnableForManualBrightnessMode:Z

.field public mForceUpdateBrightness:Z

.field public mForegroundAppCategory:I

.field public mForegroundAppPackageName:Ljava/lang/String;

.field public mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

.field public mHbmController:Lcom/android/server/display/HighBrightnessModeController;

.field public final mHbmLux:I

.field public final mIdleModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field public final mInitialLightSensorRate:I

.field public final mInjector:Lcom/android/server/display/AutomaticBrightnessController$Injector;

.field public mIntentReceiver:Landroid/content/BroadcastReceiver;

.field public final mInteractiveModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field public mIsBrightnessThrottled:Z

.field public mIsCameraLightTypeSupported:Z

.field public mIsFlickerLightSensorSupported:Z

.field public mIsLightSensorOnFoldingSide:Z

.field public mIsLightSensorPositionUpdated:Z

.field public mIsRearLightSensor:Z

.field public mIsUnderDisplayLightSensor:Z

.field public mLastAmbientLuxOfFrontLightSensor:F

.field public mLastHBM:Z

.field public mLastObservedLux:F

.field public mLastObservedLuxTime:J

.field public final mLightSensor:Landroid/hardware/Sensor;

.field public mLightSensorCct:Landroid/hardware/Sensor;

.field public mLightSensorEnableTime:J

.field public mLightSensorEnabled:Z

.field public final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field public mLightSensorPositionUpdatedTime:J

.field public mLightSensorWarmUpTimeConfig:I

.field public mLoggedAmbientLux:F

.field public mLoggingEnabled:Z

.field public mMinLuxUpdated:Z

.field public mNonInteractiveTime:J

.field public final mNormalLightSensorRate:I

.field public final mOnProximityChangedRunnable:Ljava/lang/Runnable;

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mPendingEarlyLightSensorReadyListener:Ljava/lang/Runnable;

.field public mPendingForegroundAppCategory:I

.field public mPendingForegroundAppPackageName:Ljava/lang/String;

.field public mPendingProximity:I

.field public final mPowerHistorian:Lcom/android/server/power/PowerHistorian;

.field public mPreThresholdBrightness:F

.field public mPreThresholdLux:F

.field public mProximity:I

.field public mProximitySensor:Landroid/hardware/Sensor;

.field public mProximitySensorEnabled:Z

.field public final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field public mProximityThreshold:F

.field public mRecentLightSamples:I

.field public final mResetAmbientLuxAfterWarmUpConfig:Z

.field public mScreenAutoBrightness:F

.field public mScreenBrighteningThreshold:F

.field public final mScreenBrightnessRangeMaximum:F

.field public final mScreenBrightnessRangeMinimum:F

.field public final mScreenBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

.field public mScreenDarkeningThreshold:F

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public mSetScreenBrightnessByUserTime:J

.field public mShortTermModelAnchor:F

.field public mShortTermModelValid:Z

.field public mShouldApplyEarlyWakeUp:Z

.field public mState:I

.field public mTaskStackListener:Lcom/android/server/display/AutomaticBrightnessController$TaskStackListenerImpl;

.field public mUseLightSensorBlockingPrevention:Z

.field public final mWeightingIntercept:I

.field public onCABServiceStart:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmActivityTaskManager(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/app/IActivityTaskManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAmbientLightRingBuffer(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAmbientLuxValid(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmClock(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$Clock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mClock:Lcom/android/server/display/AutomaticBrightnessController$Clock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDualScreenPolicy(Lcom/android/server/display/AutomaticBrightnessController;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDualScreenPolicy:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmForegroundAppPackageName(Lcom/android/server/display/AutomaticBrightnessController;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsRearLightSensor(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsRearLightSensor:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsUnderDisplayLightSensor(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsUnderDisplayLightSensor:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLightSensorEnabled(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageManager(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/content/pm/PackageManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingProximity(Lcom/android/server/display/AutomaticBrightnessController;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingProximity:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProximitySensor(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/Sensor;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProximitySensorEnabled(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensorEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProximityThreshold(Lcom/android/server/display/AutomaticBrightnessController;)F
    .registers 1

    iget p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximityThreshold:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsLightSensorPositionUpdated(Lcom/android/server/display/AutomaticBrightnessController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsLightSensorPositionUpdated:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsRearLightSensor(Lcom/android/server/display/AutomaticBrightnessController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsRearLightSensor:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLightSensorPositionUpdatedTime(Lcom/android/server/display/AutomaticBrightnessController;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorPositionUpdatedTime:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmMinLuxUpdated(Lcom/android/server/display/AutomaticBrightnessController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mMinLuxUpdated:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPendingForegroundAppCategory(Lcom/android/server/display/AutomaticBrightnessController;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppCategory:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPendingForegroundAppPackageName(Lcom/android/server/display/AutomaticBrightnessController;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppPackageName:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmProximity(Lcom/android/server/display/AutomaticBrightnessController;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximity:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRecentLightSamples(Lcom/android/server/display/AutomaticBrightnessController;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputonCABServiceStart(Lcom/android/server/display/AutomaticBrightnessController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->onCABServiceStart:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcollectBrightnessAdjustmentSample(Lcom/android/server/display/AutomaticBrightnessController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->collectBrightnessAdjustmentSample()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleLightSensorEvent(Lcom/android/server/display/AutomaticBrightnessController;JF)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController;->handleLightSensorEvent(JF)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleProximitySensorEvent(Lcom/android/server/display/AutomaticBrightnessController;JZ)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController;->handleProximitySensorEvent(JZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleSensorTimeout(Lcom/android/server/display/AutomaticBrightnessController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->handleSensorTimeout()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minvalidateShortTermModel(Lcom/android/server/display/AutomaticBrightnessController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->invalidateShortTermModel()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateAmbientLux(Lcom/android/server/display/AutomaticBrightnessController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateAutoBrightness(Lcom/android/server/display/AutomaticBrightnessController;ZZ)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(ZZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateForegroundApp(Lcom/android/server/display/AutomaticBrightnessController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->updateForegroundApp()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateForegroundAppSync(Lcom/android/server/display/AutomaticBrightnessController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->updateForegroundAppSync()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Lcom/android/server/display/BrightnessMappingStrategy;IFFFIIJJZLcom/android/server/display/HysteresisLevels;Lcom/android/server/display/HysteresisLevels;Landroid/content/Context;Lcom/android/server/display/HighBrightnessModeController;Lcom/android/server/display/BrightnessThrottler;Lcom/android/server/display/BrightnessMappingStrategy;IILcom/android/server/display/HysteresisLevels;Lcom/android/server/display/HysteresisLevels;I)V
    .registers 58

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-wide/from16 v13, p12

    move-wide/from16 v15, p14

    move/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move/from16 v24, p23

    move/from16 v25, p24

    move-object/from16 v26, p25

    move-object/from16 v27, p26

    move/from16 v28, p27

    .line 398
    new-instance v29, Lcom/android/server/display/AutomaticBrightnessController$Injector;

    move-object/from16 v1, v29

    invoke-direct/range {v29 .. v29}, Lcom/android/server/display/AutomaticBrightnessController$Injector;-><init>()V

    invoke-direct/range {v0 .. v28}, Lcom/android/server/display/AutomaticBrightnessController;-><init>(Lcom/android/server/display/AutomaticBrightnessController$Injector;Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Lcom/android/server/display/BrightnessMappingStrategy;IFFFIIJJZLcom/android/server/display/HysteresisLevels;Lcom/android/server/display/HysteresisLevels;Landroid/content/Context;Lcom/android/server/display/HighBrightnessModeController;Lcom/android/server/display/BrightnessThrottler;Lcom/android/server/display/BrightnessMappingStrategy;IILcom/android/server/display/HysteresisLevels;Lcom/android/server/display/HysteresisLevels;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/AutomaticBrightnessController$Injector;Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Lcom/android/server/display/BrightnessMappingStrategy;IFFFIIJJZLcom/android/server/display/HysteresisLevels;Lcom/android/server/display/HysteresisLevels;Landroid/content/Context;Lcom/android/server/display/HighBrightnessModeController;Lcom/android/server/display/BrightnessThrottler;Lcom/android/server/display/BrightnessMappingStrategy;IILcom/android/server/display/HysteresisLevels;Lcom/android/server/display/HysteresisLevels;I)V
    .registers 42
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move/from16 v4, p11

    move/from16 v5, p25

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v6, "[CAB] "

    .line 97
    iput-object v6, v0, Lcom/android/server/display/AutomaticBrightnessController;->TAG_CAB:Ljava/lang/String;

    const-string v6, "com.samsung.adaptivebrightnessgo.action.SET_LUX"

    .line 98
    iput-object v6, v0, Lcom/android/server/display/AutomaticBrightnessController;->ACTION_CAMERA_ADAPTIVE_BRIGHTNESS:Ljava/lang/String;

    const-wide/16 v7, 0x320

    .line 125
    iput-wide v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->LIGHT_SENSOR_UPDATE_TIMEOUT_MILLIS:J

    const/4 v7, 0x0

    .line 204
    iput v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessThresoldsType:I

    const/high16 v8, 0x43fa0000    # 500.0f

    .line 225
    iput v8, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 227
    iput v8, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggedAmbientLux:F

    .line 252
    iput-boolean v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLastHBM:Z

    const/high16 v8, 0x7fc00000    # Float.NaN

    .line 270
    iput v8, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    .line 274
    iput v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPolicy:I

    const/4 v8, 0x2

    .line 308
    iput v8, v0, Lcom/android/server/display/AutomaticBrightnessController;->mState:I

    const/4 v8, -0x1

    .line 327
    iput v8, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDualScreenPolicy:I

    .line 332
    iput-boolean v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDexDualViewMode:Z

    .line 334
    iput-boolean v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mShouldApplyEarlyWakeUp:Z

    const/4 v9, 0x0

    .line 335
    iput-object v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingEarlyLightSensorReadyListener:Ljava/lang/Runnable;

    .line 340
    iput-boolean v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mIsCameraLightTypeSupported:Z

    .line 342
    new-instance v10, Lcom/android/server/display/AutomaticBrightnessController$1;

    invoke-direct {v10, p0}, Lcom/android/server/display/AutomaticBrightnessController$1;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 376
    iput v8, v0, Lcom/android/server/display/AutomaticBrightnessController;->mProximity:I

    .line 377
    iput v8, v0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingProximity:I

    .line 382
    invoke-static {}, Lcom/android/server/power/PowerHistorian;->getInstance()Lcom/android/server/power/PowerHistorian;

    move-result-object v10

    iput-object v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mPowerHistorian:Lcom/android/server/power/PowerHistorian;

    .line 2025
    new-instance v10, Lcom/android/server/display/AutomaticBrightnessController$3;

    invoke-direct {v10, p0}, Lcom/android/server/display/AutomaticBrightnessController$3;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mOnProximityChangedRunnable:Ljava/lang/Runnable;

    .line 2035
    new-instance v10, Lcom/android/server/display/AutomaticBrightnessController$4;

    invoke-direct {v10, p0}, Lcom/android/server/display/AutomaticBrightnessController$4;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 2102
    new-instance v10, Lcom/android/server/display/AutomaticBrightnessController$5;

    invoke-direct {v10, p0}, Lcom/android/server/display/AutomaticBrightnessController$5;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    move-object v10, p1

    .line 426
    iput-object v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mInjector:Lcom/android/server/display/AutomaticBrightnessController$Injector;

    .line 427
    invoke-virtual {p1}, Lcom/android/server/display/AutomaticBrightnessController$Injector;->createClock()Lcom/android/server/display/AutomaticBrightnessController$Clock;

    move-result-object v10

    iput-object v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mClock:Lcom/android/server/display/AutomaticBrightnessController$Clock;

    move-object/from16 v10, p20

    .line 428
    iput-object v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    move-object v10, p2

    .line 429
    iput-object v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    .line 430
    iput-object v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 431
    iput-object v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    move/from16 v10, p8

    .line 432
    iput v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:F

    move/from16 v10, p9

    .line 433
    iput v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:F

    move/from16 v10, p7

    .line 434
    iput v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    move/from16 v10, p10

    .line 435
    iput v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDozeScaleFactor:F

    .line 436
    iput v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mNormalLightSensorRate:I

    move/from16 v10, p12

    .line 437
    iput v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialLightSensorRate:I

    .line 438
    iput v8, v0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    const-wide/16 v10, 0x3e8

    .line 439
    iput-wide v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    const-wide/16 v10, 0x7d0

    .line 440
    iput-wide v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    move/from16 v10, p17

    .line 441
    iput-boolean v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mResetAmbientLuxAfterWarmUpConfig:Z

    .line 442
    iput v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizonLong:I

    move/from16 v10, p24

    .line 443
    iput v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizonShort:I

    .line 444
    iput v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mWeightingIntercept:I

    move-object/from16 v10, p18

    .line 445
    iput-object v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

    move-object/from16 v10, p26

    .line 447
    iput-object v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholdsTouchHigh:Lcom/android/server/display/HysteresisLevels;

    move-object/from16 v10, p27

    .line 448
    iput-object v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholdsTouchLow:Lcom/android/server/display/HysteresisLevels;

    move-object/from16 v10, p19

    .line 450
    iput-object v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

    const/4 v10, 0x1

    .line 451
    iput-boolean v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelValid:Z

    const/high16 v11, -0x40800000    # -1.0f

    .line 452
    iput v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelAnchor:F

    move/from16 v11, p28

    .line 453
    iput v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mHbmLux:I

    .line 454
    invoke-virtual {p0, v7}, Lcom/android/server/display/AutomaticBrightnessController;->notifyHbmInfo(Z)V

    .line 456
    new-instance v7, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    move-object/from16 v11, p3

    invoke-direct {v7, p0, v11}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;-><init>(Lcom/android/server/display/AutomaticBrightnessController;Landroid/os/Looper;)V

    iput-object v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    .line 457
    new-instance v7, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    int-to-long v11, v4

    iget-object v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mClock:Lcom/android/server/display/AutomaticBrightnessController$Clock;

    invoke-direct {v7, v11, v12, v5, v4}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;-><init>(JILcom/android/server/display/AutomaticBrightnessController$Clock;)V

    iput-object v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    .line 461
    iput-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_110

    .line 465
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_101

    const v5, 0x10041

    if-eq v4, v5, :cond_fe

    const v5, 0x10044

    const-string v7, "AutomaticBrightnessController"

    if-eq v4, v5, :cond_f6

    const v5, 0x10069

    if-eq v4, v5, :cond_f3

    const-string v4, "Not found pre-defined light sensor"

    .line 480
    invoke-static {v7, v4}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10a

    .line 473
    :cond_f3
    iput-boolean v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mIsFlickerLightSensorSupported:Z

    goto :goto_10a

    :cond_f6
    const-string v4, "Using SEM_TYPE_CAMERA_LIGHT for ABC"

    .line 476
    invoke-static {v7, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iput-boolean v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mIsCameraLightTypeSupported:Z

    goto :goto_10a

    .line 470
    :cond_fe
    iput-boolean v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mIsUnderDisplayLightSensor:Z

    goto :goto_10a

    :cond_101
    const v4, 0x10033

    .line 467
    invoke-virtual {v1, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorCct:Landroid/hardware/Sensor;

    .line 482
    :goto_10a
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/Sensor;->semIsOnFoldingSide()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mIsLightSensorOnFoldingSide:Z

    .line 488
    :cond_110
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->CAMERA_ADAPTIVE_BRIGHTNESS_SUPPORTED:Z

    const-wide/16 v4, 0x0

    if-eqz v2, :cond_130

    .line 489
    iput-wide v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    .line 490
    iput-wide v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    .line 491
    iput-boolean v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 492
    iput-boolean v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mForceUpdateBrightness:Z

    .line 494
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 495
    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 496
    iget-object v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const-string v6, "com.samsung.adaptivebrightnessgo.permission.ADAPTIVE_BRIGHTNESS_PERMISSION"

    invoke-virtual {v4, v5, v2, v6, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_13c

    .line 497
    :cond_130
    iget-boolean v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mIsCameraLightTypeSupported:Z

    if-eqz v2, :cond_13c

    .line 498
    iput-wide v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    .line 499
    iput-wide v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    .line 500
    iput-boolean v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 501
    iput-boolean v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mForceUpdateBrightness:Z

    .line 506
    :cond_13c
    :goto_13c
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_TABLET:Z

    if-eqz v2, :cond_178

    const/16 v2, 0x8

    .line 507
    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_189

    .line 509
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Palm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_175

    iget-object v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 510
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ear"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_175

    .line 511
    iput-boolean v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mUseLightSensorBlockingPrevention:Z

    .line 512
    iget-object v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mProximityThreshold:F

    goto :goto_189

    .line 515
    :cond_175
    iput-object v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    goto :goto_189

    .line 518
    :cond_178
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_LIGHT_SENSOR_BLOCKING_PREVENTION_MULTI:Z

    if-eqz v2, :cond_189

    const v2, 0x10068

    .line 519
    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_189

    .line 521
    iput-boolean v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mUseLightSensorBlockingPrevention:Z

    .line 526
    :cond_189
    :goto_189
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 527
    iget-object v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 528
    new-instance v1, Lcom/android/server/display/AutomaticBrightnessController$TaskStackListenerImpl;

    invoke-direct {v1, p0}, Lcom/android/server/display/AutomaticBrightnessController$TaskStackListenerImpl;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mTaskStackListener:Lcom/android/server/display/AutomaticBrightnessController$TaskStackListenerImpl;

    .line 529
    iput-object v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppPackageName:Ljava/lang/String;

    .line 530
    iput-object v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppPackageName:Ljava/lang/String;

    .line 531
    iput v8, v0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppCategory:I

    .line 532
    iput v8, v0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppCategory:I

    move-object/from16 v1, p21

    .line 533
    iput-object v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    move-object/from16 v1, p22

    .line 534
    iput-object v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    .line 535
    iput-object v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mInteractiveModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    move-object/from16 v1, p23

    .line 536
    iput-object v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mIdleModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 538
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->switchToInteractiveScreenBrightnessMode()V

    return-void
.end method

.method public static isInteractivePolicy(I)Z
    .registers 2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_c

    const/4 v0, 0x2

    if-eq p0, v0, :cond_c

    const/4 v0, 0x4

    if-ne p0, v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 p0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 p0, 0x1

    :goto_d
    return p0
.end method


# virtual methods
.method public final adjustLightSensorRate(I)V
    .registers 5

    .line 1087
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    if-eq p1, v0, :cond_3e

    .line 1088
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v0, :cond_28

    .line 1089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adjustLightSensorRate: previousRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutomaticBrightnessController"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    :cond_28
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    .line 1094
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1095
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    mul-int/lit16 p1, p1, 0x3e8

    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v0, v1, v2, p1, p0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    :cond_3e
    return-void
.end method

.method public appliedShortTermModel()Z
    .registers 2

    .line 1919
    iget p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelAnchor:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public final applyLightSensorMeasurement(JF)V
    .registers 7

    .line 1076
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    .line 1077
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizonLong:I

    int-to-long v1, v1

    sub-long v1, p1, v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->prune(J)V

    .line 1078
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->push(JF)V

    .line 1081
    iput p3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    .line 1082
    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLuxTime:J

    return-void
.end method

.method public final calculateAmbientLux(JJ)F
    .registers 21

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    .line 1164
    iget-boolean v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    const-string v6, ")"

    const-string v7, ", "

    const-string v8, "AutomaticBrightnessController"

    if-eqz v5, :cond_2d

    .line 1165
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "calculateAmbientLux("

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    :cond_2d
    iget-object v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v5}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v5

    if-nez v5, :cond_3d

    const-string v0, "calculateAmbientLux: No ambient light readings available"

    .line 1169
    invoke-static {v8, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, -0x40800000    # -1.0f

    return v0

    .line 1174
    :cond_3d
    sget-boolean v9, Lcom/android/server/power/PowerManagerUtil;->CAMERA_ADAPTIVE_BRIGHTNESS_SUPPORTED:Z

    if-nez v9, :cond_114

    iget-boolean v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mIsCameraLightTypeSupported:Z

    if-eqz v9, :cond_47

    goto/16 :goto_114

    :cond_47
    sub-long v3, v1, v3

    const/4 v9, 0x0

    move v10, v9

    :goto_4b
    add-int/lit8 v11, v5, -0x1

    if-ge v9, v11, :cond_5e

    .line 1183
    iget-object v12, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v12, v9}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v12

    cmp-long v12, v12, v3

    if-gtz v12, :cond_5e

    add-int/lit8 v10, v10, 0x1

    goto :goto_4b

    .line 1189
    :cond_5e
    iget-boolean v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v5, :cond_93

    .line 1190
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "calculateAmbientLux: selected endIndex="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", point=("

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    .line 1191
    invoke-virtual {v9, v10}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    .line 1192
    invoke-virtual {v9, v10}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1190
    invoke-static {v8, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_93
    const-wide/16 v5, 0x64

    const/4 v9, 0x0

    move v12, v11

    move v11, v9

    :goto_98
    if-lt v12, v10, :cond_f0

    .line 1198
    iget-object v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v13, v12}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v13

    if-ne v12, v10, :cond_a7

    cmp-long v15, v13, v3

    if-gez v15, :cond_a7

    move-wide v13, v3

    :cond_a7
    sub-long/2addr v13, v1

    .line 1205
    invoke-virtual {v0, v13, v14, v5, v6}, Lcom/android/server/display/AutomaticBrightnessController;->calculateWeight(JJ)F

    move-result v15

    .line 1206
    iget-object v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v1, v12}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v1

    .line 1207
    iget-boolean v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v2, :cond_e3

    .line 1208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 p3, v3

    const-string v3, "calculateAmbientLux: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "]: lux="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", weight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e5

    :cond_e3
    move-wide/from16 p3, v3

    :goto_e5
    add-float/2addr v9, v15

    mul-float/2addr v1, v15

    add-float/2addr v11, v1

    add-int/lit8 v12, v12, -0x1

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide v5, v13

    goto :goto_98

    .line 1216
    :cond_f0
    iget-boolean v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v0, :cond_112

    .line 1217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calculateAmbientLux: totalWeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", newAmbientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-float v1, v11, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_112
    div-float/2addr v11, v9

    return v11

    .line 1175
    :cond_114
    :goto_114
    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v0

    return v0
.end method

.method public final calculateWeight(JJ)F
    .registers 5

    .line 1225
    invoke-virtual {p0, p3, p4}, Lcom/android/server/display/AutomaticBrightnessController;->weightIntegral(J)F

    move-result p3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessController;->weightIntegral(J)F

    move-result p0

    sub-float/2addr p3, p0

    return p3
.end method

.method public final cancelBrightnessAdjustmentSample()V
    .registers 2

    .line 1567
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    .line 1568
    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    .line 1569
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_d
    return-void
.end method

.method public final clampScreenBrightness(F)F
    .registers 3

    .line 1548
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 1549
    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMin()F

    move-result v0

    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMax()F

    move-result p0

    .line 1548
    invoke-static {p1, v0, p0}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p0

    return p0
.end method

.method public final collectBrightnessAdjustmentSample()V
    .registers 5

    .line 1574
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    if-eqz v0, :cond_72

    const/4 v0, 0x0

    .line 1575
    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    .line 1576
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-eqz v1, :cond_72

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-gez v3, :cond_16

    cmpl-float v1, v1, v2

    if-nez v1, :cond_72

    .line 1578
    :cond_16
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v1, :cond_46

    .line 1579
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auto-brightness adjustment changed by user: lux="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", brightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", ring="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutomaticBrightnessController"

    invoke-static {v2, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    const v1, 0x88b8

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 1585
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldLux:F

    .line 1586
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldBrightness:F

    .line 1587
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 1588
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    .line 1589
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v2, v0

    .line 1585
    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_72
    return-void
.end method

.method public final configStateToString(I)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_14

    const/4 p0, 0x2

    if-eq p1, p0, :cond_11

    const/4 p0, 0x3

    if-eq p1, p0, :cond_e

    .line 985
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    const-string p0, "AUTO_BRIGHTNESS_OFF_DUE_TO_DISPLAY_STATE"

    return-object p0

    :cond_11
    const-string p0, "AUTO_BRIGHTNESS_DISABLED"

    return-object p0

    :cond_14
    const-string p0, "AUTO_BRIGHTNESS_ENABLED"

    return-object p0
.end method

.method public configure(ILandroid/hardware/display/BrightnessConfiguration;FZFZIZZI)V
    .registers 13

    .line 610
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mState:I

    .line 614
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShouldApplyEarlyWakeUp:Z

    const/4 v1, 0x1

    if-nez v0, :cond_9

    if-eqz p8, :cond_a

    :cond_9
    move p1, v1

    .line 619
    :cond_a
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/HighBrightnessModeController;->setAutoBrightnessEnabled(I)V

    const/4 p1, 0x0

    if-ne p7, v1, :cond_14

    move v0, v1

    goto :goto_15

    :cond_14
    move v0, p1

    .line 626
    :goto_15
    invoke-virtual {p0, p2, p9}, Lcom/android/server/display/AutomaticBrightnessController;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;Z)Z

    move-result p2

    .line 627
    invoke-virtual {p0, p7}, Lcom/android/server/display/AutomaticBrightnessController;->setDisplayPolicy(I)Z

    move-result p7

    or-int/2addr p2, p7

    if-eqz p6, :cond_25

    .line 629
    invoke-virtual {p0, p5}, Lcom/android/server/display/AutomaticBrightnessController;->setAutoBrightnessAdjustment(F)Z

    move-result p5

    or-int/2addr p2, p5

    .line 631
    :cond_25
    iget p5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mState:I

    if-ne p5, v1, :cond_2b

    move p5, v1

    goto :goto_2c

    :cond_2b
    move p5, p1

    :goto_2c
    if-eqz p4, :cond_35

    if-eqz p5, :cond_35

    .line 635
    invoke-virtual {p0, p3}, Lcom/android/server/display/AutomaticBrightnessController;->setScreenBrightnessByUser(F)Z

    move-result p3

    or-int/2addr p2, p3

    :cond_35
    if-nez p4, :cond_3c

    if-eqz p6, :cond_3a

    goto :goto_3c

    :cond_3a
    move p3, p1

    goto :goto_3d

    :cond_3c
    :goto_3c
    move p3, v1

    :goto_3d
    if-eqz p3, :cond_46

    if-eqz p5, :cond_46

    if-nez v0, :cond_46

    .line 640
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->prepareBrightnessAdjustmentSample()V

    .line 644
    :cond_46
    iget-boolean p4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mEnableForManualBrightnessMode:Z

    if-eq p4, p8, :cond_4e

    .line 645
    iput-boolean p8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mEnableForManualBrightnessMode:Z

    or-int/lit8 p2, p2, 0x1

    .line 651
    :cond_4e
    iget p4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDualScreenPolicy:I

    if-eq p4, p10, :cond_68

    const/4 p6, -0x1

    if-eq p10, p6, :cond_64

    if-eq p4, p6, :cond_64

    .line 652
    iget-boolean p4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsFlickerLightSensorSupported:Z

    if-eqz p4, :cond_64

    if-nez p5, :cond_61

    iget-boolean p4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mEnableForManualBrightnessMode:Z

    if-eqz p4, :cond_64

    .line 656
    :cond_61
    invoke-virtual {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->setLightSensorEnabled(Z)Z

    .line 658
    :cond_64
    iput p10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDualScreenPolicy:I

    or-int/lit8 p2, p2, 0x1

    .line 663
    :cond_68
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDexDualViewMode:Z

    .line 666
    sget-boolean p4, Lcom/android/server/power/PowerManagerUtil;->CAMERA_ADAPTIVE_BRIGHTNESS_SUPPORTED:Z

    if-nez p4, :cond_90

    iget-boolean p4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsCameraLightTypeSupported:Z

    if-eqz p4, :cond_73

    goto :goto_90

    :cond_73
    if-nez p5, :cond_80

    .line 676
    iget-boolean p4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mEnableForManualBrightnessMode:Z

    if-nez p4, :cond_80

    iget-boolean p4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShouldApplyEarlyWakeUp:Z

    if-eqz p4, :cond_7e

    goto :goto_80

    :cond_7e
    move p4, p1

    goto :goto_81

    :cond_80
    :goto_80
    move p4, v1

    :goto_81
    invoke-virtual {p0, p4}, Lcom/android/server/display/AutomaticBrightnessController;->setLightSensorEnabled(Z)Z

    move-result p4

    or-int/2addr p2, p4

    .line 684
    iget-boolean p4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseLightSensorBlockingPrevention:Z

    if-eqz p4, :cond_a3

    .line 685
    iget-boolean p4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    invoke-virtual {p0, p4}, Lcom/android/server/display/AutomaticBrightnessController;->setProximitySensorEnabled(Z)V

    goto :goto_a3

    :cond_90
    :goto_90
    if-nez p5, :cond_9d

    .line 667
    iget-boolean p4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mEnableForManualBrightnessMode:Z

    if-nez p4, :cond_9d

    iget-boolean p4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShouldApplyEarlyWakeUp:Z

    if-eqz p4, :cond_9b

    goto :goto_9d

    :cond_9b
    move p4, p1

    goto :goto_9e

    :cond_9d
    :goto_9d
    move p4, v1

    :goto_9e
    invoke-virtual {p0, p4}, Lcom/android/server/display/AutomaticBrightnessController;->setLightSensorEnabledForCAB(Z)Z

    move-result p4

    or-int/2addr p2, p4

    .line 690
    :cond_a3
    :goto_a3
    iget-boolean p4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsBrightnessThrottled:Z

    iget-object p5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    invoke-virtual {p5}, Lcom/android/server/display/BrightnessThrottler;->isThrottled()Z

    move-result p5

    if-eq p4, p5, :cond_b6

    .line 692
    iget-object p2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    invoke-virtual {p2}, Lcom/android/server/display/BrightnessThrottler;->isThrottled()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsBrightnessThrottled:Z

    goto :goto_b7

    :cond_b6
    move v1, p2

    .line 697
    :goto_b7
    iget-object p2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingEarlyLightSensorReadyListener:Ljava/lang/Runnable;

    if-eqz p2, :cond_c1

    .line 698
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    const/4 p2, 0x0

    .line 699
    iput-object p2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingEarlyLightSensorReadyListener:Ljava/lang/Runnable;

    :cond_c1
    if-eqz v1, :cond_c6

    .line 704
    invoke-virtual {p0, p1, p3}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(ZZ)V

    :cond_c6
    return-void
.end method

.method public convertToNits(F)F
    .registers 2

    .line 1695
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz p0, :cond_9

    .line 1696
    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToNits(F)F

    move-result p0

    return p0

    :cond_9
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 6

    .line 884
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Automatic Brightness Controller Configuration:"

    .line 885
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:F

    invoke-static {v2}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScreenBrightnessRangeMaximum="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:F

    invoke-static {v3}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mState="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mState:I

    invoke-virtual {p0, v3}, Lcom/android/server/display/AutomaticBrightnessController;->configStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 891
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDozeScaleFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozeScaleFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mInitialLightSensorRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialLightSensorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNormalLightSensorRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNormalLightSensorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorWarmUpTimeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrighteningLightDebounceConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDarkeningLightDebounceConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mResetAmbientLuxAfterWarmUpConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mResetAmbientLuxAfterWarmUpConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLightHorizonLong="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizonLong:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLightHorizonShort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizonShort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWeightingIntercept="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mWeightingIntercept:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHbmLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHbmLux:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 905
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Automatic Brightness Controller State:"

    .line 906
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorCct="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorCct:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 909
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorEnableTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 911
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentLightSensorRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLuxValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 914
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPreThesholdLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPreThresholdLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPreThesholdBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPreThresholdBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 916
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientBrighteningThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientDarkeningThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrighteningThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrighteningThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenDarkeningThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenDarkeningThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastObservedLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastObservedLuxTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLuxTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRecentLightSamples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLightRingBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 925
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPolicy:I

    invoke-static {v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 926
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mShortTermModelTimeout(active)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInteractiveModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 927
    invoke-virtual {v1}, Lcom/android/server/display/BrightnessMappingStrategy;->getShortTermModelTimeout()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 926
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 928
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIdleModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v0, :cond_35e

    .line 929
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mShortTermModelTimeout(idle)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIdleModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 930
    invoke-virtual {v1}, Lcom/android/server/display/BrightnessMappingStrategy;->getShortTermModelTimeout()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 929
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 932
    :cond_35e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mShortTermModelAnchor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelAnchor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mShortTermModelValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 934
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessAdjustmentSamplePending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessAdjustmentSampleOldLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 936
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessAdjustmentSampleOldBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 938
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mForegroundAppPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 939
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingForegroundAppPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 940
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mForegroundAppCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppCategory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingForegroundAppCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppCategory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Idle mode active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v1}, Lcom/android/server/display/BrightnessMappingStrategy;->isForIdleMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 943
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsLightSensorOnFoldingSide="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsLightSensorOnFoldingSide:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseLightSensorBlockingPrevention="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseLightSensorBlockingPrevention:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 948
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_LIGHT_SENSOR_BLOCKING_PREVENTION_MULTI:Z

    if-eqz v0, :cond_4b0

    .line 949
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mIsRearLightSensor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsRearLightSensor:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 950
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastAmbientLuxOfFrontLightSensor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientLuxOfFrontLightSensor:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 955
    :cond_4b0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, "  mInteractiveMapper="

    .line 956
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 957
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInteractiveModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v2}, Lcom/android/server/display/HighBrightnessModeController;->getNormalBrightnessMax()F

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/android/server/display/BrightnessMappingStrategy;->dump(Ljava/io/PrintWriter;F)V

    .line 958
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIdleModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v1, :cond_4d7

    const-string v1, "  mIdleMapper="

    .line 959
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 960
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIdleModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v2}, Lcom/android/server/display/HighBrightnessModeController;->getNormalBrightnessMax()F

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/android/server/display/BrightnessMappingStrategy;->dump(Ljava/io/PrintWriter;F)V

    .line 963
    :cond_4d7
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 964
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

    invoke-virtual {v1, p1}, Lcom/android/server/display/HysteresisLevels;->dump(Ljava/io/PrintWriter;)V

    if-eqz v0, :cond_4f7

    const-string/jumbo v0, "mAmbientBrightnessThresholdsTouchHigh:"

    .line 968
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 969
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholdsTouchHigh:Lcom/android/server/display/HysteresisLevels;

    invoke-virtual {v0, p1}, Lcom/android/server/display/HysteresisLevels;->dump(Ljava/io/PrintWriter;)V

    const-string/jumbo v0, "mAmbientBrightnessThresholdsTouchLow:"

    .line 970
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 971
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholdsTouchLow:Lcom/android/server/display/HysteresisLevels;

    invoke-virtual {p0, p1}, Lcom/android/server/display/HysteresisLevels;->dump(Ljava/io/PrintWriter;)V

    :cond_4f7
    return-void
.end method

.method public getAmbientBrightnessInfo(F)Ljava/lang/String;
    .registers 10

    .line 1951
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInteractiveModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightness(F)F

    move-result v0

    .line 1954
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v1

    .line 1956
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

    invoke-virtual {v2, p1}, Lcom/android/server/display/HysteresisLevels;->getDarkeningThreshold(F)F

    move-result v2

    .line 1957
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

    invoke-virtual {v3, p1}, Lcom/android/server/display/HysteresisLevels;->getBrighteningThreshold(F)F

    move-result v3

    .line 1959
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAmbientBrightnessInfo : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const-string v1, "%6d"

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v5, [Ljava/lang/Object;

    .line 1960
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v6, v7

    const-string v0, "%.2f"

    invoke-static {v1, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v5, [Ljava/lang/Object;

    .line 1961
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v7

    const-string v2, "%6.0f"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " < "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v6, v5, [Ljava/lang/Object;

    .line 1962
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v6, v7

    const-string p1, "%8.1f"

    invoke-static {v1, p1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array p1, v5, [Ljava/lang/Object;

    .line 1963
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p1, v7

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (adj:"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array p1, v5, [Ljava/lang/Object;

    .line 1964
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightnessAdjustment()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, p1, v7

    const-string p0, "%+.1f"

    invoke-static {v1, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getAmbientBrightnessThresholds()Lcom/android/server/display/HysteresisLevels;
    .registers 3

    .line 1807
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessThresoldsType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    .line 1813
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

    return-object p0

    .line 1811
    :cond_b
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholdsTouchLow:Lcom/android/server/display/HysteresisLevels;

    return-object p0

    .line 1809
    :cond_e
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholdsTouchHigh:Lcom/android/server/display/HysteresisLevels;

    return-object p0
.end method

.method public final getAmbientBrightnessThresholdsString()Ljava/lang/String;
    .registers 2

    .line 1818
    iget p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessThresoldsType:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_b

    const-string p0, "DEFAULT"

    return-object p0

    :cond_b
    const-string p0, "TOUCH_LOW"

    return-object p0

    :cond_e
    const-string p0, "TOUCH_HIGH"

    return-object p0
.end method

.method public getAmbientLux()F
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 741
    iget p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    return p0
.end method

.method public getAppliedBackupConfig(Landroid/hardware/display/BrightnessConfiguration;)Landroid/hardware/display/BrightnessConfiguration;
    .registers 2

    .line 1719
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInteractiveModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->getAppliedBackupConfig(Landroid/hardware/display/BrightnessConfiguration;)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public getAutomaticScreenBrightness()F
    .registers 2

    const/4 v0, 0x0

    .line 564
    invoke-virtual {p0, v0}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightness(Lcom/android/server/display/DisplayPowerController$BrightnessEvent;)F

    move-result p0

    return p0
.end method

.method public getAutomaticScreenBrightness(Lcom/android/server/display/DisplayPowerController$BrightnessEvent;)F
    .registers 8

    const/high16 v0, 0x7fc00000    # Float.NaN

    const/4 v1, 0x1

    if-eqz p1, :cond_2c

    .line 570
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-eqz v2, :cond_c

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    goto :goto_d

    :cond_c
    move v3, v0

    :goto_d
    iput v3, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->lux:F

    .line 571
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPreThresholdLux:F

    iput v3, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->preThresholdLux:F

    .line 572
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPreThresholdBrightness:F

    iput v3, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->preThresholdBrightness:F

    .line 573
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    iput v3, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->recommendedBrightness:F

    .line 574
    iget v3, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->flags:I

    const/4 v4, 0x0

    if-nez v2, :cond_22

    const/4 v2, 0x2

    goto :goto_23

    :cond_22
    move v2, v4

    .line 575
    :goto_23
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPolicy:I

    if-ne v5, v1, :cond_28

    const/4 v4, 0x3

    :cond_28
    or-int/2addr v2, v4

    or-int/2addr v2, v3

    .line 576
    iput v2, p1, Lcom/android/server/display/DisplayPowerController$BrightnessEvent;->flags:I

    .line 579
    :cond_2c
    iget-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-nez p1, :cond_31

    return v0

    .line 582
    :cond_31
    iget p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPolicy:I

    if-ne p1, v1, :cond_3b

    .line 583
    iget p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    iget p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozeScaleFactor:F

    mul-float/2addr p1, p0

    return p1

    .line 585
    :cond_3b
    iget p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    return p0
.end method

.method public getAutomaticScreenBrightnessAdjustment()F
    .registers 1

    .line 600
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy;->getAutoBrightnessAdjustment()F

    move-result p0

    return p0
.end method

.method public getBrightnessSpline()Landroid/util/Spline;
    .registers 1

    .line 1725
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInteractiveModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightnessSpline()Landroid/util/Spline;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;
    .registers 1

    .line 726
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInteractiveModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy;->getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public final handleLightSensorEvent(JF)V
    .registers 8

    float-to-int v0, p3

    const-wide/32 v1, 0x20000

    const-string v3, "ALS"

    .line 1053
    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 1054
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1056
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    if-nez v0, :cond_28

    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsFlickerLightSensorSupported:Z

    if-eqz v0, :cond_1f

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDualScreenPolicy:I

    if-eq v0, v1, :cond_28

    :cond_1f
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsUnderDisplayLightSensor:Z

    if-nez v0, :cond_28

    .line 1063
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNormalLightSensorRate:I

    invoke-virtual {p0, v0}, Lcom/android/server/display/AutomaticBrightnessController;->adjustLightSensorRate(I)V

    .line 1065
    :cond_28
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController;->applyLightSensorMeasurement(JF)V

    .line 1067
    sget-boolean p3, Lcom/android/server/power/PowerManagerUtil;->CAMERA_ADAPTIVE_BRIGHTNESS_SUPPORTED:Z

    if-nez p3, :cond_38

    iget-boolean p3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsCameraLightTypeSupported:Z

    if-eqz p3, :cond_34

    goto :goto_38

    .line 1071
    :cond_34
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux(J)V

    goto :goto_3b

    .line 1068
    :cond_38
    :goto_38
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLuxCAB(J)V

    :goto_3b
    return-void
.end method

.method public final handleProximitySensorEvent(JZ)V
    .registers 4

    .line 2006
    iget-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensorEnabled:Z

    if-eqz p1, :cond_29

    .line 2007
    iget p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingProximity:I

    if-nez p1, :cond_b

    if-nez p3, :cond_b

    return-void

    :cond_b
    const/4 p2, 0x1

    if-ne p1, p2, :cond_11

    if-eqz p3, :cond_11

    return-void

    :cond_11
    if-eqz p3, :cond_16

    .line 2015
    iput p2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingProximity:I

    goto :goto_19

    :cond_16
    const/4 p1, 0x0

    .line 2017
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingProximity:I

    .line 2020
    :goto_19
    iget-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    iget-object p2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mOnProximityChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2021
    iget-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mOnProximityChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 p2, 0xc8

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_29
    return-void
.end method

.method public final handleSensorTimeout()V
    .registers 3

    .line 1731
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-nez v0, :cond_12

    const-string v0, "AutomaticBrightnessController"

    const-string v1, "Light sensor update is timed out!"

    .line 1732
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1733
    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    const/4 v1, 0x0

    .line 1734
    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(ZZ)V

    :cond_12
    return-void
.end method

.method public hasUserDataPoints()Z
    .registers 1

    .line 713
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy;->hasUserDataPoints()Z

    move-result p0

    return p0
.end method

.method public hasValidAmbientLux()Z
    .registers 1

    .line 589
    iget-boolean p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    return p0
.end method

.method public final invalidateShortTermModel()V
    .registers 3

    .line 845
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v0, :cond_b

    const-string v0, "AutomaticBrightnessController"

    const-string v1, "ShortTermModel: invalidate user data"

    .line 846
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const/4 v0, 0x0

    .line 848
    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelValid:Z

    return-void
.end method

.method public isAmbientLuxValid()Z
    .registers 1

    .line 1913
    iget-boolean p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    return p0
.end method

.method public isDefaultConfig()Z
    .registers 2

    .line 718
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->isInIdleMode()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 721
    :cond_8
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInteractiveModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy;->isDefaultConfig()Z

    move-result p0

    return p0
.end method

.method public isFlickerLightSensorSupported()Z
    .registers 1

    .line 1978
    iget-boolean p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsFlickerLightSensorSupported:Z

    return p0
.end method

.method public isHbmLux()Z
    .registers 2

    .line 594
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iget p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHbmLux:I

    int-to-float p0, p0

    cmpl-float p0, v0, p0

    if-ltz p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public isInIdleMode()Z
    .registers 1

    .line 880
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy;->isForIdleMode()Z

    move-result p0

    return p0
.end method

.method public isLightSensorOnFoldingSide()Z
    .registers 1

    .line 1972
    iget-boolean p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsLightSensorOnFoldingSide:Z

    return p0
.end method

.method public final isValidUserLux(F)Z
    .registers 3

    const/4 v0, 0x0

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_e

    .line 1925
    iget p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHbmLux:I

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public final nextAmbientLightBrighteningTransition(J)J
    .registers 6

    .line 1235
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_20

    .line 1239
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v1, v0}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v1

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_17

    goto :goto_20

    .line 1242
    :cond_17
    iget-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {p1, v0}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide p1

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1244
    :cond_20
    :goto_20
    iget-wide v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public final nextAmbientLightDarkeningTransition(J)J
    .registers 6

    .line 1248
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_20

    .line 1252
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v1, v0}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v1

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_17

    goto :goto_20

    .line 1255
    :cond_17
    iget-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {p1, v0}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide p1

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1257
    :cond_20
    :goto_20
    iget-wide v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public final notifyHbmInfo(Z)V
    .registers 7

    .line 1935
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1936
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 1938
    :goto_10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2d

    .line 1939
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1941
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    .line 1942
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v4, "high_brightness_mode_pms_enter"

    .line 1941
    invoke-static {v3, v4, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_2d
    return-void
.end method

.method public final prepareBrightnessAdjustmentSample()V
    .registers 5

    .line 1554
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    const/4 v1, 0x2

    if-nez v0, :cond_18

    const/4 v0, 0x1

    .line 1555
    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    .line 1556
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    goto :goto_11

    :cond_f
    const/high16 v0, -0x40800000    # -1.0f

    :goto_11
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldLux:F

    .line 1557
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldBrightness:F

    goto :goto_1d

    .line 1559
    :cond_18
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1562
    :goto_1d
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public recalculateSplines(Z[F)V
    .registers 4

    .line 1703
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/BrightnessMappingStrategy;->recalculateSplines(Z[F)V

    .line 1709
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    if-eqz p1, :cond_11

    .line 1713
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightness()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->setScreenBrightnessByUser(F)Z

    :cond_11
    return-void
.end method

.method public final registerForegroundAppUpdater()V
    .registers 3

    .line 1598
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTaskStackListener:Lcom/android/server/display/AutomaticBrightnessController$TaskStackListenerImpl;

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 1601
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->updateForegroundApp()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_26

    :catch_b
    move-exception v0

    .line 1603
    iget-boolean p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz p0, :cond_26

    .line 1604
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to register foreground app updater: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AutomaticBrightnessController"

    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    :goto_26
    return-void
.end method

.method public resetShortTermModel()V
    .registers 3

    const-string v0, "AutomaticBrightnessController"

    const-string/jumbo v1, "resetShortTermModel"

    .line 834
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->clearUserDataPoints()V

    const/4 v0, 0x1

    .line 836
    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelValid:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 837
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelAnchor:F

    .line 840
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    invoke-interface {p0}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->onShortTermReset()V

    return-void
.end method

.method public final sendAmbientBrightnessThresholdInfo()V
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 1866
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    invoke-static {v1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 1868
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 1869
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 1870
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 1872
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->setBrightnessHysteresisParameter([F)V

    return-void
.end method

.method public final sendAmbientLux(F)V
    .registers 7

    .line 1831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendAmbientLux("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutomaticBrightnessController"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_PAPAYA_DQE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_34

    .line 1835
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    const-string v2, "exynos_display"

    .line 1836
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/ExynosDisplaySolutionManager;

    if-eqz v0, :cond_34

    float-to-int v2, p1

    const/4 v3, 0x0

    const-string v4, "atc_user"

    .line 1839
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/hardware/display/ExynosDisplaySolutionManager;->setDisplayFeature(Ljava/lang/String;IILjava/lang/String;)V

    .line 1842
    :cond_34
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DISPLAY_QUALITY:Z

    if-eqz v0, :cond_48

    .line 1843
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    const-string v2, "DisplayQuality"

    .line 1844
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/displayquality/SemDisplayQualityManager;

    if-eqz v0, :cond_48

    float-to-int v2, p1

    .line 1847
    invoke-virtual {v0, v2}, Lcom/samsung/android/displayquality/SemDisplayQualityManager;->enhanceDisplayOutdoorVisibilityByLux(I)V

    .line 1853
    :cond_48
    iget p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDualScreenPolicy:I

    if-ne p0, v1, :cond_53

    float-to-int p0, p1

    const-string p1, "/sys/class/lcd/panel1/lux"

    .line 1854
    invoke-static {p1, p0}, Lcom/android/server/power/PowerManagerUtil;->fileWriteInt(Ljava/lang/String;I)V

    goto :goto_59

    :cond_53
    float-to-int p0, p1

    const-string p1, "/sys/class/lcd/panel/lux"

    .line 1858
    invoke-static {p1, p0}, Lcom/android/server/power/PowerManagerUtil;->fileWriteInt(Ljava/lang/String;I)V

    :goto_59
    return-void
.end method

.method public final setAmbientLux(F)V
    .registers 8

    .line 1105
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    const-string v1, ")"

    const-string v2, "AutomaticBrightnessController"

    if-eqz v0, :cond_20

    .line 1106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAmbientLux("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 v0, 0x0

    cmpg-float v3, p1, v0

    if-gez v3, :cond_2b

    const-string p1, "Ambient lux was negative, ignoring and setting to 0"

    .line 1109
    invoke-static {v2, p1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    .line 1114
    :cond_2b
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_34

    .line 1115
    invoke-virtual {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->sendAmbientLux(F)V

    .line 1119
    :cond_34
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 1122
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->getAmbientBrightnessThresholds()Lcom/android/server/display/HysteresisLevels;

    move-result-object v0

    .line 1127
    invoke-virtual {v0, p1}, Lcom/android/server/display/HysteresisLevels;->getBrighteningThreshold(F)F

    move-result v3

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    .line 1128
    invoke-virtual {v0, p1}, Lcom/android/server/display/HysteresisLevels;->getDarkeningThreshold(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    .line 1131
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v0, v3}, Lcom/android/server/display/HighBrightnessModeController;->onAmbientLuxChange(F)V

    .line 1134
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    if-eqz v0, :cond_56

    .line 1135
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    invoke-interface {v0, p1}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->onAmbientLuxChanged(F)V

    .line 1140
    :cond_56
    iget-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelValid:Z

    if-nez p1, :cond_c7

    iget p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelAnchor:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_c7

    .line 1141
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v0, v3, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->shouldResetShortTermModel(FF)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_c5

    .line 1146
    iget-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelAnchor:F

    invoke-virtual {p1, v3}, Lcom/android/server/display/HysteresisLevels;->getDarkeningThreshold(F)F

    move-result p1

    .line 1147
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelAnchor:F

    invoke-virtual {v3, v4}, Lcom/android/server/display/HysteresisLevels;->getBrighteningThreshold(F)F

    move-result v3

    .line 1148
    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpg-float v5, v4, p1

    if-lez v5, :cond_87

    cmpl-float v4, v4, v3

    if-ltz v4, :cond_c7

    .line 1149
    :cond_87
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ShortTermModel: reset data, ambient lux is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " ,hysteresis("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1151
    invoke-static {v2, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPowerHistorian:Lcom/android/server/power/PowerHistorian;

    invoke-virtual {v1, p1}, Lcom/android/server/power/PowerHistorian;->onAutoBrightnessEvent(Ljava/lang/String;)V

    const/16 p1, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "ambient lux change"

    aput-object v2, v0, v1

    .line 1153
    invoke-static {p1, v0}, Lcom/android/server/power/PowerManagerLog;->sendLogEvent(I[Ljava/lang/Object;)V

    .line 1154
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    goto :goto_c7

    .line 1158
    :cond_c5
    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelValid:Z

    :cond_c7
    :goto_c7
    return-void
.end method

.method public final setAutoBrightnessAdjustment(F)Z
    .registers 2

    .line 1101
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->setAutoBrightnessAdjustment(F)Z

    move-result p0

    return p0
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;Z)Z
    .registers 6

    .line 852
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInteractiveModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_d

    if-eqz p2, :cond_c

    goto :goto_d

    :cond_c
    return v0

    .line 853
    :cond_d
    :goto_d
    iget-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPowerHistorian:Lcom/android/server/power/PowerHistorian;

    const-string p2, "ShortTermModel: reset data, change configuration"

    invoke-virtual {p1, p2}, Lcom/android/server/power/PowerHistorian;->onAutoBrightnessEvent(Ljava/lang/String;)V

    const/16 p1, 0xa

    const/4 p2, 0x1

    new-array v1, p2, [Ljava/lang/Object;

    const-string/jumbo v2, "setConfiguration"

    aput-object v2, v1, v0

    .line 854
    invoke-static {p1, v1}, Lcom/android/server/power/PowerManagerLog;->sendLogEvent(I[Ljava/lang/Object;)V

    .line 864
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->isInIdleMode()Z

    move-result p1

    if-nez p1, :cond_3a

    .line 865
    sget-boolean p1, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    if-eqz p1, :cond_37

    .line 866
    iget-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInteractiveModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {p1}, Lcom/android/server/display/BrightnessMappingStrategy;->clearUserDataPoints()V

    .line 867
    iput-boolean p2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelValid:Z

    const/high16 p1, -0x40800000    # -1.0f

    .line 868
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelAnchor:F

    goto :goto_3a

    .line 870
    :cond_37
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    :cond_3a
    :goto_3a
    return p2
.end method

.method public final setCameraSensorEnabled(Z)V
    .registers 6

    .line 1785
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "samsung.intent.action.START_AUTO_BRIGHTNESS_ROOT"

    .line 1786
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1787
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.adaptivebrightnessgo"

    const-string v3, "com.samsung.adaptivebrightnessgo.RootService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "AutomaticBrightnessController"

    if-eqz p1, :cond_26

    :try_start_1b
    const-string p1, "Starting sABC service"

    .line 1791
    invoke-static {v1, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_37

    :cond_26
    const-string p1, "Stoping sABC service"

    .line 1794
    invoke-static {v1, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_30} :catch_31

    goto :goto_37

    :catch_31
    move-exception p0

    const-string p1, "Error while calling adaptive brightness"

    .line 1800
    invoke-static {v1, p1, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_37
    return-void
.end method

.method public final setDisplayPolicy(I)Z
    .registers 7

    .line 745
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPolicy:I

    if-ne v0, p1, :cond_6

    const/4 p0, 0x0

    return p0

    .line 749
    :cond_6
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPolicy:I

    .line 750
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v1, :cond_2a

    .line 751
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display policy transitioning from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutomaticBrightnessController"

    invoke-static {v2, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_2a
    invoke-static {p1}, Lcom/android/server/display/AutomaticBrightnessController;->isInteractivePolicy(I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_44

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->isInteractivePolicy(I)Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->isInIdleMode()Z

    move-result v1

    if-nez v1, :cond_44

    .line 756
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNonInteractiveTime:J

    goto :goto_75

    .line 757
    :cond_44
    invoke-static {p1}, Lcom/android/server/display/AutomaticBrightnessController;->isInteractivePolicy(I)Z

    move-result p1

    if-eqz p1, :cond_75

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->isInteractivePolicy(I)Z

    move-result p1

    if-nez p1, :cond_75

    .line 759
    sget-boolean p1, Lcom/android/server/power/PowerManagerUtil;->CAMERA_ADAPTIVE_BRIGHTNESS_SUPPORTED:Z

    if-nez p1, :cond_58

    iget-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsCameraLightTypeSupported:Z

    if-eqz p1, :cond_5a

    .line 760
    :cond_58
    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForceUpdateBrightness:Z

    .line 765
    :cond_5a
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object p1

    if-nez p1, :cond_61

    return v2

    .line 772
    :cond_61
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 773
    iget-wide v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNonInteractiveTime:J

    sub-long/2addr v0, v3

    iget-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInteractiveModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {p1}, Lcom/android/server/display/BrightnessMappingStrategy;->getShortTermModelTimeout()J

    move-result-wide v3

    cmp-long p1, v0, v3

    if-lez p1, :cond_75

    .line 774
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->invalidateShortTermModel()V

    :cond_75
    :goto_75
    return v2
.end method

.method public setEarlyLightSensorEnabled(ZLjava/lang/Runnable;)Z
    .registers 4

    .line 1741
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShouldApplyEarlyWakeUp:Z

    if-eq p1, v0, :cond_8

    .line 1742
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShouldApplyEarlyWakeUp:Z

    .line 1744
    iput-object p2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingEarlyLightSensorReadyListener:Ljava/lang/Runnable;

    :cond_8
    const/4 p0, 0x1

    return p0
.end method

.method public final setLightSensorEnabled(Z)Z
    .registers 8

    const/4 v0, 0x7

    const-string v1, "AutomaticBrightnessController"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_4c

    .line 991
    iget-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-nez p1, :cond_8d

    .line 992
    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    .line 993
    iget-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mClock:Lcom/android/server/display/AutomaticBrightnessController$Clock;

    invoke-interface {p1}, Lcom/android/server/display/AutomaticBrightnessController$Clock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    .line 994
    iget p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialLightSensorRate:I

    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    const-string/jumbo p1, "setLightSensorEnabled: true"

    .line 996
    invoke-static {v1, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    iget-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorCct:Landroid/hardware/Sensor;

    if-eqz p1, :cond_24

    goto :goto_26

    .line 1004
    :cond_24
    iget-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    .line 1008
    :goto_26
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    mul-int/lit16 v4, v4, 0x3e8

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v1, v3, p1, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 1013
    iget-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDexDualViewMode:Z

    if-eqz p1, :cond_44

    sget-boolean p1, Lcom/android/server/power/PowerManagerUtil$Country;->CHINA:Z

    if-eqz p1, :cond_44

    .line 1014
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 1015
    iget p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {p0, v3, v4, p1}, Lcom/android/server/display/AutomaticBrightnessController;->handleLightSensorEvent(JF)V

    .line 1020
    :cond_44
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const-wide/16 v3, 0x320

    invoke-virtual {p0, v0, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return v2

    .line 1026
    :cond_4c
    iget-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-eqz p1, :cond_8d

    .line 1027
    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    .line 1028
    iget-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mResetAmbientLuxAfterWarmUpConfig:Z

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    const/high16 v4, 0x7fc00000    # Float.NaN

    if-nez p1, :cond_5d

    .line 1030
    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPreThresholdLux:F

    .line 1032
    :cond_5d
    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    .line 1033
    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPreThresholdBrightness:F

    .line 1034
    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    .line 1035
    iget-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {p1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->clear()V

    const/4 p1, -0x1

    .line 1036
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 1037
    invoke-virtual {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->sendAmbientLux(F)V

    .line 1038
    iget-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1039
    iget-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    const-string/jumbo p1, "setLightSensorEnabled: false"

    .line 1040
    invoke-static {v1, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsRearLightSensor:Z

    .line 1043
    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsLightSensorPositionUpdated:Z

    .line 1044
    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessThresoldsType:I

    .line 1047
    iget-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_8d
    return v3
.end method

.method public final setLightSensorEnabledForCAB(Z)Z
    .registers 7

    const-string v0, "AutomaticBrightnessController"

    const/4 v1, 0x0

    if-eqz p1, :cond_36

    .line 1754
    iget-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-nez p1, :cond_67

    const/4 p1, 0x1

    .line 1755
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    .line 1756
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    .line 1757
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialLightSensorRate:I

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    .line 1758
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->CAMERA_ADAPTIVE_BRIGHTNESS_SUPPORTED:Z

    if-eqz v2, :cond_1e

    .line 1759
    invoke-virtual {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->setCameraSensorEnabled(Z)V

    goto :goto_2f

    .line 1760
    :cond_1e
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsCameraLightTypeSupported:Z

    if-eqz v2, :cond_2f

    .line 1761
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    mul-int/lit16 v1, v1, 0x3e8

    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v2, v3, v4, v1, p0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    :cond_2f
    :goto_2f
    const-string/jumbo p0, "setLightSensorEnabledForCAB: true"

    .line 1764
    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 1767
    :cond_36
    iget-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-eqz p1, :cond_67

    .line 1768
    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    .line 1769
    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForceUpdateBrightness:Z

    .line 1770
    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    .line 1771
    iget-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {p1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->clear()V

    const/high16 p1, -0x40800000    # -1.0f

    .line 1772
    invoke-virtual {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->sendAmbientLux(F)V

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 1773
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    .line 1774
    sget-boolean p1, Lcom/android/server/power/PowerManagerUtil;->CAMERA_ADAPTIVE_BRIGHTNESS_SUPPORTED:Z

    if-eqz p1, :cond_56

    .line 1775
    invoke-virtual {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->setCameraSensorEnabled(Z)V

    goto :goto_61

    .line 1776
    :cond_56
    iget-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsCameraLightTypeSupported:Z

    if-eqz p1, :cond_61

    .line 1777
    iget-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_61
    :goto_61
    const-string/jumbo p0, "setLightSensorEnabledForCAB: false"

    .line 1779
    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67
    return v1
.end method

.method public setLoggingEnabled(Z)Z
    .registers 3

    .line 550
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-ne v0, p1, :cond_6

    const/4 p0, 0x0

    return p0

    .line 553
    :cond_6
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInteractiveModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v0, :cond_d

    .line 554
    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->setLoggingEnabled(Z)Z

    .line 556
    :cond_d
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIdleModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v0, :cond_14

    .line 557
    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->setLoggingEnabled(Z)Z

    .line 559
    :cond_14
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    const/4 p0, 0x1

    return p0
.end method

.method public final setProximitySensorEnabled(Z)V
    .registers 5

    const-string v0, "AutomaticBrightnessController"

    if-eqz p1, :cond_1e

    .line 1985
    iget-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensorEnabled:Z

    if-nez p1, :cond_3e

    const/4 p1, 0x1

    .line 1986
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensorEnabled:Z

    const-string/jumbo p1, "setProximitySensorEnabled::registerListener"

    .line 1988
    invoke-static {v0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    iget-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_3e

    .line 1993
    :cond_1e
    iget-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensorEnabled:Z

    if-eqz p1, :cond_3e

    const/4 p1, 0x0

    .line 1994
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensorEnabled:Z

    const/4 p1, -0x1

    .line 1995
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximity:I

    .line 1996
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingProximity:I

    .line 1997
    iget-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mOnProximityChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string/jumbo p1, "setProximitySensorEnabled::unregisterListener"

    .line 1999
    invoke-static {v0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    iget-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method public final setScreenBrightnessByUser(F)Z
    .registers 8

    .line 788
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 795
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x258

    .line 796
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(JJ)F

    move-result v0

    .line 798
    invoke-virtual {p0, v0}, Lcom/android/server/display/AutomaticBrightnessController;->isValidUserLux(F)Z

    move-result v2

    const-string v3, "AutomaticBrightnessController"

    if-nez v2, :cond_37

    .line 799
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHbmLux:I

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_3a

    .line 800
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setScreenBrightnessByUser: cancel currentLux: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 805
    :cond_37
    invoke-virtual {p0, v0}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    .line 807
    :cond_3a
    invoke-virtual {p0, v0}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    .line 810
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v0, v1, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->addUserDataPoint(FF)V

    const/4 v0, 0x1

    .line 811
    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelValid:Z

    .line 812
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelAnchor:F

    .line 814
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShortTermModel: anchor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelAnchor:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsUnderDisplayLightSensor:Z

    if-eqz v1, :cond_70

    .line 819
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSetScreenBrightnessByUserTime:J

    const-string v1, "change BrighteningLightDebounceConfig"

    .line 820
    invoke-static {v3, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    :cond_70
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_HQM_SEND_DPUC:Z

    if-eqz v1, :cond_7c

    .line 826
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    iget p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    float-to-int p0, p0

    invoke-interface {v1, p1, p0}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->onUserPointAdded(FI)V

    :cond_7c
    return v0
.end method

.method public stop()V
    .registers 2

    const/4 v0, 0x0

    .line 709
    invoke-virtual {p0, v0}, Lcom/android/server/display/AutomaticBrightnessController;->setLightSensorEnabled(Z)Z

    return-void
.end method

.method public switchToIdleMode()V
    .registers 3

    .line 1672
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIdleModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-nez v0, :cond_5

    return-void

    .line 1675
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->isForIdleMode()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    :cond_e
    const-string v0, "AutomaticBrightnessController"

    const-string v1, "Switching to Idle Screen Brightness Mode"

    .line 1678
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIdleModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 1680
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    .line 1681
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->update()V

    return-void
.end method

.method public switchToInteractiveScreenBrightnessMode()V
    .registers 3

    .line 1685
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->isForIdleMode()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const-string v0, "AutomaticBrightnessController"

    const-string v1, "Switching to Interactive Screen Brightness Mode"

    .line 1688
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInteractiveModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 1690
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    .line 1691
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->update()V

    return-void
.end method

.method public final unregisterForegroundAppUpdater()V
    .registers 3

    .line 1612
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTaskStackListener:Lcom/android/server/display/AutomaticBrightnessController$TaskStackListenerImpl;

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_7

    :catch_7
    const/4 v0, 0x0

    .line 1616
    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppPackageName:Ljava/lang/String;

    const/4 v0, -0x1

    .line 1617
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppCategory:I

    return-void
.end method

.method public update()V
    .registers 2

    .line 733
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final updateAmbientLux()V
    .registers 6

    .line 1261
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mClock:Lcom/android/server/display/AutomaticBrightnessController$Clock;

    invoke-interface {v0}, Lcom/android/server/display/AutomaticBrightnessController$Clock;->uptimeMillis()J

    move-result-wide v0

    .line 1262
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizonLong:I

    int-to-long v3, v3

    sub-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->prune(J)V

    .line 1263
    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux(J)V

    return-void
.end method

.method public final updateAmbientLux(J)V
    .registers 23

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 1269
    iget-boolean v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    const-string v4, ", mAmbientLux="

    const-string v5, "AutomaticBrightnessController"

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_12

    iget-boolean v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mShouldApplyEarlyWakeUp:Z

    if-eqz v3, :cond_7b

    .line 1271
    :cond_12
    iget v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    int-to-long v8, v3

    iget-wide v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    add-long/2addr v8, v10

    cmp-long v3, v1, v8

    if-gez v3, :cond_43

    .line 1274
    iget-boolean v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v3, :cond_3d

    .line 1275
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAmbientLux: Sensor not ready yet: time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", timeWhenSensorWarmedUp="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    :cond_3d
    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    return-void

    .line 1283
    :cond_43
    iget v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizonShort:I

    int-to-long v8, v3

    invoke-virtual {v0, v1, v2, v8, v9}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(JJ)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    .line 1284
    iget-object v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v8, 0x7

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1285
    iput-boolean v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 1286
    iget-boolean v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v3, :cond_78

    .line 1287
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateAmbientLux: Initializing: mAmbientLightRingBuffer="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    :cond_78
    invoke-virtual {v0, v7, v6}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(ZZ)V

    .line 1296
    :cond_7b
    iget-boolean v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mMinLuxUpdated:Z

    const/4 v8, 0x2

    const-wide/16 v9, 0x9c4

    if-eqz v3, :cond_99

    .line 1297
    iput-boolean v6, v0, Lcom/android/server/display/AutomaticBrightnessController;->mMinLuxUpdated:Z

    .line 1298
    iget-wide v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mSetScreenBrightnessByUserTime:J

    add-long/2addr v11, v9

    cmp-long v3, v1, v11

    if-ltz v3, :cond_92

    iget v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPolicy:I

    if-ne v3, v8, :cond_90

    goto :goto_92

    :cond_90
    move v3, v7

    goto :goto_9a

    :cond_92
    :goto_92
    const-string/jumbo v0, "updateAmbientLux: min lux is ignored"

    .line 1300
    invoke-static {v5, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_99
    move v3, v6

    .line 1308
    :goto_9a
    iget-boolean v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mUseLightSensorBlockingPrevention:Z

    const v12, 0x10068

    if-eqz v11, :cond_bc

    iget-object v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 1309
    invoke-virtual {v11}, Landroid/hardware/Sensor;->getType()I

    move-result v11

    if-ne v11, v12, :cond_bc

    iget-boolean v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mIsLightSensorPositionUpdated:Z

    if-eqz v11, :cond_bc

    .line 1311
    iget-wide v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorPositionUpdatedTime:J

    const-wide/16 v15, 0x12c

    add-long/2addr v13, v15

    cmp-long v11, v1, v13

    if-gez v11, :cond_bc

    .line 1314
    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v0, v7, v13, v14}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    return-void

    .line 1321
    :cond_bc
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightBrighteningTransition(J)J

    move-result-wide v13

    .line 1322
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightDarkeningTransition(J)J

    move-result-wide v15

    .line 1331
    iget v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizonLong:I

    int-to-long v6, v11

    invoke-virtual {v0, v1, v2, v6, v7}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(JJ)F

    move-result v6

    .line 1332
    iget v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizonShort:I

    move-wide/from16 v18, v13

    int-to-long v12, v7

    invoke-virtual {v0, v1, v2, v12, v13}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(JJ)F

    move-result v7

    .line 1335
    iget-wide v12, v0, Lcom/android/server/display/AutomaticBrightnessController;->mSetScreenBrightnessByUserTime:J

    add-long/2addr v12, v9

    cmp-long v9, v1, v12

    if-gez v9, :cond_dd

    const/4 v9, 0x1

    goto :goto_de

    :cond_dd
    const/4 v9, 0x0

    .line 1341
    :goto_de
    iget-boolean v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mUseLightSensorBlockingPrevention:Z

    if-eqz v10, :cond_1f5

    .line 1342
    iget-object v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v10}, Landroid/hardware/Sensor;->getType()I

    move-result v10

    const v11, 0x10068

    if-ne v10, v11, :cond_1ee

    .line 1343
    iget-boolean v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mIsLightSensorPositionUpdated:Z

    if-eqz v10, :cond_1e4

    const-wide/16 v6, 0x0

    .line 1345
    invoke-virtual {v0, v1, v2, v6, v7}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(JJ)F

    move-result v10

    .line 1346
    invoke-virtual {v0, v1, v2, v6, v7}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(JJ)F

    move-result v6

    .line 1348
    iget-boolean v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mIsRearLightSensor:Z

    if-eqz v7, :cond_13c

    .line 1349
    iget v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iput v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientLuxOfFrontLightSensor:F

    .line 1350
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Last front lux: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientLuxOfFrontLightSensor:F

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ", Current rear lux: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    iget v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientLuxOfFrontLightSensor:F

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v7, v11}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 1353
    invoke-static {v6, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    div-float/2addr v7, v11

    const/high16 v11, 0x40a00000    # 5.0f

    cmpg-float v7, v7, v11

    if-gtz v7, :cond_13d

    const/high16 v7, 0x42480000    # 50.0f

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_13d

    const/4 v8, 0x1

    goto :goto_13d

    :cond_13c
    const/4 v8, 0x0

    .line 1359
    :cond_13d
    :goto_13d
    iget v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessThresoldsType:I

    if-eq v7, v8, :cond_1df

    .line 1360
    iput v8, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessThresoldsType:I

    .line 1362
    iget v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_14d

    iget-boolean v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mIsRearLightSensor:Z

    if-eqz v7, :cond_153

    :cond_14d
    iget v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_154

    :cond_153
    const/4 v3, 0x1

    .line 1366
    :cond_154
    iget v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v0, v7}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    .line 1367
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateAmbientLux("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v0, Lcom/android/server/display/AutomaticBrightnessController;->mIsRearLightSensor:Z

    if-eqz v8, :cond_16b

    const-string v8, "Rear"

    goto :goto_16d

    :cond_16b
    const-string v8, "Front"

    :goto_16d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1368
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/AutomaticBrightnessController;->getAmbientBrightnessThresholdsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    new-array v11, v8, [Ljava/lang/Object;

    iget v12, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    .line 1369
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string v12, "%6.0f"

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " < "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v13, v8, [Ljava/lang/Object;

    iget v8, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 1370
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/16 v17, 0x0

    aput-object v8, v13, v17

    const-string v8, "%8.1f"

    invoke-static {v14, v8, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    new-array v11, v8, [Ljava/lang/Object;

    iget v8, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    .line 1371
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v11, v17

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1372
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[api] "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1df
    const/4 v7, 0x0

    .line 1374
    iput-boolean v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mIsLightSensorPositionUpdated:Z

    move v7, v6

    move v6, v10

    .line 1377
    :cond_1e4
    iget v8, v0, Lcom/android/server/display/AutomaticBrightnessController;->mProximity:I

    const/4 v10, 0x1

    if-ne v8, v10, :cond_1f5

    iget-boolean v8, v0, Lcom/android/server/display/AutomaticBrightnessController;->mIsRearLightSensor:Z

    if-nez v8, :cond_1f5

    goto :goto_1f6

    :cond_1ee
    const/4 v10, 0x1

    .line 1381
    iget v8, v0, Lcom/android/server/display/AutomaticBrightnessController;->mProximity:I

    if-ne v8, v10, :cond_1f5

    const/4 v10, 0x1

    goto :goto_1f6

    :cond_1f5
    const/4 v10, 0x0

    .line 1388
    :goto_1f6
    iget v8, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    cmpl-float v11, v6, v8

    if-ltz v11, :cond_206

    cmpl-float v8, v7, v8

    if-ltz v8, :cond_206

    cmp-long v8, v18, v1

    if-gtz v8, :cond_206

    if-eqz v9, :cond_218

    :cond_206
    iget v8, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    cmpg-float v6, v6, v8

    if-gtz v6, :cond_216

    cmpg-float v6, v7, v8

    if-gtz v6, :cond_216

    cmp-long v6, v15, v1

    if-gtz v6, :cond_216

    if-eqz v10, :cond_218

    :cond_216
    if-eqz v3, :cond_26e

    .line 1397
    :cond_218
    iget v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iput v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mPreThresholdLux:F

    .line 1398
    invoke-virtual {v0, v7}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    .line 1399
    iget-boolean v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v3, :cond_25f

    .line 1400
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateAmbientLux: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1401
    iget v6, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpl-float v6, v7, v6

    if-lez v6, :cond_237

    const-string v6, "Brightened"

    goto :goto_239

    :cond_237
    const-string v6, "Darkened"

    :goto_239
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": mBrighteningLuxThreshold="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", mAmbientLightRingBuffer="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1400
    invoke-static {v5, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25f
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1406
    invoke-virtual {v0, v4, v3}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(ZZ)V

    .line 1407
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightBrighteningTransition(J)J

    move-result-wide v13

    .line 1408
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightDarkeningTransition(J)J

    move-result-wide v15

    move-wide v3, v15

    goto :goto_271

    :cond_26e
    move-wide v3, v15

    move-wide/from16 v13, v18

    .line 1410
    :goto_271
    invoke-static {v3, v4, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    cmp-long v6, v3, v1

    if-lez v6, :cond_27a

    goto :goto_27e

    .line 1418
    :cond_27a
    iget v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mNormalLightSensorRate:I

    int-to-long v3, v3

    add-long/2addr v3, v1

    .line 1419
    :goto_27e
    iget-boolean v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v1, :cond_29e

    .line 1420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAmbientLux: Scheduling ambient lux update for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1421
    invoke-static {v3, v4}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1420
    invoke-static {v5, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    :cond_29e
    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    return-void
.end method

.method public final updateAmbientLuxCAB(J)V
    .registers 11

    .line 1880
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    const-string v1, ", mAmbientLux="

    const-string v2, "AutomaticBrightnessController"

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v0, :cond_3b

    .line 1882
    invoke-virtual {p0, p1, p2, v3, v4}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(JJ)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    .line 1883
    iput-boolean v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 1884
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v0, :cond_38

    .line 1885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateAmbientLux: Initializing: mAmbientLightRingBuffer="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    :cond_38
    invoke-virtual {p0, v6, v5}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(ZZ)V

    .line 1892
    :cond_3b
    invoke-virtual {p0, p1, p2, v3, v4}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(JJ)F

    move-result p1

    .line 1894
    iget p2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    cmpl-float p2, p1, p2

    if-gez p2, :cond_4f

    iget p2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    cmpg-float p2, p1, p2

    if-lez p2, :cond_4f

    iget-boolean p2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForceUpdateBrightness:Z

    if-eqz p2, :cond_97

    .line 1897
    :cond_4f
    iput-boolean v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForceUpdateBrightness:Z

    .line 1898
    invoke-virtual {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    .line 1899
    iget-boolean p2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz p2, :cond_94

    .line 1900
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateAmbientLux: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1901
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_6c

    const-string p1, "Brightened"

    goto :goto_6e

    :cond_6c
    const-string p1, "Darkened"

    :goto_6e
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": mBrighteningLuxThreshold="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", mAmbientLightRingBuffer="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1900
    invoke-static {v2, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    :cond_94
    invoke-virtual {p0, v6, v5}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(ZZ)V

    :cond_97
    return-void
.end method

.method public final updateAutoBrightness(ZZ)V
    .registers 14

    .line 1427
    iget-boolean p2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-nez p2, :cond_5

    return-void

    .line 1431
    :cond_5
    iget-object p2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppCategory:I

    invoke-virtual {p2, v0, v1, v2}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightness(FLjava/lang/String;I)F

    move-result p2

    .line 1433
    invoke-virtual {p0, p2}, Lcom/android/server/display/AutomaticBrightnessController;->clampScreenBrightness(F)F

    move-result v0

    .line 1436
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v0

    .line 1437
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v1

    .line 1442
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    .line 1443
    invoke-virtual {p0, v2}, Lcom/android/server/display/AutomaticBrightnessController;->clampScreenBrightness(F)F

    move-result v3

    .line 1442
    invoke-static {v2, v3}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    .line 1466
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    cmpl-float v2, v2, v1

    const-string v3, "AutomaticBrightnessController"

    if-nez v2, :cond_36

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggedAmbientLux:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_18b

    .line 1468
    :cond_36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAutoBrightness : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    .line 1469
    invoke-static {v1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "%3d"

    .line 1468
    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v4, [Ljava/lang/Object;

    .line 1470
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v6, v7

    const-string p2, "%.2f"

    invoke-static {v5, p2, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array p2, v4, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    .line 1471
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, p2, v7

    const-string v6, "%6.0f"

    invoke-static {v6, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " < "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v8, v4, [Ljava/lang/Object;

    iget v9, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 1472
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v7

    const-string v9, "%8.1f"

    invoke-static {v5, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array p2, v4, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    .line 1473
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, p2, v7

    invoke-static {v6, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " (adj:"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array p2, v4, [Ljava/lang/Object;

    .line 1474
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightnessAdjustment()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, p2, v7

    const-string v6, "%+.1f"

    invoke-static {v5, v6, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1475
    iget p2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    const-string v8, " (1st)"

    if-eqz p2, :cond_df

    move-object p2, v8

    goto :goto_e1

    :cond_df
    const-string p2, ""

    :goto_e1
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1476
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[api] "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPowerHistorian:Lcom/android/server/power/PowerHistorian;

    invoke-virtual {v2, p2}, Lcom/android/server/power/PowerHistorian;->onAutoBrightnessEvent(Ljava/lang/String;)V

    const/16 p2, 0x9

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    .line 1481
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v7

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v4

    const/4 v0, 0x2

    iget v9, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v2, v0

    const/4 v0, 0x3

    iget v9, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    .line 1482
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v2, v0

    const/4 v0, 0x4

    new-array v9, v4, [Ljava/lang/Object;

    .line 1483
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightnessAdjustment()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-static {v5, v6, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    const/4 v0, 0x5

    .line 1484
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_147

    goto :goto_149

    :cond_147
    const-string v8, " "

    :goto_149
    aput-object v8, v2, v0

    .line 1480
    invoke-static {p2, v2}, Lcom/android/server/power/PowerManagerLog;->sendLogEvent(I[Ljava/lang/Object;)V

    .line 1487
    iget p2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iput p2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggedAmbientLux:F

    .line 1490
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHbmLux:I

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_15a

    goto :goto_15b

    :cond_15a
    move v4, v7

    .line 1491
    :goto_15b
    iget-boolean p2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastHBM:Z

    if-eq p2, v4, :cond_18b

    .line 1492
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "HBM is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_16e

    const-string v0, "Enabled"

    goto :goto_170

    :cond_16e
    const-string v0, "Disabled"

    :goto_170
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". mScreenAutoBrightness = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1493
    invoke-static {v1}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1492
    invoke-static {v3, p2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    iput-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastHBM:Z

    .line 1495
    invoke-virtual {p0, v4}, Lcom/android/server/display/AutomaticBrightnessController;->notifyHbmInfo(Z)V

    .line 1501
    :cond_18b
    iget p2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    invoke-static {p2, v1}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result p2

    if-nez p2, :cond_1c6

    .line 1503
    iget-boolean p2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz p2, :cond_1b6

    .line 1504
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateAutoBrightness: mScreenAutoBrightness="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", newScreenAutoBrightness="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    :cond_1b6
    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    .line 1518
    iget-boolean p2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsUnderDisplayLightSensor:Z

    if-eqz p2, :cond_1bf

    .line 1519
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->sendAmbientBrightnessThresholdInfo()V

    :cond_1bf
    if-eqz p1, :cond_1c6

    .line 1533
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    invoke-interface {p0}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->updateBrightness()V

    :cond_1c6
    return-void
.end method

.method public final updateForegroundApp()V
    .registers 3

    .line 1622
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v0, :cond_b

    const-string v0, "AutomaticBrightnessController"

    const-string v1, "Attempting to update foreground app"

    .line 1623
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    :cond_b
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInjector:Lcom/android/server/display/AutomaticBrightnessController$Injector;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController$Injector;->getBackgroundThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/AutomaticBrightnessController$2;

    invoke-direct {v1, p0}, Lcom/android/server/display/AutomaticBrightnessController$2;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final updateForegroundAppSync()V
    .registers 3

    .line 1660
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v0, :cond_26

    .line 1661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating foreground app: packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppCategory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutomaticBrightnessController"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    :cond_26
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppPackageName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 1665
    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppPackageName:Ljava/lang/String;

    .line 1666
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppCategory:I

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppCategory:I

    const/4 v0, -0x1

    .line 1667
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppCategory:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1668
    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(ZZ)V

    return-void
.end method

.method public final weightIntegral(J)F
    .registers 3

    long-to-float p1, p1

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float/2addr p2, p1

    .line 1231
    iget p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mWeightingIntercept:I

    int-to-float p0, p0

    add-float/2addr p2, p0

    mul-float/2addr p1, p2

    return p1
.end method
