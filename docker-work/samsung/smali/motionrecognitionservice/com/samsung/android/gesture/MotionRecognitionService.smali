.class public Lcom/samsung/android/gesture/MotionRecognitionService;
.super Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;
.source "MotionRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gesture/MotionRecognitionService$MyMotionRecognitionReactiveAlert;,
        Lcom/samsung/android/gesture/MotionRecognitionService$MyMotionRecognitionSettings;,
        Lcom/samsung/android/gesture/MotionRecognitionService$PreviousRegistrations;,
        Lcom/samsung/android/gesture/MotionRecognitionService$CustomTelephonyCallbackListener;,
        Lcom/samsung/android/gesture/MotionRecognitionService$DCMListener;,
        Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;,
        Lcom/samsung/android/gesture/MotionRecognitionService$EventPool;,
        Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;,
        Lcom/samsung/android/gesture/MotionRecognitionService$Listener;
    }
.end annotation


# static fields
.field private static final ACTION_CALL_SCREEN_PRESENCE_CHANGED:Ljava/lang/String; = "com.samsung.android.incallui.CALL_SCREEN_PRESENCE_CHANGED"

.field public static final ACTION_ROTATION_CHANGED:Ljava/lang/String; = "android.intent.action.CONFIGURATION_CHANGED"

.field private static final AUTO_ROTATION:I = 0x5

.field private static final CALL_DISCONNECTED:I = 0xa

.field private static final CALL_OFFHOOK:I = 0xb

.field private static final DEVICE_TYPE_PHONE:I = 0x0

.field private static final DEVICE_TYPE_PHONE_STRING:Ljava/lang/String; = "phone"

.field private static final DEVICE_TYPE_TABLET:I = 0x1

.field private static final DEVICE_TYPE_TABLET_STRING:Ljava/lang/String; = "tablet"

.field private static final DEVICE_TYPE_UNKNOWN:I = -0x1

.field private static final DISABLE_CAMERA_LUX:F = -2.0f

.field private static final DISABLE_FOLDING_STATE:I = 0x60

.field private static final DISABLE_POCKET_DETECTOR_SYSFS:I = 0x5d

.field private static final ENABLE_CAMERA_LUX:F = -1.0f

.field private static final ENABLE_FOLDING_STATE:I = 0x5f

.field private static final ENABLE_POCKET_DETECTOR_SYSFS:I = 0x5c

.field private static final EVENT_DISABLE_MOTION:I = 0x5a

.field private static final EVENT_ELEVATOR_MODE:I = 0x1000000

.field private static final EVENT_ENABLE_MOTION:I = 0x59

.field private static final EVENT_FROM_ENGINE:I = 0x55

.field private static final EVENT_POCKET_FOR_BIXBY:I = 0x2000000

.field private static final EVENT_POCKET_MODE:I = 0x800000

.field private static final EVENT_SCREEN_OFF:I = 0x57

.field private static final EVENT_SCREEN_ON:I = 0x56

.field private static final EVENT_SENSOR_LOGGING:I = 0x58

.field private static final EVENT_START_MOTIONS:I = 0x5e

.field private static final EXTRA_FOREGROUND:Ljava/lang/String; = "foreground"

.field private static final HQM_SURVEY_LOG:Z = true

.field private static final INJECT_AUTO_ROTATION:I = 0x1047c1

.field private static final INJECT_CALL_DISCONNECT:I = 0xd47c1

.field private static final INJECT_CALL_OFFHOOK:I = 0xf47c1

.field private static final INJECT_SCREEN_OFF:I = 0x47c1

.field private static final INJECT_SCREEN_ON:I = 0x10047c1

.field private static final MESSAGE_CALL_SCREEN_BACKGROUND:I = 0x63

.field private static final MESSAGE_CALL_SCREEN_FOREGROUND:I = 0x64

.field private static final MESSAGE_REFRESH_RATE_CHANGED:I = 0x62

.field private static final MOTION_DIRECT_CALLING:I = 0x400

.field private static final MOTION_OVER_TURN:I = 0x1

.field private static final MOTION_PALM_SWIPE:I = 0x400000

.field private static final MOTION_PALM_TOUCH:I = 0x200000

.field private static final MOTION_SMART_ALERT:I = 0x4

.field private static final PERMISSION_CALL_SCREEN_PRESENCE:Ljava/lang/String; = "com.samsung.android.incallui.permission.CALL_SCREEN_PRESENCE"

.field private static final SCREEN_BRIGHTNESS_MODE_AUTO:I = 0x1

.field private static final SCREEN_BRIGHTNESS_MODE_MANUAL:I = 0x0

.field private static final SCREEN_OFF:I = 0x0

.field private static final SCREEN_ON:I = 0x1

.field private static final SCREEN_STATE_OFF:I = 0x2

.field private static final SENSOR_TYPE_CALIBRATED_LUX:I = 0x10050

.field private static final SENSOR_TYPE_CAMERA_LIGHT:I = 0x10044

.field private static final SENSOR_TYPE_MOTIONRECOGNITION:I = 0x10017

.field private static final SETTINGS_UPDATE:I = 0x5b

.field private static final SYSFS_CHECK_STATE_FAR:Ljava/lang/String; = "/sys/class/sensors/proximity_sensor/check_far_state"

.field private static final SYSFS_POCKET_DETECTOR:Ljava/lang/String; = "/sys/class/sec/tsp/cmd"

.field protected static final TAG:Ljava/lang/String; = "MotionRecognitionService"

.field private static final TYPE_SENSORHUB_DATA:I = 0x42554853


# instance fields
.field private INCALLUI_PACKAGE_NAME:Ljava/lang/String;

.field private elevator:Lcom/samsung/android/gesture/ElevatorModeEvent;

.field private mAdaptiveBrightnessController:Lcom/samsung/android/gesture/AdaptiveBrightnessController;

.field private mAutoRotationHandler:Lcom/samsung/android/gesture/AutoRotationHandler;

.field private mBrightnessHandler:Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;

.field private mCalibratedLux:Landroid/hardware/Sensor;

.field private mCalibratedLuxListener:Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;

.field private final mCallIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mCameraLightSensor:Landroid/hardware/Sensor;

.field private mCheckProximityPopup:Lcom/samsung/android/gesture/CheckProximitySensor;

.field private final mContext:Landroid/content/Context;

.field private mDCM:Lcom/samsung/android/gesture/MotionRecognitionService$DCMListener;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mEnableCalibratedLux:Z

.field private mEngineInitialized:Z

.field private mEvToLux:Lcom/samsung/android/gesture/ExposureToLuxMapping;

.field private mEventPool:Lcom/samsung/android/gesture/MotionRecognitionService$EventPool;

.field private mFoldingSensor:Landroid/hardware/Sensor;

.field private mFoldingSensorSupported:Z

.field private mFoldingSensorVersion:I

.field private mFoldingState:I

.field private mHandler:Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

.field private mHasSensorHub:Z

.field private mInputManager:Landroid/hardware/input/InputManager;

.field private mIsAccSensorOn:Z

.field private mIsAvailableDirectCall:Z

.field private mIsAvailableElevatorMode:Z

.field private mIsAvailablePalmSwipe:Z

.field private mIsAvailablePalmTouch:Z

.field private mIsAvailablePocketForBixby:Z

.field private mIsAvailablePocketMode:Z

.field private mIsAvailableSmartAlert:Z

.field private mIsAvailableTurnOver:Z

.field private mIsDCM:Z

.field private mIsFlat:Z

.field private mIsMagSensorOn:Z

.field private mIsPressureSensorOn:Z

.field private mKeyGuardManager:Landroid/app/KeyguardManager;

.field private mLastCalibratedLuxStatus:F

.field private mLiftUpHandler:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;

.field private mLightSensorVersion:I

.field private mListener:Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/gesture/MotionRecognitionService$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLockEngine:Ljava/lang/Object;

.field private mMotionSensor:Landroid/hardware/Sensor;

.field private mMotionSettings:Lcom/samsung/android/gesture/MotionRecognitionSettings;

.field private mPalmMotion:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

.field private final mPhoneStateCallback:Lcom/samsung/android/gesture/MotionRecognitionService$CustomTelephonyCallbackListener;

.field private mPocketModeEvent:Lcom/samsung/android/gesture/PocketModeEvent;

.field private final mPrevRegistrations:Lcom/samsung/android/gesture/MotionRecognitionService$PreviousRegistrations;

.field private mReactiveAlert:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRefCntEvents:[I

.field private mRegisteredPocketDetector:Z

.field private mSARMotion:Lcom/samsung/android/gesture/MotionRecognitionSAR;

.field private mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

.field private mSensorChecker:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorsEnabled:I

.field private mSensorsUsed:I

.field private mShouldInjectRefreshRate:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mThread:Landroid/os/HandlerThread;

.field private mWakelock:Landroid/os/PowerManager$WakeLock;

.field private myElevatorDetect:Lcom/samsung/android/gesture/ElevatorModeEvent$OnElevatorDetectInterface;


# direct methods
.method static bridge synthetic -$$Nest$fgetINCALLUI_PACKAGE_NAME(Lcom/samsung/android/gesture/MotionRecognitionService;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->INCALLUI_PACKAGE_NAME:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAutoRotationHandler(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/AutoRotationHandler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mAutoRotationHandler:Lcom/samsung/android/gesture/AutoRotationHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBrightnessHandler(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mBrightnessHandler:Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCheckProximityPopup(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/CheckProximitySensor;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mCheckProximityPopup:Lcom/samsung/android/gesture/CheckProximitySensor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayManager(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/hardware/display/DisplayManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnableCalibratedLux(Lcom/samsung/android/gesture/MotionRecognitionService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mEnableCalibratedLux:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEngineInitialized(Lcom/samsung/android/gesture/MotionRecognitionService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mEngineInitialized:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEventPool(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionService$EventPool;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mEventPool:Lcom/samsung/android/gesture/MotionRecognitionService$EventPool;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFoldingSensorSupported(Lcom/samsung/android/gesture/MotionRecognitionService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mFoldingSensorSupported:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFoldingSensorVersion(Lcom/samsung/android/gesture/MotionRecognitionService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mFoldingSensorVersion:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFoldingState(Lcom/samsung/android/gesture/MotionRecognitionService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mFoldingState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mHandler:Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHasSensorHub(Lcom/samsung/android/gesture/MotionRecognitionService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mHasSensorHub:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmInputManager(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/hardware/input/InputManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mInputManager:Landroid/hardware/input/InputManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastCalibratedLuxStatus(Lcom/samsung/android/gesture/MotionRecognitionService;)F
    .registers 1

    iget p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mLastCalibratedLuxStatus:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLightSensorVersion(Lcom/samsung/android/gesture/MotionRecognitionService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mLightSensorVersion:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListener:Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListeners(Lcom/samsung/android/gesture/MotionRecognitionService;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLockEngine(Lcom/samsung/android/gesture/MotionRecognitionService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mLockEngine:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMotionSensor(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/hardware/Sensor;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mMotionSensor:Landroid/hardware/Sensor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMotionSettings(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionSettings;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mMotionSettings:Lcom/samsung/android/gesture/MotionRecognitionSettings;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPalmMotion(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mPalmMotion:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRefCntEvents(Lcom/samsung/android/gesture/MotionRecognitionService;)[I
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mRefCntEvents:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRegisteredPocketDetector(Lcom/samsung/android/gesture/MotionRecognitionService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mRegisteredPocketDetector:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSARMotion(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionSAR;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSARMotion:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSensorChecker(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorChecker:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/hardware/SensorManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShouldInjectRefreshRate(Lcom/samsung/android/gesture/MotionRecognitionService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mShouldInjectRefreshRate:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmFoldingState(Lcom/samsung/android/gesture/MotionRecognitionService;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mFoldingState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmInputManager(Lcom/samsung/android/gesture/MotionRecognitionService;Landroid/hardware/input/InputManager;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mInputManager:Landroid/hardware/input/InputManager;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsFlat(Lcom/samsung/android/gesture/MotionRecognitionService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsFlat:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastCalibratedLuxStatus(Lcom/samsung/android/gesture/MotionRecognitionService;F)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mLastCalibratedLuxStatus:F

    return-void
.end method

.method static bridge synthetic -$$Nest$mdisableUnusedSensors(Lcom/samsung/android/gesture/MotionRecognitionService;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->disableUnusedSensors()V

    return-void
.end method

.method static bridge synthetic -$$Nest$menableSensor(Lcom/samsung/android/gesture/MotionRecognitionService;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/gesture/MotionRecognitionService;->enableSensor(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfinalizeMotionEngine(Lcom/samsung/android/gesture/MotionRecognitionService;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->finalizeMotionEngine()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetFaceStatus(Lcom/samsung/android/gesture/MotionRecognitionService;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->getFaceStatus()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetWindowRotation(Lcom/samsung/android/gesture/MotionRecognitionService;)I
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->getWindowRotation()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$minitializeMotionEngine(Lcom/samsung/android/gesture/MotionRecognitionService;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->initializeMotionEngine()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monChangedScreenState(Lcom/samsung/android/gesture/MotionRecognitionService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionService;->onChangedScreenState(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterCalibratedLuxSensor(Lcom/samsung/android/gesture/MotionRecognitionService;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->registerCalibratedLuxSensor()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendMotionEvent(Lcom/samsung/android/gesture/MotionRecognitionService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionService;->sendMotionEvent(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartMotions(Lcom/samsung/android/gesture/MotionRecognitionService;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->startMotions()V

    return-void
.end method

.method static bridge synthetic -$$Nest$munregisterCalibratedLuxSensor(Lcom/samsung/android/gesture/MotionRecognitionService;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->unregisterCalibratedLuxSensor()V

    return-void
.end method

.method static bridge synthetic -$$Nest$munregisterPocketDetector(Lcom/samsung/android/gesture/MotionRecognitionService;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->unregisterPocketDetector()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRegisteredMotions(Lcom/samsung/android/gesture/MotionRecognitionService;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->updateRegisteredMotions()V

    return-void
.end method

.method static bridge synthetic -$$Nest$museSensor(Lcom/samsung/android/gesture/MotionRecognitionService;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/gesture/MotionRecognitionService;->useSensor(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwritePocketDetectorSysfs(Lcom/samsung/android/gesture/MotionRecognitionService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionService;->writePocketDetectorSysfs(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .line 265
    invoke-direct {p0}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;-><init>()V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mHandler:Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    .line 116
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    .line 117
    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mEventPool:Lcom/samsung/android/gesture/MotionRecognitionService$EventPool;

    .line 118
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mLockEngine:Ljava/lang/Object;

    .line 119
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mEngineInitialized:Z

    .line 120
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorsUsed:I

    .line 121
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorsEnabled:I

    .line 123
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mHasSensorHub:Z

    .line 126
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mEnableCalibratedLux:Z

    .line 139
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailableTurnOver:Z

    .line 140
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailableDirectCall:Z

    .line 141
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailableSmartAlert:Z

    .line 142
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailablePalmTouch:Z

    .line 143
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailablePalmSwipe:Z

    .line 146
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailablePocketMode:Z

    .line 147
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailableElevatorMode:Z

    .line 148
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailablePocketForBixby:Z

    .line 184
    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListener:Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;

    .line 185
    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mDCM:Lcom/samsung/android/gesture/MotionRecognitionService$DCMListener;

    .line 186
    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mCalibratedLuxListener:Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;

    .line 187
    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mLightSensorVersion:I

    .line 189
    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 190
    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mKeyGuardManager:Landroid/app/KeyguardManager;

    .line 191
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mLastCalibratedLuxStatus:F

    .line 201
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mRegisteredPocketDetector:Z

    .line 202
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsDCM:Z

    .line 204
    new-instance v2, Lcom/samsung/android/gesture/MotionRecognitionService$PreviousRegistrations;

    invoke-direct {v2}, Lcom/samsung/android/gesture/MotionRecognitionService$PreviousRegistrations;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mPrevRegistrations:Lcom/samsung/android/gesture/MotionRecognitionService$PreviousRegistrations;

    .line 209
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAccSensorOn:Z

    .line 210
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsMagSensorOn:Z

    .line 211
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsPressureSensorOn:Z

    .line 214
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mFoldingSensorSupported:Z

    .line 215
    const/4 v3, -0x1

    iput v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mFoldingSensorVersion:I

    .line 216
    iput v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mFoldingState:I

    .line 218
    new-instance v3, Lcom/samsung/android/gesture/MotionRecognitionService$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/gesture/MotionRecognitionService$1;-><init>(Lcom/samsung/android/gesture/MotionRecognitionService;)V

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mCallIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 236
    new-instance v3, Lcom/samsung/android/gesture/MotionRecognitionService$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/gesture/MotionRecognitionService$2;-><init>(Lcom/samsung/android/gesture/MotionRecognitionService;)V

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1593
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsFlat:Z

    .line 1831
    new-instance v3, Lcom/samsung/android/gesture/MotionRecognitionService$CustomTelephonyCallbackListener;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/gesture/MotionRecognitionService$CustomTelephonyCallbackListener;-><init>(Lcom/samsung/android/gesture/MotionRecognitionService;Lcom/samsung/android/gesture/MotionRecognitionService$CustomTelephonyCallbackListener-IA;)V

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mPhoneStateCallback:Lcom/samsung/android/gesture/MotionRecognitionService$CustomTelephonyCallbackListener;

    .line 1879
    new-instance v3, Lcom/samsung/android/gesture/MotionRecognitionService$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/gesture/MotionRecognitionService$4;-><init>(Lcom/samsung/android/gesture/MotionRecognitionService;)V

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 266
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mContext:Landroid/content/Context;

    .line 268
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "motion_recognition"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mThread:Landroid/os/HandlerThread;

    .line 269
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 270
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    .line 271
    .local v3, "looperServiceHandler":Landroid/os/Looper;
    const-string v4, "MotionRecognitionService"

    if-eqz v3, :cond_19e

    .line 272
    new-instance v5, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    invoke-direct {v5, p0, v3}, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;-><init>(Lcom/samsung/android/gesture/MotionRecognitionService;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mHandler:Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    .line 278
    const-string v5, "sensor"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/SensorManager;

    iput-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 279
    const-string v5, "scontext"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/hardware/context/SemContextManager;

    iput-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 280
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.sec.feature.sensorhub"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mHasSensorHub:Z

    .line 281
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Support: SSP = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mHasSensorHub:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v6, :cond_d9

    .line 284
    const v7, 0x10017

    invoke-virtual {v6, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mMotionSensor:Landroid/hardware/Sensor;

    .line 286
    :cond_d9
    const-string v6, "power"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 287
    .local v6, "pm":Landroid/os/PowerManager;
    const-string v7, "motion_service"

    invoke-virtual {v6, v2, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    .line 288
    invoke-virtual {v2, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 290
    new-instance v1, Lcom/samsung/android/gesture/MotionRecognitionService$EventPool;

    invoke-direct {v1}, Lcom/samsung/android/gesture/MotionRecognitionService$EventPool;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mEventPool:Lcom/samsung/android/gesture/MotionRecognitionService$EventPool;

    .line 292
    const/16 v1, 0x19

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mRefCntEvents:[I

    .line 293
    new-instance v1, Lcom/samsung/android/gesture/MotionRecognitionService$MyMotionRecognitionSettings;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionService$MyMotionRecognitionSettings;-><init>(Lcom/samsung/android/gesture/MotionRecognitionService;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mMotionSettings:Lcom/samsung/android/gesture/MotionRecognitionSettings;

    .line 295
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->registerIntents()V

    .line 296
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->registerCallIntents()V

    .line 298
    new-instance v1, Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;-><init>(Lcom/samsung/android/gesture/MotionRecognitionService;Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener-IA;)V

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListener:Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;

    .line 299
    new-instance v0, Lcom/samsung/android/gesture/MotionRecognitionService$DCMListener;

    invoke-direct {v0}, Lcom/samsung/android/gesture/MotionRecognitionService$DCMListener;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mDCM:Lcom/samsung/android/gesture/MotionRecognitionService$DCMListener;

    .line 301
    new-instance v0, Lcom/samsung/android/gesture/MotionRecognitionService$MyMotionRecognitionReactiveAlert;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/MotionRecognitionService$MyMotionRecognitionReactiveAlert;-><init>(Lcom/samsung/android/gesture/MotionRecognitionService;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mReactiveAlert:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;

    .line 302
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->setupSmartAlertAvailability()V

    .line 304
    invoke-static {p1}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->createInstance(Landroid/content/Context;)Lcom/samsung/android/gesture/MotionRecognitionSAR;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSARMotion:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    .line 305
    new-instance v0, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;

    invoke-direct {v0, p1}, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mBrightnessHandler:Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;

    .line 306
    new-instance v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;-><init>(Landroid/content/Context;Lcom/samsung/android/hardware/context/SemContextManager;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorChecker:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    .line 307
    new-instance v0, Lcom/samsung/android/gesture/CheckProximitySensor;

    invoke-direct {v0, p1}, Lcom/samsung/android/gesture/CheckProximitySensor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mCheckProximityPopup:Lcom/samsung/android/gesture/CheckProximitySensor;

    .line 309
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->registerTelephonyCallback()V

    .line 310
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->getInCallUiPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->INCALLUI_PACKAGE_NAME:Ljava/lang/String;

    .line 312
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->setupMotionAvailability()V

    .line 314
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->setupPocketAvailability()V

    .line 315
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailablePocketMode:Z

    if-eqz v0, :cond_155

    .line 316
    new-instance v0, Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-direct {v0, p1}, Lcom/samsung/android/gesture/PocketModeEvent;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mPocketModeEvent:Lcom/samsung/android/gesture/PocketModeEvent;

    .line 319
    :cond_155
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->setupRefreshRateInjection()V

    .line 320
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->setupAutoBrightnessSupport()V

    .line 321
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->setupFoldingDeviceSupport()V

    .line 323
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->checkDeviceForDummyAction()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsDCM:Z

    .line 325
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->checkSensorForElevator()V

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsAvailableElevatorMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailableElevatorMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailableElevatorMode:Z

    if-eqz v0, :cond_191

    .line 328
    new-instance v0, Lcom/samsung/android/gesture/ElevatorModeEvent;

    invoke-direct {v0, p1}, Lcom/samsung/android/gesture/ElevatorModeEvent;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->elevator:Lcom/samsung/android/gesture/ElevatorModeEvent;

    .line 329
    new-instance v0, Lcom/samsung/android/gesture/MotionRecognitionService$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/MotionRecognitionService$3;-><init>(Lcom/samsung/android/gesture/MotionRecognitionService;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->myElevatorDetect:Lcom/samsung/android/gesture/ElevatorModeEvent$OnElevatorDetectInterface;

    .line 340
    :cond_191
    nop

    .line 341
    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextManager;

    .line 342
    .local v0, "manager":Lcom/samsung/android/hardware/context/SemContextManager;
    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    .line 343
    return-void

    .line 274
    .end local v0    # "manager":Lcom/samsung/android/hardware/context/SemContextManager;
    .end local v6    # "pm":Landroid/os/PowerManager;
    :cond_19e
    const-string v0, "Failed to get a looper for ServiceHandler."

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return-void
.end method

.method private checkDeviceForDummyAction()Z
    .registers 4

    .line 1938
    const-string v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1940
    .local v0, "model":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 1941
    const-string v2, "SGH-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "SC-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_19
    const/4 v1, 0x1

    :cond_1a
    return v1

    .line 1943
    :cond_1b
    return v1
.end method

.method private checkPocketmodeBixbyState()V
    .registers 3

    .line 1801
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailablePocketForBixby:Z

    .line 1802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsAvailablePocketForBixby : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailablePocketForBixby:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionRecognitionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    return-void
.end method

.method private checkPocketmodeState()Z
    .registers 14

    .line 1755
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x10033

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 1756
    .local v0, "lightCCTSensor":Landroid/hardware/Sensor;
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 1757
    .local v1, "lightSensor":Landroid/hardware/Sensor;
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 1758
    .local v2, "proxSensor":Landroid/hardware/Sensor;
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    const v4, 0x10038

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    .line 1760
    .local v3, "proxPhysicalSensor":Landroid/hardware/Sensor;
    const/4 v4, 0x0

    .line 1761
    .local v4, "lightSensorError":Z
    const/4 v5, 0x0

    .line 1764
    .local v5, "proxSensorError":Z
    const-string v6, "MotionRecognitionService"

    if-nez v0, :cond_2f

    if-nez v1, :cond_2f

    .line 1765
    const/4 v4, 0x1

    .line 1766
    const-string v7, "Pocketmode Light Sensor Fail"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    :cond_2f
    if-nez v2, :cond_39

    .line 1770
    if-nez v3, :cond_39

    .line 1771
    const/4 v5, 0x1

    .line 1772
    const-string v7, "Pocketmode Prox Sensor Fail"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    :cond_39
    const-string v7, "ril.product_code"

    const-string v8, "unknown"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1777
    .local v7, "modelName":Ljava/lang/String;
    const-string v8, "A426N"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4f

    .line 1778
    const-string v8, "Pocketmode Prox Sensor Fail_A426N"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    const/4 v5, 0x1

    .line 1782
    :cond_4f
    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1783
    .local v6, "resources":Landroid/content/res/Resources;
    const-string v8, "config_showNavigationBar"

    const-string v9, "bool"

    const-string v10, "android"

    invoke-virtual {v6, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 1784
    .local v8, "resourceId":I
    const/4 v9, 0x0

    .line 1785
    .local v9, "hasSoftHomeKey":Z
    if-eqz v8, :cond_6c

    .line 1786
    iget-object v10, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    .line 1789
    :cond_6c
    const/4 v10, 0x0

    if-nez v4, :cond_7c

    if-nez v5, :cond_7c

    .line 1790
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->getDeviceType()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_7b

    if-nez v9, :cond_7b

    .line 1791
    return v10

    .line 1793
    :cond_7b
    return v12

    .line 1796
    :cond_7c
    return v10
.end method

.method private checkSensorForElevator()V
    .registers 6

    .line 1809
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_29

    .line 1810
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 1811
    .local v0, "accSensor":Landroid/hardware/Sensor;
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 1812
    .local v2, "magSensor":Landroid/hardware/Sensor;
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    .line 1813
    .local v3, "pressureSensor":Landroid/hardware/Sensor;
    const/4 v4, 0x0

    if-nez v0, :cond_1d

    .line 1814
    iput-boolean v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAccSensorOn:Z

    .line 1815
    return-void

    .line 1817
    :cond_1d
    if-nez v2, :cond_22

    .line 1818
    iput-boolean v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsMagSensorOn:Z

    .line 1819
    return-void

    .line 1821
    :cond_22
    if-nez v3, :cond_27

    .line 1822
    iput-boolean v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsPressureSensorOn:Z

    .line 1823
    return-void

    .line 1825
    :cond_27
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailableElevatorMode:Z

    .line 1827
    .end local v0    # "accSensor":Landroid/hardware/Sensor;
    .end local v2    # "magSensor":Landroid/hardware/Sensor;
    .end local v3    # "pressureSensor":Landroid/hardware/Sensor;
    :cond_29
    return-void
.end method

.method private disableUnusedSensors()V
    .registers 8

    .line 1086
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1a

    .line 1087
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    if-ge v0, v1, :cond_16

    .line 1088
    shl-int v4, v3, v0

    .line 1089
    .local v4, "motion_sensor":I
    invoke-direct {p0, v4, v2}, Lcom/samsung/android/gesture/MotionRecognitionService;->useSensor(IZ)V

    .line 1087
    .end local v4    # "motion_sensor":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 1091
    .end local v0    # "i":I
    :cond_16
    invoke-direct {p0, v2}, Lcom/samsung/android/gesture/MotionRecognitionService;->enableAllSensors(Z)V

    goto :goto_38

    .line 1095
    :cond_1a
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mMotionSettings:Lcom/samsung/android/gesture/MotionRecognitionSettings;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionSettings;->getBitmaskSensorsActivated()I

    move-result v0

    .line 1097
    .local v0, "bitmaskActivatedSensors":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_21
    if-ge v4, v1, :cond_38

    .line 1098
    shl-int v5, v3, v4

    .line 1099
    .local v5, "sensorBit":I
    and-int v6, v0, v5

    if-nez v6, :cond_35

    .line 1100
    invoke-direct {p0, v5}, Lcom/samsung/android/gesture/MotionRecognitionService;->isSensorUsed(I)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 1101
    invoke-direct {p0, v5, v2}, Lcom/samsung/android/gesture/MotionRecognitionService;->useSensor(IZ)V

    .line 1102
    invoke-direct {p0, v5, v2}, Lcom/samsung/android/gesture/MotionRecognitionService;->enableSensor(IZ)V

    .line 1097
    .end local v5    # "sensorBit":I
    :cond_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 1107
    .end local v0    # "bitmaskActivatedSensors":I
    .end local v4    # "i":I
    :cond_38
    :goto_38
    return-void
.end method

.method private enableAllSensors(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 1079
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x5

    if-ge v0, v1, :cond_c

    .line 1080
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    .line 1081
    .local v1, "motion_sensor":I
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/gesture/MotionRecognitionService;->enableSensor(IZ)V

    .line 1079
    .end local v1    # "motion_sensor":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1083
    .end local v0    # "i":I
    :cond_c
    return-void
.end method

.method private enableSensor(IZ)V
    .registers 8
    .param p1, "bit_pos_sensor"    # I
    .param p2, "enable"    # Z

    .line 1026
    invoke-static {p1}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->isValidMotionSensor(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1027
    return-void

    .line 1029
    :cond_7
    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionService;->isSensorEnabled(I)Z

    move-result v0

    if-eq p2, v0, :cond_8c

    .line 1031
    const/16 v0, 0x8

    const-string v1, "MotionRecognitionService"

    if-eqz p2, :cond_54

    .line 1032
    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionService;->isSensorUsed(I)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 1034
    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorsEnabled:I

    or-int/2addr v2, p1

    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorsEnabled:I

    .line 1036
    sparse-switch p1, :sswitch_data_8e

    .line 1051
    goto :goto_8c

    .line 1048
    :sswitch_22
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mHandler:Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->sendEmptyMessage(I)Z

    .line 1049
    goto :goto_8c

    .line 1042
    :sswitch_2a
    iget-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailableDirectCall:Z

    if-eqz v1, :cond_8c

    .line 1043
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListener:Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;

    .line 1044
    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mHandler:Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    .line 1043
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_8c

    .line 1039
    :sswitch_3d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Acc/Gyro was enable by motion sensor  = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    goto :goto_8c

    .line 1055
    :cond_54
    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorsEnabled:I

    not-int v3, p1

    and-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorsEnabled:I

    .line 1057
    sparse-switch p1, :sswitch_data_a0

    goto :goto_8c

    .line 1069
    :sswitch_5e
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mHandler:Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    const/16 v1, 0x60

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->sendEmptyMessage(I)Z

    .line 1070
    goto :goto_8c

    .line 1064
    :sswitch_66
    iget-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailableDirectCall:Z

    if-eqz v1, :cond_8c

    .line 1065
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListener:Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    goto :goto_8c

    .line 1060
    :sswitch_76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Acc/Gyro will be disabled by motion sensor  = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    :cond_8c
    :goto_8c
    return-void

    nop

    :sswitch_data_8e
    .sparse-switch
        0x1 -> :sswitch_3d
        0x2 -> :sswitch_3d
        0x4 -> :sswitch_2a
        0x10 -> :sswitch_22
    .end sparse-switch

    :sswitch_data_a0
    .sparse-switch
        0x1 -> :sswitch_76
        0x2 -> :sswitch_76
        0x4 -> :sswitch_66
        0x10 -> :sswitch_5e
    .end sparse-switch
.end method

.method private finalizeMotionEngine()V
    .registers 5

    .line 585
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mLockEngine:Ljava/lang/Object;

    monitor-enter v0

    .line 586
    :try_start_3
    iget-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mEngineInitialized:Z

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    .line 587
    :cond_9
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_28

    .line 589
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mLockEngine:Ljava/lang/Object;

    monitor-enter v1

    .line 590
    const/4 v0, 0x0

    :try_start_e
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mEngineInitialized:Z

    .line 591
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListener:Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 592
    invoke-direct {p0, v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->enableAllSensors(Z)V

    .line 594
    const-string v2, "MotionRecognitionService"

    const-string v3, "  .finalizeMotionEngine"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsFlat:Z

    .line 596
    monitor-exit v1

    .line 597
    return-void

    .line 596
    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_e .. :try_end_27} :catchall_25

    throw v0

    .line 587
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method private getDeviceType()I
    .registers 3

    .line 1927
    const-string v0, "ro.build.characteristics"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1929
    .local v0, "strType":Ljava/lang/String;
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1930
    const/4 v1, 0x0

    return v1

    .line 1931
    :cond_12
    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1932
    const/4 v1, 0x1

    return v1

    .line 1934
    :cond_1c
    const/4 v1, -0x1

    return v1
.end method

.method private getFaceStatus()Z
    .registers 7

    .line 1110
    const/4 v0, 0x0

    .line 1112
    .local v0, "res":Z
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mKeyGuardManager:Landroid/app/KeyguardManager;

    if-nez v1, :cond_11

    .line 1113
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mKeyGuardManager:Landroid/app/KeyguardManager;

    .line 1115
    :cond_11
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mKeyGuardManager:Landroid/app/KeyguardManager;

    const/4 v2, 0x0

    const-string v3, "MotionRecognitionService"

    if-nez v1, :cond_1e

    .line 1116
    const-string v1, "KeyGuardManager is null!!"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    return v2

    .line 1120
    :cond_1e
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1121
    .local v1, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const/16 v4, 0x100

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(II)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_37

    move v2, v5

    .line 1122
    .local v2, "isFaceUnlock":Z
    :cond_37
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mKeyGuardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result v4

    if-eqz v4, :cond_42

    if-eqz v2, :cond_42

    .line 1123
    const/4 v0, 0x1

    .line 1125
    :cond_42
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "is faceUnlock : :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " phone is locked : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mKeyGuardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v5}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    return v0
.end method

.method private getInCallUiPackageName()Ljava/lang/String;
    .registers 3

    .line 411
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_VOICECALL_CONFIG_INCALLUI_PACKAGE_NAME"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 414
    const-string v0, "com.android.incallui"

    .line 416
    :cond_14
    return-object v0
.end method

.method private getWindowRotation()I
    .registers 4

    .line 619
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_16

    .line 620
    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 621
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_f

    .line 622
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    return v1

    .line 624
    :cond_f
    const-string v1, "MotionRecognitionService"

    const-string v2, "Display is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    .end local v0    # "display":Landroid/view/Display;
    :cond_16
    const/4 v0, -0x1

    return v0
.end method

.method private initializeMotionEngine()V
    .registers 8

    .line 558
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mLockEngine:Ljava/lang/Object;

    monitor-enter v0

    .line 559
    :try_start_3
    iget-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mEngineInitialized:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    .line 560
    :cond_9
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_4f

    .line 562
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mMotionSettings:Lcom/samsung/android/gesture/MotionRecognitionSettings;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionSettings;->isMotionEngineEnabled()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 564
    :cond_13
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 565
    :try_start_16
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_20

    monitor-exit v1

    return-void

    .line 566
    :cond_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_4c

    .line 568
    const-string v0, "MotionRecognitionService"

    const-string v1, "  .initializeMotionEngine"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mLockEngine:Ljava/lang/Object;

    monitor-enter v0

    .line 571
    const/4 v1, 0x1

    :try_start_2c
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mEngineInitialized:Z

    .line 572
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListener:Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mMotionSensor:Landroid/hardware/Sensor;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mHandler:Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v2

    if-nez v2, :cond_44

    .line 576
    const-string v2, "MotionRecognitionService"

    const-string v3, "Fail to enableMotionSensor !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :cond_44
    invoke-direct {p0, v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->enableAllSensors(Z)V

    .line 580
    monitor-exit v0

    .line 581
    return-void

    .line 580
    :catchall_49
    move-exception v1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_2c .. :try_end_4b} :catchall_49

    throw v1

    .line 566
    :catchall_4c
    move-exception v0

    :try_start_4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v0

    .line 560
    :catchall_4f
    move-exception v1

    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v1
.end method

.method private isScreenOn()Z
    .registers 6

    .line 497
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "MotionRecognitionService"

    if-nez v0, :cond_d

    .line 498
    const-string v0, "Error: Failed to get Display State"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    return v1

    .line 501
    :cond_d
    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    .line 502
    .local v0, "state":I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1f

    .line 503
    const-string v1, "Screen: On"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const/4 v1, 0x1

    return v1

    .line 506
    :cond_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Screen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    return v1
.end method

.method private isSensorEnabled(I)Z
    .registers 4
    .param p1, "motion_sensor"    # I

    .line 1006
    invoke-static {p1}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->isValidMotionSensor(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1007
    return v1

    .line 1008
    :cond_8
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorsEnabled:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1
.end method

.method private isSensorUsed(I)Z
    .registers 4
    .param p1, "motion_sensor"    # I

    .line 999
    invoke-static {p1}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->isValidMotionSensor(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1000
    return v1

    .line 1001
    :cond_8
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorsUsed:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1
.end method

.method private onChangedScreenState(I)V
    .registers 8
    .param p1, "state"    # I

    .line 1519
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1521
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2e

    .line 1522
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->initializeMotionEngine()V

    .line 1523
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1524
    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_22

    .line 1525
    const-string v0, "MotionRecognitionService"

    const-string v2, " Cancel reactive alert mode "

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mReactiveAlert:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->disableAccINT()V

    .line 1528
    :cond_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_e .. :try_end_23} :catchall_2b

    .line 1529
    const-string v0, "MotionRecognitionService"

    const-string v1, "SCREEN_ON END"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75

    .line 1528
    :catchall_2b
    move-exception v0

    :try_start_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v0

    .line 1530
    :cond_2e
    if-nez p1, :cond_75

    .line 1531
    const/4 v1, 0x0

    .line 1532
    .local v1, "enabledEasyMute":Z
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1533
    :try_start_34
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_56

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;

    .line 1534
    .local v4, "listener":Lcom/samsung/android/gesture/MotionRecognitionService$Listener;
    iget v5, v4, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->mMotionEvents:I

    and-int/2addr v5, v0

    if-eqz v5, :cond_55

    .line 1535
    const-string v0, "MotionRecognitionService"

    const-string v3, "Easy mute is activated"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    const/4 v0, 0x1

    .line 1537
    .end local v1    # "enabledEasyMute":Z
    .local v0, "enabledEasyMute":Z
    move v1, v0

    goto :goto_56

    .line 1539
    .end local v0    # "enabledEasyMute":Z
    .end local v4    # "listener":Lcom/samsung/android/gesture/MotionRecognitionService$Listener;
    .restart local v1    # "enabledEasyMute":Z
    :cond_55
    goto :goto_3a

    .line 1540
    :cond_56
    :goto_56
    const-string v0, "MotionRecognitionService"

    const-string v3, "SCREEN_OFF: setAccIntStatus"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mReactiveAlert:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;

    const/16 v3, 0x1e

    invoke-virtual {v0, v3}, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->setAccIntStatus(I)V

    .line 1542
    monitor-exit v2
    :try_end_65
    .catchall {:try_start_34 .. :try_end_65} :catchall_72

    .line 1543
    if-nez v1, :cond_6a

    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->finalizeMotionEngine()V

    .line 1544
    :cond_6a
    const-string v0, "MotionRecognitionService"

    const-string v2, "SCREEN_OFF END"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75

    .line 1542
    :catchall_72
    move-exception v0

    :try_start_73
    monitor-exit v2
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    throw v0

    .line 1546
    .end local v1    # "enabledEasyMute":Z
    :cond_75
    :goto_75
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1547
    return-void
.end method

.method private registerCalibratedLuxSensor()V
    .registers 7

    .line 1672
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mLightSensorVersion:I

    const-string v1, "MotionRecognitionService"

    const/16 v2, 0x3e8

    if-lt v0, v2, :cond_23

    .line 1673
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mCalibratedLuxListener:Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mCalibratedLux:Landroid/hardware/Sensor;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mHandler:Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v0

    .line 1674
    .local v0, "res":Z
    if-eqz v0, :cond_1d

    .line 1675
    const-string v2, "Successfully register calibratedLux type sensor"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 1677
    :cond_1d
    const-string v2, "Fail to register calibratedLux type sensor"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    .end local v0    # "res":Z
    :goto_22
    goto :goto_28

    .line 1680
    :cond_23
    const-string v0, "Not supported calibratedLux type sensor [2]"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    :goto_28
    return-void
.end method

.method private registerCallIntents()V
    .registers 8

    .line 471
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 472
    .local v0, "callIntentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.incallui.CALL_SCREEN_PRESENCE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 473
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mCallIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mHandler:Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    const-string v5, "com.samsung.android.incallui.permission.CALL_SCREEN_PRESENCE"

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 475
    return-void
.end method

.method private registerIntents()V
    .registers 8

    .line 478
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 479
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 480
    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 481
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 482
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 483
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 484
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 485
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 486
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 487
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 488
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mHandler:Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    const/4 v5, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 489
    return-void
.end method

.method private registerPocketDetector()V
    .registers 4

    .line 1735
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x10049

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 1736
    .local v0, "pocketSensor":Landroid/hardware/Sensor;
    if-nez v0, :cond_12

    .line 1737
    const-string v1, "MotionRecognitionService"

    const-string v2, "pocket detector is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    :cond_12
    return-void
.end method

.method private registerTelephonyCallback()V
    .registers 5

    .line 401
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_30

    .line 402
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 403
    .local v0, "prox":Landroid/hardware/Sensor;
    if-eqz v0, :cond_30

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ear Hover Proximity Lite"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 404
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 405
    new-instance v2, Landroid/os/HandlerExecutor;

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mHandler:Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    invoke-direct {v2, v3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mPhoneStateCallback:Lcom/samsung/android/gesture/MotionRecognitionService$CustomTelephonyCallbackListener;

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 408
    .end local v0    # "prox":Landroid/hardware/Sensor;
    :cond_30
    return-void
.end method

.method private sendMotionEvent(I)V
    .registers 6
    .param p1, "motion"    # I

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendMotionEvent num"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionRecognitionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    if-lez p1, :cond_40

    const/16 v0, 0x74

    if-ge p1, v0, :cond_40

    .line 633
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mEventPool:Lcom/samsung/android/gesture/MotionRecognitionService$EventPool;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionService$EventPool;->obtain()Lcom/samsung/android/gesture/SemMotionRecognitionEvent;

    move-result-object v0

    .line 634
    .local v0, "motionEvent":Lcom/samsung/android/gesture/SemMotionRecognitionEvent;
    invoke-virtual {v0, p1}, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->setMotion(I)V

    .line 636
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " .sendMotionEvent : motion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    invoke-direct {p0, v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->sendMotionEvent(Lcom/samsung/android/gesture/SemMotionRecognitionEvent;)V

    .line 639
    .end local v0    # "motionEvent":Lcom/samsung/android/gesture/SemMotionRecognitionEvent;
    :cond_40
    return-void
.end method

.method private sendMotionEvent(Lcom/samsung/android/gesture/SemMotionRecognitionEvent;)V
    .registers 8
    .param p1, "motionEvent"    # Lcom/samsung/android/gesture/SemMotionRecognitionEvent;

    .line 600
    invoke-virtual {p1}, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->getMotion()I

    move-result v0

    .line 601
    .local v0, "event":I
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mMotionSettings:Lcom/samsung/android/gesture/MotionRecognitionSettings;

    invoke-virtual {v1, v0}, Lcom/samsung/android/gesture/MotionRecognitionSettings;->isActivatedEvent(I)Z

    move-result v1

    if-nez v1, :cond_25

    .line 602
    const-string v1, "MotionRecognitionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " sendMotionEvent : not activated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    return-void

    .line 606
    :cond_25
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 607
    :try_start_28
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_57

    .line 608
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 609
    .local v2, "msg":Landroid/os/Message;
    const/16 v3, 0x55

    iput v3, v2, Landroid/os/Message;->what:I

    .line 610
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 612
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mHandler:Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    invoke-virtual {v3, v2}, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 613
    const-string v3, "MotionRecognitionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " sendMotionEvent : sendMessage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    .end local v2    # "msg":Landroid/os/Message;
    :cond_57
    monitor-exit v1

    .line 616
    return-void

    .line 615
    :catchall_59
    move-exception v2

    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_28 .. :try_end_5b} :catchall_59

    throw v2
.end method

.method private setupAutoBrightnessSupport()V
    .registers 4

    .line 357
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_52

    .line 358
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 359
    .local v0, "mLight":Landroid/hardware/Sensor;
    if-eqz v0, :cond_14

    .line 360
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mEnableCalibratedLux:Z

    .line 361
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getVersion()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mLightSensorVersion:I

    .line 363
    :cond_14
    iget-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mEnableCalibratedLux:Z

    if-eqz v1, :cond_2d

    .line 364
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    const v2, 0x10050

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mCalibratedLux:Landroid/hardware/Sensor;

    .line 365
    if-eqz v1, :cond_2d

    .line 366
    new-instance v1, Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;-><init>(Lcom/samsung/android/gesture/MotionRecognitionService;Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener-IA;)V

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mCalibratedLuxListener:Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;

    .line 369
    :cond_2d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LightSensorVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mLightSensorVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MotionRecognitionService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    const v2, 0x10044

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mCameraLightSensor:Landroid/hardware/Sensor;

    .line 373
    .end local v0    # "mLight":Landroid/hardware/Sensor;
    :cond_52
    return-void
.end method

.method private setupFoldingDeviceSupport()V
    .registers 3

    .line 346
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_32

    .line 347
    const v1, 0x1009f

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mFoldingSensor:Landroid/hardware/Sensor;

    .line 348
    if-eqz v0, :cond_32

    .line 349
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getVersion()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mFoldingSensorVersion:I

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Folding sensor version is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mFoldingSensorVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionRecognitionService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mFoldingSensorSupported:Z

    .line 354
    :cond_32
    return-void
.end method

.method private setupMotionAvailability()V
    .registers 9

    .line 443
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_5f

    .line 444
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 445
    .local v0, "acc":Landroid/hardware/Sensor;
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 446
    .local v2, "gyro":Landroid/hardware/Sensor;
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    .line 447
    .local v3, "prox":Landroid/hardware/Sensor;
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->getDeviceType()I

    move-result v4

    .line 449
    .local v4, "deviceType":I
    const-string v5, "MotionRecognitionService"

    if-eq v4, v1, :cond_29

    if-eqz v0, :cond_29

    .line 450
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailableTurnOver:Z

    .line 451
    const-string v6, "Support: TurnOver"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_29
    if-eqz v0, :cond_5f

    if-eqz v2, :cond_5f

    if-eqz v3, :cond_5f

    .line 455
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Palm"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5c

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Ear"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5c

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Proximity Touch"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_54

    goto :goto_5c

    .line 458
    :cond_54
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailableDirectCall:Z

    .line 459
    const-string v1, "Support: DirectCall"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    .line 456
    :cond_5c
    :goto_5c
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailableDirectCall:Z

    .line 468
    .end local v0    # "acc":Landroid/hardware/Sensor;
    .end local v2    # "gyro":Landroid/hardware/Sensor;
    .end local v3    # "prox":Landroid/hardware/Sensor;
    .end local v4    # "deviceType":I
    :cond_5f
    :goto_5f
    return-void
.end method

.method private setupPocketAvailability()V
    .registers 4

    .line 391
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.folder_type"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 392
    .local v0, "isFolderType":Z
    if-nez v0, :cond_18

    .line 393
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->checkPocketmodeState()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailablePocketMode:Z

    .line 394
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->checkPocketmodeBixbyState()V

    goto :goto_1f

    .line 396
    :cond_18
    const-string v1, "MotionRecognitionService"

    const-string v2, "It\'s folder type model."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :goto_1f
    return-void
.end method

.method private setupRefreshRateInjection()V
    .registers 4

    .line 376
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mShouldInjectRefreshRate:Z

    .line 377
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_22

    .line 378
    const v1, 0x10038

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 379
    .local v0, "physicalProx":Landroid/hardware/Sensor;
    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getVersion()I

    move-result v1

    const/16 v2, 0x3e9

    if-ne v1, v2, :cond_22

    .line 380
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mShouldInjectRefreshRate:Z

    .line 381
    const-string v1, "MotionRecognitionService"

    const-string v2, "Support: RefreshRate Injection = true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    .end local v0    # "physicalProx":Landroid/hardware/Sensor;
    :cond_22
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 386
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 387
    return-void
.end method

.method private setupSmartAlertAvailability()V
    .registers 5

    .line 420
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    .line 421
    const v2, 0x100c8

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 422
    .local v0, "smartAlertSensor":Landroid/hardware/Sensor;
    if-eqz v0, :cond_10

    .line 423
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailableSmartAlert:Z

    .line 427
    .end local v0    # "smartAlertSensor":Landroid/hardware/Sensor;
    :cond_10
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailableSmartAlert:Z

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    if-eqz v0, :cond_1f

    .line 428
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailableSmartAlert:Z

    .line 432
    :cond_1f
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailableSmartAlert:Z

    const-string v2, "MotionRecognitionService"

    if-nez v0, :cond_42

    .line 433
    :try_start_25
    new-instance v0, Ljava/io/FileInputStream;

    const-string v3, "/sys/class/sensors/accelerometer_sensor/reactive_alert"

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2c} :catch_3c

    .line 434
    .local v0, "fis":Ljava/io/FileInputStream;
    :try_start_2c
    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailableSmartAlert:Z
    :try_end_2e
    .catchall {:try_start_2c .. :try_end_2e} :catchall_32

    .line 435
    :try_start_2e
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_3c

    .line 437
    .end local v0    # "fis":Ljava/io/FileInputStream;
    goto :goto_42

    .line 433
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    :catchall_32
    move-exception v1

    :try_start_33
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    goto :goto_3b

    :catchall_37
    move-exception v3

    :try_start_38
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/samsung/android/gesture/MotionRecognitionService;
    :goto_3b
    throw v1
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3c} :catch_3c

    .line 435
    .end local v0    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/samsung/android/gesture/MotionRecognitionService;
    :catch_3c
    move-exception v0

    .line 436
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Failed to find a node for SmartAlert."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    .end local v0    # "e":Ljava/io/IOException;
    :cond_42
    :goto_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Support: SmartAlert = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailableSmartAlert:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    return-void
.end method

.method private declared-synchronized startMotions()V
    .registers 4

    monitor-enter p0

    .line 546
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mPalmMotion:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    if-nez v0, :cond_2e

    .line 547
    new-instance v0, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mPalmMotion:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    .line 548
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->enablePalmMotion(Landroid/os/Looper;)V

    .line 549
    new-instance v0, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mPalmMotion:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;-><init>(Landroid/content/Context;Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mLiftUpHandler:Lcom/samsung/android/gesture/MotionRecognitionLiftUpHandler;

    .line 550
    new-instance v0, Lcom/samsung/android/gesture/AutoRotationHandler;

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/gesture/AutoRotationHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mAutoRotationHandler:Lcom/samsung/android/gesture/AutoRotationHandler;

    .line 551
    invoke-virtual {v0}, Lcom/samsung/android/gesture/AutoRotationHandler;->startMonitoring()V

    .line 553
    .end local p0    # "this":Lcom/samsung/android/gesture/MotionRecognitionService;
    :cond_2e
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mPalmMotion:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    if-eqz v0, :cond_39

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mPocketModeEvent:Lcom/samsung/android/gesture/PocketModeEvent;

    if-eqz v1, :cond_39

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->setPocketModeEvent(Lcom/samsung/android/gesture/PocketModeEvent;)V
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_3b

    .line 554
    :cond_39
    monitor-exit p0

    return-void

    .line 545
    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private unregisterCalibratedLuxSensor()V
    .registers 4

    .line 1685
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mLightSensorVersion:I

    const-string v1, "MotionRecognitionService"

    const/16 v2, 0x3e8

    if-lt v0, v2, :cond_18

    .line 1687
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mCameraLightSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_14

    .line 1688
    invoke-virtual {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->stopAdaptiveBrightness()V

    .line 1689
    const-string v0, "Force stop camera light sensor service"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    :cond_14
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mLastCalibratedLuxStatus:F

    goto :goto_1d

    .line 1694
    :cond_18
    const-string v0, "Not supported calibratedLux type sensor [3]"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    :goto_1d
    return-void
.end method

.method private unregisterPocketDetector()V
    .registers 4

    .line 1742
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x10049

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 1743
    .local v0, "pocketSensor":Landroid/hardware/Sensor;
    if-eqz v0, :cond_1c

    .line 1744
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListener:Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 1745
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mRegisteredPocketDetector:Z

    .line 1746
    const-string v1, "MotionRecognitionService"

    const-string v2, "unregisterPocketDetector"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    :cond_1c
    return-void
.end method

.method private updateRegisteredMotions()V
    .registers 4

    .line 659
    const/4 v0, 0x0

    .line 660
    .local v0, "registeredMotions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/16 v2, 0x19

    if-ge v1, v2, :cond_12

    .line 661
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mRefCntEvents:[I

    aget v2, v2, v1

    if-eqz v2, :cond_f

    .line 662
    const/4 v2, 0x1

    shl-int/2addr v2, v1

    or-int/2addr v0, v2

    .line 660
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 664
    .end local v1    # "i":I
    :cond_12
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mMotionSettings:Lcom/samsung/android/gesture/MotionRecognitionSettings;

    invoke-virtual {v1, v0}, Lcom/samsung/android/gesture/MotionRecognitionSettings;->setRegisteredMotions(I)V

    .line 665
    return-void
.end method

.method private useSensor(IZ)V
    .registers 5
    .param p1, "sensor"    # I
    .param p2, "used"    # Z

    .line 1013
    invoke-static {p1}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->isValidMotionSensor(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1014
    return-void

    .line 1016
    :cond_7
    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionService;->isSensorUsed(I)Z

    move-result v0

    if-eq p2, v0, :cond_1b

    .line 1017
    if-eqz p2, :cond_15

    .line 1018
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorsUsed:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorsUsed:I

    goto :goto_1b

    .line 1020
    :cond_15
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorsUsed:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorsUsed:I

    .line 1022
    :cond_1b
    :goto_1b
    return-void
.end method

.method private writePocketDetectorSysfs(I)V
    .registers 6
    .param p1, "enable"    # I

    .line 1719
    const-string v0, "MotionRecognitionService"

    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/sys/class/sec/tsp/cmd"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_9} :catch_40

    .line 1720
    .local v1, "out":Ljava/io/FileOutputStream;
    const/4 v2, 0x1

    if-ne p1, v2, :cond_20

    .line 1721
    :try_start_c
    const-string v2, "set_low_power_sensitivity,1"

    .line 1722
    .local v2, "content":Ljava/lang/String;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 1723
    const-string v3, "Pocket detector mode ON"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    nop

    .end local v2    # "content":Ljava/lang/String;
    goto :goto_3c

    .line 1719
    :catchall_1e
    move-exception v2

    goto :goto_33

    .line 1724
    :cond_20
    if-nez p1, :cond_3c

    .line 1725
    const-string v2, "set_low_power_sensitivity,0"

    .line 1726
    .restart local v2    # "content":Ljava/lang/String;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 1727
    const-string v3, "Pocket detector mode OFF"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_c .. :try_end_32} :catchall_1e

    goto :goto_3c

    .line 1719
    .end local v2    # "content":Ljava/lang/String;
    :goto_33
    :try_start_33
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    goto :goto_3b

    :catchall_37
    move-exception v3

    :try_start_38
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/samsung/android/gesture/MotionRecognitionService;
    .end local p1    # "enable":I
    :goto_3b
    throw v2

    .line 1729
    .restart local p0    # "this":Lcom/samsung/android/gesture/MotionRecognitionService;
    .restart local p1    # "enable":I
    :cond_3c
    :goto_3c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3f} :catch_40

    .line 1731
    .end local v1    # "out":Ljava/io/FileOutputStream;
    goto :goto_46

    .line 1729
    :catch_40
    move-exception v1

    .line 1730
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Pocket detector sysfs write fail!!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    .end local v1    # "e":Ljava/io/IOException;
    :goto_46
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 13
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 933
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3f

    .line 935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump MotionService from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 936
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " without permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 935
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 938
    return-void

    .line 941
    :cond_3f
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorChecker:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    if-eqz v0, :cond_57

    .line 942
    array-length v0, p3

    if-eqz v0, :cond_57

    const/4 v0, 0x0

    aget-object v0, p3, v0

    const-string v1, "ffd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 943
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorChecker:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-virtual {v0, p2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->dump(Ljava/io/PrintWriter;)V

    .line 944
    return-void

    .line 948
    :cond_57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 949
    .local v0, "time":J
    const-string v2, "motion_recognition"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 950
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " : mSensorsUsed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorsUsed:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mSensorsEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorsEnabled:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 951
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " : currentTimeMillis="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 953
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 954
    :try_start_9d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " : listener count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 956
    const/4 v3, 0x0

    .line 957
    .local v3, "i":I
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;

    .line 958
    .local v5, "listener":Lcom/samsung/android/gesture/MotionRecognitionService$Listener;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "   mListeners["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, 0x1

    .end local v3    # "i":I
    .local v7, "i":I
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "] = mMotionSensors="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, v5, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->mMotionSensors:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_f0
    .catchall {:try_start_9d .. :try_end_f0} :catchall_1c9

    .line 960
    :try_start_f0
    iget-object v3, v5, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->mToken:Landroid/os/IBinder;

    invoke-static {v3}, Lcom/samsung/android/gesture/IMotionRecognitionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/gesture/IMotionRecognitionCallback;

    move-result-object v3

    .line 961
    .local v3, "cb":Lcom/samsung/android/gesture/IMotionRecognitionCallback;
    if-eqz v3, :cond_112

    .line 962
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "                   "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Lcom/samsung/android/gesture/IMotionRecognitionCallback;->getListenerInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_112
    .catch Landroid/os/RemoteException; {:try_start_f0 .. :try_end_112} :catch_113
    .catchall {:try_start_f0 .. :try_end_112} :catchall_1c9

    .line 966
    .end local v3    # "cb":Lcom/samsung/android/gesture/IMotionRecognitionCallback;
    :cond_112
    goto :goto_11b

    .line 964
    :catch_113
    move-exception v3

    .line 965
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_114
    const-string v6, "MotionRecognitionService"

    const-string v8, "RemoteException : getListenerInfo()"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v5    # "listener":Lcom/samsung/android/gesture/MotionRecognitionService$Listener;
    :goto_11b
    move v3, v7

    goto :goto_c0

    .line 968
    .end local v7    # "i":I
    .local v3, "i":I
    :cond_11d
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 969
    .end local v3    # "i":I
    monitor-exit v2
    :try_end_123
    .catchall {:try_start_114 .. :try_end_123} :catchall_1c9

    .line 971
    const-string v2, "\n===== MotionRecognitionService Previous Registrations ====="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 972
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mPrevRegistrations:Lcom/samsung/android/gesture/MotionRecognitionService$PreviousRegistrations;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/MotionRecognitionService$PreviousRegistrations;->dump()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 974
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mPalmMotion:Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;

    if-eqz v2, :cond_138

    invoke-virtual {v2, p1, p2, p3}, Lcom/samsung/android/gesture/MotionRecognitionPalmMotion;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 976
    :cond_138
    iget-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailablePocketMode:Z

    if-eqz v2, :cond_13f

    .line 978
    invoke-static {p2}, Lcom/samsung/android/gesture/PocketModeEvent;->dump(Ljava/io/PrintWriter;)V

    .line 980
    :cond_13f
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->elevator:Lcom/samsung/android/gesture/ElevatorModeEvent;

    if-eqz v2, :cond_166

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n***** ElevatorModeEvent dump ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->elevator:Lcom/samsung/android/gesture/ElevatorModeEvent;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/ElevatorModeEvent;->Get_Version()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") *****"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_16b

    .line 981
    :cond_166
    const-string v2, "\n***** ElevatorModeEvent dump-ElevatorMode Not Supported *****"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 982
    :goto_16b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IsElevatorModeAvailable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailableElevatorMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 983
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACC:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAccSensorOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", MAG:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsMagSensorOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", BARO:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsPressureSensorOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 986
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mEvToLux:Lcom/samsung/android/gesture/ExposureToLuxMapping;

    if-eqz v2, :cond_1ba

    .line 987
    invoke-virtual {v2, p2}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->dump(Ljava/io/PrintWriter;)V

    .line 989
    :cond_1ba
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mAdaptiveBrightnessController:Lcom/samsung/android/gesture/AdaptiveBrightnessController;

    if-eqz v2, :cond_1c1

    .line 990
    invoke-virtual {v2, p2}, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->dump(Ljava/io/PrintWriter;)V

    .line 992
    :cond_1c1
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSARMotion:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    if-eqz v2, :cond_1c8

    .line 993
    invoke-virtual {v2, p2}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->dump(Ljava/io/PrintWriter;)V

    .line 995
    :cond_1c8
    return-void

    .line 969
    :catchall_1c9
    move-exception v3

    :try_start_1ca
    monitor-exit v2
    :try_end_1cb
    .catchall {:try_start_1ca .. :try_end_1cb} :catchall_1c9

    throw v3
.end method

.method public getEvLuxTableInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "info"    # Ljava/lang/String;

    .line 1711
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mEvToLux:Lcom/samsung/android/gesture/ExposureToLuxMapping;

    if-nez v0, :cond_d

    .line 1712
    new-instance v0, Lcom/samsung/android/gesture/ExposureToLuxMapping;

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/gesture/ExposureToLuxMapping;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mEvToLux:Lcom/samsung/android/gesture/ExposureToLuxMapping;

    .line 1713
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mEvToLux:Lcom/samsung/android/gesture/ExposureToLuxMapping;

    invoke-virtual {v0, p1}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->getEvLuxTableInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEvToLux([F)[F
    .registers 4
    .param p1, "values"    # [F

    .line 1702
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mEvToLux:Lcom/samsung/android/gesture/ExposureToLuxMapping;

    if-nez v0, :cond_d

    .line 1703
    new-instance v0, Lcom/samsung/android/gesture/ExposureToLuxMapping;

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/gesture/ExposureToLuxMapping;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mEvToLux:Lcom/samsung/android/gesture/ExposureToLuxMapping;

    .line 1704
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mEvToLux:Lcom/samsung/android/gesture/ExposureToLuxMapping;

    invoke-virtual {v0, p1}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->getLux([F)[F

    move-result-object v0

    return-object v0
.end method

.method public getPickUpMotionStatus()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 652
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mMotionSettings:Lcom/samsung/android/gesture/MotionRecognitionSettings;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionSettings;->isActivatedMotion(I)Z

    move-result v0

    .line 654
    .local v0, "isEnabled":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " pick up status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MotionRecognitionService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    if-eqz v0, :cond_2b

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mMotionSettings:Lcom/samsung/android/gesture/MotionRecognitionSettings;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionSettings;->isMotionEngineEnabled()Z

    move-result v1

    if-eqz v1, :cond_2b

    const/4 v1, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x0

    :goto_2c
    return v1
.end method

.method public getSSPstatus()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 645
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mHasSensorHub:Z

    return v0
.end method

.method public isAvailable(I)Z
    .registers 3
    .param p1, "type"    # I

    .line 523
    sparse-switch p1, :sswitch_data_1e

    .line 541
    const/4 v0, 0x0

    return v0

    .line 539
    :sswitch_5
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailablePocketForBixby:Z

    return v0

    .line 537
    :sswitch_8
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailableElevatorMode:Z

    return v0

    .line 535
    :sswitch_b
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailablePocketMode:Z

    return v0

    .line 533
    :sswitch_e
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailablePalmSwipe:Z

    return v0

    .line 531
    :sswitch_11
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailablePalmTouch:Z

    return v0

    .line 529
    :sswitch_14
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailableDirectCall:Z

    return v0

    .line 527
    :sswitch_17
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailableSmartAlert:Z

    return v0

    .line 525
    :sswitch_1a
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailableTurnOver:Z

    return v0

    nop

    :sswitch_data_1e
    .sparse-switch
        0x1 -> :sswitch_1a
        0x4 -> :sswitch_17
        0x400 -> :sswitch_14
        0x200000 -> :sswitch_11
        0x400000 -> :sswitch_e
        0x800000 -> :sswitch_b
        0x1000000 -> :sswitch_8
        0x2000000 -> :sswitch_5
    .end sparse-switch
.end method

.method public registerCallback(Landroid/os/IBinder;II)V
    .registers 16
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "motion_sensors"    # I
    .param p3, "motionType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 672
    move v0, p2

    .line 673
    .local v0, "required_sensors":I
    const/4 v1, 0x0

    .line 674
    .local v1, "registerTurnOver":Z
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 675
    :try_start_5
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;

    .line 676
    .local v4, "listener":Lcom/samsung/android/gesture/MotionRecognitionService$Listener;
    iget-object v5, v4, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->mToken:Landroid/os/IBinder;

    if-ne p1, v5, :cond_1d

    .line 677
    monitor-exit v2

    return-void

    .line 679
    .end local v4    # "listener":Lcom/samsung/android/gesture/MotionRecognitionService$Listener;
    :cond_1d
    goto :goto_b

    .line 682
    :cond_1e
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1f
    const/16 v4, 0x19

    const/4 v10, 0x1

    if-ge v3, v4, :cond_8d

    .line 683
    shl-int v4, v10, v3

    .line 684
    .local v4, "type":I
    and-int v5, v4, p3

    if-eqz v5, :cond_8a

    .line 685
    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mRefCntEvents:[I

    aget v6, v5, v3

    add-int/2addr v6, v10

    aput v6, v5, v3

    .line 686
    sparse-switch v4, :sswitch_data_17a

    goto :goto_8a

    .line 723
    :sswitch_35
    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->elevator:Lcom/samsung/android/gesture/ElevatorModeEvent;

    if-eqz v5, :cond_8a

    .line 724
    const-string v5, "MotionRecognitionService"

    const-string v6, "Elevator API register in MRS"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->elevator:Lcom/samsung/android/gesture/ElevatorModeEvent;

    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->myElevatorDetect:Lcom/samsung/android/gesture/ElevatorModeEvent$OnElevatorDetectInterface;

    invoke-virtual {v5, v6}, Lcom/samsung/android/gesture/ElevatorModeEvent;->registerElevatorDetector(Lcom/samsung/android/gesture/ElevatorModeEvent$OnElevatorDetectInterface;)V

    goto :goto_8a

    .line 720
    :sswitch_48
    const/16 v0, 0xf

    .line 721
    goto :goto_8a

    .line 688
    :sswitch_4b
    or-int/lit8 v0, v0, 0x1

    .line 689
    iget-boolean v5, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mFoldingSensorSupported:Z

    if-eqz v5, :cond_53

    .line 690
    or-int/lit8 v0, v0, 0x10

    .line 692
    :cond_53
    const/4 v1, 0x1

    .line 693
    goto :goto_8a

    .line 713
    :sswitch_55
    iget-boolean v5, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsAvailableDirectCall:Z

    if-eqz v5, :cond_8a

    .line 714
    or-int/lit8 v0, v0, 0x7

    goto :goto_8a

    .line 695
    :sswitch_5c
    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mMotionSettings:Lcom/samsung/android/gesture/MotionRecognitionSettings;

    invoke-virtual {v5, v4}, Lcom/samsung/android/gesture/MotionRecognitionSettings;->isActivatedMotion(I)Z

    move-result v5

    if-eqz v5, :cond_79

    .line 696
    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mReactiveAlert:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;

    invoke-virtual {v5}, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->enableSmartAlert()Z

    move-result v5

    .line 697
    .local v5, "ret":Z
    if-nez v5, :cond_78

    .line 698
    const-string v6, "MotionRecognitionService"

    const-string v7, "registerCallback(): enable accInt."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mReactiveAlert:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;

    invoke-virtual {v6}, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->enableAccINT()V

    .line 701
    .end local v5    # "ret":Z
    :cond_78
    goto :goto_8a

    .line 702
    :cond_79
    const-string v5, "MotionRecognitionService"

    const-string v6, " smart alert is disabled by setting or ssp is activated : "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    goto :goto_8a

    .line 706
    :sswitch_81
    or-int/lit8 v0, v0, 0x3

    .line 707
    iget-boolean v5, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mFoldingSensorSupported:Z

    if-eqz v5, :cond_89

    .line 708
    or-int/lit8 v0, v0, 0x10

    .line 710
    :cond_89
    const/4 v1, 0x1

    .line 682
    .end local v4    # "type":I
    :cond_8a
    :goto_8a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 734
    .end local v3    # "i":I
    :cond_8d
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->updateRegisteredMotions()V

    .line 735
    new-instance v3, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;

    invoke-direct {v3, p0, p1, v0, p3}, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;-><init>(Lcom/samsung/android/gesture/MotionRecognitionService;Landroid/os/IBinder;II)V

    .line 736
    .local v3, "l":Lcom/samsung/android/gesture/MotionRecognitionService$Listener;
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 738
    const-string v4, ""

    .line 739
    .local v4, "client":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-interface {p1, v3, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_a0
    .catchall {:try_start_5 .. :try_end_a0} :catchall_176

    .line 742
    :try_start_a0
    invoke-static {p1}, Lcom/samsung/android/gesture/IMotionRecognitionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/gesture/IMotionRecognitionCallback;

    move-result-object v5

    .line 743
    .local v5, "cb":Lcom/samsung/android/gesture/IMotionRecognitionCallback;
    if-eqz v5, :cond_ad

    .line 744
    invoke-interface {v5}, Lcom/samsung/android/gesture/IMotionRecognitionCallback;->getListenerInfo()Ljava/lang/String;

    move-result-object v6
    :try_end_aa
    .catch Landroid/os/RemoteException; {:try_start_a0 .. :try_end_aa} :catch_164
    .catchall {:try_start_a0 .. :try_end_aa} :catchall_176

    move-object v4, v6

    move-object v11, v4

    goto :goto_ae

    .line 743
    :cond_ad
    move-object v11, v4

    .line 749
    .end local v4    # "client":Ljava/lang/String;
    .end local v5    # "cb":Lcom/samsung/android/gesture/IMotionRecognitionCallback;
    .local v11, "client":Ljava/lang/String;
    :goto_ae
    nop

    .line 751
    :try_start_af
    iget-boolean v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsDCM:Z

    if-eqz v4, :cond_d1

    if-eqz v1, :cond_d1

    const-string v4, "com.samsung.server.telecom"

    .line 752
    invoke-virtual {v11, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d1

    .line 753
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mDCM:Lcom/samsung/android/gesture/MotionRecognitionService$DCMListener;

    iget-object v5, v5, Lcom/samsung/android/gesture/MotionRecognitionService$DCMListener;->mDCMListener:Lcom/samsung/android/gesture/MotionRecognitionService$DCMListener$SensorDCMListener;

    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v7, 0x8

    .line 754
    invoke-virtual {v6, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mHandler:Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    .line 753
    const/4 v8, 0x3

    invoke-virtual {v4, v5, v6, v8, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 757
    :cond_d1
    const-string v4, "MotionRecognitionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  .registerCallback : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", required_sensors="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", client="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mPrevRegistrations:Lcom/samsung/android/gesture/MotionRecognitionService$PreviousRegistrations;

    const/4 v5, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move v6, v0

    move-object v7, v11

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/gesture/MotionRecognitionService$PreviousRegistrations;->add(ZILjava/lang/String;J)V

    .line 760
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 761
    iget-boolean v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsFlat:Z

    if-eqz v4, :cond_11f

    .line 762
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mReactiveAlert:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;

    const/16 v5, 0x2d

    invoke-virtual {v4, v5}, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->setAccIntStatus(I)V

    .line 763
    .end local v11    # "client":Ljava/lang/String;
    :cond_11f
    monitor-exit v2
    :try_end_120
    .catchall {:try_start_af .. :try_end_120} :catchall_176

    .line 767
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->isScreenOn()Z

    move-result v2

    const/16 v4, 0x59

    if-eqz v2, :cond_12e

    .line 768
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mHandler:Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    invoke-virtual {v2, v4}, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->sendEmptyMessage(I)Z

    goto :goto_137

    .line 769
    :cond_12e
    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_137

    .line 770
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mHandler:Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    invoke-virtual {v2, v4}, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->sendEmptyMessage(I)Z

    .line 772
    :cond_137
    :goto_137
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mHandler:Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    const/16 v4, 0x5b

    invoke-virtual {v2, v4}, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->sendEmptyMessage(I)Z

    .line 773
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mMotionSettings:Lcom/samsung/android/gesture/MotionRecognitionSettings;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/MotionRecognitionSettings;->getBitmaskSensorsActivated()I

    move-result v0

    .line 774
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_145
    const/4 v4, 0x5

    if-ge v2, v4, :cond_163

    .line 775
    shl-int v4, v10, v2

    .line 776
    .local v4, "target_sensor":I
    and-int v5, v4, v0

    if-eqz v5, :cond_160

    .line 777
    invoke-direct {p0, v4, v10}, Lcom/samsung/android/gesture/MotionRecognitionService;->useSensor(IZ)V

    .line 778
    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mLockEngine:Ljava/lang/Object;

    monitor-enter v5

    .line 779
    :try_start_154
    iget-boolean v6, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mEngineInitialized:Z

    if-eqz v6, :cond_15b

    .line 780
    invoke-direct {p0, v4, v10}, Lcom/samsung/android/gesture/MotionRecognitionService;->enableSensor(IZ)V

    .line 781
    :cond_15b
    monitor-exit v5

    goto :goto_160

    :catchall_15d
    move-exception v6

    monitor-exit v5
    :try_end_15f
    .catchall {:try_start_154 .. :try_end_15f} :catchall_15d

    throw v6

    .line 774
    .end local v4    # "target_sensor":I
    :cond_160
    :goto_160
    add-int/lit8 v2, v2, 0x1

    goto :goto_145

    .line 784
    .end local v2    # "i":I
    :cond_163
    return-void

    .line 746
    .local v4, "client":Ljava/lang/String;
    :catch_164
    move-exception v5

    .line 747
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_165
    const-string v6, "MotionRecognitionService"

    const-string v7, "RemoteException : getListenerInfo()"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    new-instance v6, Landroid/os/RemoteException;

    invoke-virtual {v5}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "required_sensors":I
    .end local v1    # "registerTurnOver":Z
    .end local p0    # "this":Lcom/samsung/android/gesture/MotionRecognitionService;
    .end local p1    # "binder":Landroid/os/IBinder;
    .end local p2    # "motion_sensors":I
    .end local p3    # "motionType":I
    throw v6

    .line 763
    .end local v3    # "l":Lcom/samsung/android/gesture/MotionRecognitionService$Listener;
    .end local v4    # "client":Ljava/lang/String;
    .end local v5    # "e":Landroid/os/RemoteException;
    .restart local v0    # "required_sensors":I
    .restart local v1    # "registerTurnOver":Z
    .restart local p0    # "this":Lcom/samsung/android/gesture/MotionRecognitionService;
    .restart local p1    # "binder":Landroid/os/IBinder;
    .restart local p2    # "motion_sensors":I
    .restart local p3    # "motionType":I
    :catchall_176
    move-exception v3

    monitor-exit v2
    :try_end_178
    .catchall {:try_start_165 .. :try_end_178} :catchall_176

    throw v3

    nop

    :sswitch_data_17a
    .sparse-switch
        0x1 -> :sswitch_81
        0x4 -> :sswitch_5c
        0x400 -> :sswitch_55
        0x20000 -> :sswitch_4b
        0x120405 -> :sswitch_48
        0x1000000 -> :sswitch_35
    .end sparse-switch
.end method

.method public resetMotionEngine()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 895
    const-string v0, "MotionRecognitionService"

    const-string v1, " deprecated api, does not support resetMotionEngine"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    const/4 v0, -0x1

    return v0
.end method

.method public setMotionAngle(Landroid/os/IBinder;I)V
    .registers 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 881
    const-string v0, "MotionRecognitionService"

    const-string v1, " deprecated api, does not support resetMotionEngine"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    return-void
.end method

.method public setMotionTiltLevel(IIIIII)V
    .registers 9
    .param p1, "stopUp"    # I
    .param p2, "level1Up"    # I
    .param p3, "level2Up"    # I
    .param p4, "stopDown"    # I
    .param p5, "level1Down"    # I
    .param p6, "level2Down"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 888
    const-string v0, "MotionRecognitionService"

    const-string v1, "  .does not support setMotionTiltLevel "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    return-void
.end method

.method public setTestSensor()Z
    .registers 3

    .line 903
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorChecker:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    if-nez v0, :cond_d

    .line 904
    const-string v0, "MotionRecognitionService"

    const-string v1, "SensorChecker isn\'t created!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    const/4 v0, 0x0

    return v0

    .line 907
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mHandler:Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    const/16 v1, 0x58

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->sendEmptyMessage(I)Z

    .line 908
    const/4 v0, 0x1

    return v0
.end method

.method public startAdaptiveBrightness()V
    .registers 4

    .line 915
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mAdaptiveBrightnessController:Lcom/samsung/android/gesture/AdaptiveBrightnessController;

    if-nez v0, :cond_f

    .line 916
    new-instance v0, Lcom/samsung/android/gesture/AdaptiveBrightnessController;

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mHandler:Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/gesture/AdaptiveBrightnessController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mAdaptiveBrightnessController:Lcom/samsung/android/gesture/AdaptiveBrightnessController;

    .line 918
    :cond_f
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mAdaptiveBrightnessController:Lcom/samsung/android/gesture/AdaptiveBrightnessController;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->startService()V

    .line 919
    return-void
.end method

.method public stopAdaptiveBrightness()V
    .registers 2

    .line 925
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mAdaptiveBrightnessController:Lcom/samsung/android/gesture/AdaptiveBrightnessController;

    if-nez v0, :cond_5

    .line 926
    return-void

    .line 928
    :cond_5
    invoke-virtual {v0}, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->stopService()V

    .line 929
    return-void
.end method

.method public unregisterCallback(Landroid/os/IBinder;)V
    .registers 12
    .param p1, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 790
    const/4 v0, 0x0

    .line 791
    .local v0, "l":Lcom/samsung/android/gesture/MotionRecognitionService$Listener;
    const-string v1, ""

    .line 793
    .local v1, "client":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 794
    :try_start_6
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;

    .line 795
    .local v4, "listener":Lcom/samsung/android/gesture/MotionRecognitionService$Listener;
    iget-object v5, v4, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->mToken:Landroid/os/IBinder;

    if-ne p1, v5, :cond_1e

    .line 796
    move-object v0, v4

    .line 797
    goto :goto_1f

    .line 799
    .end local v4    # "listener":Lcom/samsung/android/gesture/MotionRecognitionService$Listener;
    :cond_1e
    goto :goto_c

    .line 801
    :cond_1f
    :goto_1f
    const/4 v3, 0x1

    if-eqz v0, :cond_db

    .line 802
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_23
    const/16 v5, 0x19

    if-ge v4, v5, :cond_75

    .line 803
    shl-int v5, v3, v4

    .line 804
    .local v5, "motion_event":I
    iget v6, v0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->mMotionEvents:I

    and-int/2addr v6, v5

    if-eqz v6, :cond_72

    .line 805
    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mRefCntEvents:[I

    aget v7, v6, v4

    sub-int/2addr v7, v3

    aput v7, v6, v4

    .line 806
    sparse-switch v5, :sswitch_data_11c

    goto :goto_72

    .line 823
    :sswitch_39
    const-string v6, "MotionRecognitionService"

    const-string v7, "Elevator API unregister in MRS"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->elevator:Lcom/samsung/android/gesture/ElevatorModeEvent;

    if-eqz v6, :cond_72

    invoke-virtual {v6}, Lcom/samsung/android/gesture/ElevatorModeEvent;->unregisterElevatorDetector()V

    goto :goto_72

    .line 808
    :sswitch_48
    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mMotionSettings:Lcom/samsung/android/gesture/MotionRecognitionSettings;

    invoke-virtual {v6}, Lcom/samsung/android/gesture/MotionRecognitionSettings;->isMotionEngineEnabled()Z

    move-result v6

    if-eqz v6, :cond_72

    .line 809
    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mReactiveAlert:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;

    invoke-virtual {v6}, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->disableSmartAlert()Z

    move-result v6

    .line 810
    .local v6, "ret":Z
    if-nez v6, :cond_64

    .line 811
    const-string v7, "MotionRecognitionService"

    const-string v8, " disable reactive alert mode "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mReactiveAlert:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;

    invoke-virtual {v7}, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->disableAccINT()V

    .line 814
    .end local v6    # "ret":Z
    :cond_64
    goto :goto_72

    .line 818
    :sswitch_65
    iget-boolean v6, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mIsDCM:Z

    if-eqz v6, :cond_72

    .line 819
    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mDCM:Lcom/samsung/android/gesture/MotionRecognitionService$DCMListener;

    iget-object v7, v7, Lcom/samsung/android/gesture/MotionRecognitionService$DCMListener;->mDCMListener:Lcom/samsung/android/gesture/MotionRecognitionService$DCMListener$SensorDCMListener;

    invoke-virtual {v6, v7}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 802
    .end local v5    # "motion_event":I
    :cond_72
    :goto_72
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 831
    .end local v4    # "i":I
    :cond_75
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->updateRegisteredMotions()V

    .line 832
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 834
    if-eqz p1, :cond_a1

    .line 835
    const/4 v4, 0x0

    invoke-interface {p1, v0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_83
    .catchall {:try_start_6 .. :try_end_83} :catchall_119

    .line 837
    :try_start_83
    invoke-static {p1}, Lcom/samsung/android/gesture/IMotionRecognitionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/gesture/IMotionRecognitionCallback;

    move-result-object v4

    .line 838
    .local v4, "cb":Lcom/samsung/android/gesture/IMotionRecognitionCallback;
    if-eqz v4, :cond_8e

    .line 839
    invoke-interface {v4}, Lcom/samsung/android/gesture/IMotionRecognitionCallback;->getListenerInfo()Ljava/lang/String;

    move-result-object v5
    :try_end_8d
    .catch Landroid/os/RemoteException; {:try_start_83 .. :try_end_8d} :catch_8f
    .catchall {:try_start_83 .. :try_end_8d} :catchall_119

    move-object v1, v5

    .line 844
    .end local v4    # "cb":Lcom/samsung/android/gesture/IMotionRecognitionCallback;
    :cond_8e
    goto :goto_a1

    .line 841
    :catch_8f
    move-exception v3

    .line 842
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_90
    const-string v4, "MotionRecognitionService"

    const-string v5, "RemoteException : getListenerInfo()"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    new-instance v4, Landroid/os/RemoteException;

    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "l":Lcom/samsung/android/gesture/MotionRecognitionService$Listener;
    .end local v1    # "client":Ljava/lang/String;
    .end local p0    # "this":Lcom/samsung/android/gesture/MotionRecognitionService;
    .end local p1    # "binder":Landroid/os/IBinder;
    throw v4

    .line 846
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "l":Lcom/samsung/android/gesture/MotionRecognitionService$Listener;
    .restart local v1    # "client":Ljava/lang/String;
    .restart local p0    # "this":Lcom/samsung/android/gesture/MotionRecognitionService;
    .restart local p1    # "binder":Landroid/os/IBinder;
    :cond_a1
    :goto_a1
    const-string v4, "MotionRecognitionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  .unregisterCallback : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", client="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mPrevRegistrations:Lcom/samsung/android/gesture/MotionRecognitionService$PreviousRegistrations;

    const/4 v5, 0x0

    iget v6, v0, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->mMotionSensors:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object v7, v1

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/gesture/MotionRecognitionService$PreviousRegistrations;->add(ZILjava/lang/String;J)V

    .line 848
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 851
    :cond_db
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->disableUnusedSensors()V

    .line 853
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_f1

    .line 854
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->finalizeMotionEngine()V

    .line 855
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mHandler:Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    const/16 v4, 0x5a

    invoke-virtual {v3, v4}, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->sendEmptyMessage(I)Z

    goto :goto_117

    .line 856
    :cond_f1
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->isScreenOn()Z

    move-result v4

    if-nez v4, :cond_117

    .line 857
    const/4 v4, 0x0

    .line 858
    .local v4, "enabledEasyMute":Z
    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_fe
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_112

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;

    .line 859
    .local v6, "listener":Lcom/samsung/android/gesture/MotionRecognitionService$Listener;
    iget v7, v6, Lcom/samsung/android/gesture/MotionRecognitionService$Listener;->mMotionEvents:I

    and-int/2addr v7, v3

    if-eqz v7, :cond_111

    .line 860
    const/4 v4, 0x1

    .line 861
    goto :goto_112

    .line 863
    .end local v6    # "listener":Lcom/samsung/android/gesture/MotionRecognitionService$Listener;
    :cond_111
    goto :goto_fe

    .line 864
    :cond_112
    :goto_112
    if-nez v4, :cond_117

    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionService;->finalizeMotionEngine()V

    .line 866
    .end local v4    # "enabledEasyMute":Z
    :cond_117
    :goto_117
    monitor-exit v2

    .line 867
    return-void

    .line 866
    :catchall_119
    move-exception v3

    monitor-exit v2
    :try_end_11b
    .catchall {:try_start_90 .. :try_end_11b} :catchall_119

    throw v3

    :sswitch_data_11c
    .sparse-switch
        0x1 -> :sswitch_65
        0x4 -> :sswitch_48
        0x20000 -> :sswitch_65
        0x1000000 -> :sswitch_39
    .end sparse-switch
.end method

.method public useMotionAlways(Landroid/os/IBinder;Z)V
    .registers 3
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "bUseAlways"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 874
    return-void
.end method
